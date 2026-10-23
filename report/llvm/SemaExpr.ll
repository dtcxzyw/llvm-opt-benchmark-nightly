Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExpr?download=true
inline.NumInlined: 75953
inline.NumDeleted: 20715
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE25TransformTemplateArgumentERKNS_19TemplateArgumentLocERSJ_b:bb.a

bb.j:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread.thread, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit.thread

bb.k:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread
  switch i32 %i.m, label %bb.p [
    i32 4, label %bb.l
    i32 3, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %.val74 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.bk = getelementptr inbounds nuw i8, ptr %.val74, i64 232
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1116, !nonnull !97, !align !787
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4615)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bm = lshr i64 %i.k, 32                       ; 2 uses
  %i.bn = trunc nuw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 2147483647               ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, 65
  br i1 %i.bp, label %_ZN4llvm5APIntD2Ev.exit.i, label %_ZN4llvm5APIntD2Ev.exit1.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit

_ZN4llvm5APIntD2Ev.exit1.i:                       ; preds = %bb.l
  %i.br = and i64 %i.bm, 2147483647
  %i.bs = add nuw nsw i64 %i.br, 63
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !788, !noalias !4615
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef %i.bo, ptr %i.bv, i64 %i.bt) #30, !noalias !4615
  %i.bw = load i64, ptr %1, align 8, !noalias !4615
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !1770, !noalias !4615
  br label %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit

_ZNK5clang16TemplateArgument13getAsIntegralEv.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %_ZN4llvm5APIntD2Ev.exit1.i
  %.sink4.i = phi i32 [ %i.bo, %_ZN4llvm5APIntD2Ev.exit.i ], [ %i.by, %_ZN4llvm5APIntD2Ev.exit1.i ]
  %.sink3.in.i = phi ptr [ %i.bq, %_ZN4llvm5APIntD2Ev.exit.i ], [ %6, %_ZN4llvm5APIntD2Ev.exit1.i ]
  %.sink.in.in.i = phi i64 [ %i.k, %_ZN4llvm5APIntD2Ev.exit.i ], [ %i.bw, %_ZN4llvm5APIntD2Ev.exit1.i ]
  %.sink3.i = load i64, ptr %.sink3.in.i, align 8, !noalias !4615
  %.sink.in.i = lshr i64 %.sink.in.in.i, 63
  %.sink.i = trunc nuw nsw i64 %.sink.in.i to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %.sink4.i, ptr %i.bz, align 8, !tbaa !1770, !alias.scope !4615
  store i64 %.sink3.i, ptr %8, align 8, !alias.scope !4615
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 %.sink.i, ptr %i.ca, align 4, !tbaa !1772, !alias.scope !4615
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN5clang16TemplateArgumentC1ERKNS_10ASTContextERKN4llvm6APSIntENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(23904) %i.bl, ptr noundef nonnull align 8 dereferenceable(13) %8, i64 %.sroa.0.0.copyload.i.i164, i1 noundef zeroext false) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4120.0..sroa_idx, align 8
  %i.cb = load i32, ptr %i.bz, align 8, !tbaa !1770
  %i.cc = icmp ugt i32 %i.cb, 64
  br i1 %i.cc, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit

bb.m:                                             ; preds = %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit
  %i.cd = load ptr, ptr %8, align 8, !tbaa !788   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN4llvm5APIntD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #32
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit.thread

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0116)
  call void @_ZN5clang16TemplateArgument12initFromTypeENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0116, i64 %.sroa.0.0.copyload.i.i164, i1 noundef zeroext true, i1 noundef zeroext false) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0116, i64 24, i1 false)
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4117.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0116)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit.thread

bb.p:                                             ; preds = %bb.k
  br i1 %i.n, label %.thread147, label %bb.q

.thread147:                                       ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread.thread, %bb.p
  %i.cf = phi ptr [ %i.bf, %bb.p ], [ null, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0113)
  call void @_ZN5clang16TemplateArgument19initFromDeclarationEPNS_9ValueDeclENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0113, ptr noundef %i.cf, i64 %.sroa.0.0.copyload.i.i164, i1 noundef zeroext false) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0113, i64 24, i1 false)
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4114.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0113)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp eq i32 %i.m, 5
  tail call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0110)
  %.val73 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.ch = getelementptr inbounds nuw i8, ptr %.val73, i64 232
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !788
  call void @_ZN5clang16TemplateArgumentC1ERKNS_10ASTContextENS_8QualTypeERKNS_7APValueEb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0110, ptr noundef nonnull align 8 dereferenceable(23904) %i.ci, i64 %.sroa.0.0.copyload.i.i164, ptr noundef nonnull align 8 dereferenceable(56) %i.ck, i1 noundef zeroext false) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0110, i64 24, i1 false)
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4111.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0110)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit.thread

bb.r:                                             ; preds = %bb.a
  %i.cl = and i64 %i.a, 2147483647
  %.not.i77 = icmp ne i64 %i.cl, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cm, align 8
  %i.cn = and i64 %.0.copyload.i.i.i.i.i.i.i, -4  ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr
  %.not148 = icmp eq i64 %i.cn, 0
  %.not = select i1 %.not.i77, i1 true, i1 %.not148
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !788
  %.val75 = load ptr, ptr %0, align 8, !tbaa !2407
  %i.cr = getelementptr i8, ptr %.val75, i64 232
  %.val75.val = load ptr, ptr %i.cr, align 8, !tbaa !1116
  %i.cs = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %.val75.val, i64 %i.cq, i32 0) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.063 = phi ptr [ %i.co, %bb.r ], [ %i.cs, %bb.s ]
  %i.ct = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.063) ; 3 uses
  %.not68 = icmp eq ptr %i.ct, null
  br i1 %.not68, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0107)
  %.sroa.0.0.copyload.i = load i64, ptr %i.ct, align 8, !tbaa !788
  call void @_ZN5clang16TemplateArgument12initFromTypeENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false, i1 noundef zeroext false) #30
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = or i64 %i.cu, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107, i64 24, i1 false)
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.cv, ptr %.sroa.4108.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0107)
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit.thread

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.cw = tail call { i64, ptr } @_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #30 ; 2 uses
  %i.cx = extractvalue { i64, ptr } %i.cw, 0
  store i64 %i.cx, ptr %9, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cz = extractvalue { i64, ptr } %i.cw, 1
  store ptr %i.cz, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.da = load i64, ptr %1, align 8
  %i.db = and i64 %i.da, 2147483646
  %switch.i = icmp eq i64 %i.db, 6
  br i1 %switch.i, label %bb.w, label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8
  %i.dd = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -4
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.df, align 8, !tbaa !795
  br label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit

_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit: ; preds = %bb.v, %bb.w
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.w ], [ 0, %bb.v ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !788
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.dh) #30
  %i.di = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dj = load i64, ptr %1, align 8
  %i.dk = and i64 %i.dj, 2147483646
  %switch.i79 = icmp eq i64 %i.dk, 6
  br i1 %switch.i79, label %bb.x, label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit

bb.x:                                             ; preds = %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i81 = load i64, ptr %i.dl, align 8
  %i.dm = and i64 %.0.copyload.i.i.i.i.i.i.i.i81, -4
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %.sroa.0.0.copyload.i.i82 = load i32, ptr %i.do, align 4, !tbaa !795
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit

_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit: ; preds = %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit, %bb.x
  %.sroa.0.0.i80 = phi i32 [ %.sroa.0.0.copyload.i.i82, %bb.x ], [ 0, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !4616
  %i.dp = call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE21TransformTemplateNameERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameESL_NS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 %.sroa.0.0.i, i64 %i.di, i32 %.sroa.0.0.i80, i64 0, ptr noundef null, i1 noundef zeroext false), !noalias !4616, !inline_history !4612
  store i64 %i.dp, ptr %4, align 8, !noalias !4616
  %i.dq = call noundef zeroext i1 @_ZNK5clang12TemplateName6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30, !noalias !4616, !inline_history !4612
  br i1 %i.dq, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameESL_.exit.thread, label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameESL_.exit

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameESL_.exit.thread: ; preds = %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !4616
  br label %bb.aa

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameESL_.exit: ; preds = %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit
  %.sroa.0.0.copyload.i83 = load i64, ptr %4, align 8, !noalias !4616
  store i32 6, ptr %10, align 8
  %i.dr = inttoptr i64 %.sroa.0.0.copyload.i83 to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.ds, align 4, !tbaa !795
  %.pre = load i64, ptr %10, align 8
  %i.dt = and i64 %.pre, 2147483647
  %i.du = icmp eq i64 %i.dt, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.dr, ptr %i.dv, align 8, !tbaa !788
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !4616
  br i1 %i.du, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameESL_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.dw = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 232
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.dz = load i64, ptr %1, align 8
  %i.ea = and i64 %i.dz, 2147483646
  %switch.i84 = icmp eq i64 %i.ea, 6
  br i1 %switch.i84, label %bb.z, label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88

_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88: ; preds = %bb.y
  %.sroa.2.0.copyload = load ptr, ptr %i.cy, align 8, !tbaa !100
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i86 = load i64, ptr %i.eb, align 8
  %i.ec = and i64 %.0.copyload.i.i.i.i.i.i.i.i86, -4
  %i.ed = inttoptr i64 %i.ec to ptr               ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.0.0.copyload.i.i87 = load i32, ptr %i.ee, align 8, !tbaa !795
  %.sroa.2.0.copyload137 = load ptr, ptr %i.cy, align 8, !tbaa !100
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %.sroa.0.0.copyload.i.i92 = load i32, ptr %i.ef, align 4, !tbaa !795
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93

_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93: ; preds = %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88, %bb.z
  %.sroa.2.0.copyload142 = phi ptr [ %.sroa.2.0.copyload137, %bb.z ], [ %.sroa.2.0.copyload, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88 ]
  %.sroa.0.0.i85138 = phi i32 [ %.sroa.0.0.copyload.i.i87, %bb.z ], [ 0, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88 ]
  %.sroa.0.0.i90 = phi i32 [ %.sroa.0.0.copyload.i.i92, %bb.z ], [ 0, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88 ]
  %.sroa.05.0.copyload140 = load i64, ptr %9, align 8, !tbaa !815
  call void @_ZN5clang19TemplateArgumentLocC1ERNS_10ASTContextERKNS_16TemplateArgumentENS_14SourceLocationENS_22NestedNameSpecifierLocES6_S6_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 %.sroa.0.0.i85138, i64 %.sroa.05.0.copyload140, ptr %.sroa.2.0.copyload142, i32 %.sroa.0.0.i90, i32 0) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameESL_.exit.thread, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameESL_.exit, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93
  %i.eg = phi i1 [ true, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameESL_.exit.thread ], [ true, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameESL_.exit ], [ false, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit.thread

bb.ab:                                            ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !2407  ; 4 uses
  %i.eh = select i1 %3, i32 0, i32 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !858
  %i.ek = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !859
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [792 x i8], ptr %i.ej, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -672
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !2224
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef %i.eh, ptr noundef %i.ep, i32 noundef 1)
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i94 = load i64, ptr %i.eq, align 8
  %i.er = and i64 %.0.copyload.i.i.i.i.i.i.i94, -4 ; 2 uses
  %.not72 = icmp eq i64 %i.er, 0
  br i1 %.not72, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !788
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.062.in = phi i64 [ %i.er, %bb.ab ], [ %i.et, %bb.ac ]
  %.062 = inttoptr i64 %.062.in to ptr
  %i.eu = tail call fastcc i64 @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.062) ; 3 uses
  %spec.select.i = icmp ugt i64 %i.eu, 1
  br i1 %spec.select.i, label %bb.ae, label %_ZN5clang4Sema23ActOnConstantExpressionENS_12ActionResultIPNS_4ExprELb1EEE.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ev = load ptr, ptr %0, align 8, !tbaa !2407, !nonnull !97, !align !787
  %i.ew = and i64 %i.eu, -2
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = tail call i64 @_ZN5clang4Sema36CheckLValueToRValueConversionOperandEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ev, ptr noundef %i.ex), !inline_history !2615
  br label %_ZN5clang4Sema23ActOnConstantExpressionENS_12ActionResultIPNS_4ExprELb1EEE.exit

_ZN5clang4Sema23ActOnConstantExpressionENS_12ActionResultIPNS_4ExprELb1EEE.exit: ; preds = %bb.ad, %bb.ae
  %.sroa.0.0.i96 = phi i64 [ %i.ey, %bb.ae ], [ %i.eu, %bb.ad ] ; 3 uses
  %i.ez = icmp eq i64 %.sroa.0.0.i96, 1           ; 2 uses
  br i1 %i.ez, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5clang4Sema23ActOnConstantExpressionENS_12ActionResultIPNS_4ExprELb1EEE.exit
  %i.fa = and i64 %.sroa.0.0.i96, -2
  %i.fb = or i64 %.sroa.0.0.i96, 1
  store i64 8, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.fb, ptr %.sroa.699.0..sroa_idx, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %_ZN5clang4Sema23ActOnConstantExpressionENS_12ActionResultIPNS_4ExprELb1EEE.exit, %bb.af
  tail call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val), !inline_history !7
  br label %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %bb.c, %bb.b, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit, %bb.j, %bb.o, %bb.q, %.thread147, %_ZN4llvm5APIntD2Ev.exit, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %bb.u, %bb.t, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.aa
  %.5 = phi i1 [ false, %bb.u ], [ %i.ez, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ %i.eg, %bb.aa ], [ true, %bb.a ], [ true, %bb.t ], [ true, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformTypeENS_8QualTypeE.exit ], [ false, %bb.j ], [ false, %bb.o ], [ false, %bb.q ], [ false, %.thread147 ], [ false, %_ZN4llvm5APIntD2Ev.exit ], [ true, %_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.5
}

declare noundef zeroext i1 @_ZNK5clang16TemplateArgument31containsUnexpandedParameterPackEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang13TreeTransformIZL31RemoveNestedImmediateInvocationRNS_4SemaERNS1_33ExpressionEvaluationContextRecordESt16reverse_iteratorIPN4llvm14PointerIntPairIPNS_12ConstantExprELj1EjNS6_21PointerLikeTypeTraitsIS9_EENS6_18PointerIntPairInfoIS9_Lj1ESB_EEEEEE13ComplexRemoveE20RebuildPackExpansionENS_19TemplateArgumentLocENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val, ptr noundef byval(%"class.clang::TemplateArgumentLoc") align 8 %1, i32 %2, i32 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::TemplateName", align 8 ; 4 uses
  %5 = alloca %"class.clang::TemplateArgument", align 8 ; 6 uses
  %6 = alloca %"class.clang::TemplateArgument", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 2147483647
  switch i32 %i.c, label %.thread [
    i32 8, label %bb.b
    i32 6, label %bb.e
    i32 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i, -4
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.0.val, ptr noundef %i.f, i32 %2, i32 %3) #30 ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8
  %i.j = and i64 %i.i, -8589934592
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !2726
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.l, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.m = and i64 %i.g, -2
  store i64 8, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = or i64 %i.g, 1
  store i64 %i.o, ptr %i.n, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1116, !nonnull !97, !align !787
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !788
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.s) #30
  %i.t = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i32 7, ptr %5, align 8
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !788
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %3, ptr %i.w, align 4, !tbaa !795
  %i.x = and i64 %i.a, 2147483646
  %switch.i = icmp eq i64 %i.x, 6
  br i1 %switch.i, label %bb.f, label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -4
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ab, align 8, !tbaa !795
  br label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit

end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE25TransformTemplateArgumentERKNS_19TemplateArgumentLocERS4_b:bb.a

bb.j:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread.thread, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread

bb.k:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread
  switch i32 %i.m, label %bb.p [
    i32 4, label %bb.l
    i32 3, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %.val74 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.bk = getelementptr inbounds nuw i8, ptr %.val74, i64 232
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1116, !nonnull !97, !align !787
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6549)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bm = lshr i64 %i.k, 32                       ; 2 uses
  %i.bn = trunc nuw i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 2147483647               ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, 65
  br i1 %i.bp, label %_ZN4llvm5APIntD2Ev.exit.i, label %_ZN4llvm5APIntD2Ev.exit1.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit

_ZN4llvm5APIntD2Ev.exit1.i:                       ; preds = %bb.l
  %i.br = and i64 %i.bm, 2147483647
  %i.bs = add nuw nsw i64 %i.br, 63
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !788, !noalias !6549
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %6, i32 noundef %i.bo, ptr %i.bv, i64 %i.bt) #30, !noalias !6549
  %i.bw = load i64, ptr %1, align 8, !noalias !6549
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !1770, !noalias !6549
  br label %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit

_ZNK5clang16TemplateArgument13getAsIntegralEv.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %_ZN4llvm5APIntD2Ev.exit1.i
  %.sink4.i = phi i32 [ %i.bo, %_ZN4llvm5APIntD2Ev.exit.i ], [ %i.by, %_ZN4llvm5APIntD2Ev.exit1.i ]
  %.sink3.in.i = phi ptr [ %i.bq, %_ZN4llvm5APIntD2Ev.exit.i ], [ %6, %_ZN4llvm5APIntD2Ev.exit1.i ]
  %.sink.in.in.i = phi i64 [ %i.k, %_ZN4llvm5APIntD2Ev.exit.i ], [ %i.bw, %_ZN4llvm5APIntD2Ev.exit1.i ]
  %.sink3.i = load i64, ptr %.sink3.in.i, align 8, !noalias !6549
  %.sink.in.i = lshr i64 %.sink.in.in.i, 63
  %.sink.i = trunc nuw nsw i64 %.sink.in.i to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %.sink4.i, ptr %i.bz, align 8, !tbaa !1770, !alias.scope !6549
  store i64 %.sink3.i, ptr %8, align 8, !alias.scope !6549
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 %.sink.i, ptr %i.ca, align 4, !tbaa !1772, !alias.scope !6549
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN5clang16TemplateArgumentC1ERKNS_10ASTContextERKN4llvm6APSIntENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(23904) %i.bl, ptr noundef nonnull align 8 dereferenceable(13) %8, i64 %.sroa.0.0.copyload.i.i164, i1 noundef zeroext false) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4120.0..sroa_idx, align 8
  %i.cb = load i32, ptr %i.bz, align 8, !tbaa !1770
  %i.cc = icmp ugt i32 %i.cb, 64
  br i1 %i.cc, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit

bb.m:                                             ; preds = %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit
  %i.cd = load ptr, ptr %8, align 8, !tbaa !788   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN4llvm5APIntD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #32
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK5clang16TemplateArgument13getAsIntegralEv.exit, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0116)
  call void @_ZN5clang16TemplateArgument12initFromTypeENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0116, i64 %.sroa.0.0.copyload.i.i164, i1 noundef zeroext true, i1 noundef zeroext false) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0116, i64 24, i1 false)
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4117.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0116)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread

bb.p:                                             ; preds = %bb.k
  br i1 %i.n, label %.thread147, label %bb.q

.thread147:                                       ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread.thread, %bb.p
  %i.cf = phi ptr [ %i.bf, %bb.p ], [ null, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0113)
  call void @_ZN5clang16TemplateArgument19initFromDeclarationEPNS_9ValueDeclENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0113, ptr noundef %i.cf, i64 %.sroa.0.0.copyload.i.i164, i1 noundef zeroext false) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0113, i64 24, i1 false)
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4114.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0113)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp eq i32 %i.m, 5
  tail call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0110)
  %.val73 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.ch = getelementptr inbounds nuw i8, ptr %.val73, i64 232
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !788
  call void @_ZN5clang16TemplateArgumentC1ERKNS_10ASTContextENS_8QualTypeERKNS_7APValueEb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0110, ptr noundef nonnull align 8 dereferenceable(23904) %i.ci, i64 %.sroa.0.0.copyload.i.i164, ptr noundef nonnull align 8 dereferenceable(56) %i.ck, i1 noundef zeroext false) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0110, i64 24, i1 false)
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %.sroa.4111.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0110)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread

bb.r:                                             ; preds = %bb.a
  %i.cl = and i64 %i.a, 2147483647
  %.not.i77 = icmp ne i64 %i.cl, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cm, align 8
  %i.cn = and i64 %.0.copyload.i.i.i.i.i.i.i, -4  ; 2 uses
  %i.co = inttoptr i64 %i.cn to ptr
  %.not148 = icmp eq i64 %i.cn, 0
  %.not = select i1 %.not.i77, i1 true, i1 %.not148
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !788
  %.val75 = load ptr, ptr %0, align 8, !tbaa !2280
  %i.cr = getelementptr i8, ptr %.val75, i64 232
  %.val75.val = load ptr, ptr %i.cr, align 8, !tbaa !1116
  %i.cs = tail call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %.val75.val, i64 %i.cq, i32 0) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.063 = phi ptr [ %i.co, %bb.r ], [ %i.cs, %bb.s ]
  %i.ct = tail call fastcc noundef ptr @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.063) ; 3 uses
  %.not68 = icmp eq ptr %i.ct, null
  br i1 %.not68, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0107)
  %.sroa.0.0.copyload.i = load i64, ptr %i.ct, align 8, !tbaa !788
  call void @_ZN5clang16TemplateArgument12initFromTypeENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false, i1 noundef zeroext false) #30
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = or i64 %i.cu, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107, i64 24, i1 false)
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.cv, ptr %.sroa.4108.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0107)
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.cw = tail call { i64, ptr } @_ZNK5clang19TemplateArgumentLoc23getTemplateQualifierLocEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #30 ; 2 uses
  %i.cx = extractvalue { i64, ptr } %i.cw, 0
  store i64 %i.cx, ptr %9, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cz = extractvalue { i64, ptr } %i.cw, 1
  store ptr %i.cz, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.da = load i64, ptr %1, align 8
  %i.db = and i64 %i.da, 2147483646
  %switch.i = icmp eq i64 %i.db, 6
  br i1 %switch.i, label %bb.w, label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit

bb.w:                                             ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.dc, align 8
  %i.dd = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -4
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.df, align 8, !tbaa !795
  br label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit

_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit: ; preds = %bb.v, %bb.w
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.w ], [ 0, %bb.v ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !788
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.dh) #30
  %i.di = load i64, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dj = load i64, ptr %1, align 8
  %i.dk = and i64 %i.dj, 2147483646
  %switch.i79 = icmp eq i64 %i.dk, 6
  br i1 %switch.i79, label %bb.x, label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit

bb.x:                                             ; preds = %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i81 = load i64, ptr %i.dl, align 8
  %i.dm = and i64 %.0.copyload.i.i.i.i.i.i.i.i81, -4
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %.sroa.0.0.copyload.i.i82 = load i32, ptr %i.do, align 4, !tbaa !795
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit

_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit: ; preds = %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit, %bb.x
  %.sroa.0.0.i80 = phi i32 [ %.sroa.0.0.copyload.i.i82, %bb.x ], [ 0, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !6550
  %i.dp = call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE21TransformTemplateNameERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_NS_8QualTypeEPNS_9NamedDeclEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 %.sroa.0.0.i, i64 %i.di, i32 %.sroa.0.0.i80, i64 0, ptr noundef null, i1 noundef zeroext false), !noalias !6550, !inline_history !6546
  store i64 %i.dp, ptr %4, align 8, !noalias !6550
  %i.dq = call noundef zeroext i1 @_ZNK5clang12TemplateName6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30, !noalias !6550, !inline_history !6546
  br i1 %i.dq, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit.thread, label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit.thread: ; preds = %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !6550
  br label %bb.aa

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit: ; preds = %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit
  %.sroa.0.0.copyload.i83 = load i64, ptr %4, align 8, !noalias !6550
  store i32 6, ptr %10, align 8
  %i.dr = inttoptr i64 %.sroa.0.0.copyload.i83 to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.ds, align 4, !tbaa !795
  %.pre = load i64, ptr %10, align 8
  %i.dt = and i64 %.pre, 2147483647
  %i.du = icmp eq i64 %i.dt, 0
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.dr, ptr %i.dv, align 8, !tbaa !788
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !6550
  br i1 %i.du, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.dw = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 232
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.dz = load i64, ptr %1, align 8
  %i.ea = and i64 %i.dz, 2147483646
  %switch.i84 = icmp eq i64 %i.ea, 6
  br i1 %switch.i84, label %bb.z, label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88

_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88: ; preds = %bb.y
  %.sroa.2.0.copyload = load ptr, ptr %i.cy, align 8, !tbaa !100
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i86 = load i64, ptr %i.eb, align 8
  %i.ec = and i64 %.0.copyload.i.i.i.i.i.i.i.i86, -4
  %i.ed = inttoptr i64 %i.ec to ptr               ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.0.0.copyload.i.i87 = load i32, ptr %i.ee, align 8, !tbaa !795
  %.sroa.2.0.copyload137 = load ptr, ptr %i.cy, align 8, !tbaa !100
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %.sroa.0.0.copyload.i.i92 = load i32, ptr %i.ef, align 4, !tbaa !795
  br label %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93

_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93: ; preds = %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88, %bb.z
  %.sroa.2.0.copyload142 = phi ptr [ %.sroa.2.0.copyload137, %bb.z ], [ %.sroa.2.0.copyload, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88 ]
  %.sroa.0.0.i85138 = phi i32 [ %.sroa.0.0.copyload.i.i87, %bb.z ], [ 0, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88 ]
  %.sroa.0.0.i90 = phi i32 [ %.sroa.0.0.copyload.i.i92, %bb.z ], [ 0, %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit88 ]
  %.sroa.05.0.copyload140 = load i64, ptr %9, align 8, !tbaa !815
  call void @_ZN5clang19TemplateArgumentLocC1ERNS_10ASTContextERKNS_16TemplateArgumentENS_14SourceLocationENS_22NestedNameSpecifierLocES6_S6_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(23904) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 %.sroa.0.0.i85138, i64 %.sroa.05.0.copyload140, ptr %.sroa.2.0.copyload142, i32 %.sroa.0.0.i90, i32 0) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit.thread, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93
  %i.eg = phi i1 [ true, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit.thread ], [ true, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE38TransformNamedTemplateTemplateArgumentERNS_22NestedNameSpecifierLocENS_14SourceLocationENS_12TemplateNameES6_.exit ], [ false, %_ZNK5clang19TemplateArgumentLoc18getTemplateNameLocEv.exit93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread

bb.ab:                                            ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !2280  ; 4 uses
  %i.eh = select i1 %3, i32 0, i32 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.val, i64 4592
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !858
  %i.ek = getelementptr inbounds nuw i8, ptr %.val, i64 4600
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !859
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [792 x i8], ptr %i.ej, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -672
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !2224
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 noundef %i.eh, ptr noundef %i.ep, i32 noundef 1)
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i94 = load i64, ptr %i.eq, align 8
  %i.er = and i64 %.0.copyload.i.i.i.i.i.i.i94, -4 ; 2 uses
  %.not72 = icmp eq i64 %i.er, 0
  br i1 %.not72, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !788
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.062.in = phi i64 [ %i.er, %bb.ab ], [ %i.et, %bb.ac ]
  %.062 = inttoptr i64 %.062.in to ptr
  %i.eu = tail call fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.062) ; 3 uses
  %spec.select.i = icmp ugt i64 %i.eu, 1
  br i1 %spec.select.i, label %bb.ae, label %_ZN5clang4Sema23ActOnConstantExpressionENS_12ActionResultIPNS_4ExprELb1EEE.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ev = load ptr, ptr %0, align 8, !tbaa !2280, !nonnull !97, !align !787
  %i.ew = and i64 %i.eu, -2
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = tail call i64 @_ZN5clang4Sema36CheckLValueToRValueConversionOperandEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.ev, ptr noundef %i.ex), !inline_history !2615
  br label %_ZN5clang4Sema23ActOnConstantExpressionENS_12ActionResultIPNS_4ExprELb1EEE.exit

_ZN5clang4Sema23ActOnConstantExpressionENS_12ActionResultIPNS_4ExprELb1EEE.exit: ; preds = %bb.ad, %bb.ae
  %.sroa.0.0.i96 = phi i64 [ %i.ey, %bb.ae ], [ %i.eu, %bb.ad ] ; 3 uses
  %i.ez = icmp eq i64 %.sroa.0.0.i96, 1           ; 2 uses
  br i1 %i.ez, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5clang4Sema23ActOnConstantExpressionENS_12ActionResultIPNS_4ExprELb1EEE.exit
  %i.fa = and i64 %.sroa.0.0.i96, -2
  %i.fb = or i64 %.sroa.0.0.i96, 1
  store i64 8, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.fa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.fb, ptr %.sroa.699.0..sroa_idx, align 8
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit: ; preds = %_ZN5clang4Sema23ActOnConstantExpressionENS_12ActionResultIPNS_4ExprELb1EEE.exit, %bb.af
  tail call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val), !inline_history !7
  br label %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread

_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit.thread: ; preds = %bb.c, %bb.b, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit, %bb.j, %bb.o, %bb.q, %.thread147, %_ZN4llvm5APIntD2Ev.exit, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit, %bb.a, %bb.u, %bb.t, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.aa
  %.5 = phi i1 [ false, %bb.u ], [ %i.ez, %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit ], [ %i.eg, %bb.aa ], [ true, %bb.a ], [ true, %bb.t ], [ true, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformTypeENS_8QualTypeE.exit ], [ false, %bb.j ], [ false, %bb.o ], [ false, %bb.q ], [ false, %.thread147 ], [ false, %_ZN4llvm5APIntD2Ev.exit ], [ true, %_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE13TransformDeclENS_14SourceLocationEPNS_4DeclE.exit ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang13TreeTransformIN12_GLOBAL__N_113TransformToPEEE20RebuildPackExpansionENS_19TemplateArgumentLocENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.0.val, ptr noundef byval(%"class.clang::TemplateArgumentLoc") align 8 %1, i32 %2, i32 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::TemplateName", align 8 ; 4 uses
  %5 = alloca %"class.clang::TemplateArgument", align 8 ; 6 uses
  %6 = alloca %"class.clang::TemplateArgument", align 8 ; 4 uses
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 2147483647
  switch i32 %i.c, label %.thread [
    i32 8, label %bb.b
    i32 6, label %bb.e
    i32 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i, -4
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i64 @_ZN5clang4Sema18CheckPackExpansionEPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(18640) %.0.val, ptr noundef %i.f, i32 %2, i32 %3) #30 ; 3 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8
  %i.j = and i64 %i.i, -8589934592
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !2726
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.l, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.m = and i64 %i.g, -2
  store i64 8, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = or i64 %i.g, 1
  store i64 %i.o, ptr %i.n, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1116, !nonnull !97, !align !787
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !788
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.s) #30
  %i.t = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i32 7, ptr %5, align 8
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !788
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %3, ptr %i.w, align 4, !tbaa !795
  %i.x = and i64 %i.a, 2147483646
  %switch.i = icmp eq i64 %i.x, 6
  br i1 %switch.i, label %bb.f, label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.y, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -4
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ab, align 8, !tbaa !795
  br label %_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit

_ZNK5clang19TemplateArgumentLoc16getTemplateKWLocEv.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i.i, %bb.f ], [ 0, %bb.e ]
end_hunk_1
