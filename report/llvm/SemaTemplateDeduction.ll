Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateDeduction?download=true
inline.NumInlined: 31829
inline.NumDeleted: 13875
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZL24isAtLeastAsSpecializedAsRN5clang4SemaENS_14SourceLocationEPNS_20FunctionTemplateDeclES4_NS_30TemplatePartialOrderingContextEN4llvm8ArrayRefINS_8QualTypeEEES9_b:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #22
  %i.jk = load ptr, ptr %11, align 8, !tbaa !766  ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.dm
  br i1 %i.jl, label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit
  call void @free(ptr noundef %i.jk) #22
  br label %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit: ; preds = %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.k, %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit
  %.4 = phi i1 [ %.3, %_ZN4llvm11SmallVectorIN5clang16TemplateArgumentELj4EED2Ev.exit ], [ false, %bb.k ]
  %i.jm = load i64, ptr %10, align 8, !tbaa !1161 ; 3 uses
  %i.jn = trunc i64 %i.jm to i1
  br i1 %i.jn, label %_ZN4llvm14SmallBitVectorD2Ev.exit75, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jo = inttoptr i64 %i.jm to ptr               ; 3 uses
  %i.jp = icmp eq i64 %i.jm, 0
  br i1 %i.jp, label %_ZN4llvm14SmallBitVectorD2Ev.exit75, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !766 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZN4llvm9BitVectorD2Ev.exit.i74, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.jq) #22
  br label %_ZN4llvm9BitVectorD2Ev.exit.i74

_ZN4llvm9BitVectorD2Ev.exit.i74:                  ; preds = %bb.ag, %bb.af
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef 72) #23
  br label %_ZN4llvm14SmallBitVectorD2Ev.exit75

_ZN4llvm14SmallBitVectorD2Ev.exit75:              ; preds = %bb.ad, %bb.ae, %_ZN4llvm9BitVectorD2Ev.exit.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.i, %_ZN4llvm14SmallBitVectorD2Ev.exit75
  %.5 = phi i1 [ %.4, %_ZN4llvm14SmallBitVectorD2Ev.exit75 ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.jt = load ptr, ptr %i.ct, align 8, !tbaa !766 ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.cu
  br i1 %i.ju, label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef %i.jt) #22
  br label %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i: ; preds = %bb.ai, %bb.ah
  %i.jv = load ptr, ptr %i.cn, align 8, !tbaa !766 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.co
  br i1 %i.jw, label %_ZN5clang22ConstraintSatisfactionD2Ev.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i
  call void @free(ptr noundef %i.jv) #22
  br label %_ZN5clang22ConstraintSatisfactionD2Ev.exit.i

_ZN5clang22ConstraintSatisfactionD2Ev.exit.i:     ; preds = %bb.aj, %_ZN4llvm11SmallVectorINS_12PointerUnionIJPKN5clang4ExprEPKNS2_16ConceptReferenceEPKSt4pairINS2_14SourceLocationENS_9StringRefEEEEELj4EED2Ev.exit.i.i
  %i.jx = load ptr, ptr %i.ci, align 8, !tbaa !766 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.cj
  br i1 %i.jy, label %_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN5clang22ConstraintSatisfactionD2Ev.exit.i
  call void @free(ptr noundef %i.jx) #22
  br label %_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i: ; preds = %bb.ak, %_ZN5clang22ConstraintSatisfactionD2Ev.exit.i
  %i.jz = load ptr, ptr %i.bt, align 8, !tbaa !766 ; 3 uses
  %i.ka = load i32, ptr %i.bv, align 8, !tbaa !767 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.ka, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i
  %i.kb = zext i32 %i.ka to i64
  %.idx.i.i = shl nuw nsw i64 %i.kb, 5
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 %.idx.i.i
  br label %.lr.ph.i.i.i76

.lr.ph.i.i.i76:                                   ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.kd, %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i ], [ %i.kc, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.kd = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !1063 ; 6 uses
  %.not.i.i.i.i.i.i77 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i.i.i.i77, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i76
  %i.kg = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !1064 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ki = icmp uge ptr %i.kf, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 14848 ; 2 uses
  %i.kk = icmp ule ptr %i.kf, %i.kj
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.ki, i1 %i.kk, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 14976 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !1294 ; 2 uses
  %i.kn = add i32 %i.km, 1
  store i32 %i.kn, ptr %i.kl, align 8, !tbaa !1294
  %i.ko = zext i32 %i.km to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.ko
  store ptr %i.kf, ptr %i.kp, align 8, !tbaa !1295
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.kf) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef 928) #23
  br label %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i

_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i: ; preds = %bb.ao, %bb.an, %bb.al, %.lr.ph.i.i.i76
  %.not.i.i.i78 = icmp eq ptr %i.jz, %i.kd
  br i1 %.not.i.i.i78, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i, label %.lr.ph.i.i.i76, !llvm.loop !10

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN5clang14SourceLocationENS0_17PartialDiagnosticEED2Ev.exit.i.i.i
  %.pre.i.i79 = load ptr, ptr %i.bt, align 8, !tbaa !766
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i, %_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i
  %i.kq = phi ptr [ %.pre.i.i79, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i ], [ %i.jz, %_ZN4llvm11SmallVectorIPN5clang11DeducedPackELj8EED2Ev.exit.i ] ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.bu
  br i1 %i.kr, label %_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i
  call void @free(ptr noundef %i.kq) #22
  br label %_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit

_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit:   ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEELb0EE13destroy_rangeEPS5_S7_.exit.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ks = load ptr, ptr %8, align 8, !tbaa !766   ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.bb
  br i1 %i.kt, label %_ZN4llvm11SmallVectorIN5clang23DeducedTemplateArgumentELj4EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit
  call void @free(ptr noundef %i.ks) #22
  br label %_ZN4llvm11SmallVectorIN5clang23DeducedTemplateArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang23DeducedTemplateArgumentELj4EED2Ev.exit: ; preds = %_ZN5clang4sema21TemplateDeductionInfoD2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i1 %.5
}

declare noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

declare void @_ZNK5clang12TemplateDecl24getAssociatedConstraintsERN4llvm15SmallVectorImplINS_20AssociatedConstraintEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5clang4Sema22IsAtLeastAsConstrainedEPKNS_9NamedDeclEN4llvm15MutableArrayRefINS_20AssociatedConstraintEEES3_S7_Rb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr, i64, ptr noundef, ptr noundef byval(%"class.llvm::MutableArrayRef.1300") align 8, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN5clang4Sema18getMostSpecializedENS_21UnresolvedSetIteratorES1_RNS_24TemplateSpecCandidateSetENS_14SourceLocationERKNS_17PartialDiagnosticES7_S7_bNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(1045) %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(20) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %7, i1 noundef zeroext %8, i64 %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %11 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %12 = alloca %"class.clang::PartialDiagnostic", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %8, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationERKNS_17PartialDiagnosticE(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 %4, ptr noundef nonnull align 8 dereferenceable(20) %5) #22
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #22
  call void @_ZN5clang24TemplateSpecCandidateSet14NoteCandidatesERNS_4SemaENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(1045) %3, ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %4) #22
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = icmp eq ptr %i.c, %2
  br i1 %i.d, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.f) #22
  br label %.lr.ph

.lr.ph99:                                         ; preds = %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread79
  %.not121 = icmp eq ptr %.1, null
  br i1 %.not121, label %.lr.ph99.split.us, label %.lr.ph99.split

.lr.ph99.split.us:                                ; preds = %.lr.ph99
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  %.0.copyload.i.i.i.i.i.i36.us112 = load i64, ptr %1, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i36.us112, -8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.i) #22
  %.not88.us113 = icmp eq ptr %1, %.sroa.060.089
  br i1 %.not88.us113, label %._crit_edge.loopexit, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph99.split.us
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  %.0.copyload.i.i.i.i.i.i36.us = load i64, ptr %i.c, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i36.us, -8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = tail call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.l) #22
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph99.split.us
  %.lcssa = phi ptr [ %i.j, %.lr.ph99.split.us ], [ %i.m, %._crit_edge.loopexit ]
  %i.n = tail call noundef ptr @_ZN5clang4Sema26getMoreSpecializedTemplateEPNS_20FunctionTemplateDeclES2_NS_14SourceLocationENS_30TemplatePartialOrderingContextEjNS_8QualTypeES5_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef null, ptr noundef %.lcssa, i32 %4, i32 2, i32 noundef 0, i64 0, i64 0, i1 noundef zeroext false, i1 noundef zeroext false) ; 0 uses
  br i1 %8, label %.lr.ph120, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread79
  %.094 = phi ptr [ %.1, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread79 ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %.sroa.060.093 = phi ptr [ %i.ae, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread79 ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %.sroa.060.09092 = phi ptr [ %.sroa.060.089, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread79 ], [ %1, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.060.093, i64 8) ]
  %.0.copyload.i.i.i.i.i.i35 = load i64, ptr %.sroa.060.093, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i35, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.p) #22 ; 6 uses
  %i.r = tail call noundef ptr @_ZN5clang4Sema26getMoreSpecializedTemplateEPNS_20FunctionTemplateDeclES2_NS_14SourceLocationENS_30TemplatePartialOrderingContextEjNS_8QualTypeES5_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %.094, ptr noundef %i.q, i32 %4, i32 2, i32 noundef 0, i64 0, i64 0, i1 noundef zeroext false, i1 noundef zeroext false) ; 4 uses
  %i.s = icmp ne ptr %i.r, null
  %i.t = icmp ne ptr %i.q, null
  %or.cond.i = and i1 %i.t, %i.s
  br i1 %or.cond.i, label %bb.e, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread79

bb.e:                                             ; preds = %.lr.ph
  %i.u = icmp eq ptr %i.r, %i.q
  br i1 %i.u, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit: ; preds = %bb.e
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !1029
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(33) %i.r) #22, !inline_history !2223
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !1029
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(33) %i.q) #22, !inline_history !2223
  %i.ad = icmp eq ptr %i.y, %i.ac
  br i1 %i.ad, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread79

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread: ; preds = %bb.e, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit
  br label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread79

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread79: ; preds = %.lr.ph, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit
  %.sroa.060.089 = phi ptr [ %.sroa.060.093, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread ], [ %.sroa.060.09092, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit ], [ %.sroa.060.09092, %.lr.ph ] ; 4 uses
  %.1 = phi ptr [ %i.q, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit.thread ], [ %.094, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit ], [ %.094, %.lr.ph ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.060.093, i64 8 ; 2 uses
  %.not86 = icmp eq ptr %i.ae, %2
  br i1 %.not86, label %.lr.ph99, label %.lr.ph, !llvm.loop !2224

.lr.ph99.split:                                   ; preds = %.lr.ph99, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39.thread
  %.sroa.053.097 = phi ptr [ %i.at, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39.thread ], [ %1, %.lr.ph99 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.053.097, i64 8) ]
  %.0.copyload.i.i.i.i.i.i36 = load i64, ptr %.sroa.053.097, align 8
  %i.af = and i64 %.0.copyload.i.i.i.i.i.i36, -8
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = tail call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ag) #22
  %.not88 = icmp eq ptr %.sroa.053.097, %.sroa.060.089
  br i1 %.not88, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph99.split
  %i.ai = tail call noundef ptr @_ZN5clang4Sema26getMoreSpecializedTemplateEPNS_20FunctionTemplateDeclES2_NS_14SourceLocationENS_30TemplatePartialOrderingContextEjNS_8QualTypeES5_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.1, ptr noundef %i.ah, i32 %4, i32 2, i32 noundef 0, i64 0, i64 0, i1 noundef zeroext false, i1 noundef zeroext false) ; 4 uses
  %.not122 = icmp eq ptr %i.ai, null
  br i1 %.not122, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp eq ptr %i.ai, %.1
  br i1 %i.aj, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39.thread, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39: ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !1029
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(33) %i.ai) #22, !inline_history !2223
  %i.ao = load ptr, ptr %.1, align 8, !tbaa !1029
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(33) %.1) #22, !inline_history !2223
  %i.as = icmp eq ptr %i.an, %i.ar
  br i1 %i.as, label %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39.thread, label %.thread

_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39.thread: ; preds = %bb.g, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39, %.lr.ph99.split
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.053.097, i64 8 ; 2 uses
  %.not87.not.not = icmp eq ptr %i.at, %2
  br i1 %.not87.not.not, label %.loopexit, label %.lr.ph99.split, !llvm.loop !2225

.thread:                                          ; preds = %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39, %bb.f
  br i1 %8, label %.lr.ph120, label %.loopexit

.lr.ph120:                                        ; preds = %.thread, %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationERKNS_17PartialDiagnosticE(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.au, i32 %4, ptr noundef nonnull align 8 dereferenceable(20) %6) #22
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %11) #22
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bb = icmp ult i64 %9, 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph120, %_ZN5clang19StreamingDiagnosticD2Ev.exit
  %.sroa.0.0118 = phi ptr [ %1, %.lr.ph120 ], [ %i.db, %_ZN5clang19StreamingDiagnosticD2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store i64 0, ptr %12, align 8
  %i.bc = load i32, ptr %i.aw, align 8, !tbaa !1117
  store i32 %i.bc, ptr %i.av, align 8, !tbaa !1117
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !1064 ; 2 uses
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !1064
  %i.be = load ptr, ptr %7, align 8, !tbaa !1063
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZN5clang17PartialDiagnosticC2ERKS0_.exit.thread, label %_ZN5clang17PartialDiagnosticC2ERKS0_.exit

_ZN5clang17PartialDiagnosticC2ERKS0_.exit.thread: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.0.0118, i64 8) ]
  %.0.copyload.i.i.i.i.i.i40143 = load i64, ptr %.sroa.0.0118, align 8
  %i.bf = and i64 %.0.copyload.i.i.i.i.i.i40143, -8 ; 2 uses
  %i.bg = inttoptr i64 %i.bf to ptr
  br label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i

_ZN5clang17PartialDiagnosticC2ERKS0_.exit:        ; preds = %bb.h
  %i.bh = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.bd) ; 2 uses
  store ptr %i.bh, ptr %12, align 8, !tbaa !1063
  %i.bi = load ptr, ptr %7, align 8, !tbaa !1063
  %i.bj = call noundef nonnull align 8 dereferenceable(928) ptr @_ZN5clang17DiagnosticStorageaSERKS0_(ptr noundef nonnull align 8 dereferenceable(928) %i.bh, ptr noundef nonnull align 8 dereferenceable(928) %i.bi) ; 0 uses
  %.pre = load ptr, ptr %12, align 8, !tbaa !1063 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sroa.0.0118, i64 8) ]
  %.0.copyload.i.i.i.i.i.i40 = load i64, ptr %.sroa.0.0118, align 8
  %i.bk = and i64 %.0.copyload.i.i.i.i.i.i40, -8  ; 3 uses
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPKNS_12FunctionDeclEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang17PartialDiagnosticC2ERKS0_.exit.thread, %_ZN5clang17PartialDiagnosticC2ERKS0_.exit
  %i.bm = phi ptr [ %i.bg, %_ZN5clang17PartialDiagnosticC2ERKS0_.exit.thread ], [ %i.bl, %_ZN5clang17PartialDiagnosticC2ERKS0_.exit ]
  %i.bn = phi i64 [ %i.bf, %_ZN5clang17PartialDiagnosticC2ERKS0_.exit.thread ], [ %i.bk, %_ZN5clang17PartialDiagnosticC2ERKS0_.exit ]
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !1064
  %i.bp = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.bo) ; 2 uses
  store ptr %i.bp, ptr %12, align 8, !tbaa !1063
  br label %_ZNK5clang17PartialDiagnosticlsIPKNS_12FunctionDeclEEERKS0_RKT_.exit

_ZNK5clang17PartialDiagnosticlsIPKNS_12FunctionDeclEEERKS0_RKT_.exit: ; preds = %_ZN5clang17PartialDiagnosticC2ERKS0_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.bq = phi ptr [ %i.bm, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.bl, %_ZN5clang17PartialDiagnosticC2ERKS0_.exit ] ; 3 uses
  %i.br = phi i64 [ %i.bn, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.bk, %_ZN5clang17PartialDiagnosticC2ERKS0_.exit ]
  %i.bs = phi ptr [ %i.bp, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %.pre, %_ZN5clang17PartialDiagnosticC2ERKS0_.exit ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bs, align 8, !tbaa !1076
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  store i8 10, ptr %i.bw, align 1, !tbaa !43
  %i.bx = load ptr, ptr %12, align 8, !tbaa !1063 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i8, ptr %i.bx, align 8, !tbaa !1076 ; 2 uses
  %i.ca = add i8 %i.bz, 1
  store i8 %i.ca, ptr %i.bx, align 8, !tbaa !1076
  %i.cb = zext i8 %i.bz to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cb
  store i64 %i.br, ptr %i.cc, align 8, !tbaa !790
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.cd = call noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168) %i.bq) #22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !961
  %i.cg = call noundef ptr @_ZNK5clang12FunctionDecl29getTemplateSpecializationArgsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.bq) #22
  call void @_ZN5clang4Sema31getTemplateArgumentBindingsTextB5cxx11EPKNS_21TemplateParameterListERKNS_20TemplateArgumentListE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.cg) #22
  %i.ch = load ptr, ptr %13, align 8, !tbaa !1690
  %i.ci = load i64, ptr %i.az, align 8, !tbaa !1683
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr %i.ch, i64 %i.ci)
  %i.cj = load ptr, ptr %13, align 8, !tbaa !1690 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ba
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK5clang17PartialDiagnosticlsIPKNS_12FunctionDeclEEERKS0_RKT_.exit
  %i.cl = load i64, ptr %i.ba, align 8, !tbaa !43
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK5clang17PartialDiagnosticlsIPKNS_12FunctionDeclEEERKS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br i1 %i.bb, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.cn, align 8, !tbaa !43
  call void @_ZN5clang4Sema26HandleFunctionTypeMismatchERNS_17PartialDiagnosticENS_8QualTypeES3_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(20) %12, i64 %.sroa.0.0.copyload.i, i64 %9) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0.copyload.i.i.i.i.i.i41 = load i64, ptr %.sroa.0.0118, align 8
  %i.co = and i64 %.0.copyload.i.i.i.i.i.i41, -8
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sroa.0.0.copyload.i42 = load i32, ptr %i.cq, align 8, !tbaa !909
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationERKNS_17PartialDiagnosticE(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.au, i32 %.sroa.0.0.copyload.i42, ptr noundef nonnull align 8 dereferenceable(20) %12) #22
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #22
  %i.cr = load ptr, ptr %12, align 8, !tbaa !1063 ; 6 uses
  %.not.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = load ptr, ptr %i.ay, align 8, !tbaa !1064 ; 4 uses
  %.not.i.i.i43 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i43, label %_ZN5clang19StreamingDiagnosticD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = icmp uge ptr %i.cr, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 14848 ; 2 uses
  %i.cv = icmp ule ptr %i.cr, %i.cu
  %or.cond.i.i.i.i = select i1 %i.ct, i1 %i.cv, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 14976 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !1294 ; 2 uses
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 8, !tbaa !1294
  %i.cz = zext i32 %i.cx to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cz
  store ptr %i.cr, ptr %i.da, align 8, !tbaa !1295
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

bb.n:                                             ; preds = %bb.l
  call void @_ZN5clang17DiagnosticStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(928) dereferenceable(928) %i.cr) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 928) #23
  br label %_ZN5clang19StreamingDiagnosticD2Ev.exit

_ZN5clang19StreamingDiagnosticD2Ev.exit:          ; preds = %bb.j, %bb.k, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0118, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.db, %2
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !2226

.loopexit:                                        ; preds = %.thread, %._crit_edge, %_ZN5clang19StreamingDiagnosticD2Ev.exit, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39.thread, %bb.d, %bb.b, %bb.c
  %.sroa.027.1 = phi ptr [ %1, %bb.d ], [ %2, %bb.b ], [ %2, %bb.c ], [ %2, %.thread ], [ %2, %._crit_edge ], [ %2, %_ZN5clang19StreamingDiagnosticD2Ev.exit ], [ %.sroa.060.089, %_ZN5clang18declaresSameEntityEPKNS_4DeclES2_.exit39.thread ]
  ret ptr %.sroa.027.1
}

declare void @_ZN5clang8SemaBase4DiagENS_14SourceLocationERKNS_17PartialDiagnosticE(ptr dead_on_unwind writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32, ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

declare void @_ZN5clang24TemplateSpecCandidateSet14NoteCandidatesERNS_4SemaENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(1045), ptr noundef nonnull align 8 dereferenceable(18640), i32) local_unnamed_addr #2

declare noundef ptr @_ZNK5clang12FunctionDecl18getPrimaryTemplateEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare void @_ZN5clang4Sema31getTemplateArgumentBindingsTextB5cxx11EPKNS_21TemplateParameterListERKNS_20TemplateArgumentListE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN5clang4Sema26HandleFunctionTypeMismatchERNS_17PartialDiagnosticENS_8QualTypeES3_(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef nonnull align 8 dereferenceable(20), i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang4Sema26getMoreConstrainedFunctionEPNS_12FunctionDeclES2_(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.1307", align 8 ; 8 uses
  %4 = alloca %"class.llvm::SmallVector.1307", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"class.llvm::MutableArrayRef.1300", align 8 ; 3 uses
  %6 = alloca %"class.llvm::MutableArrayRef.1300", align 8 ; 3 uses
  %i.c = tail call noundef ptr @_ZNK5clang12FunctionDecl31getTemplateInstantiationPatternEb(ptr noundef nonnull align 8 dereferenceable(168) %1, i1 noundef zeroext false) #22 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %spec.select = select i1 %.not, ptr %1, ptr %i.c ; 3 uses
  %i.d = tail call noundef ptr @_ZNK5clang12FunctionDecl31getTemplateInstantiationPatternEb(ptr noundef nonnull align 8 dereferenceable(168) %2, i1 noundef zeroext false) #22 ; 2 uses
  %.not22 = icmp eq ptr %i.d, null
  %.0 = select i1 %.not22, ptr %2, ptr %i.d       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !766
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !767
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 1, ptr %i.g, align 4, !tbaa !844
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !766
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !767
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !844
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select, i64 56
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8 ; 2 uses
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 4
  %.not.i.i = icmp eq i64 %i.l, 0
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = select i1 %.not.i.i, ptr @_ZZNK5clang14DeclaratorDecl25getTrailingRequiresClauseEvE4Null, ptr %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1681
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK5clang12FunctionDecl24getAssociatedConstraintsERN4llvm15SmallVectorImplINS_20AssociatedConstraintEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !2227
  store i32 1, ptr %i.f, align 8, !tbaa !767
  br label %_ZNK5clang12FunctionDecl24getAssociatedConstraintsERN4llvm15SmallVectorImplINS_20AssociatedConstraintEEE.exit

_ZNK5clang12FunctionDecl24getAssociatedConstraintsERN4llvm15SmallVectorImplINS_20AssociatedConstraintEEE.exit: ; preds = %bb.a, %bb.b
  %i.r = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %.0.copyload.i.i.i.i.i.i.i.i23 = load i64, ptr %i.s, align 8 ; 2 uses
  %i.t = and i64 %.0.copyload.i.i.i.i.i.i.i.i23, 4
  %.not.i.i24 = icmp eq i64 %i.t, 0
  %i.u = and i64 %.0.copyload.i.i.i.i.i.i.i.i23, -5
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = select i1 %.not.i.i24, ptr @_ZZNK5clang14DeclaratorDecl25getTrailingRequiresClauseEvE4Null, ptr %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1681
  %.not.i25 = icmp eq ptr %i.y, null
  br i1 %.not.i25, label %_ZNK5clang12FunctionDecl24getAssociatedConstraintsERN4llvm15SmallVectorImplINS_20AssociatedConstraintEEE.exit27, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang12FunctionDecl24getAssociatedConstraintsERN4llvm15SmallVectorImplINS_20AssociatedConstraintEEE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !2227
  store i32 1, ptr %i.i, align 8, !tbaa !767
  br label %_ZNK5clang12FunctionDecl24getAssociatedConstraintsERN4llvm15SmallVectorImplINS_20AssociatedConstraintEEE.exit27

_ZNK5clang12FunctionDecl24getAssociatedConstraintsERN4llvm15SmallVectorImplINS_20AssociatedConstraintEEE.exit27: ; preds = %_ZNK5clang12FunctionDecl24getAssociatedConstraintsERN4llvm15SmallVectorImplINS_20AssociatedConstraintEEE.exit, %bb.c
  %i.z = phi i64 [ 0, %_ZNK5clang12FunctionDecl24getAssociatedConstraintsERN4llvm15SmallVectorImplINS_20AssociatedConstraintEEE.exit ], [ 1, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %i.h, ptr %5, align 8, !tbaa !1696
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !1697
  %i.ab = call noundef zeroext i1 @_ZN5clang4Sema22IsAtLeastAsConstrainedEPKNS_9NamedDeclEN4llvm15MutableArrayRefINS_20AssociatedConstraintEEES3_S7_Rb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %spec.select, ptr nonnull %i.e, i64 %i.r, ptr noundef nonnull %.0, ptr noundef nonnull byval(%"class.llvm::MutableArrayRef.1300") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #22
  br i1 %i.ab, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang12FunctionDecl24getAssociatedConstraintsERN4llvm15SmallVectorImplINS_20AssociatedConstraintEEE.exit27
  %i.ac = load ptr, ptr %4, align 8, !tbaa !766
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !767
  %i.ae = zext i32 %i.ad to i64
  %i.af = load ptr, ptr %3, align 8, !tbaa !766
end_hunk_0
