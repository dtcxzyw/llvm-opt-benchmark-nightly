Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExpr?download=true
inline.NumInlined: 75953
inline.NumDeleted: 20715
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE30TransformOMPFirstprivateClauseEPNS_21OMPFirstprivateClauseE:bb.a
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP29ActOnOpenMPFirstprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23TransformOMPFlushClauseEPNS_14OMPFlushClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3093 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3093
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPFlushClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformOMPFromClauseEPNS_13OMPFromClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !795
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !795
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !858
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !859
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !876
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3095 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1514 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !3095
  %.pre96 = load i32, ptr %i.g, align 4, !tbaa !876
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre96, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store i64 0, ptr %9, align 8, !tbaa !1110
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !844
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !858
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !859
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !876
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #30
  %.pre97 = load i32, ptr %i.i, align 4, !tbaa !3095
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre97, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i82 = icmp eq i32 %i.ab, 0
  br i1 %.not.i82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49
  %.058.i83 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i83, align 8, !tbaa !1514
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !4970 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !859 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !876
  %.not.i48 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i48, label %bb.h, label %bb.g, !prof !856

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !858
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !859
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i83, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ar, align 8, !tbaa !815 ; 2 uses
  %.not76 = icmp eq i64 %.sroa.0.0.copyload.i43, 0
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !100
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, i64 0, ptr noundef null), !inline_history !4970 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not77 = icmp eq i64 %i.at, 0
  br i1 %.not77, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.068.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.068.0, ptr %.sroa.6.0) #30, !inline_history !4970
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !815
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call fastcc void @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !4970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !815
  %.not79 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not79, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !3095
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx93 = shl nuw nsw i64 %i.ax, 3              ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ax, 4            ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %.not63.i89 = icmp samesign eq i64 %.idx93, %.idx.i.i
  br i1 %.not63.i89, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l
  %12 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx93
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i90 = phi ptr [ %12, %.lr.ph92 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i90, align 8, !tbaa !1514 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.ay, ptr %5, align 8, !tbaa !858
  store i32 0, ptr %i.az, align 8, !tbaa !859
  store i32 8, ptr %i.ba, align 4, !tbaa !876
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !788 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx94 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx94
  %.not8084 = icmp eq i32 %i.bj, 0
  br i1 %.not8084, label %._crit_edge88, label %.lr.ph87

._crit_edge88:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !2407
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #30, !inline_history !4970 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %5, align 8, !tbaa !858   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !859
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #30, !inline_history !4970 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i32 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i32, label %bb.p, label %bb.o, !prof !856

bb.o:                                             ; preds = %._crit_edge88
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

bb.p:                                             ; preds = %._crit_edge88
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %10, align 8, !tbaa !858
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !859
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %5, align 8, !tbaa !858   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33
  call void @free(ptr noundef %i.cf) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph87:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.057.085 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.057.085, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.057.085, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2065, !noalias !4979 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2416, !noalias !4979 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !2028, !noalias !4979 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph87
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !795, !noalias !4980
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !855, !noalias !4980
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !856

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !795, !noalias !4980
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph87
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i31 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i31, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !859 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !876
  %.not.i.i30 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i30, label %bb.v, label %bb.u, !prof !856

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %5, align 8, !tbaa !858
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !859
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.057.085, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not80, label %._crit_edge88, label %.lr.ph87

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i29 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i29, label %bb.y, label %bb.x, !prof !856

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %10, align 8, !tbaa !858
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !859
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i90, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %11
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.er, align 8, !tbaa !795
  %i.es = load ptr, ptr %7, align 8, !tbaa !858
  %i.et = load i32, ptr %i.f, align 8, !tbaa !859
  %i.eu = zext i32 %i.et to i64
  %i.ev = load ptr, ptr %10, align 8, !tbaa !858
  %i.ew = load i32, ptr %i.x, align 8, !tbaa !859
  %i.ex = zext i32 %i.ew to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ey = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ey, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ev, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ex, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.es, ptr %3, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.eu, ptr %.sroa.253.0..sroa_idx, align 8
  %i.ez = call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPFromClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull %i.ep, i64 3, ptr nonnull %i.eq, i64 3, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 %.sroa.0.0.copyload.i27, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit
  %.1 = phi ptr [ %i.ez, %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.fa = load ptr, ptr %10, align 8, !tbaa !858  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.w
  br i1 %i.fb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread
  call void @free(ptr noundef %i.fa) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !1592
  %.not.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1593
  call void @free(ptr noundef %i.ff) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.fg = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.e
  br i1 %i.fh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fg) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformOMPGrainsizeClauseEPNS_18OMPGrainsizeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3098
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3099
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.i, align 4, !tbaa !795
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.j, align 4, !tbaa !795
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.k, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.l = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.l, align 8, !tbaa !907
  %i.m = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPGrainsizeClauseENS_29OpenMPGrainsizeClauseModifierEPNS_4ExprENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12, i32 %.sroa.0.0.copyload.i13) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3101 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3101
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.y, align 4, !tbaa !795
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.z, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i, ptr %3, align 4, !tbaa !795
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.0.0.copyload.i25, ptr %i.aa, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ab, align 4, !tbaa !795
  %i.ac = load ptr, ptr %2, align 8, !tbaa !858
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ae = zext i32 %i.ad to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.af = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !907
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPHasDeviceAddrClauseEN4llvm8ArrayRefIPNS_4ExprEEERKNS_15OMPVarListLocTyE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ac, i64 %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ag, %.critedge24 ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE:bb.a

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformOMPHintClauseEPNS_13OMPHintClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3103
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPHintClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23TransformOMPHoldsClauseEPNS_14OMPHoldsClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3105
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPHoldsClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE20TransformOMPIfClauseEPNS_11OMPIfClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3107
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3108
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.i, align 4, !tbaa !795
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.j, align 8, !tbaa !795
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.k, align 8, !tbaa !795
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.l, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.m = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.m, align 8, !tbaa !907
  %i.n = tail call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPIfClauseEN4llvm3omp9DirectiveEPNS_4ExprENS_14SourceLocationES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i14, i32 %.sroa.0.0.copyload.i15, i32 %.sroa.0.0.copyload.i16) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE29TransformOMPInReductionClauseEPNS_20OMPInReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3110 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3110
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not92 = icmp eq i32 %i.h, 0
  br i1 %.not92, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04693 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04693, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04693, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !815
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !815
  %.not88 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not88, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !815
  %.not89 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not89, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !876
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !3110 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx102.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx102.a ; 2 uses
  %.idx102 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx102
  %.not5197 = icmp eq i32 %i.ad, 0
  br i1 %.not5197, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge101.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre105 = load ptr, ptr %7, align 8, !tbaa !858
  %.pre106 = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.am = zext i32 %.pre106 to i64
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge101.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre105, %._crit_edge101.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !858
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !795
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !795
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !795
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.av = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.av, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aw = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPInReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ax = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aa
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge101
  call void @free(ptr noundef %i.ax) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge101, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph100, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.04998 = phi ptr [ %i.af, %.lr.ph100 ], [ %i.ek, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.az = load ptr, ptr %.04998, align 8, !tbaa !1514 ; 4 uses
  %.not52 = icmp eq ptr %i.az, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ag, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = and i16 %i.ba, 511
  %i.bc = icmp eq i16 %i.bb, 24
  %.1.v.i.i.i.i = select i1 %i.bc, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !788 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx103 = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx103
  %.not9094 = icmp eq i32 %i.be, 0
  br i1 %.not9094, label %._crit_edge, label %.lr.ph96

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bh = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bk = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bj) #30 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  %i.bn = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.bo = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bj, ptr noundef null, i64 %i.bl, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.br, i64 %i.bs, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.bv = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i67 = icmp ult i32 %i.bu, %i.bv
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bw = zext i32 %i.bu to i64
  %i.bx = load ptr, ptr %7, align 8, !tbaa !858
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  store ptr %i.bt, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cb = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ag
  br i1 %i.cc, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cb) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph96:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.095 = phi ptr [ %i.ec, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.095, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.095, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !4989 ; 3 uses
  %i.cg = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !4989 ; 2 uses
  %i.ch = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !4989 ; 4 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph96
  %i.cj = add i32 %i.ch, -1                       ; 2 uses
  %i.ck = mul i64 %i.cd, -4658895280553007687     ; 2 uses
  %i.cl = lshr i64 %i.ck, 31
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = trunc i64 %i.cm to i32
  %i.co = and i32 %i.cj, %i.cn                    ; 3 uses
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = lshr i64 %i.cp, 5
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !795, !noalias !4990
  %i.ct = and i32 %i.co, 31
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = trunc i32 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cw = phi i64 [ %i.dc, %bb.o ], [ %i.cp, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.db, %bb.o ], [ %i.co, %bb.n ]
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cw ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !855, !noalias !4990
  %i.cz = icmp eq ptr %i.cy, %i.ce
  br i1 %i.cz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !856

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.da = add nuw i32 %.017.i.i.i.i.i, 1
  %i.db = and i32 %i.da, %i.cj                    ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 5
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !795, !noalias !4990
  %i.dg = and i32 %i.db, 31
  %i.dh = lshr i32 %i.df, %i.dg
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph96
  %i.dj = zext i32 %i.ch to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.dj
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ch to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dj, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dk, %.loopexit.i.i.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dl
  br i1 %.not.i69, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dn, %bb.p ], [ %i.ce, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = lshr i32 %i.dp, 13
  %i.dr = and i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = ptrtoint ptr %.0.i to i64
  %i.du = or i64 %i.ds, %i.dt                     ; 2 uses
  %i.dv = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.dw = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !856

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.du)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dx = zext i32 %i.dv to i64
  %i.dy = load ptr, ptr %8, align 8, !tbaa !858
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  store i64 %i.du, ptr %i.dz, align 1
  %i.ea = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.077.095, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.ec, %i.bg
  br i1 %.not90, label %._crit_edge, label %.lr.ph96

bb.s:                                             ; preds = %bb.i
  %i.ed = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.ee = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i70 = icmp ult i32 %i.ed, %i.ee
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !856

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.ef = zext i32 %i.ed to i64
  %i.eg = load ptr, ptr %7, align 8, !tbaa !858
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  store ptr null, ptr %i.eh, align 1
  %i.ei = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %.04998, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.ek, %9
  br i1 %.not51, label %._crit_edge101.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.aw, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !1592
  %.not.i.i72 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1593
  call void @free(ptr noundef %i.eo) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.ep = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.a
  br i1 %i.eq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ep) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformOMPInclusiveClauseEPNS_18OMPInclusiveClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3112 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3112
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPInclusiveClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE22TransformOMPInitClauseEPNS_13OMPInitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"struct.clang::OMPInteropInfo", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"class.llvm::SmallVector.1758", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1514
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3115, !range !96, !noundef !97
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !3116, !range !96, !noundef !97
  store i8 %i.g, ptr %2, align 8, !tbaa !3123
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !3124
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.k, align 2, !tbaa !3125
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !858
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !859
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 4, ptr %i.o, align 4, !tbaa !876
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !3126, !noalias !5005 ; 2 uses
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3127, !noalias !5005
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
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !795, !noalias !5006
  br label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit

_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit: ; preds = %bb.c, %bb.d
  %i.ag = phi i32 [ %i.af, %bb.d ], [ 0, %bb.c ]  ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.067.083, 1       ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1514, !noalias !5006 ; 2 uses
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !3126, !noalias !5006
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al
  %i.an = zext i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE29TransformOMPIsDevicePtrClauseEPNS_20OMPIsDevicePtrClauseE:bb.a
  store i32 %.sroa.0.0.copyload.i25, ptr %i.aa, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ab, align 4, !tbaa !795
  %i.ac = load ptr, ptr %2, align 8, !tbaa !858
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ae = zext i32 %i.ad to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.af = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !907
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPIsDevicePtrClauseEN4llvm8ArrayRefIPNS_4ExprEEERKNS_15OMPVarListLocTyE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ac, i64 %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ag, %.critedge24 ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE29TransformOMPLastprivateClauseEPNS_20OMPLastprivateClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3132 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3132
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
  %i.l = load ptr, ptr %.02538, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge29, label %.lr.ph

.critedge29:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !3136
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.ad, align 4, !tbaa !795
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.ae, align 8, !tbaa !795
  %.sroa.0.0.copyload.i31 = load i32, ptr %1, align 8, !tbaa !795
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.af, align 4, !tbaa !795
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.ag, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ah = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ah, align 8, !tbaa !907
  %i.ai = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPLastprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_25OpenMPLastprivateModifierENS_14SourceLocationES7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 noundef %i.ac, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i30, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, i32 %.sroa.0.0.copyload.i33) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge29
  %.3 = phi ptr [ %i.ai, %.critedge29 ], [ null, %.lr.ph ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.aj) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE24TransformOMPLinearClauseEPNS_15OMPLinearClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3138 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3138
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
  %i.l = load ptr, ptr %.02844, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02844, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge32.loopexit, label %.lr.ph

.critedge32.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.pre45 = load i32, ptr %i.d, align 4, !tbaa !3138
  %i.y = zext i32 %.pre45 to i64
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge32.loopexit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.z = phi i64 [ %i.y, %.critedge32.loopexit ], [ 0, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %3 = shl nuw nsw i64 %i.z, 5
  %4 = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1514
  %i.ac = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ab) ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.critedge32
  %i.ae = load ptr, ptr %2, align 8, !tbaa !858
  %i.af = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ag = zext i32 %i.af to i64
  %i.ah = and i64 %i.ac, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.aj, align 4, !tbaa !795
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3141
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i34 = load i32, ptr %i.am, align 4, !tbaa !795
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i35 = load i32, ptr %i.an, align 8, !tbaa !795
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.ao, align 4, !tbaa !795
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ap, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.aq = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.aq, align 8, !tbaa !907
  %i.ar = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPLinearClauseEN4llvm8ArrayRefIPNS_4ExprEEES4_NS_14SourceLocationES6_NS_22OpenMPLinearClauseKindES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ae, i64 %i.ag, ptr noundef %i.ai, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i33, i32 noundef %i.al, i32 %.sroa.0.0.copyload.i34, i32 %.sroa.0.0.copyload.i35, i32 %.sroa.0.0.copyload.i36, i32 %.sroa.0.0.copyload.i37) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.critedge32
  %.4 = phi ptr [ null, %.critedge32 ], [ %i.ar, %bb.f ], [ null, %.lr.ph ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.as) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformOMPLoopRangeClauseEPNS_18OMPLoopRangeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = and i64 %i.g, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1587
  %.not = icmp eq ptr %i.m, %i.j
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !1587
  %.not27 = icmp eq ptr %i.n, %i.l
  br i1 %.not27, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.o, align 4, !tbaa !795
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.p, align 8, !tbaa !795
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.q, align 4, !tbaa !795
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.r, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.s = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.s, align 8, !tbaa !907
  %i.t = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPLoopRangeClauseEPNS_4ExprES2_NS_14SourceLocationES3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %.critedge, %bb.d, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.t, %.critedge ], [ %1, %bb.d ]
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE21TransformOMPMapClauseEPNS_12OMPMapClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %6 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %7 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %9 = alloca %"class.clang::CXXScopeSpec", align 8 ; 10 uses
  %10 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %11 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  %12 = alloca %"class.clang::CXXScopeSpec", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.a, align 4, !tbaa !795
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.b, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i, ptr %7, align 4, !tbaa !795
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.0.0.copyload.i27, ptr %i.c, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.0.0.copyload.i28, ptr %i.d, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !858
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !859
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !876
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3143 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1514 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !3143
  %.pre103 = load i32, ptr %i.g, align 4, !tbaa !876
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre103, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.124 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store i64 0, ptr %10, align 8, !tbaa !1110
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !844
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.w, ptr %11, align 8, !tbaa !858
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !859
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !876
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #30
  %.pre104 = load i32, ptr %i.i, align 4, !tbaa !3143
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre104, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i89 = icmp eq i32 %i.ab, 0
  br i1 %.not.i89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56
  %.058.i90 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i90, align 8, !tbaa !1514
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !5007 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !859 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !876
  %.not.i55 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i55, label %bb.h, label %bb.g, !prof !856

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %8, align 8, !tbaa !858
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !859
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i90, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i50 = load i64, ptr %i.ar, align 8, !tbaa !815 ; 2 uses
  %.not83 = icmp eq i64 %.sroa.0.0.copyload.i50, 0
  br i1 %.not83, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i52 = load ptr, ptr %.sroa.2.0..sroa_idx.i51, align 8, !tbaa !100
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i50, ptr %.sroa.2.0.copyload.i52, i64 0, ptr noundef null), !inline_history !5007 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not84 = icmp eq i64 %i.at, 0
  br i1 %.not84, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.075.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 %.sroa.075.0, ptr %.sroa.6.0) #30, !inline_history !5007
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i46 = load i64, ptr %10, align 8, !tbaa !815
  %.not85 = icmp eq i64 %.sroa.0.0.copyload.i46, 0
  br i1 %.not85, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call fastcc void @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !5007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.sroa.0.0.copyload.i45 = load i64, ptr %10, align 8, !tbaa !815
  %.not86 = icmp eq i64 %.sroa.0.0.copyload.i45, 0
  br i1 %.not86, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !3143
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx100 = shl nuw nsw i64 %i.ax, 3             ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ax, 4            ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %.not63.i96 = icmp samesign eq i64 %.idx100, %.idx.i.i
  br i1 %.not63.i96, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.l
  %14 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx100
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph99, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i97 = phi ptr [ %14, %.lr.ph99 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i97, align 8, !tbaa !1514 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.ay, ptr %6, align 8, !tbaa !858
  store i32 0, ptr %i.az, align 8, !tbaa !859
  store i32 8, ptr %i.ba, align 4, !tbaa !876
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !788 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx101 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx101
  %.not8791 = icmp eq i32 %i.bj, 0
  br i1 %.not8791, label %._crit_edge95, label %.lr.ph94

._crit_edge95:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !2407
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #30, !inline_history !5007 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %6, align 8, !tbaa !858   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !859
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #30, !inline_history !5007 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i39 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i39, label %bb.p, label %bb.o, !prof !856

bb.o:                                             ; preds = %._crit_edge95
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40

bb.p:                                             ; preds = %._crit_edge95
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %11, align 8, !tbaa !858
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !859
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %6, align 8, !tbaa !858   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40
  call void @free(ptr noundef %i.cf) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph94:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.064.092 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.064.092, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.064.092, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2065, !noalias !5016 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2416, !noalias !5016 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !2028, !noalias !5016 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph94
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !795, !noalias !5017
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !855, !noalias !5017
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !856

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !795, !noalias !5017
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph94
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i38 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i38, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !859 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !876
  %.not.i.i37 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i37, label %bb.v, label %bb.u, !prof !856

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %6, align 8, !tbaa !858
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !859
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.064.092, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not87, label %._crit_edge95, label %.lr.ph94

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i36 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i36, label %bb.y, label %bb.x, !prof !856

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %11, align 8, !tbaa !858
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !859
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i97, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %13
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.er = load i64, ptr %9, align 8, !tbaa !795
  store i64 %i.er, ptr %12, align 8, !tbaa !795
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.et) #30
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i64 16, i1 false), !tbaa.struct !3145
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !3149
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ez = load i8, ptr %i.ey, align 4, !tbaa !3150, !range !96, !noundef !97
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.fb, align 8, !tbaa !795
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.fc, align 4, !tbaa !795
  %i.fd = load ptr, ptr %8, align 8, !tbaa !858
  %i.fe = load i32, ptr %i.f, align 8, !tbaa !859
  %i.ff = zext i32 %i.fe to i64
  %i.fg = load ptr, ptr %11, align 8, !tbaa !858
  %i.fh = load i32, ptr %i.x, align 8, !tbaa !859
  %i.fi = zext i32 %i.fh to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.fj = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.fj, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.fg, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fi, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.fd, ptr %3, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ff, ptr %.sroa.260.0..sroa_idx, align 8
  %i.fk = call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %.124, ptr nonnull %i.ep, i64 7, ptr nonnull %i.eq, i64 7, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.ex, i1 noundef zeroext %i.fa, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %7, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !1592
  %.not.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1593
  call void @free(ptr noundef %i.fo) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %.lr.ph, %bb.k, %bb.i, %bb.z, %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit
  %.1 = phi ptr [ %i.fk, %bb.z ], [ %i.fk, %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.fp = load ptr, ptr %11, align 8, !tbaa !858  ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.w
  br i1 %i.fq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit
  call void @free(ptr noundef %i.fp) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !1592
  %.not.i.i33 = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i33, label %_ZN5clang12CXXScopeSpecD2Ev.exit34, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1593
  call void @free(ptr noundef %i.fu) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit34

_ZN5clang12CXXScopeSpecD2Ev.exit34:               ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit34
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit34 ], [ null, %bb.b ]
  %i.fv = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.e
  br i1 %i.fw, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fv) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35: ; preds = %.critedge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformOMPMessageClauseEPNS_16OMPMessageClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3152
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPMessageClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE24TransformOMPNowaitClauseEPNS_15OMPNowaitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3154 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.e = and i64 %.sroa.0.0, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPNowaitClauseENS_14SourceLocationES1_S1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i12, ptr noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.1 = phi ptr [ %i.j, %.critedge ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformOMPNocontextClauseEPNS_18OMPNocontextClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3156
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPNocontextClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE29TransformOMPNontemporalClauseEPNS_20OMPNontemporalClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
end_hunk_2
begin_hunk_3_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformOMPPrivateClauseEPNS_16OMPPrivateClauseE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3191
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPPrivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformOMPProcBindClauseEPNS_17OMPProcBindClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3194
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !795
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !795
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !795
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPProcBindClauseEN4llvm3omp12ProcBindKindENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #30
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE27TransformOMPReductionClauseEPNS_18OMPReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3196 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3196
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not97 = icmp eq i32 %i.h, 0
  br i1 %.not97, label %.critedge58, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.05098 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.05098, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.05098, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge58, label %.lr.ph

.critedge58:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !815
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i61 = load i64, ptr %5, align 8, !tbaa !815
  %.not93 = icmp eq i64 %.sroa.0.0.copyload.i61, 0
  br i1 %.not93, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i62 = load i64, ptr %5, align 8, !tbaa !815
  %.not94 = icmp eq i64 %.sroa.0.0.copyload.i62, 0
  br i1 %.not94, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !876
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !3196 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx107.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx107.a ; 2 uses
  %.idx107 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx107
  %.not55102 = icmp eq i32 %i.ad, 0
  br i1 %.not55102, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge106.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.pre110 = load ptr, ptr %7, align 8, !tbaa !858
  %.pre111 = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.am = zext i32 %.pre111 to i64
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge106.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre110, %._crit_edge106.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !858
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load i64, ptr %i.as, align 8
  %.sroa.0.0.copyload.i65 = load i32, ptr %1, align 8, !tbaa !795
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i66 = load i32, ptr %i.au, align 4, !tbaa !795
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.av, align 8, !tbaa !795
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i68 = load i32, ptr %i.aw, align 4, !tbaa !795
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i69 = load i32, ptr %i.ax, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ay = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ay, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.az = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS0_19OpenMPVarListDataTy30OpenMPReductionClauseModifiersENS_14SourceLocationES8_S8_S8_S8_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ap, i64 %i.ar, i64 %i.at, i32 %.sroa.0.0.copyload.i65, i32 %.sroa.0.0.copyload.i66, i32 %.sroa.0.0.copyload.i67, i32 %.sroa.0.0.copyload.i68, i32 %.sroa.0.0.copyload.i69, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.aa
  br i1 %i.bb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge106
  call void @free(ptr noundef %i.ba) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge106, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph105, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.053103 = phi ptr [ %i.af, %.lr.ph105 ], [ %i.en, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76 ] ; 2 uses
  %i.bc = load ptr, ptr %.053103, align 8, !tbaa !1514 ; 4 uses
  %.not56 = icmp eq ptr %i.bc, null
  br i1 %.not56, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ag, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.bd = load i16, ptr %i.bc, align 8
  %i.be = and i16 %i.bd, 511
  %i.bf = icmp eq i16 %i.be, 24
  %.1.v.i.i.i.i = select i1 %i.bf, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !788 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %.idx108 = shl nuw nsw i64 %i.bi, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx108
  %.not9599 = icmp eq i32 %i.bh, 0
  br i1 %.not9599, label %._crit_edge, label %.lr.ph101

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bk = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 232
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bn = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bm) #30 ; 2 uses
  %i.bo = extractvalue { i64, ptr } %i.bn, 0
  %i.bp = extractvalue { i64, ptr } %i.bn, 1
  %i.bq = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.br = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bm, ptr noundef null, i64 %i.bo, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bu, i64 %i.bv, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bx = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.by = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i72 = icmp ult i32 %i.bx, %i.by
  br i1 %.not.i72, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

bb.l:                                             ; preds = %._crit_edge
  %i.bz = zext i32 %i.bx to i64
  %i.ca = load ptr, ptr %7, align 8, !tbaa !858
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store ptr %i.bw, ptr %i.cb, align 1
  %i.cc = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73: ; preds = %bb.k, %bb.l
  %i.ce = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ag
  br i1 %i.cf, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73
  call void @free(ptr noundef %i.ce) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

.lr.ph101:                                        ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.082.0100 = phi ptr [ %i.ef, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.082.0100, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.082.0100, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !5026 ; 3 uses
  %i.cj = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !5026 ; 2 uses
  %i.ck = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !5026 ; 4 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph101
  %i.cm = add i32 %i.ck, -1                       ; 2 uses
  %i.cn = mul i64 %i.cg, -4658895280553007687     ; 2 uses
  %i.co = lshr i64 %i.cn, 31
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cm, %i.cq                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !795, !noalias !5027
  %i.cw = and i32 %i.cr, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cz = phi i64 [ %i.df, %bb.o ], [ %i.cs, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.de, %bb.o ], [ %i.cr, %bb.n ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !855, !noalias !5027
  %i.dc = icmp eq ptr %i.db, %i.ch
  br i1 %i.dc, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !856

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dd = add nuw i32 %.017.i.i.i.i.i, 1
  %i.de = and i32 %i.dd, %i.cm                    ; 3 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 5
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !795, !noalias !5027
  %i.dj = and i32 %i.de, 31
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = trunc i32 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph101
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
  %.not.i74 = icmp eq ptr %.lcssa.sink.i.i.i, %i.do
  br i1 %.not.i74, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dq, %bb.p ], [ %i.ch, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = lshr i32 %i.ds, 13
  %i.du = and i32 %i.dt, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = ptrtoint ptr %.0.i to i64
  %i.dx = or i64 %i.dv, %i.dw                     ; 2 uses
  %i.dy = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.dz = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.dy, %i.dz
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !856

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dx)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ea = zext i32 %i.dy to i64
  %i.eb = load ptr, ptr %8, align 8, !tbaa !858
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  store i64 %i.dx, ptr %i.ec, align 1
  %i.ed = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.082.0100, i64 8 ; 2 uses
  %.not95 = icmp eq ptr %i.ef, %i.bj
  br i1 %.not95, label %._crit_edge, label %.lr.ph101

bb.s:                                             ; preds = %bb.i
  %i.eg = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.eh = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i75 = icmp ult i32 %i.eg, %i.eh
  br i1 %.not.i75, label %bb.u, label %bb.t, !prof !856

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

bb.u:                                             ; preds = %bb.s
  %i.ei = zext i32 %i.eg to i64
  %i.ej = load ptr, ptr %7, align 8, !tbaa !858
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  store ptr null, ptr %i.ek, align 1
  %i.el = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.053103, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.en, %9
  br i1 %.not55, label %._crit_edge106.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.az, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !1592
  %.not.i.i77 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i77, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1593
  call void @free(ptr noundef %i.er) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.es = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.a
  br i1 %i.et, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.es) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformOMPSafelenClauseEPNS_16OMPSafelenClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3198
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPSafelenClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformOMPScheduleClauseEPNS_17OMPScheduleClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3201
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3203
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3203
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3204
  %i.k = and i64 %i.c, -2
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.m, align 4, !tbaa !795
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.n, align 4, !tbaa !795
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.o, align 8, !tbaa !795
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.p, align 4, !tbaa !795
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.q, align 8, !tbaa !795
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.r, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.s = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.s, align 8, !tbaa !907
  %i.t = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPScheduleClauseENS_28OpenMPScheduleClauseModifierES1_NS_24OpenMPScheduleClauseKindEPNS_4ExprENS_14SourceLocationES5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i19, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE26TransformOMPSeverityClauseEPNS_17OMPSeverityClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3207
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !795
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !795
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !795
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPSeverityClauseENS_24OpenMPSeverityClauseKindENS_14SourceLocationES2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #30
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE24TransformOMPSharedClauseEPNS_15OMPSharedClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3209 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3209
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPSharedClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge
end_hunk_3
begin_hunk_4_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE23TransformOMPSizesClauseEPNS_14OMPSizesClauseE:bb.a

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.j
  %.02353 = phi i1 [ %.326.ph, %bb.j ], [ false, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 3 uses
  %.03152 = phi ptr [ %i.ae, %bb.j ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.03152, align 8, !tbaa !1514 ; 3 uses
  %.not33 = icmp eq ptr %i.l, null
  br i1 %.not33, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  %i.p = load ptr, ptr %2, align 8, !tbaa !858
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store ptr null, ptr %i.q, align 1
  %i.r = load i32, ptr %i.b, align 8, !tbaa !859
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.b, align 8, !tbaa !859
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.t = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l) ; 2 uses
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.t, -2
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %.not34 = icmp ne ptr %i.l, %i.w
  %spec.select = select i1 %.not34, i1 true, i1 %.02353 ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i35 = icmp ult i32 %i.x, %i.y
  br i1 %.not.i35, label %bb.i, label %bb.h, !prof !856

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.w)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %2, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.w, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !859
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.i
  %.326.ph = phi i1 [ %spec.select, %bb.i ], [ %spec.select, %bb.h ], [ %.02353, %bb.d ], [ %.02353, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03152, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j
  br i1 %.326.ph, label %bb.k, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.k:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr %2, align 8, !tbaa !858
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ah = zext i32 %i.ag to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ai, align 4, !tbaa !795
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.aj, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ak = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ak, align 8, !tbaa !907
  %i.al = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPSizesClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.af, i64 %i.ah, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i37, i32 %.sroa.0.0.copyload.i38) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %._crit_edge, %bb.k
  %.4 = phi ptr [ %i.al, %bb.k ], [ %1, %._crit_edge ], [ %1, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ], [ null, %bb.f ]
  %i.am = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.am) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE31TransformOMPTaskReductionClauseEPNS_22OMPTaskReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3215 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3215
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not92 = icmp eq i32 %i.h, 0
  br i1 %.not92, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04693 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04693, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04693, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !815
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !815
  %.not88 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not88, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !815
  %.not89 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not89, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !876
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !3215 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx102.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx102.a ; 2 uses
  %.idx102 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx102
  %.not5197 = icmp eq i32 %i.ad, 0
  br i1 %.not5197, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge101.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre105 = load ptr, ptr %7, align 8, !tbaa !858
  %.pre106 = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.am = zext i32 %.pre106 to i64
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge101.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre105, %._crit_edge101.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !858
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !795
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !795
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !795
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.av = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.av, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aw = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPTaskReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ax = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aa
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge101
  call void @free(ptr noundef %i.ax) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge101, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph100, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.04998 = phi ptr [ %i.af, %.lr.ph100 ], [ %i.ek, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.az = load ptr, ptr %.04998, align 8, !tbaa !1514 ; 4 uses
  %.not52 = icmp eq ptr %i.az, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ag, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = and i16 %i.ba, 511
  %i.bc = icmp eq i16 %i.bb, 24
  %.1.v.i.i.i.i = select i1 %i.bc, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !788 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx103 = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx103
  %.not9094 = icmp eq i32 %i.be, 0
  br i1 %.not9094, label %._crit_edge, label %.lr.ph96

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bh = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bk = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bj) #30 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  %i.bn = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.bo = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bj, ptr noundef null, i64 %i.bl, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.br, i64 %i.bs, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.bv = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i67 = icmp ult i32 %i.bu, %i.bv
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bw = zext i32 %i.bu to i64
  %i.bx = load ptr, ptr %7, align 8, !tbaa !858
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  store ptr %i.bt, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cb = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ag
  br i1 %i.cc, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cb) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph96:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.095 = phi ptr [ %i.ec, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.095, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.095, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !5036 ; 3 uses
  %i.cg = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !5036 ; 2 uses
  %i.ch = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !5036 ; 4 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph96
  %i.cj = add i32 %i.ch, -1                       ; 2 uses
  %i.ck = mul i64 %i.cd, -4658895280553007687     ; 2 uses
  %i.cl = lshr i64 %i.ck, 31
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = trunc i64 %i.cm to i32
  %i.co = and i32 %i.cj, %i.cn                    ; 3 uses
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = lshr i64 %i.cp, 5
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !795, !noalias !5037
  %i.ct = and i32 %i.co, 31
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = trunc i32 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cw = phi i64 [ %i.dc, %bb.o ], [ %i.cp, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.db, %bb.o ], [ %i.co, %bb.n ]
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cw ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !855, !noalias !5037
  %i.cz = icmp eq ptr %i.cy, %i.ce
  br i1 %i.cz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !856

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.da = add nuw i32 %.017.i.i.i.i.i, 1
  %i.db = and i32 %i.da, %i.cj                    ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 5
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !795, !noalias !5037
  %i.dg = and i32 %i.db, 31
  %i.dh = lshr i32 %i.df, %i.dg
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph96
  %i.dj = zext i32 %i.ch to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.dj
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ch to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dj, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dk, %.loopexit.i.i.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dl
  br i1 %.not.i69, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dn, %bb.p ], [ %i.ce, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = lshr i32 %i.dp, 13
  %i.dr = and i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = ptrtoint ptr %.0.i to i64
  %i.du = or i64 %i.ds, %i.dt                     ; 2 uses
  %i.dv = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.dw = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !856

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.du)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dx = zext i32 %i.dv to i64
  %i.dy = load ptr, ptr %8, align 8, !tbaa !858
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  store i64 %i.du, ptr %i.dz, align 1
  %i.ea = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.077.095, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.ec, %i.bg
  br i1 %.not90, label %._crit_edge, label %.lr.ph96

bb.s:                                             ; preds = %bb.i
  %i.ed = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.ee = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i70 = icmp ult i32 %i.ed, %i.ee
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !856

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.ef = zext i32 %i.ed to i64
  %i.eg = load ptr, ptr %7, align 8, !tbaa !858
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  store ptr null, ptr %i.eh, align 1
  %i.ei = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %.04998, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.ek, %9
  br i1 %.not51, label %._crit_edge101.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.aw, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !1592
  %.not.i.i72 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1593
  call void @free(ptr noundef %i.eo) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.ep = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.a
  br i1 %i.eq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ep) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE29TransformOMPThreadLimitClauseEPNS_20OMPThreadLimitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3349", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 3, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3217 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3217
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPThreadLimitClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE20TransformOMPToClauseEPNS_11OMPToClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !795
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !795
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !858
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !859
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !876
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3219 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1514 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !3219
  %.pre96 = load i32, ptr %i.g, align 4, !tbaa !876
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre96, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store i64 0, ptr %9, align 8, !tbaa !1110
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !844
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !858
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !859
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !876
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #30
  %.pre97 = load i32, ptr %i.i, align 4, !tbaa !3219
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre97, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i82 = icmp eq i32 %i.ab, 0
  br i1 %.not.i82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49
  %.058.i83 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i83, align 8, !tbaa !1514
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !5038 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !859 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !876
  %.not.i48 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i48, label %bb.h, label %bb.g, !prof !856

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !858
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !859
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i83, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ar, align 8, !tbaa !815 ; 2 uses
  %.not76 = icmp eq i64 %.sroa.0.0.copyload.i43, 0
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !100
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, i64 0, ptr noundef null), !inline_history !5038 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not77 = icmp eq i64 %i.at, 0
  br i1 %.not77, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.068.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.068.0, ptr %.sroa.6.0) #30, !inline_history !5038
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !815
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call fastcc void @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !5038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !815
  %.not79 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not79, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !3219
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx93 = shl nuw nsw i64 %i.ax, 3              ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ax, 4            ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %.not63.i89 = icmp samesign eq i64 %.idx93, %.idx.i.i
  br i1 %.not63.i89, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l
  %12 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx93
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i90 = phi ptr [ %12, %.lr.ph92 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i90, align 8, !tbaa !1514 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.ay, ptr %5, align 8, !tbaa !858
  store i32 0, ptr %i.az, align 8, !tbaa !859
  store i32 8, ptr %i.ba, align 4, !tbaa !876
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !788 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx94 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx94
  %.not8084 = icmp eq i32 %i.bj, 0
  br i1 %.not8084, label %._crit_edge88, label %.lr.ph87

._crit_edge88:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !2407
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #30, !inline_history !5038 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %5, align 8, !tbaa !858   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !859
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #30, !inline_history !5038 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i32 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i32, label %bb.p, label %bb.o, !prof !856

bb.o:                                             ; preds = %._crit_edge88
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

bb.p:                                             ; preds = %._crit_edge88
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %10, align 8, !tbaa !858
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !859
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %5, align 8, !tbaa !858   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33
  call void @free(ptr noundef %i.cf) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph87:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.057.085 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.057.085, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.057.085, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2065, !noalias !5047 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2416, !noalias !5047 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !2028, !noalias !5047 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph87
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !795, !noalias !5048
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !855, !noalias !5048
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !856

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !795, !noalias !5048
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph87
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i31 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i31, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !859 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !876
  %.not.i.i30 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i30, label %bb.v, label %bb.u, !prof !856

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %5, align 8, !tbaa !858
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !859
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.057.085, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not80, label %._crit_edge88, label %.lr.ph87

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i29 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i29, label %bb.y, label %bb.x, !prof !856

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %10, align 8, !tbaa !858
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !859
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i90, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %11
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.er, align 8, !tbaa !795
  %i.es = load ptr, ptr %7, align 8, !tbaa !858
  %i.et = load i32, ptr %i.f, align 8, !tbaa !859
  %i.eu = zext i32 %i.et to i64
  %i.ev = load ptr, ptr %10, align 8, !tbaa !858
  %i.ew = load i32, ptr %i.x, align 8, !tbaa !859
  %i.ex = zext i32 %i.ew to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ey = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ey, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ev, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ex, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.es, ptr %3, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.eu, ptr %.sroa.253.0..sroa_idx, align 8
  %i.ez = call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPToClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull %i.ep, i64 3, ptr nonnull %i.eq, i64 3, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 %.sroa.0.0.copyload.i27, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit
  %.1 = phi ptr [ %i.ez, %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.fa = load ptr, ptr %10, align 8, !tbaa !858  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.w
  br i1 %i.fb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread
  call void @free(ptr noundef %i.fa) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERNS6_15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESV_.exit.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !1592
  %.not.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1593
  call void @free(ptr noundef %i.ff) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.fg = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.e
  br i1 %i.fh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fg) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE29TransformOMPTransparentClauseEPNS_20OMPTransparentClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3222
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPTransparentClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE21TransformOMPUseClauseEPNS_12OMPUseClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3224
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.h, align 8, !tbaa !795
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.i, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2407
  %i.j = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.j, align 8, !tbaa !907
  %i.k = tail call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPUseClauseEPNS_4ExprENS_14SourceLocationES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE31TransformOMPUseDeviceAddrClauseEPNS_22OMPUseDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3226 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3226
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
end_hunk_4
begin_hunk_5_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE:bb.a

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformOMPHintClauseEPNS_13OMPHintClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3103
  %i.c = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %i.i = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !907
  %i.l = tail call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPHintClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %i.k, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23TransformOMPHoldsClauseEPNS_14OMPHoldsClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3105
  %i.c = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %i.i = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !907
  %i.l = tail call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPHoldsClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %i.k, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformOMPIfClauseEPNS_11OMPIfClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3107
  %i.c = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3108
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.i, align 4, !tbaa !795
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.j, align 8, !tbaa !795
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.k, align 8, !tbaa !795
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.l, align 4, !tbaa !795
  %i.m = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 832
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !907
  %i.p = tail call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPIfClauseEN4llvm3omp9DirectiveEPNS_4ExprENS_14SourceLocationES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %i.o, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i14, i32 %.sroa.0.0.copyload.i15, i32 %.sroa.0.0.copyload.i16) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE29TransformOMPInReductionClauseEPNS_20OMPInReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3110 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3110
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not92 = icmp eq i32 %i.h, 0
  br i1 %.not92, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04693 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04693, align 8, !tbaa !1514
  %i.m = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04693, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !815
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !815
  %.not88 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not88, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::DeclarationNameInfo") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !815
  %.not89 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not89, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !876
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !3110 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx102.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx102.a ; 2 uses
  %.idx102 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx102
  %.not5197 = icmp eq i32 %i.ad, 0
  br i1 %.not5197, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge101.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre105 = load ptr, ptr %7, align 8, !tbaa !858
  %.pre106 = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.am = zext i32 %.pre106 to i64
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge101.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre105, %._crit_edge101.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !858
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !795
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !795
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !795
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.av = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 832
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !907
  %i.ay = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPInReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %i.ax, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.az = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aa
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge101
  call void @free(ptr noundef %i.az) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge101, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph100, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.04998 = phi ptr [ %i.af, %.lr.ph100 ], [ %i.em, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.bb = load ptr, ptr %.04998, align 8, !tbaa !1514 ; 4 uses
  %.not52 = icmp eq ptr %i.bb, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ag, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = and i16 %i.bc, 511
  %i.be = icmp eq i16 %i.bd, 24
  %.1.v.i.i.i.i = select i1 %i.be, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !788 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %.idx103 = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx103
  %.not9094 = icmp eq i32 %i.bg, 0
  br i1 %.not9094, label %._crit_edge, label %.lr.ph96

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bj = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 232
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bm = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bl) #30 ; 2 uses
  %i.bn = extractvalue { i64, ptr } %i.bm, 0
  %i.bo = extractvalue { i64, ptr } %i.bm, 1
  %i.bp = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.bq = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.br
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bl, ptr noundef null, i64 %i.bn, ptr %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bt, i64 %i.bu, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bw = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.bx = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i67 = icmp ult i32 %i.bw, %i.bx
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bv)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %7, align 8, !tbaa !858
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  store ptr %i.bv, ptr %i.ca, align 1
  %i.cb = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cd = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ag
  br i1 %i.ce, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cd) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph96:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.095 = phi ptr [ %i.ee, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.095, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.095, align 8
  %i.cf = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !6077 ; 3 uses
  %i.ci = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !6077 ; 2 uses
  %i.cj = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !6077 ; 4 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph96
  %i.cl = add i32 %i.cj, -1                       ; 2 uses
  %i.cm = mul i64 %i.cf, -4658895280553007687     ; 2 uses
  %i.cn = lshr i64 %i.cm, 31
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = trunc i64 %i.co to i32
  %i.cq = and i32 %i.cl, %i.cp                    ; 3 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = lshr i64 %i.cr, 5
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !795, !noalias !6078
  %i.cv = and i32 %i.cq, 31
  %i.cw = lshr i32 %i.cu, %i.cv
  %i.cx = trunc i32 %i.cw to i1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cy = phi i64 [ %i.de, %bb.o ], [ %i.cr, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.dd, %bb.o ], [ %i.cq, %bb.n ]
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cy ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !855, !noalias !6078
  %i.db = icmp eq ptr %i.da, %i.cg
  br i1 %i.db, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !856

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dc = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dd = and i32 %i.dc, %i.cl                    ; 3 uses
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = lshr i64 %i.de, 5
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !795, !noalias !6078
  %i.di = and i32 %i.dd, 31
  %i.dj = lshr i32 %i.dh, %i.di
  %i.dk = trunc i32 %i.dj to i1
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph96
  %i.dl = zext i32 %i.cj to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.dl
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cj to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dl, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dm, %.loopexit.i.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dn
  br i1 %.not.i69, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dp, %bb.p ], [ %i.cg, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = lshr i32 %i.dr, 13
  %i.dt = and i32 %i.ds, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = ptrtoint ptr %.0.i to i64
  %i.dw = or i64 %i.du, %i.dv                     ; 2 uses
  %i.dx = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.dy = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.dx, %i.dy
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !856

bb.q:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dw)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dz = zext i32 %i.dx to i64
  %i.ea = load ptr, ptr %8, align 8, !tbaa !858
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dz
  store i64 %i.dw, ptr %i.eb, align 1
  %i.ec = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.077.095, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.ee, %i.bi
  br i1 %.not90, label %._crit_edge, label %.lr.ph96

bb.s:                                             ; preds = %bb.i
  %i.ef = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.eg = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i70 = icmp ult i32 %i.ef, %i.eg
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !856

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.eh = zext i32 %i.ef to i64
  %i.ei = load ptr, ptr %7, align 8, !tbaa !858
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  store ptr null, ptr %i.ej, align 1
  %i.ek = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %.04998, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.em, %9
  br i1 %.not51, label %._crit_edge101.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.ay, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !1592
  %.not.i.i72 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1593
  call void @free(ptr noundef %i.eq) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.er = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.a
  br i1 %i.es, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.er) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformOMPInclusiveClauseEPNS_18OMPInclusiveClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3112 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3112
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %i.ad = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 832
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !907
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPInclusiveClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %i.af, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ag, %.critedge24 ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformOMPInitClauseEPNS_13OMPInitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"struct.clang::OMPInteropInfo", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"class.llvm::SmallVector.1758", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1514
  %i.d = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3115, !range !96, !noundef !97
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !3116, !range !96, !noundef !97
  store i8 %i.g, ptr %2, align 8, !tbaa !3123
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !3124
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.k, align 2, !tbaa !3125
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !858
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !859
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 4, ptr %i.o, align 4, !tbaa !876
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !3126, !noalias !6093 ; 2 uses
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3127, !noalias !6093
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
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !795, !noalias !6094
  br label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit

_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit: ; preds = %bb.c, %bb.d
  %i.ag = phi i32 [ %i.af, %bb.d ], [ 0, %bb.c ]  ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.067.083, 1       ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1514, !noalias !6094 ; 2 uses
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !3126, !noalias !6094
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al
  %i.an = zext i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE29TransformOMPIsDevicePtrClauseEPNS_20OMPIsDevicePtrClauseE:bb.a
  store i32 %.sroa.0.0.copyload.i25, ptr %i.aa, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ab, align 4, !tbaa !795
  %i.ac = load ptr, ptr %2, align 8, !tbaa !858
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ae = zext i32 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 832
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !907
  %i.ai = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPIsDevicePtrClauseEN4llvm8ArrayRefIPNS_4ExprEEERKNS_15OMPVarListLocTyE(ptr noundef nonnull align 8 dereferenceable(552) %i.ah, ptr %i.ac, i64 %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ai, %.critedge24 ], [ null, %.lr.ph ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.aj) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE29TransformOMPLastprivateClauseEPNS_20OMPLastprivateClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3132 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3132
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
  %i.l = load ptr, ptr %.02538, align 8, !tbaa !1514
  %i.m = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge29, label %.lr.ph

.critedge29:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !3136
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.ad, align 4, !tbaa !795
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.ae, align 8, !tbaa !795
  %.sroa.0.0.copyload.i31 = load i32, ptr %1, align 8, !tbaa !795
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.af, align 4, !tbaa !795
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.ag, align 4, !tbaa !795
  %i.ah = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 832
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !907
  %i.ak = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPLastprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_25OpenMPLastprivateModifierENS_14SourceLocationES7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(552) %i.aj, ptr %i.y, i64 %i.aa, i32 noundef %i.ac, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i30, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, i32 %.sroa.0.0.copyload.i33) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge29
  %.3 = phi ptr [ %i.ak, %.critedge29 ], [ null, %.lr.ph ]
  %i.al = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.a
  br i1 %i.am, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.al) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE24TransformOMPLinearClauseEPNS_15OMPLinearClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3138 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3138
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
  %i.l = load ptr, ptr %.02844, align 8, !tbaa !1514
  %i.m = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02844, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge32.loopexit, label %.lr.ph

.critedge32.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.pre45 = load i32, ptr %i.d, align 4, !tbaa !3138
  %i.y = zext i32 %.pre45 to i64
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge32.loopexit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.z = phi i64 [ %i.y, %.critedge32.loopexit ], [ 0, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %3 = shl nuw nsw i64 %i.z, 5
  %4 = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1514
  %i.ac = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ab) ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.critedge32
  %i.ae = load ptr, ptr %2, align 8, !tbaa !858
  %i.af = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ag = zext i32 %i.af to i64
  %i.ah = and i64 %i.ac, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.aj, align 4, !tbaa !795
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3141
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i34 = load i32, ptr %i.am, align 4, !tbaa !795
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i35 = load i32, ptr %i.an, align 8, !tbaa !795
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.ao, align 4, !tbaa !795
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ap, align 4, !tbaa !795
  %i.aq = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 832
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !907
  %i.at = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPLinearClauseEN4llvm8ArrayRefIPNS_4ExprEEES4_NS_14SourceLocationES6_NS_22OpenMPLinearClauseKindES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %i.as, ptr %i.ae, i64 %i.ag, ptr noundef %i.ai, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i33, i32 noundef %i.al, i32 %.sroa.0.0.copyload.i34, i32 %.sroa.0.0.copyload.i35, i32 %.sroa.0.0.copyload.i36, i32 %.sroa.0.0.copyload.i37) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.critedge32
  %.4 = phi ptr [ null, %.critedge32 ], [ %i.at, %bb.f ], [ null, %.lr.ph ]
  %i.au = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.a
  br i1 %i.av, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.au) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformOMPLoopRangeClauseEPNS_18OMPLoopRangeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.c = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.g = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = and i64 %i.g, -2
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.m, align 4, !tbaa !795
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.n, align 8, !tbaa !795
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.o, align 4, !tbaa !795
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.p, align 4, !tbaa !795
  %i.q = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 832
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !907
  %i.t = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPLoopRangeClauseEPNS_4ExprES2_NS_14SourceLocationES3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %i.s, ptr noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.t, %.critedge ]
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE21TransformOMPMapClauseEPNS_12OMPMapClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %6 = alloca %"class.llvm::SmallVector.3172", align 8 ; 9 uses
  %7 = alloca %"class.clang::CXXScopeSpec", align 8 ; 9 uses
  %8 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 7 uses
  %9 = alloca %"class.llvm::SmallVector.3172", align 8 ; 9 uses
  %10 = alloca %"class.clang::CXXScopeSpec", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.a, align 4, !tbaa !795
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.b, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i, ptr %5, align 4, !tbaa !795
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.sroa.0.0.copyload.i27, ptr %i.c, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.0.0.copyload.i28, ptr %i.d, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !858
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !859
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 16, ptr %i.g, align 4, !tbaa !876
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3143
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1514 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.124 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store i64 0, ptr %8, align 8, !tbaa !1110
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !844
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.u, ptr %9, align 8, !tbaa !858
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 0, ptr %i.v, align 8, !tbaa !859
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 16, ptr %i.w, align 4, !tbaa !876
  %i.x = call noundef zeroext i1 @_ZN5clang34transformOMPMappableExprListClauseI38EnsureImmediateInvocationInDefaultArgsNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(16) %9)
  br i1 %i.x, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.aa = load i64, ptr %7, align 8, !tbaa !795
  store i64 %i.aa, ptr %10, align 8, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !3145
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !3149
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !3150, !range !96, !noundef !97
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.ak, align 8, !tbaa !795
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.al, align 4, !tbaa !795
  %i.am = load ptr, ptr %6, align 8, !tbaa !858
  %i.an = load i32, ptr %i.f, align 8, !tbaa !859
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %9, align 8, !tbaa !858
  %i.aq = load i32, ptr %i.v, align 8, !tbaa !859
  %i.ar = zext i32 %i.aq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ap, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ar, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.am, ptr %3, align 8
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ao, ptr %.sroa.237.0..sroa_idx, align 8
  %i.as = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 832
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !907
  %i.av = call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_(ptr noundef nonnull align 8 dereferenceable(552) %i.au, ptr noundef %.124, ptr nonnull %i.y, i64 7, ptr nonnull %i.z, i64 7, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.ag, i1 noundef zeroext %i.aj, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %5, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 28
end_hunk_6
begin_hunk_7_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformOMPPrivateClauseEPNS_16OMPPrivateClauseE:bb.a
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.02031 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %i.ad = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 832
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !907
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPPrivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %i.af, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ag, %.critedge24 ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformOMPProcBindClauseEPNS_17OMPProcBindClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3194
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !795
  %.sroa.0.0.copyload.i9 = load i32, ptr %1, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !795
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !795
  %i.f = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !907
  %i.i = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPProcBindClauseEN4llvm3omp12ProcBindKindENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %i.h, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #30
  ret ptr %i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformOMPReadClauseEPNS_13OMPReadClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformOMPReductionClauseEPNS_18OMPReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3196 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3196
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not97 = icmp eq i32 %i.h, 0
  br i1 %.not97, label %.critedge58, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.05098 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.05098, align 8, !tbaa !1514
  %i.m = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.05098, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge58, label %.lr.ph

.critedge58:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !815
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i61 = load i64, ptr %5, align 8, !tbaa !815
  %.not93 = icmp eq i64 %.sroa.0.0.copyload.i61, 0
  br i1 %.not93, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::DeclarationNameInfo") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i62 = load i64, ptr %5, align 8, !tbaa !815
  %.not94 = icmp eq i64 %.sroa.0.0.copyload.i62, 0
  br i1 %.not94, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !876
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !3196 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx107.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx107.a ; 2 uses
  %.idx107 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx107
  %.not55102 = icmp eq i32 %i.ad, 0
  br i1 %.not55102, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge106.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.pre110 = load ptr, ptr %7, align 8, !tbaa !858
  %.pre111 = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.am = zext i32 %.pre111 to i64
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge106.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre110, %._crit_edge106.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !858
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load i64, ptr %i.as, align 8
  %.sroa.0.0.copyload.i65 = load i32, ptr %1, align 8, !tbaa !795
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i66 = load i32, ptr %i.au, align 4, !tbaa !795
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.av, align 8, !tbaa !795
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i68 = load i32, ptr %i.aw, align 4, !tbaa !795
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i69 = load i32, ptr %i.ax, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ay = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 832
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !907
  %i.bb = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS0_19OpenMPVarListDataTy30OpenMPReductionClauseModifiersENS_14SourceLocationES8_S8_S8_S8_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %i.ba, ptr %i.ap, i64 %i.ar, i64 %i.at, i32 %.sroa.0.0.copyload.i65, i32 %.sroa.0.0.copyload.i66, i32 %.sroa.0.0.copyload.i67, i32 %.sroa.0.0.copyload.i68, i32 %.sroa.0.0.copyload.i69, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bc = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.aa
  br i1 %i.bd, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge106
  call void @free(ptr noundef %i.bc) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge106, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph105, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.053103 = phi ptr [ %i.af, %.lr.ph105 ], [ %i.ep, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76 ] ; 2 uses
  %i.be = load ptr, ptr %.053103, align 8, !tbaa !1514 ; 4 uses
  %.not56 = icmp eq ptr %i.be, null
  br i1 %.not56, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ag, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !788 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx108 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx108
  %.not9599 = icmp eq i32 %i.bj, 0
  br i1 %.not9599, label %._crit_edge, label %.lr.ph101

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bm = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 232
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bp = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bo) #30 ; 2 uses
  %i.bq = extractvalue { i64, ptr } %i.bp, 0
  %i.br = extractvalue { i64, ptr } %i.bp, 1
  %i.bs = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.bt = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bo, ptr noundef null, i64 %i.bq, ptr %i.br, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bw, i64 %i.bx, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bz = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.ca = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i72 = icmp ult i32 %i.bz, %i.ca
  br i1 %.not.i72, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.by)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

bb.l:                                             ; preds = %._crit_edge
  %i.cb = zext i32 %i.bz to i64
  %i.cc = load ptr, ptr %7, align 8, !tbaa !858
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  store ptr %i.by, ptr %i.cd, align 1
  %i.ce = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73: ; preds = %bb.k, %bb.l
  %i.cg = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ag
  br i1 %i.ch, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73
  call void @free(ptr noundef %i.cg) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

.lr.ph101:                                        ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.082.0100 = phi ptr [ %i.eh, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.082.0100, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.082.0100, align 8
  %i.ci = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.cj = inttoptr i64 %i.ci to ptr               ; 2 uses
  %i.ck = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !6103 ; 3 uses
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !6103 ; 2 uses
  %i.cm = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !6103 ; 4 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph101
  %i.co = add i32 %i.cm, -1                       ; 2 uses
  %i.cp = mul i64 %i.ci, -4658895280553007687     ; 2 uses
  %i.cq = lshr i64 %i.cp, 31
  %i.cr = xor i64 %i.cq, %i.cp
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = and i32 %i.co, %i.cs                    ; 3 uses
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = lshr i64 %i.cu, 5
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !795, !noalias !6104
  %i.cy = and i32 %i.ct, 31
  %i.cz = lshr i32 %i.cx, %i.cy
  %i.da = trunc i32 %i.cz to i1
  br i1 %i.da, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.db = phi i64 [ %i.dh, %bb.o ], [ %i.cu, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.dg, %bb.o ], [ %i.ct, %bb.n ]
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.db ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !855, !noalias !6104
  %i.de = icmp eq ptr %i.dd, %i.cj
  br i1 %i.de, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !856

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.df = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dg = and i32 %i.df, %i.co                    ; 3 uses
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = lshr i64 %i.dh, 5
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !795, !noalias !6104
  %i.dl = and i32 %i.dg, 31
  %i.dm = lshr i32 %i.dk, %i.dl
  %i.dn = trunc i32 %i.dm to i1
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph101
  %i.do = zext i32 %i.cm to i64                   ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.do
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cm to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.dc, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dp, %.loopexit.i.i.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %.pre-phi.i
  %.not.i74 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dq
  br i1 %.not.i74, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.ds, %bb.p ], [ %i.cj, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = lshr i32 %i.du, 13
  %i.dw = and i32 %i.dv, 3
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = ptrtoint ptr %.0.i to i64
  %i.dz = or i64 %i.dx, %i.dy                     ; 2 uses
  %i.ea = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.eb = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.ea, %i.eb
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !856

bb.q:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dz)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ec = zext i32 %i.ea to i64
  %i.ed = load ptr, ptr %8, align 8, !tbaa !858
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  store i64 %i.dz, ptr %i.ee, align 1
  %i.ef = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.082.0100, i64 8 ; 2 uses
  %.not95 = icmp eq ptr %i.eh, %i.bl
  br i1 %.not95, label %._crit_edge, label %.lr.ph101

bb.s:                                             ; preds = %bb.i
  %i.ei = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.ej = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i75 = icmp ult i32 %i.ei, %i.ej
  br i1 %.not.i75, label %bb.u, label %bb.t, !prof !856

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

bb.u:                                             ; preds = %bb.s
  %i.ek = zext i32 %i.ei to i64
  %i.el = load ptr, ptr %7, align 8, !tbaa !858
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ek
  store ptr null, ptr %i.em, align 1
  %i.en = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %.053103, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.ep, %9
  br i1 %.not55, label %._crit_edge106.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.bb, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !1592
  %.not.i.i77 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i77, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1593
  call void @free(ptr noundef %i.et) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.eu = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.a
  br i1 %i.ev, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.eu) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformOMPRelaxedClauseEPNS_16OMPRelaxedClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformOMPReleaseClauseEPNS_16OMPReleaseClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE32TransformOMPReverseOffloadClauseEPNS_23OMPReverseOffloadClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformOMPSafelenClauseEPNS_16OMPSafelenClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3198
  %i.c = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %i.i = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 832
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !907
  %i.l = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPSafelenClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %i.k, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformOMPScheduleClauseEPNS_17OMPScheduleClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3201
  %i.c = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3203
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3203
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3204
  %i.k = and i64 %i.c, -2
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.m, align 4, !tbaa !795
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.n, align 4, !tbaa !795
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.o, align 8, !tbaa !795
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.p, align 4, !tbaa !795
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.q, align 8, !tbaa !795
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.r, align 4, !tbaa !795
  %i.s = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 832
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !907
  %i.v = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPScheduleClauseENS_28OpenMPScheduleClauseModifierES1_NS_24OpenMPScheduleClauseKindEPNS_4ExprENS_14SourceLocationES5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %i.u, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i19, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformOMPSelfMapsClauseEPNS_17OMPSelfMapsClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE24TransformOMPSeqCstClauseEPNS_15OMPSeqCstClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE26TransformOMPSeverityClauseEPNS_17OMPSeverityClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3207
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !795
  %.sroa.0.0.copyload.i9 = load i32, ptr %1, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !795
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !795
  %i.f = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 832
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !907
  %i.i = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPSeverityClauseENS_24OpenMPSeverityClauseKindENS_14SourceLocationES2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(552) %i.h, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #30
  ret ptr %i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE24TransformOMPSharedClauseEPNS_15OMPSharedClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3209 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3209
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

end_hunk_7
begin_hunk_8_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23TransformOMPSizesClauseEPNS_14OMPSizesClauseE:bb.a
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.j
  %.03151 = phi ptr [ %i.ae, %bb.j ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.03151, align 8, !tbaa !1514 ; 2 uses
  %.not33 = icmp eq ptr %i.l, null
  br i1 %.not33, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  %i.p = load ptr, ptr %2, align 8, !tbaa !858
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store ptr null, ptr %i.q, align 1
  %i.r = load i32, ptr %i.b, align 8, !tbaa !859
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.b, align 8, !tbaa !859
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.t = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l) ; 2 uses
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.t, -2
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i35 = icmp ult i32 %i.x, %i.y
  br i1 %.not.i35, label %bb.i, label %bb.h, !prof !856

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.w)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %2, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.w, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !859
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.03151, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.af = load ptr, ptr %2, align 8, !tbaa !858
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ah = zext i32 %i.ag to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ai, align 4, !tbaa !795
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.aj, align 4, !tbaa !795
  %i.ak = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 832
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !907
  %i.an = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPSizesClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %i.am, ptr %i.af, i64 %i.ah, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i37, i32 %.sroa.0.0.copyload.i38) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %._crit_edge
  %.4 = phi ptr [ %i.an, %._crit_edge ], [ null, %bb.f ]
  %i.ao = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.a
  br i1 %i.ap, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.ao) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE31TransformOMPTaskReductionClauseEPNS_22OMPTaskReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3215 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3215
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not92 = icmp eq i32 %i.h, 0
  br i1 %.not92, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04693 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04693, align 8, !tbaa !1514
  %i.m = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04693, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !815
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !815
  %.not88 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not88, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::DeclarationNameInfo") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !815
  %.not89 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not89, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !876
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !3215 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx102.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx102.a ; 2 uses
  %.idx102 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx102
  %.not5197 = icmp eq i32 %i.ad, 0
  br i1 %.not5197, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge101.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre105 = load ptr, ptr %7, align 8, !tbaa !858
  %.pre106 = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.am = zext i32 %.pre106 to i64
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge101.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre105, %._crit_edge101.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !858
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !795
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !795
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !795
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.av = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 832
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !907
  %i.ay = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPTaskReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %i.ax, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.az = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.aa
  br i1 %i.ba, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge101
  call void @free(ptr noundef %i.az) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge101, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph100, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.04998 = phi ptr [ %i.af, %.lr.ph100 ], [ %i.em, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.bb = load ptr, ptr %.04998, align 8, !tbaa !1514 ; 4 uses
  %.not52 = icmp eq ptr %i.bb, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ag, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = and i16 %i.bc, 511
  %i.be = icmp eq i16 %i.bd, 24
  %.1.v.i.i.i.i = select i1 %i.be, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !788 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %.idx103 = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx103
  %.not9094 = icmp eq i32 %i.bg, 0
  br i1 %.not9094, label %._crit_edge, label %.lr.ph96

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bj = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 232
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bm = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bl) #30 ; 2 uses
  %i.bn = extractvalue { i64, ptr } %i.bm, 0
  %i.bo = extractvalue { i64, ptr } %i.bm, 1
  %i.bp = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.bq = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.br
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bl, ptr noundef null, i64 %i.bn, ptr %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bt, i64 %i.bu, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bw = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.bx = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i67 = icmp ult i32 %i.bw, %i.bx
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bv)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %7, align 8, !tbaa !858
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  store ptr %i.bv, ptr %i.ca, align 1
  %i.cb = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cd = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ag
  br i1 %i.ce, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cd) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph96:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.095 = phi ptr [ %i.ee, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.095, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.095, align 8
  %i.cf = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !6113 ; 3 uses
  %i.ci = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !6113 ; 2 uses
  %i.cj = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !6113 ; 4 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph96
  %i.cl = add i32 %i.cj, -1                       ; 2 uses
  %i.cm = mul i64 %i.cf, -4658895280553007687     ; 2 uses
  %i.cn = lshr i64 %i.cm, 31
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = trunc i64 %i.co to i32
  %i.cq = and i32 %i.cl, %i.cp                    ; 3 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = lshr i64 %i.cr, 5
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !795, !noalias !6114
  %i.cv = and i32 %i.cq, 31
  %i.cw = lshr i32 %i.cu, %i.cv
  %i.cx = trunc i32 %i.cw to i1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cy = phi i64 [ %i.de, %bb.o ], [ %i.cr, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.dd, %bb.o ], [ %i.cq, %bb.n ]
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cy ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !855, !noalias !6114
  %i.db = icmp eq ptr %i.da, %i.cg
  br i1 %i.db, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !856

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dc = add nuw i32 %.017.i.i.i.i.i, 1
  %i.dd = and i32 %i.dc, %i.cl                    ; 3 uses
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = lshr i64 %i.de, 5
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !795, !noalias !6114
  %i.di = and i32 %i.dd, 31
  %i.dj = lshr i32 %i.dh, %i.di
  %i.dk = trunc i32 %i.dj to i1
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph96
  %i.dl = zext i32 %i.cj to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.dl
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cj to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dl, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dm, %.loopexit.i.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dn
  br i1 %.not.i69, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dp, %bb.p ], [ %i.cg, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = lshr i32 %i.dr, 13
  %i.dt = and i32 %i.ds, 3
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = ptrtoint ptr %.0.i to i64
  %i.dw = or i64 %i.du, %i.dv                     ; 2 uses
  %i.dx = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.dy = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.dx, %i.dy
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !856

bb.q:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dw)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dz = zext i32 %i.dx to i64
  %i.ea = load ptr, ptr %8, align 8, !tbaa !858
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dz
  store i64 %i.dw, ptr %i.eb, align 1
  %i.ec = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.077.095, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.ee, %i.bi
  br i1 %.not90, label %._crit_edge, label %.lr.ph96

bb.s:                                             ; preds = %bb.i
  %i.ef = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.eg = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i70 = icmp ult i32 %i.ef, %i.eg
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !856

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.eh = zext i32 %i.ef to i64
  %i.ei = load ptr, ptr %7, align 8, !tbaa !858
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  store ptr null, ptr %i.ej, align 1
  %i.ek = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %.04998, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.em, %9
  br i1 %.not51, label %._crit_edge101.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.ay, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !1592
  %.not.i.i72 = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1593
  call void @free(ptr noundef %i.eq) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.er = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.a
  br i1 %i.es, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.er) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE29TransformOMPThreadLimitClauseEPNS_20OMPThreadLimitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3349", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 3, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3217 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3217
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %i.ad = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 832
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !907
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPThreadLimitClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %i.af, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ag, %.critedge24 ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE25TransformOMPThreadsClauseEPNS_16OMPThreadsClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE27TransformOMPThreadsetClauseEPNS_18OMPThreadsetClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE20TransformOMPToClauseEPNS_11OMPToClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %4 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %5 = alloca %"class.llvm::SmallVector.3172", align 8 ; 9 uses
  %6 = alloca %"class.clang::CXXScopeSpec", align 8 ; 7 uses
  %7 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 7 uses
  %8 = alloca %"class.llvm::SmallVector.3172", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !795
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i, ptr %4, align 4, !tbaa !795
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !858
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !859
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 16, ptr %i.g, align 4, !tbaa !876
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3219
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1514 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store i64 0, ptr %7, align 8, !tbaa !1110
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !844
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.t, align 8
end_hunk_8
begin_hunk_9_@_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE30TransformOMPUseDevicePtrClauseEPNS_21OMPUseDevicePtrClauseE:bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.y, align 4, !tbaa !795
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i29 = load i32, ptr %i.z, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i, ptr %3, align 4, !tbaa !795
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.0.0.copyload.i28, ptr %i.aa, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.0.0.copyload.i29, ptr %i.ab, align 4, !tbaa !795
  %i.ac = load ptr, ptr %2, align 8, !tbaa !858
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !3232
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.ah, align 4, !tbaa !795
  %i.ai = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 832
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !907
  %i.al = call noundef ptr @_ZN5clang10SemaOpenMP29ActOnOpenMPUseDevicePtrClauseEN4llvm8ArrayRefIPNS_4ExprEEERKNS_15OMPVarListLocTyENS_34OpenMPUseDevicePtrFallbackModifierENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(552) %i.ak, ptr %i.ac, i64 %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %3, i32 noundef %i.ag, i32 %.sroa.0.0.copyload.i30) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge27
  %.3 = phi ptr [ %i.al, %.critedge27 ], [ null, %.lr.ph ]
  %i.am = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.am) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE32TransformOMPUsesAllocatorsClauseEPNS_23OMPUsesAllocatorsClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3441", align 8 ; 12 uses
  %3 = alloca %"struct.clang::OMPUsesAllocatorsClause::Data", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3234 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIN5clang10SemaOpenMP18UsesAllocatorsDataEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 24) #30
  %.pre = load i32, ptr %i.d, align 8, !tbaa !3234
  br label %_ZN4llvm15SmallVectorImplIN5clang10SemaOpenMP18UsesAllocatorsDataEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIN5clang10SemaOpenMP18UsesAllocatorsDataEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %.not29 = icmp eq i32 %i.h, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIN5clang10SemaOpenMP18UsesAllocatorsDataEE7reserveEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %bb.d

._crit_edge:                                      ; preds = %bb.i, %_ZN4llvm15SmallVectorImplIN5clang10SemaOpenMP18UsesAllocatorsDataEE7reserveEm.exit
  %i.l = load ptr, ptr %2, align 8, !tbaa !858
  %i.m = load i32, ptr %i.b, align 8, !tbaa !859
  %i.n = zext i32 %i.m to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.o, align 4, !tbaa !795
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.p, align 4, !tbaa !795
  %i.q = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 832
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !907
  %i.t = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPUsesAllocatorClauseENS_14SourceLocationES1_S1_N4llvm8ArrayRefINS0_18UsesAllocatorsDataEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.s, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, ptr %i.l, i64 %i.n) #30
  %i.u = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZN4llvm11SmallVectorIN5clang10SemaOpenMP18UsesAllocatorsDataELj16EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.u) #30
  br label %_ZN4llvm11SmallVectorIN5clang10SemaOpenMP18UsesAllocatorsDataELj16EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang10SemaOpenMP18UsesAllocatorsDataELj16EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %i.t

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.028 = phi i32 [ 0, %.lr.ph ], [ %i.ax, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNK5clang23OMPUsesAllocatorsClause16getAllocatorDataEj(ptr dead_on_unwind nonnull writable sret(%"struct.clang::OMPUsesAllocatorsClause::Data") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.028) #30
  %i.w = load ptr, ptr %3, align 8, !tbaa !3236
  %i.x = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.w) ; 2 uses
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !3237 ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.z) ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e
  %.sroa.024.0 = phi i64 [ 0, %bb.e ], [ %i.aa, %bb.f ]
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !856

bb.g:                                             ; preds = %.critedge
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseIN5clang10SemaOpenMP18UsesAllocatorsDataELb1EE18growAndEmplaceBackIJEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN4llvm15SmallVectorImplIN5clang10SemaOpenMP18UsesAllocatorsDataEE12emplace_backIJEEERS3_DpOT_.exit

bb.h:                                             ; preds = %.critedge
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %2, align 8, !tbaa !858
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aj = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.aj, ptr %i.b, align 8, !tbaa !859
  %i.ak = load ptr, ptr %2, align 8, !tbaa !858
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -24
  br label %_ZN4llvm15SmallVectorImplIN5clang10SemaOpenMP18UsesAllocatorsDataEE12emplace_backIJEEERS3_DpOT_.exit

_ZN4llvm15SmallVectorImplIN5clang10SemaOpenMP18UsesAllocatorsDataEE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.ae, %bb.g ], [ %i.an, %bb.h ] ; 4 uses
  %i.ao = and i64 %i.x, -2
  %i.ap = inttoptr i64 %i.ao to ptr
  store ptr %i.ap, ptr %.0.i, align 8, !tbaa !3239
  %i.aq = and i64 %.sroa.024.0, -2
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !3240
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.au = load i32, ptr %i.j, align 8, !tbaa !795
  store i32 %i.au, ptr %i.at, align 8, !tbaa !795
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i, i64 20
  %i.aw = load i32, ptr %i.k, align 4, !tbaa !795
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !795
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm15SmallVectorImplIN5clang10SemaOpenMP18UsesAllocatorsDataEE12emplace_backIJEEERS3_DpOT_.exit, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ax = add nuw i32 %.028, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !6115
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE22TransformOMPWeakClauseEPNS_13OMPWeakClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE23TransformOMPWriteClauseEPNS_14OMPWriteClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang34transformOMPMappableExprListClauseI38EnsureImmediateInvocationInDefaultArgsNS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3095 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !876
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.g, i64 noundef %i.f, i64 noundef 8) #30
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3095
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not108 = icmp eq i32 %i.h, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.058109 = phi ptr [ %i.j, %.lr.ph ], [ %i.y, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.m = load ptr, ptr %.058109, align 8, !tbaa !1514
  %i.n = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m) ; 2 uses
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %i.n, -2
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load i32, ptr %i.l, align 8, !tbaa !859  ; 2 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.r, %i.s
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !856

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.q)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = zext i32 %i.r to i64
  %i.u = load ptr, ptr %2, align 8, !tbaa !858
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  store ptr %i.q, ptr %i.v, align 1
  %i.w = load i32, ptr %i.l, align 8, !tbaa !859
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.058109, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.k
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 8, !tbaa !815 ; 2 uses
  %.not101 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not101, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  %i.aa = tail call { i64, ptr } @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 0, ptr noundef null) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.aa, 1
  %.not102 = icmp eq i64 %i.ab, 0
  br i1 %.not102, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.ac, %bb.g ], [ null, %._crit_edge ]
  %.sroa.094.0 = phi i64 [ %i.ab, %bb.g ], [ 0, %._crit_edge ]
  tail call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 %.sroa.094.0, ptr %.sroa.6.0) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i72 = load i64, ptr %4, align 8, !tbaa !815
  %.not103 = icmp eq i64 %.sroa.0.0.copyload.i72, 0
  br i1 %.not103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::DeclarationNameInfo") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i73 = load i64, ptr %4, align 8, !tbaa !815
  %.not104 = icmp eq i64 %.sroa.0.0.copyload.i73, 0
  br i1 %.not104, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !3095
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %.idx119 = shl nuw nsw i64 %i.af, 3             ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.af, 4            ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %.not63115 = icmp samesign eq i64 %.idx119, %.idx.i.i
  br i1 %.not63115, label %.critedge, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx119
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph118, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82
  %.061116 = phi ptr [ %9, %.lr.ph118 ], [ %i.dz, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82 ] ; 2 uses
  %i.ao = load ptr, ptr %.061116, align 8, !tbaa !1514 ; 4 uses
  %.not64 = icmp eq ptr %i.ao, null
  br i1 %.not64, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.ag, ptr %7, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = and i16 %i.ap, 511
  %i.ar = icmp eq i16 %i.aq, 24
  %.1.v.i.i.i.i = select i1 %i.ar, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.1.v.i.i.i.i ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !788 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %.idx120 = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx120
  %.not105110 = icmp eq i32 %i.at, 0
  br i1 %.not105110, label %._crit_edge114, label %.lr.ph113

._crit_edge114:                                   ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.l
  %i.aw = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 232
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.az = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(23904) %i.ay) #30 ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.az, 0
  %i.bb = extractvalue { i64, ptr } %i.az, 1
  %i.bc = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.bd = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ay, ptr noundef null, i64 %i.ba, ptr %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true, i64 %i.bg, i64 %i.bh, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bj = load i32, ptr %i.am, align 8, !tbaa !859 ; 2 uses
  %i.bk = load i32, ptr %i.an, align 4, !tbaa !876
  %.not.i78 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i78, label %bb.n, label %bb.m, !prof !856

bb.m:                                             ; preds = %._crit_edge114
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bi)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79

bb.n:                                             ; preds = %._crit_edge114
  %i.bl = zext i32 %i.bj to i64
  %i.bm = load ptr, ptr %5, align 8, !tbaa !858
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.bi, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.am, align 8, !tbaa !859
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.am, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79: ; preds = %bb.m, %bb.n
  %i.bq = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ag
  br i1 %i.br, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79
  call void @free(ptr noundef %i.bq) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82

.lr.ph113:                                        ; preds = %bb.l, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.083.0111 = phi ptr [ %i.dr, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.l ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.083.0111, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.083.0111, align 8
  %i.bs = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !6124 ; 3 uses
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !6124 ; 2 uses
  %i.bw = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !6124 ; 4 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph113
  %i.by = add i32 %i.bw, -1                       ; 2 uses
  %i.bz = mul i64 %i.bs, -4658895280553007687     ; 2 uses
  %i.ca = lshr i64 %i.bz, 31
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.by, %i.cc                    ; 3 uses
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = lshr i64 %i.ce, 5
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !795, !noalias !6125
  %i.ci = and i32 %i.cd, 31
  %i.cj = lshr i32 %i.ch, %i.ci
  %i.ck = trunc i32 %i.cj to i1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %i.cl = phi i64 [ %i.cr, %bb.q ], [ %i.ce, %bb.p ]
  %.017.i.i.i.i.i = phi i32 [ %i.cq, %bb.q ], [ %i.cd, %bb.p ]
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.cl ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !855, !noalias !6125
  %i.co = icmp eq ptr %i.cn, %i.bt
  br i1 %i.co, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.q, !prof !856

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cp = add nuw i32 %.017.i.i.i.i.i, 1
  %i.cq = and i32 %i.cp, %i.by                    ; 3 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = lshr i64 %i.cr, 5
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !795, !noalias !6125
  %i.cv = and i32 %i.cq, 31
  %i.cw = lshr i32 %i.cu, %i.cv
  %i.cx = trunc i32 %i.cw to i1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.q, %bb.p, %.lr.ph113
  %i.cy = zext i32 %i.bw to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.cy
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.bw to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.cy, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.cz, %.loopexit.i.i.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.pre-phi.i
  %.not.i80 = icmp eq ptr %.lcssa.sink.i.i.i, %i.da
  br i1 %.not.i80, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.r
  %.0.i = phi ptr [ %i.dc, %bb.r ], [ %i.bt, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = lshr i32 %i.de, 13
  %i.dg = and i32 %i.df, 3
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = ptrtoint ptr %.0.i to i64
  %i.dj = or i64 %i.dh, %i.di                     ; 2 uses
  %i.dk = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.dl = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.dk, %i.dl
  br i1 %.not.i.i, label %bb.t, label %bb.s, !prof !856

bb.s:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 %i.dj)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.t:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dm = zext i32 %i.dk to i64
  %i.dn = load ptr, ptr %7, align 8, !tbaa !858
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  store i64 %i.dj, ptr %i.do, align 1
  %i.dp = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.s, %bb.t
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.083.0111, i64 8 ; 2 uses
  %.not105 = icmp eq ptr %i.dr, %i.av
  br i1 %.not105, label %._crit_edge114, label %.lr.ph113

bb.u:                                             ; preds = %bb.k
  %i.ds = load i32, ptr %i.am, align 8, !tbaa !859 ; 2 uses
  %i.dt = load i32, ptr %i.an, align 4, !tbaa !876
  %.not.i81 = icmp ult i32 %i.ds, %i.dt
  br i1 %.not.i81, label %bb.w, label %bb.v, !prof !856

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82

bb.w:                                             ; preds = %bb.u
  %i.du = zext i32 %i.ds to i64
  %i.dv = load ptr, ptr %5, align 8, !tbaa !858
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  store ptr null, ptr %i.dw, align 1
  %i.dx = load i32, ptr %i.am, align 8, !tbaa !859
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.am, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82: ; preds = %bb.w, %bb.v, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %.061116, i64 8 ; 2 uses
  %.not63 = icmp eq ptr %i.dz, %8
  br i1 %.not63, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82, %bb.j, %bb.g, %bb.i
  %.4 = phi i1 [ false, %bb.j ], [ true, %bb.g ], [ true, %bb.i ], [ false, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82 ], [ true, %bb.c ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang34transformOMPMappableExprListClauseI38EnsureImmediateInvocationInDefaultArgsNS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3143 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !876
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.g, i64 noundef %i.f, i64 noundef 8) #30
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3143
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 4 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not108 = icmp eq i32 %i.h, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.058109 = phi ptr [ %i.j, %.lr.ph ], [ %i.y, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.m = load ptr, ptr %.058109, align 8, !tbaa !1514
  %i.n = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m) ; 2 uses
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %i.n, -2
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load i32, ptr %i.l, align 8, !tbaa !859  ; 2 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.r, %i.s
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !856

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.q)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = zext i32 %i.r to i64
  %i.u = load ptr, ptr %2, align 8, !tbaa !858
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  store ptr %i.q, ptr %i.v, align 1
  %i.w = load i32, ptr %i.l, align 8, !tbaa !859
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.058109, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.k
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 8, !tbaa !815 ; 2 uses
  %.not101 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not101, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  %i.aa = tail call { i64, ptr } @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 0, ptr noundef null) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.aa, 1
  %.not102 = icmp eq i64 %i.ab, 0
  br i1 %.not102, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.ac, %bb.g ], [ null, %._crit_edge ]
  %.sroa.094.0 = phi i64 [ %i.ab, %bb.g ], [ 0, %._crit_edge ]
  tail call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 %.sroa.094.0, ptr %.sroa.6.0) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i72 = load i64, ptr %4, align 8, !tbaa !815
  %.not103 = icmp eq i64 %.sroa.0.0.copyload.i72, 0
  br i1 %.not103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::DeclarationNameInfo") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i73 = load i64, ptr %4, align 8, !tbaa !815
  %.not104 = icmp eq i64 %.sroa.0.0.copyload.i73, 0
  br i1 %.not104, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !3143
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %.idx119 = shl nuw nsw i64 %i.af, 3             ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.af, 4            ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %.not63115 = icmp samesign eq i64 %.idx119, %.idx.i.i
  br i1 %.not63115, label %.critedge, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx119
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph118, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82
  %.061116 = phi ptr [ %9, %.lr.ph118 ], [ %i.dz, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82 ] ; 2 uses
  %i.ao = load ptr, ptr %.061116, align 8, !tbaa !1514 ; 4 uses
  %.not64 = icmp eq ptr %i.ao, null
  br i1 %.not64, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.ag, ptr %7, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = and i16 %i.ap, 511
  %i.ar = icmp eq i16 %i.aq, 24
  %.1.v.i.i.i.i = select i1 %i.ar, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.1.v.i.i.i.i ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !788 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %.idx120 = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx120
  %.not105110 = icmp eq i32 %i.at, 0
  br i1 %.not105110, label %._crit_edge114, label %.lr.ph113

._crit_edge114:                                   ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.l
  %i.aw = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 232
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.az = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(23904) %i.ay) #30 ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.az, 0
  %i.bb = extractvalue { i64, ptr } %i.az, 1
  %i.bc = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.bd = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ay, ptr noundef null, i64 %i.ba, ptr %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true, i64 %i.bg, i64 %i.bh, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bj = load i32, ptr %i.am, align 8, !tbaa !859 ; 2 uses
  %i.bk = load i32, ptr %i.an, align 4, !tbaa !876
  %.not.i78 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i78, label %bb.n, label %bb.m, !prof !856

bb.m:                                             ; preds = %._crit_edge114
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bi)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79

bb.n:                                             ; preds = %._crit_edge114
  %i.bl = zext i32 %i.bj to i64
  %i.bm = load ptr, ptr %5, align 8, !tbaa !858
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.bi, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.am, align 8, !tbaa !859
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.am, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79: ; preds = %bb.m, %bb.n
  %i.bq = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ag
  br i1 %i.br, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79
  call void @free(ptr noundef %i.bq) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82

.lr.ph113:                                        ; preds = %bb.l, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.083.0111 = phi ptr [ %i.dr, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.l ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.083.0111, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.083.0111, align 8
  %i.bs = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !6134 ; 3 uses
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !6134 ; 2 uses
  %i.bw = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !6134 ; 4 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph113
  %i.by = add i32 %i.bw, -1                       ; 2 uses
  %i.bz = mul i64 %i.bs, -4658895280553007687     ; 2 uses
  %i.ca = lshr i64 %i.bz, 31
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.by, %i.cc                    ; 3 uses
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = lshr i64 %i.ce, 5
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !795, !noalias !6135
  %i.ci = and i32 %i.cd, 31
  %i.cj = lshr i32 %i.ch, %i.ci
  %i.ck = trunc i32 %i.cj to i1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %i.cl = phi i64 [ %i.cr, %bb.q ], [ %i.ce, %bb.p ]
  %.017.i.i.i.i.i = phi i32 [ %i.cq, %bb.q ], [ %i.cd, %bb.p ]
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.cl ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !855, !noalias !6135
  %i.co = icmp eq ptr %i.cn, %i.bt
  br i1 %i.co, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.q, !prof !856

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cp = add nuw i32 %.017.i.i.i.i.i, 1
  %i.cq = and i32 %i.cp, %i.by                    ; 3 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = lshr i64 %i.cr, 5
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !795, !noalias !6135
  %i.cv = and i32 %i.cq, 31
  %i.cw = lshr i32 %i.cu, %i.cv
  %i.cx = trunc i32 %i.cw to i1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.q, %bb.p, %.lr.ph113
  %i.cy = zext i32 %i.bw to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.cy
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.bw to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.cy, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.cz, %.loopexit.i.i.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.pre-phi.i
  %.not.i80 = icmp eq ptr %.lcssa.sink.i.i.i, %i.da
  br i1 %.not.i80, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.r
  %.0.i = phi ptr [ %i.dc, %bb.r ], [ %i.bt, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = lshr i32 %i.de, 13
  %i.dg = and i32 %i.df, 3
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = ptrtoint ptr %.0.i to i64
  %i.dj = or i64 %i.dh, %i.di                     ; 2 uses
  %i.dk = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.dl = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.dk, %i.dl
  br i1 %.not.i.i, label %bb.t, label %bb.s, !prof !856

bb.s:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 %i.dj)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.t:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dm = zext i32 %i.dk to i64
  %i.dn = load ptr, ptr %7, align 8, !tbaa !858
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  store i64 %i.dj, ptr %i.do, align 1
  %i.dp = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.s, %bb.t
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.083.0111, i64 8 ; 2 uses
  %.not105 = icmp eq ptr %i.dr, %i.av
  br i1 %.not105, label %._crit_edge114, label %.lr.ph113

bb.u:                                             ; preds = %bb.k
  %i.ds = load i32, ptr %i.am, align 8, !tbaa !859 ; 2 uses
  %i.dt = load i32, ptr %i.an, align 4, !tbaa !876
  %.not.i81 = icmp ult i32 %i.ds, %i.dt
  br i1 %.not.i81, label %bb.w, label %bb.v, !prof !856

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82

bb.w:                                             ; preds = %bb.u
  %i.du = zext i32 %i.ds to i64
  %i.dv = load ptr, ptr %5, align 8, !tbaa !858
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  store ptr null, ptr %i.dw, align 1
  %i.dx = load i32, ptr %i.am, align 8, !tbaa !859
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.am, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82: ; preds = %bb.w, %bb.v, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %.061116, i64 8 ; 2 uses
  %.not63 = icmp eq ptr %i.dz, %8
  br i1 %.not63, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82, %bb.j, %bb.g, %bb.i
  %.4 = phi i1 [ false, %bb.j ], [ true, %bb.g ], [ true, %bb.i ], [ false, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82 ], [ true, %bb.c ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5clang34transformOMPMappableExprListClauseI38EnsureImmediateInvocationInDefaultArgsNS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3219 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !876
  %i.e = icmp ugt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %i.b to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.g, i64 noundef %i.f, i64 noundef 8) #30
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3219
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not108 = icmp eq i32 %i.h, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.058109 = phi ptr [ %i.j, %.lr.ph ], [ %i.y, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.m = load ptr, ptr %.058109, align 8, !tbaa !1514
  %i.n = tail call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m) ; 2 uses
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %i.n, -2
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = load i32, ptr %i.l, align 8, !tbaa !859  ; 2 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.r, %i.s
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !856

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.q)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = zext i32 %i.r to i64
  %i.u = load ptr, ptr %2, align 8, !tbaa !858
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  store ptr %i.q, ptr %i.v, align 1
  %i.w = load i32, ptr %i.l, align 8, !tbaa !859
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.058109, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.y, %i.k
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.z, align 8, !tbaa !815 ; 2 uses
  %.not101 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not101, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  %i.aa = tail call { i64, ptr } @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, i64 0, ptr noundef null) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.aa, 1
  %.not102 = icmp eq i64 %i.ab, 0
  br i1 %.not102, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.ac, %bb.g ], [ null, %._crit_edge ]
  %.sroa.094.0 = phi i64 [ %i.ab, %bb.g ], [ 0, %._crit_edge ]
  tail call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %3, i64 %.sroa.094.0, ptr %.sroa.6.0) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i72 = load i64, ptr %4, align 8, !tbaa !815
  %.not103 = icmp eq i64 %.sroa.0.0.copyload.i72, 0
  br i1 %.not103, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::DeclarationNameInfo") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i73 = load i64, ptr %4, align 8, !tbaa !815
  %.not104 = icmp eq i64 %.sroa.0.0.copyload.i73, 0
  br i1 %.not104, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !3219
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %.idx119 = shl nuw nsw i64 %i.af, 3             ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.af, 4            ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  %.not63115 = icmp samesign eq i64 %.idx119, %.idx.i.i
  br i1 %.not63115, label %.critedge, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx119
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph118, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82
  %.061116 = phi ptr [ %9, %.lr.ph118 ], [ %i.dz, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82 ] ; 2 uses
  %i.ao = load ptr, ptr %.061116, align 8, !tbaa !1514 ; 4 uses
  %.not64 = icmp eq ptr %i.ao, null
  br i1 %.not64, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.ag, ptr %7, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = and i16 %i.ap, 511
  %i.ar = icmp eq i16 %i.aq, 24
  %.1.v.i.i.i.i = select i1 %i.ar, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.1.v.i.i.i.i ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !788 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %.idx120 = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx120
  %.not105110 = icmp eq i32 %i.at, 0
  br i1 %.not105110, label %._crit_edge114, label %.lr.ph113

._crit_edge114:                                   ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.l
  %i.aw = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 232
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.az = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(23904) %i.ay) #30 ; 2 uses
  %i.ba = extractvalue { i64, ptr } %i.az, 0
  %i.bb = extractvalue { i64, ptr } %i.az, 1
  %i.bc = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.bd = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ay, ptr noundef null, i64 %i.ba, ptr %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true, i64 %i.bg, i64 %i.bh, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bj = load i32, ptr %i.am, align 8, !tbaa !859 ; 2 uses
  %i.bk = load i32, ptr %i.an, align 4, !tbaa !876
  %.not.i78 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i78, label %bb.n, label %bb.m, !prof !856

bb.m:                                             ; preds = %._crit_edge114
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bi)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79

bb.n:                                             ; preds = %._crit_edge114
  %i.bl = zext i32 %i.bj to i64
  %i.bm = load ptr, ptr %5, align 8, !tbaa !858
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.bi, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.am, align 8, !tbaa !859
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.am, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79: ; preds = %bb.m, %bb.n
  %i.bq = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.ag
  br i1 %i.br, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79
  call void @free(ptr noundef %i.bq) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit79, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82

.lr.ph113:                                        ; preds = %bb.l, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.083.0111 = phi ptr [ %i.dr, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.l ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.083.0111, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.083.0111, align 8
  %i.bs = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !6144 ; 3 uses
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !6144 ; 2 uses
  %i.bw = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !6144 ; 4 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.loopexit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph113
  %i.by = add i32 %i.bw, -1                       ; 2 uses
  %i.bz = mul i64 %i.bs, -4658895280553007687     ; 2 uses
  %i.ca = lshr i64 %i.bz, 31
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = and i32 %i.by, %i.cc                    ; 3 uses
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = lshr i64 %i.ce, 5
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !795, !noalias !6145
  %i.ci = and i32 %i.cd, 31
  %i.cj = lshr i32 %i.ch, %i.ci
  %i.ck = trunc i32 %i.cj to i1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %i.cl = phi i64 [ %i.cr, %bb.q ], [ %i.ce, %bb.p ]
  %.017.i.i.i.i.i = phi i32 [ %i.cq, %bb.q ], [ %i.cd, %bb.p ]
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.cl ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !855, !noalias !6145
  %i.co = icmp eq ptr %i.cn, %i.bt
  br i1 %i.co, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.q, !prof !856

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cp = add nuw i32 %.017.i.i.i.i.i, 1
  %i.cq = and i32 %i.cp, %i.by                    ; 3 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = lshr i64 %i.cr, 5
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !795, !noalias !6145
  %i.cv = and i32 %i.cq, 31
  %i.cw = lshr i32 %i.cu, %i.cv
  %i.cx = trunc i32 %i.cw to i1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.q, %bb.p, %.lr.ph113
  %i.cy = zext i32 %i.bw to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.cy
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.bw to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.cy, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.cz, %.loopexit.i.i.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %.pre-phi.i
  %.not.i80 = icmp eq ptr %.lcssa.sink.i.i.i, %i.da
  br i1 %.not.i80, label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.r
  %.0.i = phi ptr [ %i.dc, %bb.r ], [ %i.bt, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = lshr i32 %i.de, 13
  %i.dg = and i32 %i.df, 3
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = ptrtoint ptr %.0.i to i64
  %i.dj = or i64 %i.dh, %i.di                     ; 2 uses
  %i.dk = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.dl = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.dk, %i.dl
  br i1 %.not.i.i, label %bb.t, label %bb.s, !prof !856

bb.s:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 %i.dj)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.t:                                             ; preds = %_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dm = zext i32 %i.dk to i64
  %i.dn = load ptr, ptr %7, align 8, !tbaa !858
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dm
  store i64 %i.dj, ptr %i.do, align 1
  %i.dp = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.s, %bb.t
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.083.0111, i64 8 ; 2 uses
  %.not105 = icmp eq ptr %i.dr, %i.av
  br i1 %.not105, label %._crit_edge114, label %.lr.ph113

bb.u:                                             ; preds = %bb.k
  %i.ds = load i32, ptr %i.am, align 8, !tbaa !859 ; 2 uses
  %i.dt = load i32, ptr %i.an, align 4, !tbaa !876
  %.not.i81 = icmp ult i32 %i.ds, %i.dt
  br i1 %.not.i81, label %bb.w, label %bb.v, !prof !856

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82

bb.w:                                             ; preds = %bb.u
  %i.du = zext i32 %i.ds to i64
  %i.dv = load ptr, ptr %5, align 8, !tbaa !858
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  store ptr null, ptr %i.dw, align 1
  %i.dx = load i32, ptr %i.am, align 8, !tbaa !859
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr %i.am, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82: ; preds = %bb.w, %bb.v, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %.061116, i64 8 ; 2 uses
  %.not63 = icmp eq ptr %i.dz, %8
  br i1 %.not63, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82, %bb.j, %bb.g, %bb.i
  %.4 = phi i1 [ false, %bb.j ], [ true, %bb.g ], [ true, %bb.i ], [ false, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit82 ], [ true, %bb.c ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE34TransformOMPInformationalDirectiveEPNS_22OMPExecutableDirectiveE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 6 uses
  %3 = alloca %"class.llvm::SmallVector.3148", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2827 ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit.thread, label %_ZNK5clang22OMPExecutableDirective7clausesEv.exit

_ZNK5clang22OMPExecutableDirective7clausesEv.exit: ; preds = %bb.a
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2829 ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.i = icmp ugt i32 %i.f, 16
  br i1 %i.i, label %_ZN4llvm15SmallVectorImplIPN5clang9OMPClauseEE7reserveEm.exit.thread75, label %_ZN4llvm15SmallVectorImplIPN5clang9OMPClauseEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang9OMPClauseEE7reserveEm.exit.thread75: ; preds = %_ZNK5clang22OMPExecutableDirective7clausesEv.exit
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  br label %.lr.ph.preheader

_ZN4llvm15SmallVectorImplIPN5clang9OMPClauseEE7reserveEm.exit: ; preds = %_ZNK5clang22OMPExecutableDirective7clausesEv.exit
  %.not60 = icmp eq i32 %i.f, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm15SmallVectorImplIPN5clang9OMPClauseEE7reserveEm.exit.thread75, %_ZN4llvm15SmallVectorImplIPN5clang9OMPClauseEE7reserveEm.exit
  %.idx78.pn = shl nuw nsw i64 %i.g, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx78.pn
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang9OMPClauseEE7reserveEm.exit
  %.sroa.42.0.i5874.ph = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIPN5clang9OMPClauseEE7reserveEm.exit ], [ %i.g, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit ] ; 4 uses
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !2827 ; 5 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit.thread, label %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit

_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit: ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !2830, !range !96, !noundef !97
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.i, label %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit
  %.02661 = phi ptr [ %i.al, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %i.n = load ptr, ptr %.02661, align 8, !tbaa !2832 ; 3 uses
  %.not31 = icmp eq ptr %i.n, null
  br i1 %.not31, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 832
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !907
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !2835
  call void @_ZN5clang10SemaOpenMP17StartOpenMPClauseEN4llvm3omp6ClauseE(ptr noundef nonnull align 8 dereferenceable(552) %i.q, i32 noundef %i.s) #30
  %i.t = call noundef ptr @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE18TransformOMPClauseEPNS_9OMPClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 832
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !907
  call void @_ZN5clang10SemaOpenMP15EndOpenMPClauseEv(ptr noundef nonnull align 8 dereferenceable(552) %i.w) #30
  %.not32 = icmp eq ptr %i.t, null
  br i1 %.not32, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i34 = icmp ult i32 %i.x, %i.y
  br i1 %.not.i34, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.t)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %3, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.t, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !859 ; 2 uses
  %i.af = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i35 = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i35, label %bb.h, label %bb.g, !prof !856

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = zext i32 %i.ae to i64
  %i.ah = load ptr, ptr %3, align 8, !tbaa !858
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  store ptr null, ptr %i.ai, align 1
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang9OMPClauseELb1EE9push_backES3_.exit: ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %.02661, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.an = load i32, ptr %.pr, align 8, !tbaa !2829
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !2836
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1587
  %.not29 = icmp eq ptr %i.au, null
  br i1 %.not29, label %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 832
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !907
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !2826
  call void @_ZN5clang10SemaOpenMP22ActOnOpenMPRegionStartEN4llvm3omp9DirectiveEPNS_5ScopeE(ptr noundef nonnull align 8 dereferenceable(552) %i.ax, i32 noundef %i.az, ptr noundef null) #30
  %i.ba = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787 ; 2 uses
  call void @_ZN5clang4Sema24ActOnStartOfCompoundStmtEb(ptr noundef nonnull align 8 dereferenceable(18640) %i.ba, i1 noundef zeroext false) #30
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !2827 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !2829
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !2836
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1587
  %i.bl = call i64 @_ZN5clang13TreeTransformI38EnsureImmediateInvocationInDefaultArgsE13TransformStmtEPNS_4StmtENS2_15StmtDiscardKindE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bk, i32 noundef 0)
  call void @_ZN5clang4Sema25ActOnFinishOfCompoundStmtEv(ptr noundef nonnull align 8 dereferenceable(18640) %i.ba) #30
  %i.bm = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 832
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !907
  %i.bp = load ptr, ptr %3, align 8, !tbaa !858
  %i.bq = load i32, ptr %i.b, align 8, !tbaa !859
  %i.br = zext i32 %i.bq to i64
  %i.bs = call i64 @_ZN5clang10SemaOpenMP20ActOnOpenMPRegionEndENS_12ActionResultIPNS_4StmtELb1EEEN4llvm8ArrayRefIPNS_9OMPClauseEEE(ptr noundef nonnull align 8 dereferenceable(552) %i.bo, i64 %i.bl, ptr %i.bp, i64 %i.br) #30 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.l, label %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit.thread

_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit.thread: ; preds = %bb.a, %._crit_edge, %bb.j, %bb.i, %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit
  %.sroa.42.0.i587484 = phi i64 [ %.sroa.42.0.i5874.ph, %bb.i ], [ %.sroa.42.0.i5874.ph, %bb.j ], [ %.sroa.42.0.i5874.ph, %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit ], [ %.sroa.42.0.i5874.ph, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.sroa.047.0 = phi i64 [ 0, %bb.i ], [ %i.bs, %bb.j ], [ 0, %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  %i.bu = load i32, ptr %i.b, align 8, !tbaa !859
  %i.bv = zext i32 %i.bu to i64
  %.not30 = icmp eq i64 %.sroa.42.0.i587484, %i.bv
  br i1 %.not30, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !2826
  %i.by = load ptr, ptr %3, align 8, !tbaa !858
  %i.bz = and i64 %.sroa.047.0, -2
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i = load i32, ptr %i.cb, align 4, !tbaa !795
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.cc, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %2, align 8
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %.sroa.241.0..sroa_idx, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %.sroa.442.0..sroa_idx, align 8
  %i.cd = load ptr, ptr %0, align 8, !tbaa !3284, !nonnull !97, !align !787
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 832
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !907
  %i.cg = call i64 @_ZN5clang10SemaOpenMP33ActOnOpenMPInformationalDirectiveEN4llvm3omp9DirectiveERKNS_19DeclarationNameInfoENS1_8ArrayRefIPNS_9OMPClauseEEEPNS_4StmtENS_14SourceLocationESD_(ptr noundef nonnull align 8 dereferenceable(552) %i.cf, i32 noundef %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.by, i64 %.sroa.42.0.i587484, ptr noundef %i.ca, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i37) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit.thread, %bb.j, %bb.k
  %.sroa.025.1 = phi i64 [ 1, %bb.j ], [ %i.cg, %bb.k ], [ 1, %_ZNK5clang22OMPExecutableDirective17hasAssociatedStmtEv.exit.thread ]
  %i.ch = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE30TransformOMPFirstprivateClauseEPNS_21OMPFirstprivateClauseE:bb.a
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP29ActOnOpenMPFirstprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23TransformOMPFlushClauseEPNS_14OMPFlushClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3093 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3093
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPFlushClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformOMPFromClauseEPNS_13OMPFromClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !795
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !795
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !858
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !859
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !876
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3095 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1514 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !3095
  %.pre96 = load i32, ptr %i.g, align 4, !tbaa !876
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre96, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store i64 0, ptr %9, align 8, !tbaa !1110
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !844
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !858
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !859
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !876
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #30
  %.pre97 = load i32, ptr %i.i, align 4, !tbaa !3095
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre97, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i82 = icmp eq i32 %i.ab, 0
  br i1 %.not.i82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49
  %.058.i83 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i83, align 8, !tbaa !1514
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !6903 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !859 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !876
  %.not.i48 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i48, label %bb.h, label %bb.g, !prof !856

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !858
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !859
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i83, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ar, align 8, !tbaa !815 ; 2 uses
  %.not76 = icmp eq i64 %.sroa.0.0.copyload.i43, 0
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !100
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, i64 0, ptr noundef null), !inline_history !6903 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not77 = icmp eq i64 %i.at, 0
  br i1 %.not77, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.068.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.068.0, ptr %.sroa.6.0) #30, !inline_history !6903
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !815
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !6903
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !815
  %.not79 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not79, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !3095
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx93 = shl nuw nsw i64 %i.ax, 3              ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ax, 4            ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %.not63.i89 = icmp samesign eq i64 %.idx93, %.idx.i.i
  br i1 %.not63.i89, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l
  %12 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx93
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i90 = phi ptr [ %12, %.lr.ph92 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i90, align 8, !tbaa !1514 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.ay, ptr %5, align 8, !tbaa !858
  store i32 0, ptr %i.az, align 8, !tbaa !859
  store i32 8, ptr %i.ba, align 4, !tbaa !876
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !788 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx94 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx94
  %.not8084 = icmp eq i32 %i.bj, 0
  br i1 %.not8084, label %._crit_edge88, label %.lr.ph87

._crit_edge88:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !2280
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #30, !inline_history !6903 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %5, align 8, !tbaa !858   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !859
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #30, !inline_history !6903 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i32 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i32, label %bb.p, label %bb.o, !prof !856

bb.o:                                             ; preds = %._crit_edge88
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

bb.p:                                             ; preds = %._crit_edge88
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %10, align 8, !tbaa !858
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !859
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %5, align 8, !tbaa !858   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33
  call void @free(ptr noundef %i.cf) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph87:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.057.085 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.057.085, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.057.085, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2065, !noalias !6912 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2416, !noalias !6912 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !2028, !noalias !6912 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph87
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !795, !noalias !6913
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !855, !noalias !6913
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !856

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !795, !noalias !6913
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph87
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i31 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i31, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !859 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !876
  %.not.i.i30 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i30, label %bb.v, label %bb.u, !prof !856

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %5, align 8, !tbaa !858
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !859
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.057.085, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not80, label %._crit_edge88, label %.lr.ph87

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i29 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i29, label %bb.y, label %bb.x, !prof !856

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %10, align 8, !tbaa !858
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !859
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i90, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %11
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.er, align 8, !tbaa !795
  %i.es = load ptr, ptr %7, align 8, !tbaa !858
  %i.et = load i32, ptr %i.f, align 8, !tbaa !859
  %i.eu = zext i32 %i.et to i64
  %i.ev = load ptr, ptr %10, align 8, !tbaa !858
  %i.ew = load i32, ptr %i.x, align 8, !tbaa !859
  %i.ex = zext i32 %i.ew to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ey = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ey, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ev, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ex, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.es, ptr %3, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.eu, ptr %.sroa.253.0..sroa_idx, align 8
  %i.ez = call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPFromClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull %i.ep, i64 3, ptr nonnull %i.eq, i64 3, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 %.sroa.0.0.copyload.i27, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.ez, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.fa = load ptr, ptr %10, align 8, !tbaa !858  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.w
  br i1 %i.fb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread
  call void @free(ptr noundef %i.fa) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_13OMPFromClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !1592
  %.not.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1593
  call void @free(ptr noundef %i.ff) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.fg = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.e
  br i1 %i.fh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fg) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformOMPFullClauseEPNS_13OMPFullClauseE(ptr nonnull %.0.val.832.val, i32 %.0.val1, i32 %.4.val) unnamed_addr #17 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPFullClauseENS_14SourceLocationES1_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 %.0.val1, i32 %.4.val) #30
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformOMPGrainsizeClauseEPNS_18OMPGrainsizeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3098
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3099
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.i, align 4, !tbaa !795
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.j, align 4, !tbaa !795
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.k, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.l = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.l, align 8, !tbaa !907
  %i.m = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPGrainsizeClauseENS_29OpenMPGrainsizeClauseModifierEPNS_4ExprENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12, i32 %.sroa.0.0.copyload.i13) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3101 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3101
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.y, align 4, !tbaa !795
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.z, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i, ptr %3, align 4, !tbaa !795
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.0.0.copyload.i25, ptr %i.aa, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ab, align 4, !tbaa !795
  %i.ac = load ptr, ptr %2, align 8, !tbaa !858
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ae = zext i32 %i.ad to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.af = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !907
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPHasDeviceAddrClauseEN4llvm8ArrayRefIPNS_4ExprEEERKNS_15OMPVarListLocTyE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ac, i64 %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.critedge

end_hunk_10
begin_hunk_11_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE31TransformOMPHasDeviceAddrClauseEPNS_22OMPHasDeviceAddrClauseE:bb.a

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformOMPHintClauseEPNS_13OMPHintClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3103
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP21ActOnOpenMPHintClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23TransformOMPHoldsClauseEPNS_14OMPHoldsClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3105
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPHoldsClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE20TransformOMPIfClauseEPNS_11OMPIfClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3107
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3108
  %i.g = and i64 %i.c, -2
  %i.h = inttoptr i64 %i.g to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.i, align 4, !tbaa !795
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.j, align 8, !tbaa !795
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.k, align 8, !tbaa !795
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.l, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.m = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.m, align 8, !tbaa !907
  %i.n = tail call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPIfClauseEN4llvm3omp9DirectiveEPNS_4ExprENS_14SourceLocationES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, ptr noundef %i.h, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i14, i32 %.sroa.0.0.copyload.i15, i32 %.sroa.0.0.copyload.i16) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE29TransformOMPInReductionClauseEPNS_20OMPInReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3110 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3110
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not92 = icmp eq i32 %i.h, 0
  br i1 %.not92, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04693 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04693, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04693, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !815
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !815
  %.not88 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not88, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !815
  %.not89 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not89, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !876
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !3110 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx102.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx102.a ; 2 uses
  %.idx102 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx102
  %.not5197 = icmp eq i32 %i.ad, 0
  br i1 %.not5197, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge101.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre105 = load ptr, ptr %7, align 8, !tbaa !858
  %.pre106 = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.am = zext i32 %.pre106 to i64
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge101.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre105, %._crit_edge101.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !858
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !795
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !795
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !795
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.av = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.av, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aw = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPInReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ax = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aa
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge101
  call void @free(ptr noundef %i.ax) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge101, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph100, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.04998 = phi ptr [ %i.af, %.lr.ph100 ], [ %i.ek, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.az = load ptr, ptr %.04998, align 8, !tbaa !1514 ; 4 uses
  %.not52 = icmp eq ptr %i.az, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ag, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = and i16 %i.ba, 511
  %i.bc = icmp eq i16 %i.bb, 24
  %.1.v.i.i.i.i = select i1 %i.bc, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !788 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx103 = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx103
  %.not9094 = icmp eq i32 %i.be, 0
  br i1 %.not9094, label %._crit_edge, label %.lr.ph96

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bh = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bk = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bj) #30 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  %i.bn = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.bo = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bj, ptr noundef null, i64 %i.bl, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.br, i64 %i.bs, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.bv = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i67 = icmp ult i32 %i.bu, %i.bv
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bw = zext i32 %i.bu to i64
  %i.bx = load ptr, ptr %7, align 8, !tbaa !858
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  store ptr %i.bt, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cb = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ag
  br i1 %i.cc, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cb) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph96:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.095 = phi ptr [ %i.ec, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.095, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.095, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !6922 ; 3 uses
  %i.cg = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !6922 ; 2 uses
  %i.ch = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !6922 ; 4 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph96
  %i.cj = add i32 %i.ch, -1                       ; 2 uses
  %i.ck = mul i64 %i.cd, -4658895280553007687     ; 2 uses
  %i.cl = lshr i64 %i.ck, 31
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = trunc i64 %i.cm to i32
  %i.co = and i32 %i.cj, %i.cn                    ; 3 uses
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = lshr i64 %i.cp, 5
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !795, !noalias !6923
  %i.ct = and i32 %i.co, 31
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = trunc i32 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cw = phi i64 [ %i.dc, %bb.o ], [ %i.cp, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.db, %bb.o ], [ %i.co, %bb.n ]
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cw ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !855, !noalias !6923
  %i.cz = icmp eq ptr %i.cy, %i.ce
  br i1 %i.cz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !856

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.da = add nuw i32 %.017.i.i.i.i.i, 1
  %i.db = and i32 %i.da, %i.cj                    ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 5
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !795, !noalias !6923
  %i.dg = and i32 %i.db, 31
  %i.dh = lshr i32 %i.df, %i.dg
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph96
  %i.dj = zext i32 %i.ch to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.dj
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ch to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dj, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dk, %.loopexit.i.i.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dl
  br i1 %.not.i69, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dn, %bb.p ], [ %i.ce, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = lshr i32 %i.dp, 13
  %i.dr = and i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = ptrtoint ptr %.0.i to i64
  %i.du = or i64 %i.ds, %i.dt                     ; 2 uses
  %i.dv = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.dw = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !856

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.du)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dx = zext i32 %i.dv to i64
  %i.dy = load ptr, ptr %8, align 8, !tbaa !858
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  store i64 %i.du, ptr %i.dz, align 1
  %i.ea = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.077.095, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.ec, %i.bg
  br i1 %.not90, label %._crit_edge, label %.lr.ph96

bb.s:                                             ; preds = %bb.i
  %i.ed = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.ee = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i70 = icmp ult i32 %i.ed, %i.ee
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !856

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.ef = zext i32 %i.ed to i64
  %i.eg = load ptr, ptr %7, align 8, !tbaa !858
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  store ptr null, ptr %i.eh, align 1
  %i.ei = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %.04998, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.ek, %9
  br i1 %.not51, label %._crit_edge101.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.aw, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !1592
  %.not.i.i72 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1593
  call void @free(ptr noundef %i.eo) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.ep = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.a
  br i1 %i.eq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ep) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformOMPInclusiveClauseEPNS_18OMPInclusiveClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3112 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3112
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPInclusiveClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE22TransformOMPInitClauseEPNS_13OMPInitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"struct.clang::OMPInteropInfo", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"class.llvm::SmallVector.1758", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1514
  %i.d = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3115, !range !96, !noundef !97
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.i = load i8, ptr %i.h, align 1, !tbaa !3116, !range !96, !noundef !97
  store i8 %i.g, ptr %2, align 8, !tbaa !3123
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !3124
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.k, align 2, !tbaa !3125
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !858
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.n, align 8, !tbaa !859
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 4, ptr %i.o, align 4, !tbaa !876
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !3126, !noalias !6938 ; 2 uses
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3127, !noalias !6938
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
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !795, !noalias !6939
  br label %_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit

_ZNK4llvm15mapped_iteratorINS_6detail15SafeIntIteratorIjLb0EEEZNK5clang13OMPInitClause5prefsEvEUljE_NS5_8PrefViewEEdeEv.exit: ; preds = %bb.c, %bb.d
  %i.ag = phi i32 [ %i.af, %bb.d ], [ 0, %bb.c ]  ; 3 uses
  %i.ah = add nuw nsw i64 %.sroa.067.083, 1       ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1514, !noalias !6939 ; 2 uses
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !3126, !noalias !6939
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al
  %i.an = zext i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
end_hunk_11
begin_hunk_12_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE29TransformOMPIsDevicePtrClauseEPNS_20OMPIsDevicePtrClauseE:bb.a
  store i32 %.sroa.0.0.copyload.i25, ptr %i.aa, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.0.0.copyload.i26, ptr %i.ab, align 4, !tbaa !795
  %i.ac = load ptr, ptr %2, align 8, !tbaa !858
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ae = zext i32 %i.ad to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.af = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.af, align 8, !tbaa !907
  %i.ag = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPIsDevicePtrClauseEN4llvm8ArrayRefIPNS_4ExprEEERKNS_15OMPVarListLocTyE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ac, i64 %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ag, %.critedge24 ], [ null, %.lr.ph ]
  %i.ah = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ah) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE29TransformOMPLastprivateClauseEPNS_20OMPLastprivateClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3132 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3132
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
  %i.l = load ptr, ptr %.02538, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02538, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge29, label %.lr.ph

.critedge29:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !3136
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.ad, align 4, !tbaa !795
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.ae, align 8, !tbaa !795
  %.sroa.0.0.copyload.i31 = load i32, ptr %1, align 8, !tbaa !795
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.af, align 4, !tbaa !795
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.ag, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ah = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ah, align 8, !tbaa !907
  %i.ai = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPLastprivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_25OpenMPLastprivateModifierENS_14SourceLocationES7_S7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 noundef %i.ac, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i30, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, i32 %.sroa.0.0.copyload.i33) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge29
  %.3 = phi ptr [ %i.ai, %.critedge29 ], [ null, %.lr.ph ]
  %i.aj = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.aj) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE24TransformOMPLinearClauseEPNS_15OMPLinearClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3138 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3138
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
  %i.l = load ptr, ptr %.02844, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02844, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge32.loopexit, label %.lr.ph

.critedge32.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.pre45 = load i32, ptr %i.d, align 4, !tbaa !3138
  %i.y = zext i32 %.pre45 to i64
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge32.loopexit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.z = phi i64 [ %i.y, %.critedge32.loopexit ], [ 0, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %3 = shl nuw nsw i64 %i.z, 5
  %4 = getelementptr inbounds nuw i8, ptr %i.j, i64 %3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1514
  %i.ac = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ab) ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.critedge32
  %i.ae = load ptr, ptr %2, align 8, !tbaa !858
  %i.af = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ag = zext i32 %i.af to i64
  %i.ah = and i64 %i.ac, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i33 = load i32, ptr %i.aj, align 4, !tbaa !795
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3141
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i34 = load i32, ptr %i.am, align 4, !tbaa !795
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i35 = load i32, ptr %i.an, align 8, !tbaa !795
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.ao, align 4, !tbaa !795
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ap, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.aq = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.aq, align 8, !tbaa !907
  %i.ar = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPLinearClauseEN4llvm8ArrayRefIPNS_4ExprEEES4_NS_14SourceLocationES6_NS_22OpenMPLinearClauseKindES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ae, i64 %i.ag, ptr noundef %i.ai, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i33, i32 noundef %i.al, i32 %.sroa.0.0.copyload.i34, i32 %.sroa.0.0.copyload.i35, i32 %.sroa.0.0.copyload.i36, i32 %.sroa.0.0.copyload.i37) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %.critedge32
  %.4 = phi ptr [ null, %.critedge32 ], [ %i.ar, %bb.f ], [ null, %.lr.ph ]
  %i.as = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.a
  br i1 %i.at, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.as) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformOMPLoopRangeClauseEPNS_18OMPLoopRangeClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1587
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1587
  %i.g = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.f) ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.i = and i64 %i.c, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = and i64 %i.g, -2
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.m, align 4, !tbaa !795
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.n, align 8, !tbaa !795
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.o, align 4, !tbaa !795
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.p, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.q = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.q, align 8, !tbaa !907
  %i.r = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPLoopRangeClauseEPNS_4ExprES2_NS_14SourceLocationES3_S3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23) #30
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.r, %.critedge ], [ null, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE21TransformOMPMapClauseEPNS_12OMPMapClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %6 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %7 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %8 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %9 = alloca %"class.clang::CXXScopeSpec", align 8 ; 10 uses
  %10 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %11 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  %12 = alloca %"class.clang::CXXScopeSpec", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.a, align 4, !tbaa !795
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i28 = load i32, ptr %i.b, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i, ptr %7, align 4, !tbaa !795
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.0.0.copyload.i27, ptr %i.c, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.0.0.copyload.i28, ptr %i.d, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !858
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !859
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !876
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3143 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1514 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !3143
  %.pre103 = load i32, ptr %i.g, align 4, !tbaa !876
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre103, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.124 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store i64 0, ptr %10, align 8, !tbaa !1110
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !844
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.w, ptr %11, align 8, !tbaa !858
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !859
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !876
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #30
  %.pre104 = load i32, ptr %i.i, align 4, !tbaa !3143
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre104, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i89 = icmp eq i32 %i.ab, 0
  br i1 %.not.i89, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56
  %.058.i90 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i90, align 8, !tbaa !1514
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !6940 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !859 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !876
  %.not.i55 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i55, label %bb.h, label %bb.g, !prof !856

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %8, align 8, !tbaa !858
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !859
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i90, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit56, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i50 = load i64, ptr %i.ar, align 8, !tbaa !815 ; 2 uses
  %.not83 = icmp eq i64 %.sroa.0.0.copyload.i50, 0
  br i1 %.not83, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i52 = load ptr, ptr %.sroa.2.0..sroa_idx.i51, align 8, !tbaa !100
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i50, ptr %.sroa.2.0.copyload.i52, i64 0, ptr noundef null), !inline_history !6940 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not84 = icmp eq i64 %i.at, 0
  br i1 %.not84, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.075.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %9, i64 %.sroa.075.0, ptr %.sroa.6.0) #30, !inline_history !6940
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i46 = load i64, ptr %10, align 8, !tbaa !815
  %.not85 = icmp eq i64 %.sroa.0.0.copyload.i46, 0
  br i1 %.not85, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %10), !inline_history !6940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.sroa.0.0.copyload.i45 = load i64, ptr %10, align 8, !tbaa !815
  %.not86 = icmp eq i64 %.sroa.0.0.copyload.i45, 0
  br i1 %.not86, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !3143
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx100 = shl nuw nsw i64 %i.ax, 3             ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ax, 4            ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %.not63.i96 = icmp samesign eq i64 %.idx100, %.idx.i.i
  br i1 %.not63.i96, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.l
  %14 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx100
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph99, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i97 = phi ptr [ %14, %.lr.ph99 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i97, align 8, !tbaa !1514 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.ay, ptr %6, align 8, !tbaa !858
  store i32 0, ptr %i.az, align 8, !tbaa !859
  store i32 8, ptr %i.ba, align 4, !tbaa !876
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !788 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx101 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx101
  %.not8791 = icmp eq i32 %i.bj, 0
  br i1 %.not8791, label %._crit_edge95, label %.lr.ph94

._crit_edge95:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !2280
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #30, !inline_history !6940 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %6, align 8, !tbaa !858   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !859
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #30, !inline_history !6940 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i39 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i39, label %bb.p, label %bb.o, !prof !856

bb.o:                                             ; preds = %._crit_edge95
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40

bb.p:                                             ; preds = %._crit_edge95
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %11, align 8, !tbaa !858
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !859
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %6, align 8, !tbaa !858   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40
  call void @free(ptr noundef %i.cf) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit40, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph94:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.064.092 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.064.092, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.064.092, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2065, !noalias !6949 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2416, !noalias !6949 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !2028, !noalias !6949 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph94
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !795, !noalias !6950
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !855, !noalias !6950
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !856

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !795, !noalias !6950
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph94
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i38 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i38, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !859 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !876
  %.not.i.i37 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i37, label %bb.v, label %bb.u, !prof !856

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %6, align 8, !tbaa !858
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !859
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.064.092, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not87, label %._crit_edge95, label %.lr.ph94

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i36 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i36, label %bb.y, label %bb.x, !prof !856

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %11, align 8, !tbaa !858
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !859
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i97, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %13
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.er = load i64, ptr %9, align 8, !tbaa !795
  store i64 %i.er, ptr %12, align 8, !tbaa !795
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.et) #30
  %i.eu = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i64 16, i1 false), !tbaa.struct !3145
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !3149
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ez = load i8, ptr %i.ey, align 4, !tbaa !3150, !range !96, !noundef !97
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.fb, align 8, !tbaa !795
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.sroa.0.0.copyload.i32 = load i32, ptr %i.fc, align 4, !tbaa !795
  %i.fd = load ptr, ptr %8, align 8, !tbaa !858
  %i.fe = load i32, ptr %i.f, align 8, !tbaa !859
  %i.ff = zext i32 %i.fe to i64
  %i.fg = load ptr, ptr %11, align 8, !tbaa !858
  %i.fh = load i32, ptr %i.x, align 8, !tbaa !859
  %i.fi = zext i32 %i.fh to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.fj = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.fj, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.fg, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fi, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.fd, ptr %3, align 8
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ff, ptr %.sroa.260.0..sroa_idx, align 8
  %i.fk = call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPMapClauseEPNS_4ExprEN4llvm8ArrayRefINS_21OpenMPMapModifierKindEEENS4_INS_14SourceLocationEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoENS_19OpenMPMapClauseKindEbS7_S7_NS4_IS2_EERKNS_15OMPVarListLocTyEbSE_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %.124, ptr nonnull %i.ep, i64 7, ptr nonnull %i.eq, i64 7, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %i.ex, i1 noundef zeroext %i.fa, i32 %.sroa.0.0.copyload.i31, i32 %.sroa.0.0.copyload.i32, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %7, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !1592
  %.not.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1593
  call void @free(ptr noundef %i.fo) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %.lr.ph, %bb.k, %bb.i, %bb.z, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.fk, %bb.z ], [ %i.fk, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_12OMPMapClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.fp = load ptr, ptr %11, align 8, !tbaa !858  ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.w
  br i1 %i.fq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit
  call void @free(ptr noundef %i.fp) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !1592
  %.not.i.i33 = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i33, label %_ZN5clang12CXXScopeSpecD2Ev.exit34, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1593
  call void @free(ptr noundef %i.fu) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit34

_ZN5clang12CXXScopeSpecD2Ev.exit34:               ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit34
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit34 ], [ null, %bb.b ]
  %i.fv = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.e
  br i1 %i.fw, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fv) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit35: ; preds = %.critedge, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformOMPMessageClauseEPNS_16OMPMessageClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3152
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPMessageClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE24TransformOMPNowaitClauseEPNS_15OMPNowaitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3154 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.e = and i64 %.sroa.0.0, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i13 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPNowaitClauseENS_14SourceLocationES1_S1_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i13, i32 %.sroa.0.0.copyload.i12, ptr noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  %.1 = phi ptr [ %i.j, %.critedge ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformOMPNocontextClauseEPNS_18OMPNocontextClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3156
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPNocontextClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE29TransformOMPNontemporalClauseEPNS_20OMPNontemporalClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
end_hunk_12
begin_hunk_13_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformOMPPrivateClauseEPNS_16OMPPrivateClauseE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3191
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPPrivateClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformOMPProcBindClauseEPNS_17OMPProcBindClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3194
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !795
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !795
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !795
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPProcBindClauseEN4llvm3omp12ProcBindKindENS_14SourceLocationES4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #30
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE27TransformOMPReductionClauseEPNS_18OMPReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3196 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3196
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not97 = icmp eq i32 %i.h, 0
  br i1 %.not97, label %.critedge58, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.05098 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.05098, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.05098, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge58, label %.lr.ph

.critedge58:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !815
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i61 = load i64, ptr %5, align 8, !tbaa !815
  %.not93 = icmp eq i64 %.sroa.0.0.copyload.i61, 0
  br i1 %.not93, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i62 = load i64, ptr %5, align 8, !tbaa !815
  %.not94 = icmp eq i64 %.sroa.0.0.copyload.i62, 0
  br i1 %.not94, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !876
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !3196 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx107.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx107.a ; 2 uses
  %.idx107 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx107
  %.not55102 = icmp eq i32 %i.ad, 0
  br i1 %.not55102, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge106.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.pre110 = load ptr, ptr %7, align 8, !tbaa !858
  %.pre111 = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.am = zext i32 %.pre111 to i64
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge106.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre110, %._crit_edge106.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !858
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load i64, ptr %i.as, align 8
  %.sroa.0.0.copyload.i65 = load i32, ptr %1, align 8, !tbaa !795
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i66 = load i32, ptr %i.au, align 4, !tbaa !795
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i67 = load i32, ptr %i.av, align 8, !tbaa !795
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.0.0.copyload.i68 = load i32, ptr %i.aw, align 4, !tbaa !795
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i69 = load i32, ptr %i.ax, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ay = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ay, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.az = call noundef ptr @_ZN5clang10SemaOpenMP26ActOnOpenMPReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS0_19OpenMPVarListDataTy30OpenMPReductionClauseModifiersENS_14SourceLocationES8_S8_S8_S8_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ap, i64 %i.ar, i64 %i.at, i32 %.sroa.0.0.copyload.i65, i32 %.sroa.0.0.copyload.i66, i32 %.sroa.0.0.copyload.i67, i32 %.sroa.0.0.copyload.i68, i32 %.sroa.0.0.copyload.i69, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.aa
  br i1 %i.bb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge106
  call void @free(ptr noundef %i.ba) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge106, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph105, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76
  %.053103 = phi ptr [ %i.af, %.lr.ph105 ], [ %i.en, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76 ] ; 2 uses
  %i.bc = load ptr, ptr %.053103, align 8, !tbaa !1514 ; 4 uses
  %.not56 = icmp eq ptr %i.bc, null
  br i1 %.not56, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ag, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.bd = load i16, ptr %i.bc, align 8
  %i.be = and i16 %i.bd, 511
  %i.bf = icmp eq i16 %i.be, 24
  %.1.v.i.i.i.i = select i1 %i.bf, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !788 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %.idx108 = shl nuw nsw i64 %i.bi, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx108
  %.not9599 = icmp eq i32 %i.bh, 0
  br i1 %.not9599, label %._crit_edge, label %.lr.ph101

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bk = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 232
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bn = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bm) #30 ; 2 uses
  %i.bo = extractvalue { i64, ptr } %i.bn, 0
  %i.bp = extractvalue { i64, ptr } %i.bn, 1
  %i.bq = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.br = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bm, ptr noundef null, i64 %i.bo, ptr %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.bu, i64 %i.bv, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bx = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.by = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i72 = icmp ult i32 %i.bx, %i.by
  br i1 %.not.i72, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

bb.l:                                             ; preds = %._crit_edge
  %i.bz = zext i32 %i.bx to i64
  %i.ca = load ptr, ptr %7, align 8, !tbaa !858
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store ptr %i.bw, ptr %i.cb, align 1
  %i.cc = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73: ; preds = %bb.k, %bb.l
  %i.ce = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ag
  br i1 %i.cf, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73
  call void @free(ptr noundef %i.ce) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit73, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

.lr.ph101:                                        ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.082.0100 = phi ptr [ %i.ef, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.082.0100, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.082.0100, align 8
  %i.cg = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !6959 ; 3 uses
  %i.cj = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !6959 ; 2 uses
  %i.ck = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !6959 ; 4 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph101
  %i.cm = add i32 %i.ck, -1                       ; 2 uses
  %i.cn = mul i64 %i.cg, -4658895280553007687     ; 2 uses
  %i.co = lshr i64 %i.cn, 31
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.cm, %i.cq                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !795, !noalias !6960
  %i.cw = and i32 %i.cr, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cz = phi i64 [ %i.df, %bb.o ], [ %i.cs, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.de, %bb.o ], [ %i.cr, %bb.n ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !855, !noalias !6960
  %i.dc = icmp eq ptr %i.db, %i.ch
  br i1 %i.dc, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !856

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dd = add nuw i32 %.017.i.i.i.i.i, 1
  %i.de = and i32 %i.dd, %i.cm                    ; 3 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 5
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !795, !noalias !6960
  %i.dj = and i32 %i.de, 31
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = trunc i32 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph101
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
  %.not.i74 = icmp eq ptr %.lcssa.sink.i.i.i, %i.do
  br i1 %.not.i74, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dq, %bb.p ], [ %i.ch, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = lshr i32 %i.ds, 13
  %i.du = and i32 %i.dt, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = ptrtoint ptr %.0.i to i64
  %i.dx = or i64 %i.dv, %i.dw                     ; 2 uses
  %i.dy = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.dz = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.dy, %i.dz
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !856

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.dx)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.ea = zext i32 %i.dy to i64
  %i.eb = load ptr, ptr %8, align 8, !tbaa !858
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  store i64 %i.dx, ptr %i.ec, align 1
  %i.ed = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.082.0100, i64 8 ; 2 uses
  %.not95 = icmp eq ptr %i.ef, %i.bj
  br i1 %.not95, label %._crit_edge, label %.lr.ph101

bb.s:                                             ; preds = %bb.i
  %i.eg = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.eh = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i75 = icmp ult i32 %i.eg, %i.eh
  br i1 %.not.i75, label %bb.u, label %bb.t, !prof !856

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

bb.u:                                             ; preds = %bb.s
  %i.ei = zext i32 %i.eg to i64
  %i.ej = load ptr, ptr %7, align 8, !tbaa !858
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  store ptr null, ptr %i.ek, align 1
  %i.el = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit76: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.053103, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.en, %9
  br i1 %.not55, label %._crit_edge106.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.az, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !1592
  %.not.i.i77 = icmp eq i32 %i.ep, 0
  br i1 %.not.i.i77, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1593
  call void @free(ptr noundef %i.er) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.es = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.a
  br i1 %i.et, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.es) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit78: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformOMPSafelenClauseEPNS_16OMPSafelenClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3198
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP24ActOnOpenMPSafelenClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i8, i32 %.sroa.0.0.copyload.i9) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformOMPScheduleClauseEPNS_17OMPScheduleClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3201
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3203
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3203
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3204
  %i.k = and i64 %i.c, -2
  %i.l = inttoptr i64 %i.k to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i19 = load i32, ptr %i.m, align 4, !tbaa !795
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.copyload.i20 = load i32, ptr %i.n, align 4, !tbaa !795
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i21 = load i32, ptr %i.o, align 8, !tbaa !795
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.0.0.copyload.i22 = load i32, ptr %i.p, align 4, !tbaa !795
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.q, align 8, !tbaa !795
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.r, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.s = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.s, align 8, !tbaa !907
  %i.t = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPScheduleClauseENS_28OpenMPScheduleClauseModifierES1_NS_24OpenMPScheduleClauseKindEPNS_4ExprENS_14SourceLocationES5_S5_S5_S5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, ptr noundef %i.l, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i19, i32 %.sroa.0.0.copyload.i20, i32 %.sroa.0.0.copyload.i21, i32 %.sroa.0.0.copyload.i22, i32 %.sroa.0.0.copyload.i23, i32 %.sroa.0.0.copyload.i24) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE26TransformOMPSeverityClauseEPNS_17OMPSeverityClauseE(ptr nonnull %.0.val.832.val, ptr nofree noundef readonly captures(none) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3207
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i = load i32, ptr %i.c, align 4, !tbaa !795
  %.sroa.0.0.copyload.i9 = load i32, ptr %0, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.d, align 4, !tbaa !795
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.e, align 4, !tbaa !795
  %i.f = tail call noundef ptr @_ZN5clang10SemaOpenMP25ActOnOpenMPSeverityClauseENS_24OpenMPSeverityClauseKindENS_14SourceLocationES2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(552) %.0.val.832.val, i32 noundef %i.b, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11) #30
  ret ptr %i.f
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE24TransformOMPSharedClauseEPNS_15OMPSharedClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3209 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3209
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP23ActOnOpenMPSharedClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge
end_hunk_13
begin_hunk_14_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE23TransformOMPSizesClauseEPNS_14OMPSizesClauseE:bb.a
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %bb.j
  %.03151 = phi ptr [ %i.ae, %bb.j ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.03151, align 8, !tbaa !1514 ; 2 uses
  %.not33 = icmp eq ptr %i.l, null
  br i1 %.not33, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef null)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.m to i64
  %i.p = load ptr, ptr %2, align 8, !tbaa !858
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store ptr null, ptr %i.q, align 1
  %i.r = load i32, ptr %i.b, align 8, !tbaa !859
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.b, align 8, !tbaa !859
  br label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.t = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.l) ; 2 uses
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.t, -2
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i35 = icmp ult i32 %i.x, %i.y
  br i1 %.not.i35, label %bb.i, label %bb.h, !prof !856

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.w)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = zext i32 %i.x to i64
  %i.aa = load ptr, ptr %2, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store ptr %i.w, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.b, align 8, !tbaa !859
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.d, %bb.h, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.03151, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.af = load ptr, ptr %2, align 8, !tbaa !858
  %i.ag = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ah = zext i32 %i.ag to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ai, align 4, !tbaa !795
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.aj, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ak = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ak, align 8, !tbaa !907
  %i.al = call noundef ptr @_ZN5clang10SemaOpenMP22ActOnOpenMPSizesClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.af, i64 %i.ah, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i37, i32 %.sroa.0.0.copyload.i38) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.f, %._crit_edge
  %.4 = phi ptr [ %i.al, %._crit_edge ], [ null, %bb.f ]
  %i.am = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  call void @free(ptr noundef %i.am) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE31TransformOMPTaskReductionClauseEPNS_22OMPTaskReductionClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %4 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %5 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 9 uses
  %6 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  %8 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3215 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3215
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %.idx = shl nuw nsw i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not92 = icmp eq i32 %i.h, 0
  br i1 %.not92, label %.critedge54, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.04693 = phi ptr [ %i.x, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ %i.j, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04693, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.04693, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge54, label %.lr.ph

.critedge54:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !815
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !100
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %4, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i57 = load i64, ptr %5, align 8, !tbaa !815
  %.not88 = icmp eq i64 %.sroa.0.0.copyload.i57, 0
  br i1 %.not88, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i58 = load i64, ptr %5, align 8, !tbaa !815
  %.not89 = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %.not89, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.aa, ptr %7, align 8, !tbaa !858
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !859
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.ac, align 4, !tbaa !876
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !3215 ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %.idx102.a = shl nuw nsw i64 %i.ae, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx102.a ; 2 uses
  %.idx102 = shl nuw nsw i64 %i.ae, 3
  %9 = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx102
  %.not5197 = icmp eq i32 %i.ad, 0
  br i1 %.not5197, label %._crit_edge101, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

._crit_edge101.loopexit:                          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.pre105 = load ptr, ptr %7, align 8, !tbaa !858
  %.pre106 = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.am = zext i32 %.pre106 to i64
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %._crit_edge101.loopexit, %bb.g
  %i.an = phi i64 [ %i.am, %._crit_edge101.loopexit ], [ 0, %bb.g ]
  %i.ao = phi ptr [ %.pre105, %._crit_edge101.loopexit ], [ %i.aa, %bb.g ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !858
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !859
  %i.ar = zext i32 %i.aq to i64
  %.sroa.0.0.copyload.i61 = load i32, ptr %1, align 8, !tbaa !795
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i62 = load i32, ptr %i.as, align 4, !tbaa !795
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i63 = load i32, ptr %i.at, align 8, !tbaa !795
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i64 = load i32, ptr %i.au, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.av = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.av, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ao, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.an, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aw = call noundef ptr @_ZN5clang10SemaOpenMP30ActOnOpenMPTaskReductionClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_S6_RNS_12CXXScopeSpecERKNS_19DeclarationNameInfoES5_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.ap, i64 %i.ar, i32 %.sroa.0.0.copyload.i61, i32 %.sroa.0.0.copyload.i62, i32 %.sroa.0.0.copyload.i63, i32 %.sroa.0.0.copyload.i64, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ax = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aa
  br i1 %i.ay, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge101
  call void @free(ptr noundef %i.ax) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge101, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph100, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71
  %.04998 = phi ptr [ %i.af, %.lr.ph100 ], [ %i.ek, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71 ] ; 2 uses
  %i.az = load ptr, ptr %.04998, align 8, !tbaa !1514 ; 4 uses
  %.not52 = icmp eq ptr %i.az, null
  br i1 %.not52, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.ag, ptr %8, align 8, !tbaa !858
  store i32 0, ptr %i.ah, align 8, !tbaa !859
  store i32 8, ptr %i.ai, align 4, !tbaa !876
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = and i16 %i.ba, 511
  %i.bc = icmp eq i16 %i.bb, 24
  %.1.v.i.i.i.i = select i1 %i.bc, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !788 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx103 = shl nuw nsw i64 %i.bf, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx103
  %.not9094 = icmp eq i32 %i.be, 0
  br i1 %.not9094, label %._crit_edge, label %.lr.ph96

._crit_edge:                                      ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.j
  %i.bh = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bk = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(23904) %i.bj) #30 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  %i.bn = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.bo = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bj, ptr noundef null, i64 %i.bl, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true, i64 %i.br, i64 %i.bs, i1 noundef zeroext false, i1 noundef zeroext false) #30 ; 2 uses
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.bv = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i67 = icmp ult i32 %i.bu, %i.bv
  br i1 %.not.i67, label %bb.l, label %bb.k, !prof !856

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.bt)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

bb.l:                                             ; preds = %._crit_edge
  %i.bw = zext i32 %i.bu to i64
  %i.bx = load ptr, ptr %7, align 8, !tbaa !858
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  store ptr %i.bt, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68: ; preds = %bb.k, %bb.l
  %i.cb = load ptr, ptr %8, align 8, !tbaa !858   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ag
  br i1 %i.cc, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68
  call void @free(ptr noundef %i.cb) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit68, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

.lr.ph96:                                         ; preds = %bb.j, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.077.095 = phi ptr [ %i.ec, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.077.095, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.077.095, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  %i.cf = load ptr, ptr %i.aj, align 8, !tbaa !2065, !noalias !6969 ; 3 uses
  %i.cg = load ptr, ptr %i.ak, align 8, !tbaa !2416, !noalias !6969 ; 2 uses
  %i.ch = load i32, ptr %i.al, align 4, !tbaa !2028, !noalias !6969 ; 4 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.loopexit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph96
  %i.cj = add i32 %i.ch, -1                       ; 2 uses
  %i.ck = mul i64 %i.cd, -4658895280553007687     ; 2 uses
  %i.cl = lshr i64 %i.ck, 31
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = trunc i64 %i.cm to i32
  %i.co = and i32 %i.cj, %i.cn                    ; 3 uses
  %i.cp = zext i32 %i.co to i64                   ; 2 uses
  %i.cq = lshr i64 %i.cp, 5
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !795, !noalias !6970
  %i.ct = and i32 %i.co, 31
  %i.cu = lshr i32 %i.cs, %i.ct
  %i.cv = trunc i32 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %bb.o
  %i.cw = phi i64 [ %i.dc, %bb.o ], [ %i.cp, %bb.n ]
  %.017.i.i.i.i.i = phi i32 [ %i.db, %bb.o ], [ %i.co, %bb.n ]
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cw ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !855, !noalias !6970
  %i.cz = icmp eq ptr %i.cy, %i.ce
  br i1 %i.cz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.o, !prof !856

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.da = add nuw i32 %.017.i.i.i.i.i, 1
  %i.db = and i32 %i.da, %i.cj                    ; 3 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = lshr i64 %i.dc, 5
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !795, !noalias !6970
  %i.dg = and i32 %i.db, 31
  %i.dh = lshr i32 %i.df, %i.dg
  %i.di = trunc i32 %i.dh to i1
  br i1 %i.di, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.o, %bb.n, %.lr.ph96
  %i.dj = zext i32 %i.ch to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.dj
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ch to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dj, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cx, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dk, %.loopexit.i.i.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.pre-phi.i
  %.not.i69 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dl
  br i1 %.not.i69, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.p
  %.0.i = phi ptr [ %i.dn, %bb.p ], [ %i.ce, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = lshr i32 %i.dp, 13
  %i.dr = and i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = ptrtoint ptr %.0.i to i64
  %i.du = or i64 %i.ds, %i.dt                     ; 2 uses
  %i.dv = load i32, ptr %i.ah, align 8, !tbaa !859 ; 2 uses
  %i.dw = load i32, ptr %i.ai, align 4, !tbaa !876
  %.not.i.i = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !856

bb.q:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 %i.du)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.r:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.dx = zext i32 %i.dv to i64
  %i.dy = load ptr, ptr %8, align 8, !tbaa !858
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  store i64 %i.du, ptr %i.dz, align 1
  %i.ea = load i32, ptr %i.ah, align 8, !tbaa !859
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.ah, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.q, %bb.r
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.077.095, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.ec, %i.bg
  br i1 %.not90, label %._crit_edge, label %.lr.ph96

bb.s:                                             ; preds = %bb.i
  %i.ed = load i32, ptr %i.ab, align 8, !tbaa !859 ; 2 uses
  %i.ee = load i32, ptr %i.ac, align 4, !tbaa !876
  %.not.i70 = icmp ult i32 %i.ed, %i.ee
  br i1 %.not.i70, label %bb.u, label %bb.t, !prof !856

bb.t:                                             ; preds = %bb.s
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

bb.u:                                             ; preds = %bb.s
  %i.ef = zext i32 %i.ed to i64
  %i.eg = load ptr, ptr %7, align 8, !tbaa !858
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  store ptr null, ptr %i.eh, align 1
  %i.ei = load i32, ptr %i.ab, align 8, !tbaa !859
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.ab, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit71: ; preds = %bb.u, %bb.t, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %.04998, i64 8 ; 2 uses
  %.not51 = icmp eq ptr %i.ek, %9
  br i1 %.not51, label %._crit_edge101.loopexit, label %bb.i

bb.v:                                             ; preds = %bb.f, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %.3 = phi ptr [ %i.aw, %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !1592
  %.not.i.i72 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i72, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1593
  call void @free(ptr noundef %i.eo) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.4 = phi ptr [ %.3, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %.lr.ph ]
  %i.ep = load ptr, ptr %3, align 8, !tbaa !858   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.a
  br i1 %i.eq, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ep) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit73: ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret ptr %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE29TransformOMPThreadLimitClauseEPNS_20OMPThreadLimitClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3349", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 3, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3217 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 3
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3217
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !858
  %i.z = load i32, ptr %i.b, align 8, !tbaa !859
  %i.aa = zext i32 %i.z to i64
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.ab, align 4, !tbaa !795
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.ac, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ad = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ad, align 8, !tbaa !907
  %i.ae = call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPThreadLimitClauseEN4llvm8ArrayRefIPNS_4ExprEEENS_14SourceLocationES6_S6_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr %i.y, i64 %i.aa, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i25, i32 %.sroa.0.0.copyload.i26) #30
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24
  %.3 = phi ptr [ %i.ae, %.critedge24 ], [ null, %.lr.ph ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !858   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.af) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj3EED2Ev.exit: ; preds = %.critedge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE20TransformOMPToClauseEPNS_11OMPToClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %3 = alloca %"class.llvm::ArrayRef.1394", align 8 ; 5 uses
  %4 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 4 uses
  %5 = alloca %"class.clang::UnresolvedSet", align 8 ; 10 uses
  %6 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %8 = alloca %"class.clang::CXXScopeSpec", align 8 ; 8 uses
  %9 = alloca %"struct.clang::DeclarationNameInfo", align 8 ; 12 uses
  %10 = alloca %"class.llvm::SmallVector.3172", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i23 = load i32, ptr %i.a, align 4, !tbaa !795
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i24 = load i32, ptr %i.b, align 4, !tbaa !795
  store i32 %.sroa.0.0.copyload.i, ptr %6, align 4, !tbaa !795
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.0.0.copyload.i23, ptr %i.c, align 4, !tbaa !795
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.0.0.copyload.i24, ptr %i.d, align 4, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !858
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !859
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store i32 16, ptr %i.g, align 4, !tbaa !876
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3219 ; 2 uses
  %i.k = shl i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1514 ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.n) ; 2 uses
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, -2
  %i.r = inttoptr i64 %i.q to ptr
  %.pre = load i32, ptr %i.i, align 4, !tbaa !3219
  %.pre96 = load i32, ptr %i.g, align 4, !tbaa !876
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = phi i32 [ %.pre96, %bb.c ], [ 16, %bb.a ]
  %i.t = phi i32 [ %.pre, %bb.c ], [ %i.j, %bb.a ] ; 3 uses
  %.120 = phi ptr [ %i.r, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store i64 0, ptr %9, align 8, !tbaa !1110
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !844
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !858
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !859
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  store i32 16, ptr %i.y, align 4, !tbaa !876
  %i.z = icmp ugt i32 %i.t, %i.s
  br i1 %i.z, label %bb.e, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i32 %i.t to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.e, i64 noundef %i.aa, i64 noundef 8) #30
  %.pre97 = load i32, ptr %i.i, align 4, !tbaa !3219
  br label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i32 [ %i.t, %bb.d ], [ %.pre97, %bb.e ] ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not.i82 = icmp eq i32 %i.ab, 0
  br i1 %.not.i82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49
  %.058.i83 = phi ptr [ %i.aq, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49 ], [ %i.h, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.058.i83, align 8, !tbaa !1514
  %i.af = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ae), !inline_history !6971 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.af, -2
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load i32, ptr %i.f, align 8, !tbaa !859 ; 2 uses
  %i.ak = load i32, ptr %i.g, align 4, !tbaa !876
  %.not.i48 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i48, label %bb.h, label %bb.g, !prof !856

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.ai)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %7, align 8, !tbaa !858
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store ptr %i.ai, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !859
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.f, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.058.i83, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit49, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ar, align 8, !tbaa !815 ; 2 uses
  %.not76 = icmp eq i64 %.sroa.0.0.copyload.i43, 0
  br i1 %.not76, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.sroa.2.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2.0.copyload.i45 = load ptr, ptr %.sroa.2.0..sroa_idx.i44, align 8, !tbaa !100
  %i.as = call fastcc { i64, ptr } @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE31TransformNestedNameSpecifierLocENS_22NestedNameSpecifierLocENS_8QualTypeEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i43, ptr %.sroa.2.0.copyload.i45, i64 0, ptr noundef null), !inline_history !6971 ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %.not77 = icmp eq i64 %i.at, 0
  br i1 %.not77, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.6.0 = phi ptr [ %i.au, %bb.i ], [ null, %._crit_edge ]
  %.sroa.068.0 = phi i64 [ %i.at, %bb.i ], [ 0, %._crit_edge ]
  call void @_ZN5clang12CXXScopeSpec5AdoptENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 %.sroa.068.0, ptr %.sroa.6.0) #30, !inline_history !6971
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1725
  %.sroa.0.0.copyload.i39 = load i64, ptr %9, align 8, !tbaa !815
  %.not78 = icmp eq i64 %.sroa.0.0.copyload.i39, 0
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE28TransformDeclarationNameInfoERKNS_19DeclarationNameInfoE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !6971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.sroa.0.0.copyload.i38 = load i64, ptr %9, align 8, !tbaa !815
  %.not79 = icmp eq i64 %.sroa.0.0.copyload.i38, 0
  br i1 %.not79, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !3219
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %.idx93 = shl nuw nsw i64 %i.ax, 3              ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ax, 4            ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i
  %.not63.i89 = icmp samesign eq i64 %.idx93, %.idx.i.i
  br i1 %.not63.i89, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l
  %12 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx93
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph92, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.061.i90 = phi ptr [ %12, %.lr.ph92 ], [ %i.eo, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ] ; 2 uses
  %i.be = load ptr, ptr %.061.i90, align 8, !tbaa !1514 ; 4 uses
  %.not64.i = icmp eq ptr %i.be, null
  br i1 %.not64.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.ay, ptr %5, align 8, !tbaa !858
  store i32 0, ptr %i.az, align 8, !tbaa !859
  store i32 8, ptr %i.ba, align 4, !tbaa !876
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = and i16 %i.bf, 511
  %i.bh = icmp eq i16 %i.bg, 24
  %.1.v.i.i.i.i = select i1 %i.bh, i64 64, i64 80
  %.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.v.i.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !788 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx94 = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %.idx94
  %.not8084 = icmp eq i32 %i.bj, 0
  br i1 %.not8084, label %._crit_edge88, label %.lr.ph87

._crit_edge88:                                    ; preds = %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit, %bb.n
  %.val65.i = load ptr, ptr %0, align 8, !tbaa !2280
  %i.bm = getelementptr inbounds nuw i8, ptr %.val65.i, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1116, !nonnull !97, !align !787 ; 2 uses
  %i.bo = call { i64, ptr } @_ZNK5clang12CXXScopeSpec19getWithLocInContextERNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #30, !inline_history !6971 ; 2 uses
  %i.bp = extractvalue { i64, ptr } %i.bo, 0
  %i.bq = extractvalue { i64, ptr } %i.bo, 1
  %i.br = load ptr, ptr %5, align 8, !tbaa !858   ; 2 uses
  %i.bs = load i32, ptr %i.az, align 8, !tbaa !859
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = call noundef ptr @_ZN5clang20UnresolvedLookupExpr6CreateERKNS_10ASTContextEPNS_13CXXRecordDeclENS_22NestedNameSpecifierLocERKNS_19DeclarationNameInfoEbNS_21UnresolvedSetIteratorESA_bb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bn, ptr noundef null, i64 %i.bp, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext true, i64 %i.bv, i64 %i.bw, i1 noundef zeroext false, i1 noundef zeroext false) #30, !inline_history !6971 ; 2 uses
  %i.by = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.bz = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i32 = icmp ult i32 %i.by, %i.bz
  br i1 %.not.i32, label %bb.p, label %bb.o, !prof !856

bb.o:                                             ; preds = %._crit_edge88
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %i.bx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

bb.p:                                             ; preds = %._crit_edge88
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %10, align 8, !tbaa !858
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  store ptr %i.bx, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.x, align 8, !tbaa !859
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33: ; preds = %bb.o, %bb.p
  %i.cf = load ptr, ptr %5, align 8, !tbaa !858   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ay
  br i1 %i.cg, label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33
  call void @free(ptr noundef %i.cf) #30
  br label %_ZN5clang13UnresolvedSetILj8EED2Ev.exit

_ZN5clang13UnresolvedSetILj8EED2Ev.exit:          ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit33, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

.lr.ph87:                                         ; preds = %bb.n, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit
  %.sroa.057.085 = phi ptr [ %i.eg, %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit ], [ %.1.i.i.i.i, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.057.085, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.057.085, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !2065, !noalias !6980 ; 3 uses
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !2416, !noalias !6980 ; 2 uses
  %i.cl = load i32, ptr %i.bd, align 4, !tbaa !2028, !noalias !6980 ; 4 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.loopexit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph87
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  %i.co = mul i64 %i.ch, -4658895280553007687     ; 2 uses
  %i.cp = lshr i64 %i.co, 31
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 5
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !795, !noalias !6981
  %i.cx = and i32 %i.cs, 31
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = trunc i32 %i.cy to i1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !854

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r, %bb.s
  %i.da = phi i64 [ %i.dg, %bb.s ], [ %i.ct, %bb.r ]
  %.017.i.i.i.i.i = phi i32 [ %i.df, %bb.s ], [ %i.cs, %bb.r ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !855, !noalias !6981
  %i.dd = icmp eq ptr %i.dc, %i.ci
  br i1 %i.dd, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.s, !prof !856

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.de = add nuw i32 %.017.i.i.i.i.i, 1
  %i.df = and i32 %i.de, %i.cn                    ; 3 uses
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !795, !noalias !6981
  %i.dk = and i32 %i.df, 31
  %i.dl = lshr i32 %i.dj, %i.dk
  %i.dm = trunc i32 %i.dl to i1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !857

.loopexit.i.i.i:                                  ; preds = %bb.s, %bb.r, %.lr.ph87
  %i.dn = zext i32 %i.cl to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dn
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.cl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.dn, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.db, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.do, %.loopexit.i.i.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.pre-phi.i
  %.not.i31 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dp
  br i1 %.not.i31, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2418
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i, %bb.t
  %.0.i = phi ptr [ %i.dr, %bb.t ], [ %i.ci, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclES4_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E4findEPKS3_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = lshr i32 %i.dt, 13
  %i.dv = and i32 %i.du, 3
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = ptrtoint ptr %.0.i to i64
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = load i32, ptr %i.az, align 8, !tbaa !859 ; 2 uses
  %i.ea = load i32, ptr %i.ba, align 4, !tbaa !876
  %.not.i.i30 = icmp ult i32 %i.dz, %i.ea
  br i1 %.not.i.i30, label %bb.v, label %bb.u, !prof !856

bb.u:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14DeclAccessPairELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 %i.dy)
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

bb.v:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit
  %i.eb = zext i32 %i.dz to i64
  %i.ec = load ptr, ptr %5, align 8, !tbaa !858
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  store i64 %i.dy, ptr %i.ed, align 1
  %i.ee = load i32, ptr %i.az, align 8, !tbaa !859
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.az, align 8, !tbaa !859
  br label %_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit

_ZN5clang17UnresolvedSetImpl7addDeclEPNS_9NamedDeclENS_15AccessSpecifierE.exit: ; preds = %bb.u, %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.057.085, i64 8 ; 2 uses
  %.not80 = icmp eq ptr %i.eg, %i.bl
  br i1 %.not80, label %._crit_edge88, label %.lr.ph87

bb.w:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !859 ; 2 uses
  %i.ei = load i32, ptr %i.y, align 4, !tbaa !876
  %.not.i29 = icmp ult i32 %i.eh, %i.ei
  br i1 %.not.i29, label %bb.y, label %bb.x, !prof !856

bb.x:                                             ; preds = %bb.w
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef null)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.y:                                             ; preds = %bb.w
  %i.ej = zext i32 %i.eh to i64
  %i.ek = load ptr, ptr %10, align 8, !tbaa !858
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ej
  store ptr null, ptr %i.el, align 1
  %i.em = load i32, ptr %i.x, align 8, !tbaa !859
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.x, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.y, %bb.x, %_ZN5clang13UnresolvedSetILj8EED2Ev.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %.061.i90, i64 8 ; 2 uses
  %.not63.i = icmp eq ptr %i.eo, %11
  br i1 %.not63.i, label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit, label %bb.m

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %bb.l
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.er, align 8, !tbaa !795
  %i.es = load ptr, ptr %7, align 8, !tbaa !858
  %i.et = load i32, ptr %i.f, align 8, !tbaa !859
  %i.eu = zext i32 %i.et to i64
  %i.ev = load ptr, ptr %10, align 8, !tbaa !858
  %i.ew = load i32, ptr %i.x, align 8, !tbaa !859
  %i.ex = zext i32 %i.ew to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ey = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.ey, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ev, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ex, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.es, ptr %3, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.eu, ptr %.sroa.253.0..sroa_idx, align 8
  %i.ez = call noundef ptr @_ZN5clang10SemaOpenMP19ActOnOpenMPToClauseEN4llvm8ArrayRefINS_24OpenMPMotionModifierKindEEENS2_INS_14SourceLocationEEEPNS_4ExprERNS_12CXXScopeSpecERNS_19DeclarationNameInfoES5_NS2_IS8_EERKNS_15OMPVarListLocTyESD_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr nonnull %i.ep, i64 3, ptr nonnull %i.eq, i64 3, ptr noundef %.120, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 %.sroa.0.0.copyload.i27, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.1394") align 8 %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread

_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread: ; preds = %.lr.ph, %bb.k, %bb.i, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit
  %.1 = phi ptr [ %i.ez, %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit ], [ null, %bb.k ], [ null, %bb.i ], [ null, %.lr.ph ]
  %i.fa = load ptr, ptr %10, align 8, !tbaa !858  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.w
  br i1 %i.fb, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread
  call void @free(ptr noundef %i.fa) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %_ZN5clang34transformOMPMappableExprListClauseIN12_GLOBAL__N_113TransformToPEENS_11OMPToClauseEEEbRNS_13TreeTransformIT_EEPNS_25OMPMappableExprListClauseIT0_EERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_12CXXScopeSpecERNS_19DeclarationNameInfoESH_.exit.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !1592
  %.not.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1593
  call void @free(ptr noundef %i.ff) #30
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit

_ZN5clang12CXXScopeSpecD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN5clang12CXXScopeSpecD2Ev.exit
  %.2 = phi ptr [ %.1, %_ZN5clang12CXXScopeSpecD2Ev.exit ], [ null, %bb.b ]
  %i.fg = load ptr, ptr %7, align 8, !tbaa !858   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.e
  br i1 %i.fh, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  call void @free(ptr noundef %i.fg) #30
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit28: ; preds = %.critedge, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret ptr %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE29TransformOMPTransparentClauseEPNS_20OMPTransparentClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3222
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.0.0.copyload.i9 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.h, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.i = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !907
  %i.j = tail call noundef ptr @_ZN5clang10SemaOpenMP28ActOnOpenMPTransparentClauseEPNS_4ExprENS_14SourceLocationES3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i9, i32 %.sroa.0.0.copyload.i10) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE21TransformOMPUseClauseEPNS_12OMPUseClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3224
  %i.c = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, -2
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 8, !tbaa !795
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.g, align 4, !tbaa !795
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i11 = load i32, ptr %i.h, align 8, !tbaa !795
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.i, align 4, !tbaa !795
  %.val = load ptr, ptr %0, align 8, !tbaa !2280
  %i.j = getelementptr i8, ptr %.val, i64 832
  %.val.val = load ptr, ptr %i.j, align 8, !tbaa !907
  %i.k = tail call noundef ptr @_ZN5clang10SemaOpenMP20ActOnOpenMPUseClauseEPNS_4ExprENS_14SourceLocationES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(552) %.val.val, ptr noundef %i.f, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i10, i32 %.sroa.0.0.copyload.i11, i32 %.sroa.0.0.copyload.i12) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE31TransformOMPUseDeviceAddrClauseEPNS_22OMPUseDeviceAddrClauseE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #17 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3172", align 8 ; 11 uses
  %3 = alloca %"struct.clang::OMPVarListLocTy", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !858
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !859
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !876
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3226 ; 3 uses
  %i.f = icmp ugt i32 %i.e, 16
  br i1 %i.f, label %bb.b, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 8) #30
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3226
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
  %i.l = load ptr, ptr %.02031, align 8, !tbaa !1514
  %i.m = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.l) ; 2 uses
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = and i64 %i.m, -2
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !859  ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !876
  %.not.i = icmp ult i32 %i.q, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !856

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.p)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %2, align 8, !tbaa !858
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store ptr %i.p, ptr %i.u, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !859
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !859
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.02031, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.k
  br i1 %.not, label %.critedge24, label %.lr.ph

.critedge24:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 4, !tbaa !795
end_hunk_14
