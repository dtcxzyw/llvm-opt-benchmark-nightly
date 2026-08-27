Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplateInstantiate?download=true
inline.NumInlined: 46814
inline.NumDeleted: 15846
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE17TransformStmtExprEPNS_8StmtExprE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val12, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = add i32 %i.n, %i.k
  %i.p = icmp ult i32 %i.h, %i.o
  %i.q = sub i32 %i.h, %i.n
  %spec.select.i.i = select i1 %i.p, i32 %i.k, i32 %i.q
  br label %_ZN12_GLOBAL__N_120TemplateInstantiator22TransformTemplateDepthEj.exit

_ZN12_GLOBAL__N_120TemplateInstantiator22TransformTemplateDepthEj.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi i32 [ %spec.select.i.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !1057  ; 3 uses
  %i.r = getelementptr i8, ptr %.val, i64 13800
  %.val.val = load i32, ptr %i.r, align 4, !tbaa !1143
  %.not17 = icmp eq i32 %.val.val, 0
  %i.s = icmp eq i32 %i.h, %.0.i.i
  %or.cond = and i1 %i.s, %.not17
  %i.t = and i64 %i.d, -2
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  br i1 %or.cond, label %bb.e, label %_ZN12_GLOBAL__N_120TemplateInstantiator22TransformTemplateDepthEj.exit._crit_edge

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_120TemplateInstantiator22TransformTemplateDepthEj.exit
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !2169
  %i.w = icmp eq ptr %i.v, %i.u
  br i1 %i.w, label %bb.f, label %_ZN12_GLOBAL__N_120TemplateInstantiator22TransformTemplateDepthEj.exit._crit_edge

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5clang4Sema18ActOnStmtExprErrorEv(ptr noundef nonnull align 8 dereferenceable(18640) %.val) #26
  %i.x = load ptr, ptr %0, align 8, !tbaa !1057, !nonnull !27, !align !763
  %i.y = tail call i64 @_ZN5clang4Sema20MaybeBindToTemporaryEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %i.x, ptr noundef nonnull %1) #26
  br label %bb.g

_ZN12_GLOBAL__N_120TemplateInstantiator22TransformTemplateDepthEj.exit._crit_edge: ; preds = %_ZN12_GLOBAL__N_120TemplateInstantiator22TransformTemplateDepthEj.exit, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.z, align 8, !tbaa !863
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.aa, align 4, !tbaa !863
  %i.ab = tail call i64 @_ZN5clang4Sema13BuildStmtExprENS_14SourceLocationEPNS_4StmtES1_j(ptr noundef nonnull align 8 dereferenceable(18640) %.val, i32 %.sroa.0.0.copyload.i, ptr noundef %i.u, i32 %.sroa.0.0.copyload.i14, i32 noundef %.0.i.i) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN12_GLOBAL__N_120TemplateInstantiator22TransformTemplateDepthEj.exit._crit_edge, %bb.b
  %.sroa.011.1 = phi i64 [ 1, %bb.b ], [ %i.ab, %_ZN12_GLOBAL__N_120TemplateInstantiator22TransformTemplateDepthEj.exit._crit_edge ], [ %i.y, %bb.f ]
  ret i64 %.sroa.011.1
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE22TransformSourceLocExprEPNS_13SourceLocExprE(ptr %.0.val, ptr noundef %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load i24, ptr %0, align 8
  %i.b = lshr i24 %i.a, 19                        ; 2 uses
  %i.c = and i24 %i.b, 7
  %i.d = zext nneg i24 %i.c to i32
  %trunc = trunc i24 %i.b to i3
  switch i3 %trunc, label %_ZN5clang13SourceLocExpr14MayBeDependentENS_18SourceLocIdentKindE.exit [
    i3 0, label %bb.b
    i3 1, label %bb.b
    i3 -2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 616
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1573
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2171
  %i.i = icmp ne ptr %i.f, %i.h
  br label %_ZN5clang13SourceLocExpr14MayBeDependentENS_18SourceLocIdentKindE.exit

_ZN5clang13SourceLocExpr14MayBeDependentENS_18SourceLocIdentKindE.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  %i.k = getelementptr i8, ptr %.0.val, i64 13800
  %.val12.val = load i32, ptr %i.k, align 4, !tbaa !1143
  %i.l = icmp ne i32 %.val12.val, 0
  %or.cond = select i1 %i.l, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5clang13SourceLocExpr14MayBeDependentENS_18SourceLocIdentKindE.exit
  %i.m = ptrtoint ptr %0 to i64
  br label %bb.e

bb.d:                                             ; preds = %_ZN5clang13SourceLocExpr14MayBeDependentENS_18SourceLocIdentKindE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.o, align 8, !tbaa !863
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i15 = load i32, ptr %i.p, align 4, !tbaa !863
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 616
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1573
  %i.s = tail call i64 @_ZN5clang4Sema18BuildSourceLocExprENS_18SourceLocIdentKindENS_8QualTypeENS_14SourceLocationES3_PNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(18640) %.0.val, i32 noundef %i.d, i64 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i14, i32 %.sroa.0.0.copyload.i15, ptr noundef %i.r) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi i64 [ %i.s, %bb.d ], [ %i.m, %bb.c ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef i64 @_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE23TransformSizeOfPackExprEPNS_14SizeOfPackExprE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %"class.clang::TemplateArgumentLoc", align 16 ; 6 uses
  %3 = alloca %"class.clang::SourceLocation", align 4 ; 6 uses
  %4 = alloca %"struct.clang::OptionalUnsigned", align 4 ; 6 uses
  %5 = alloca %"class.clang::TemplateArgumentLoc", align 8 ; 6 uses
  %6 = alloca %"class.clang::TemplateArgumentLoc", align 16 ; 8 uses
  %7 = alloca %"class.clang::TemplateArgumentLoc", align 8 ; 4 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 4 uses
  %9 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %10 = alloca %"class.llvm::ArrayRef", align 8   ; 4 uses
  %11 = alloca %"class.llvm::ArrayRef", align 8   ; 4 uses
  %12 = alloca %"class.clang::TemplateArgument", align 8 ; 9 uses
  %13 = alloca %"struct.std::pair.1764", align 8  ; 7 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %14 = alloca %"struct.clang::OptionalUnsigned", align 4 ; 6 uses
  %15 = alloca %"class.clang::TemplateName", align 8 ; 2 uses
  %16 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %17 = alloca %"class.clang::TemplateArgumentListInfo", align 8 ; 11 uses
  %18 = alloca %"class.llvm::SmallVector.3084", align 8 ; 10 uses
  %i.c = load i24, ptr %1, align 8
  %i.d = and i24 %i.c, 131072
  %.not261 = icmp eq i24 %i.d, 0
  br i1 %.not261, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %.val110 = load ptr, ptr %0, align 8, !tbaa !1057 ; 2 uses
  tail call void @_ZN5clang4Sema31PushExpressionEvaluationContextENS0_27ExpressionEvaluationContextEPNS_4DeclENS0_33ExpressionEvaluationContextRecord14ExpressionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %.val110, i32 noundef 0, ptr noundef null, i32 noundef 4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.g = load i24, ptr %1, align 8
  %i.h = and i24 %i.g, 131072
  %i.i = icmp ne i24 %i.h, 0                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp ne i32 %i.k, 0
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %.thread223, label %bb.d

.thread223:                                       ; preds = %bb.c
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.r

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.e, label %.thread219

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2173
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.r, align 4, !tbaa !863 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = or i64 %i.s, 2                           ; 2 uses
  store i64 %i.t, ptr %13, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.0.0.copyload.i, ptr %i.u, align 8, !tbaa !863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !1045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i8 0, ptr %i.b, align 1, !tbaa !1045
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store i32 0, ptr %14, align 4, !tbaa !1143
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i115 = load i32, ptr %i.v, align 8, !tbaa !863
  %.sroa.2182.0.insert.ext = zext i32 %.sroa.0.0.copyload.i to i64 ; 2 uses
  %.sroa.2182.0.insert.shift = shl nuw i64 %.sroa.2182.0.insert.ext, 32
  %.sroa.0181.0.insert.insert = or disjoint i64 %.sroa.2182.0.insert.shift, %.sroa.2182.0.insert.ext
  %i.w = load ptr, ptr %0, align 8, !tbaa !1057   ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12576
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1079
  %.not.i292 = icmp eq ptr %i.y, null
  br i1 %.not.i292, label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 12616
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !11  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit, label %_ZNK5clang4Sema24inConstraintSubstitutionEv.exit.i

_ZNK5clang4Sema24inConstraintSubstitutionEv.exit.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12608
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ad = zext i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -52
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !868, !range !26, !noundef !27
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang4Sema24inConstraintSubstitutionEv.exit.i
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -51
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !869, !range !26, !noundef !27
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i, label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit

_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i: ; preds = %bb.g, %_ZNK5clang4Sema24inConstraintSubstitutionEv.exit.i
  %i.al = and i64 %i.t, 6
  %i.am = icmp ne i64 %i.al, 2
  %i.an = and i64 %i.s, -7                        ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %.not.i40.i = icmp eq i64 %i.an, 0
  %.not.i.i = or i1 %i.am, %.not.i40.i
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 127
  %i.as = icmp eq i32 %i.ar, 44
  br i1 %i.as, label %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i, label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit

_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i: ; preds = %bb.h
  %i.at = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_120TemplateInstantiator40maybeInstantiateFunctionParameterToScopeEPN5clang11ParmVarDeclE(ptr noundef nonnull readonly align 8 dereferenceable(216) %0, ptr noundef %i.ao), !inline_history !1959
  br i1 %i.at, label %.critedge102, label %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i..critedge.i_crit_edge

_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i..critedge.i_crit_edge: ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i
  %.val.pre.i.pre = load ptr, ptr %0, align 8, !tbaa !1057
  br label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit

_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit: ; preds = %_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i, %bb.h, %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i..critedge.i_crit_edge, %bb.e, %bb.f, %bb.g
  %.val.i293 = phi ptr [ %i.w, %bb.e ], [ %i.w, %bb.f ], [ %i.w, %bb.g ], [ %.val.pre.i.pre, %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i..critedge.i_crit_edge ], [ %i.w, %bb.h ], [ %i.w, %_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1163, !nonnull !27, !align !763
  %i.aw = call noundef zeroext i1 @_ZN5clang4Sema31CheckParameterPacksForExpansionENS_14SourceLocationENS_11SourceRangeEN4llvm8ArrayRefISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEES1_EEERKNS_30MultiLevelTemplateArgumentListEbRbSO_RNS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i293, i32 %.sroa.0.0.copyload.i115, i64 %.sroa.0181.0.insert.insert, ptr nonnull %13, i64 1, ptr noundef nonnull align 8 dereferenceable(118) %i.av, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %14, i1 noundef zeroext true) #26, !inline_history !1959
  br i1 %i.aw, label %.critedge102, label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit
  %i.ax = load i8, ptr %i.a, align 1, !tbaa !1045, !range !26, !noundef !27
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !2173 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = and i32 %i.bb, 127                      ; 2 uses
  %i.bd = icmp ne i32 %i.bc, 68
  %.not262 = icmp eq ptr %i.az, null              ; 2 uses
  %.not = or i1 %.not262, %i.bd
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val109 = load ptr, ptr %0, align 8, !tbaa !1057
  %i.be = getelementptr inbounds nuw i8, ptr %.val109, i64 232
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !82, !nonnull !27, !align !763 ; 2 uses
  %i.bg = call i64 @_ZNK5clang10ASTContext15getTypeDeclTypeEPKNS_8TypeDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bf, ptr noundef nonnull %i.az) #26
  %i.bh = call i64 @_ZNK5clang10ASTContext20getPackExpansionTypeENS_8QualTypeENS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bf, i64 %i.bg, i32 0, i1 noundef zeroext true) #26
  call void @_ZN5clang16TemplateArgument12initFromTypeENS_8QualTypeEbb(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 %i.bh, i1 noundef zeroext false, i1 noundef zeroext false) #26
  br label %.thread229

bb.l:                                             ; preds = %bb.j
  %i.bi = icmp ne i32 %i.bc, 69
  %.not95 = or i1 %.not262, %i.bi
  br i1 %.not95, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5clang12TemplateNameC1EPNS_12TemplateDeclE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %i.az) #26
  %i.bj = load i64, ptr %15, align 8
  %i.bk = inttoptr i64 %i.bj to ptr
  store i32 7, ptr %12, align 8
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 0, ptr %.sroa.4175.0..sroa_idx, align 4
  store ptr %i.bk, ptr %i.f, align 8
  br label %.thread229

bb.n:                                             ; preds = %bb.l
  %.val107 = load ptr, ptr %0, align 8, !tbaa !1057 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i118 = load i64, ptr %i.bl, align 8, !tbaa !81
  store i64 %.sroa.0.0.copyload.i118, ptr %16, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.val107, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !82, !nonnull !27, !align !763
  %i.bo = call i64 @_ZNK5clang8QualType20getNonLValueExprTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(23904) %i.bn) #26
  %.sroa.0.0.copyload.i119 = load i64, ptr %i.bl, align 8, !tbaa !81
  %i.bp = and i64 %.sroa.0.0.copyload.i119, -16
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !815
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.bs, align 8, !tbaa !81
  %i.bt = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !815
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i8, ptr %i.bw, align 16
  %i.by = and i8 %i.bx, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.by, 42
  %i.bz = zext i1 %spec.select.i.i.i.i.i.i.i.i.i to i32
  %.sroa.0.0.copyload.i120 = load i32, ptr %i.r, align 4, !tbaa !863
  %i.ca = call noundef ptr @_ZN5clang4Sema16BuildDeclRefExprEPNS_9ValueDeclENS_8QualTypeENS_13ExprValueKindENS_14SourceLocationEPKNS_12CXXScopeSpecE(ptr noundef nonnull align 8 dereferenceable(18640) %.val107, ptr noundef nonnull %i.az, i64 %i.bo, i32 noundef %i.bz, i32 %.sroa.0.0.copyload.i120, ptr noundef null) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.cb = icmp eq ptr %i.ca, inttoptr (i64 1 to ptr)
  br i1 %i.cb, label %.critedge102, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = ptrtoint ptr %i.ca to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !1057
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 232
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !82, !nonnull !27, !align !763
  %i.cf = call noundef ptr @_ZN5clang4StmtnwEmRKNS_10ASTContextEj(i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(23904) %i.ce, i32 noundef 8) #26 ; 2 uses
  %i.cg = and i64 %i.cc, -2
  %i.ch = inttoptr i64 %i.cg to ptr
  %.sroa.0.0.copyload.i121 = load i32, ptr %i.r, align 4, !tbaa !863
  call void @_ZN5clang17PackExpansionExprC2EPNS_4ExprENS_14SourceLocationENS_16OptionalUnsignedIjEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef %i.ch, i32 %.sroa.0.0.copyload.i121, i32 0)
  %i.ci = ptrtoint ptr %i.cf to i64
  store i64 8, ptr %12, align 8
  store i64 %i.ci, ptr %i.f, align 8
  br label %.thread229

.thread229:                                       ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.r

bb.p:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.thread219

.thread219:                                       ; preds = %bb.d, %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.0.0.copyload.i122 = load i32, ptr %i.cj, align 4, !tbaa !863
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2173
  %i.cm = call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %.sroa.0.0.copyload.i122, ptr noundef %i.cl) ; 2 uses
  %.not97 = icmp eq ptr %i.cm, null
  br i1 %.not97, label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.thread219
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i123 = load i32, ptr %i.cn, align 8, !tbaa !863
  %.sroa.0.0.copyload.i124 = load i32, ptr %i.cj, align 4, !tbaa !863
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i125 = load i32, ptr %i.co, align 8, !tbaa !863
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %.val114 = load ptr, ptr %0, align 8, !tbaa !1057
  %i.cp = getelementptr i8, ptr %.val114, i64 232
  %.val114.val = load ptr, ptr %i.cp, align 8, !tbaa !82
  %i.cq = call noundef ptr @_ZN5clang14SizeOfPackExpr6CreateERNS_10ASTContextENS_14SourceLocationEPNS_9NamedDeclES3_S3_NS_16OptionalUnsignedIjEEN4llvm8ArrayRefINS_16TemplateArgumentEEE(ptr noundef nonnull align 8 dereferenceable(23904) %.val114.val, i32 %.sroa.0.0.copyload.i123, ptr noundef nonnull %i.cm, i32 %.sroa.0.0.copyload.i124, i32 %.sroa.0.0.copyload.i125, i32 0, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %11) #26
  %i.cr = ptrtoint ptr %i.cq to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZN5clang32EnterExpressionEvaluationContextD2Ev.exit

bb.r:                                             ; preds = %.thread229, %.thread223
  %.sroa.0184.1228 = phi ptr [ %i.o, %.thread223 ], [ %12, %.thread229 ] ; 4 uses
  %.sroa.8.1227 = phi i64 [ %i.n, %.thread223 ], [ 1, %.thread229 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1163, !nonnull !27, !align !763
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 116
  %i.cv = load i8, ptr %i.cu, align 4, !tbaa !22
  %i.cw = icmp eq i8 %i.cv, 1
  br i1 %i.cw, label %_ZN12_GLOBAL__N_120TemplateInstantiator40ComputeSizeOfPackExprWithoutSubstitutionEN4llvm8ArrayRefIN5clang16TemplateArgumentEEE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.idx = mul nuw nsw i64 %.sroa.8.1227, 24
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0184.1228, i64 %.idx
  %i.cy = getelementptr i8, ptr %0, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.7.0..sroa_idx206 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.7208.0..sroa_idx209 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.w
  %.012.i272 = phi ptr [ %.sroa.0184.1228, %.lr.ph ], [ %i.di, %bb.w ] ; 3 uses
  %.sroa.0212.0271 = phi i32 [ 1, %.lr.ph ], [ %.sroa.0212.1237, %bb.w ] ; 2 uses
  %i.da = call noundef zeroext i1 @_ZNK5clang16TemplateArgument15isPackExpansionEv(ptr noundef nonnull align 8 dereferenceable(24) %.012.i272) #26, !inline_history !4024
  br i1 %i.da, label %bb.t, label %.thread233

.thread233:                                       ; preds = %bb.s
  %i.db = add i32 %.sroa.0212.0271, 1
  br label %bb.w

bb.t:                                             ; preds = %bb.s
  %.val15.i = load ptr, ptr %0, align 8, !tbaa !1057
  %.val16.i = load i32, ptr %i.cy, align 8, !tbaa !863
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN5clang4Sema29getTrivialTemplateArgumentLocERKNS_16TemplateArgumentENS_8QualTypeENS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.clang::TemplateArgumentLoc") align 8 %2, ptr noundef nonnull align 8 dereferenceable(18640) %.val15.i, ptr noundef nonnull align 8 dereferenceable(24) %.012.i272, i64 0, i32 %.val16.i) #26, !inline_history !4024
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.7208.0.copyload = load i64, ptr %.sroa.7208.0..sroa_idx, align 8
  %i.dc = load <2 x i64>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 0, ptr %3, align 4, !tbaa !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !tbaa !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.val14.i = load ptr, ptr %0, align 8, !tbaa !1057
  store <2 x i64> %i.dc, ptr %6, align 16
end_hunk_0
begin_hunk_1_@_ZN5clang13TreeTransformIN12_GLOBAL__N_120TemplateInstantiatorEE19TransformLambdaExprEPNS_10LambdaExprE:bb.a
  br i1 %i.jd, label %bb.br, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.je = call noundef zeroext i1 @_ZNK5clang10LambdaExpr13isInitCaptureEPKNS_13LambdaCaptureE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %.0196486) #26
  br i1 %i.je, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  %i.jf = call noundef ptr @_ZNK5clang10LambdaExpr13capture_beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  %i.jg = ptrtoint ptr %.0196486 to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = ashr exact i64 %i.ji, 4
  %.val252 = load ptr, ptr %4, align 8, !tbaa !8
  %i.jk = getelementptr inbounds nuw [88 x i8], ptr %.val252, i64 %i.jj ; 4 uses
  %.0.copyload.i.i.i.i284 = load i64, ptr %.0196486, align 8
  %i.jl = and i64 %.0.copyload.i.i.i.i284, -8
  %i.jm = inttoptr i64 %i.jl to ptr               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.ij, ptr %9, align 8, !tbaa !8
  store i32 0, ptr %i.ik, align 8, !tbaa !11
  store i32 4, ptr %i.il, align 4, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !8  ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !11 ; 2 uses
  %i.jr = zext i32 %i.jq to i64
  %.idx = shl nuw nsw i64 %i.jr, 4
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %.idx
  %.not212480 = icmp eq i32 %i.jq, 0
  br i1 %.not212480, label %._crit_edge484, label %.lr.ph483

.lr.ph483:                                        ; preds = %bb.ap
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jm, i64 96
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph483, %bb.aw
  %.0197481 = phi ptr [ %i.jo, %.lr.ph483 ], [ %i.lg, %bb.aw ] ; 3 uses
  %i.jw = load i64, ptr %.0197481, align 8, !tbaa !30 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0197481, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !81 ; 2 uses
  %i.jz = icmp eq i64 %i.jw, 1
  %i.ka = icmp ult i64 %i.jy, 16
  %or.cond = select i1 %i.jz, i1 true, i1 %i.ka
  br i1 %or.cond, label %.critedge221, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val238 = load ptr, ptr %0, align 8, !tbaa !1057 ; 2 uses
  %.sroa.0.0.copyload.i286 = load i32, ptr %i.jt, align 8, !tbaa !863
  %.sroa.046.0.copyload = load i32, ptr %i.jk, align 8, !tbaa !863
  %i.kb = load i64, ptr %i.ju, align 8, !tbaa !961 ; 2 uses
  %i.kc = and i64 %i.kb, 7
  %i.kd = icmp eq i64 %i.kc, 0
  %i.ke = and i64 %i.kb, -8
  %i.kf = inttoptr i64 %i.ke to ptr
  %.0.i.i287 = select i1 %i.kd, ptr %i.kf, ptr null
  %i.kg = load i8, ptr %i.jv, align 8
  %i.kh = lshr i8 %i.kg, 5
  %i.ki = and i8 %i.kh, 3
  %i.kj = zext nneg i8 %i.ki to i32
  %i.kk = and i64 %i.jw, -2
  %i.kl = inttoptr i64 %i.kk to ptr               ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.val238, i64 616
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !1573
  %i.ko = call noundef ptr @_ZN5clang4Sema30createLambdaInitCaptureVarDeclENS_14SourceLocationENS_8QualTypeES1_PNS_14IdentifierInfoEjPNS_4ExprEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(18640) %.val238, i32 %.sroa.0.0.copyload.i286, i64 %i.jy, i32 %.sroa.046.0.copyload, ptr noundef %.0.i.i287, i32 noundef %i.kj, ptr noundef %i.kl, ptr noundef %i.kn) #26 ; 4 uses
  %.not213.not = icmp eq ptr %i.ko, null
  br i1 %.not213.not, label %.critedge221, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kp = load i32, ptr %i.ik, align 8, !tbaa !11 ; 2 uses
  %i.kq = load i32, ptr %i.il, align 4, !tbaa !12
  %.not.i288 = icmp ult i32 %i.kp, %i.kq
  br i1 %.not.i288, label %bb.au, label %bb.at, !prof !36

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.ko)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit

bb.au:                                            ; preds = %bb.as
  %i.kr = zext i32 %i.kp to i64
  %i.ks = load ptr, ptr %9, align 8, !tbaa !8
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kr
  store ptr %i.ko, ptr %i.kt, align 1
  %i.ku = load i32, ptr %i.ik, align 8, !tbaa !11
  %i.kv = add i32 %i.ku, 1
  store i32 %i.kv, ptr %i.ik, align 8, !tbaa !11
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit: ; preds = %bb.at, %bb.au
  %.val236 = load ptr, ptr %0, align 8, !tbaa !1057
  %i.kw = call noundef i32 @_ZNK5clang13LambdaCapture14getCaptureKindEv(ptr noundef nonnull align 8 dereferenceable(16) %.0196486) #26
  %i.kx = icmp eq i32 %i.kw, 3
  call void @_ZN5clang4Sema14addInitCaptureEPNS_4sema15LambdaScopeInfoEPNS_7VarDeclEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val236, ptr noundef %i.er, ptr noundef nonnull %i.ko, i1 noundef zeroext %i.kx) #26
  %i.ky = load i32, ptr %i.jk, align 8, !tbaa !1192
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit
  %i.la = load i24, ptr %i.kl, align 8
  %i.lb = load i8, ptr %i.ii, align 1, !tbaa !2406, !range !26, !noundef !27
  %i.lc = lshr i24 %i.la, 14
  %i.ld = trunc i24 %i.lc to i8
  %i.le = and i8 %i.ld, 1
  %i.lf = or i8 %i.le, %i.lb
  store i8 %i.lf, ptr %i.ii, align 1, !tbaa !2406
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit, %bb.av
  %i.lg = getelementptr inbounds nuw i8, ptr %.0197481, i64 16 ; 2 uses
  %.not212 = icmp eq ptr %i.lg, %i.js
  br i1 %.not212, label %._crit_edge484, label %bb.aq

._crit_edge484:                                   ; preds = %bb.aw, %bb.ap
  %i.lh = trunc nuw i8 %.0189488 to i1
  br i1 %i.lh, label %.critedge221, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge484
  %i.li = load ptr, ptr %9, align 8, !tbaa !8
  %i.lj = load i32, ptr %i.ik, align 8, !tbaa !11
  %i.lk = zext i32 %i.lj to i64
  call fastcc void @_ZN12_GLOBAL__N_120TemplateInstantiator20transformedLocalDeclEPN5clang4DeclEN4llvm8ArrayRefIS3_EE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %i.jm, ptr %i.li, i64 %i.lk)
  %i.ll = load ptr, ptr %9, align 8, !tbaa !8     ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.ij
  br i1 %i.lm, label %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @free(ptr noundef %i.ll) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.br

bb.az:                                            ; preds = %bb.ao
  %.0.copyload.i.i.i.i289 = load i64, ptr %.0196486, align 8
  %i.ln = trunc i64 %.0.copyload.i.i.i.i289 to i1
  br i1 %i.ln, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lo = call noundef i32 @_ZNK5clang13LambdaCapture14getCaptureKindEv(ptr noundef nonnull align 8 dereferenceable(16) %.0196486) #26
  %i.lp = icmp eq i32 %i.lo, 2
  %i.lq = select i1 %i.lp, i32 1, i32 2
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.lr = phi i32 [ %i.lq, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.0196486, i64 12 ; 4 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !1192
  %.not454 = icmp eq i32 %i.lt, 0
  br i1 %.not454, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %.0.copyload.i.i.i.i290 = load i64, ptr %.0196486, align 8
  %i.lu = and i64 %.0.copyload.i.i.i.i290, -8     ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.0196486, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i291 = load i32, ptr %i.lv, align 8, !tbaa !863
  %i.lw = or disjoint i64 %i.lu, 2
  store i64 %i.lw, ptr %10, align 8
  store i32 %.sroa.0.0.copyload.i291, ptr %i.ih, align 8, !tbaa !863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i8 0, ptr %i.h, align 1, !tbaa !1045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  store i8 0, ptr %i.i, align 1, !tbaa !1045
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store i32 0, ptr %11, align 4, !tbaa !1143
  %.sroa.0.0.copyload.i292 = load i32, ptr %i.ls, align 4, !tbaa !863
  %.sroa.0.0.copyload.i293 = load i32, ptr %i.lv, align 8, !tbaa !863
  %.sroa.2382.0.insert.ext = zext i32 %.sroa.0.0.copyload.i293 to i64 ; 2 uses
  %.sroa.2382.0.insert.shift = shl nuw i64 %.sroa.2382.0.insert.ext, 32
  %.sroa.0381.0.insert.insert = or disjoint i64 %.sroa.2382.0.insert.shift, %.sroa.2382.0.insert.ext
  %i.lx = load ptr, ptr %0, align 8, !tbaa !1057  ; 8 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 12576
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !1079
  %.not.i553 = icmp eq ptr %i.lz, null
  br i1 %.not.i553, label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit571, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 12616
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i554 = icmp eq i32 %i.mb, 0
  br i1 %.not.i.i.i554, label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit571, label %_ZNK5clang4Sema24inConstraintSubstitutionEv.exit.i555

_ZNK5clang4Sema24inConstraintSubstitutionEv.exit.i555: ; preds = %bb.bd
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 12608
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !8
  %i.me = zext i32 %i.mb to i64
  %i.mf = getelementptr inbounds nuw [56 x i8], ptr %i.md, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 -52
  %i.mh = load i8, ptr %i.mg, align 4, !tbaa !868, !range !26, !noundef !27
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i560, label %bb.be

bb.be:                                            ; preds = %_ZNK5clang4Sema24inConstraintSubstitutionEv.exit.i555
  %i.mj = getelementptr inbounds i8, ptr %i.mf, i64 -51
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !869, !range !26, !noundef !27
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i560, label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit571

_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i560: ; preds = %bb.be, %_ZNK5clang4Sema24inConstraintSubstitutionEv.exit.i555
  %i.mm = inttoptr i64 %i.lu to ptr               ; 2 uses
  %.not.i40.i564 = icmp eq i64 %i.lu, 0
  br i1 %.not.i40.i564, label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit571, label %bb.bf

bb.bf:                                            ; preds = %_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i560
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 28
  %i.mo = load i32, ptr %i.mn, align 4
  %i.mp = and i32 %i.mo, 127
  %i.mq = icmp eq i32 %i.mp, 44
  br i1 %i.mq, label %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i570, label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit571

_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i570: ; preds = %bb.bf
  %i.mr = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_120TemplateInstantiator40maybeInstantiateFunctionParameterToScopeEPN5clang11ParmVarDeclE(ptr noundef nonnull readonly align 8 dereferenceable(216) %0, ptr noundef %i.mm), !inline_history !1959
  br i1 %i.mr, label %.thread450, label %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i570..critedge.i566_crit_edge

_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i570..critedge.i566_crit_edge: ; preds = %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i570
  %.val.pre.i569.pre = load ptr, ptr %0, align 8, !tbaa !1057
  br label %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit571

_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit571: ; preds = %_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i560, %bb.bf, %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i570..critedge.i566_crit_edge, %bb.bc, %bb.bd, %bb.be
  %.val.i557 = phi ptr [ %i.lx, %bb.bc ], [ %i.lx, %bb.bd ], [ %i.lx, %bb.be ], [ %.val.pre.i569.pre, %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i570..critedge.i566_crit_edge ], [ %i.lx, %bb.bf ], [ %i.lx, %_ZNK5clang4Sema30inParameterMappingSubstitutionEv.exit.i560 ]
  %i.ms = load ptr, ptr %i.im, align 8, !tbaa !1163, !nonnull !27, !align !763
  %i.mt = call noundef zeroext i1 @_ZN5clang4Sema31CheckParameterPacksForExpansionENS_14SourceLocationENS_11SourceRangeEN4llvm8ArrayRefISt4pairINS3_12PointerUnionIJPKNS_20TemplateTypeParmTypeEPNS_9NamedDeclEPKNS_26TemplateSpecializationTypeEPKNS_28SubstBuiltinTemplatePackTypeEEEES1_EEERKNS_30MultiLevelTemplateArgumentListEbRbSO_RNS_16OptionalUnsignedIjEEb(ptr noundef nonnull align 8 dereferenceable(18640) %.val.i557, i32 %.sroa.0.0.copyload.i292, i64 %.sroa.0381.0.insert.insert, ptr nonnull %10, i64 1, ptr noundef nonnull align 8 dereferenceable(118) %i.ms, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %11, i1 noundef zeroext true) #26, !inline_history !1959
  br i1 %i.mt, label %.thread450, label %bb.bg

bb.bg:                                            ; preds = %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit571
  %i.mu = load i8, ptr %i.h, align 1, !tbaa !1045, !range !26, !noundef !27
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %.0.copyload.i.i.i.i294 = load i64, ptr %.0196486, align 8
  %i.mw = and i64 %.0.copyload.i.i.i.i294, -8
  %i.mx = inttoptr i64 %i.mw to ptr
  %i.my = load i32, ptr %11, align 4, !tbaa !1143
  %.not208475 = icmp eq i32 %i.my, 1
  br i1 %.not208475, label %.thread450, label %.lr.ph479

.lr.ph479:                                        ; preds = %bb.bh, %bb.bj
  %.5194477 = phi i8 [ %.6195, %bb.bj ], [ %.0189488, %bb.bh ]
  %.0198476 = phi i32 [ %i.mz, %bb.bj ], [ 0, %bb.bh ] ; 2 uses
  %.val235 = load ptr, ptr %0, align 8, !tbaa !1057
  %i.mz = add i32 %.0198476, 1                    ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.val235, i64 13800 ; 3 uses
  %.sroa.0.0.copyload.i.i.i295 = load i32, ptr %i.na, align 4, !tbaa !863
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !863
  %.sroa.0.0.copyload.i296 = load i32, ptr %i.lv, align 8, !tbaa !863
  %i.nb = call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %.sroa.0.0.copyload.i296, ptr noundef %i.mx) ; 2 uses
  %.not209 = icmp eq ptr %i.nb, null
  br i1 %.not209, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph479
  %.val234 = load ptr, ptr %0, align 8, !tbaa !1057
  %.sroa.0.0.copyload.i297 = load i32, ptr %i.lv, align 8, !tbaa !863
  %i.nc = call noundef zeroext i1 @_ZN5clang4Sema18tryCaptureVariableEPNS_9ValueDeclENS_14SourceLocationENS_14TryCaptureKindES3_(ptr noundef nonnull align 8 dereferenceable(18640) %.val234, ptr noundef nonnull %i.nb, i32 %.sroa.0.0.copyload.i297, i32 noundef %i.lr, i32 0) #26 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph479, %bb.bi
  %.6195 = phi i8 [ %.5194477, %bb.bi ], [ 1, %.lr.ph479 ] ; 2 uses
  store i32 %.sroa.0.0.copyload.i.i.i295, ptr %i.na, align 8, !tbaa !863
  %i.nd = load i32, ptr %11, align 4, !tbaa !1143
  %i.ne = add i32 %i.nd, -2
  %.not208 = icmp eq i32 %.0198476, %i.ne
  br i1 %.not208, label %.thread450, label %.lr.ph479, !llvm.loop !4157

.thread450:                                       ; preds = %bb.bj, %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i570, %bb.bh, %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit571
  %.7.ph = phi i8 [ 1, %_ZN12_GLOBAL__N_120TemplateInstantiator23TryExpandParameterPacksEN5clang14SourceLocationENS1_11SourceRangeEN4llvm8ArrayRefISt4pairINS4_12PointerUnionIJPKNS1_20TemplateTypeParmTypeEPNS1_9NamedDeclEPKNS1_26TemplateSpecializationTypeEPKNS1_28SubstBuiltinTemplatePackTypeEEEES2_EEEbRbSM_RNS1_16OptionalUnsignedIjEE.exit571 ], [ %.0189488, %bb.bh ], [ 1, %_ZN4llvm19dyn_cast_if_presentIN5clang11ParmVarDeclENS1_9NamedDeclEEEDaPT0_.exit.i570 ], [ %.6195, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.br

bb.bk:                                            ; preds = %bb.bg
  %.sroa.0.0.copyload.i298 = load i32, ptr %i.ls, align 4, !tbaa !863
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bb
  %.sroa.0384.1 = phi i32 [ %.sroa.0.0.copyload.i298, %bb.bk ], [ 0, %bb.bb ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.0196486, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i299 = load i32, ptr %i.nf, align 8, !tbaa !863
  %.0.copyload.i.i.i.i300 = load i64, ptr %.0196486, align 8
  %i.ng = and i64 %.0.copyload.i.i.i.i300, -8
  %i.nh = inttoptr i64 %i.ng to ptr
  %i.ni = call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator13TransformDeclEN5clang14SourceLocationEPNS1_4DeclE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 %.sroa.0.0.copyload.i299, ptr noundef %i.nh) ; 4 uses
  %.not210 = icmp eq ptr %i.ni, null
  br i1 %.not210, label %bb.br, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 28
  %i.nk = load i32, ptr %i.nj, align 4            ; 2 uses
  %i.nl = and i32 %i.nk, 128
  %.not455 = icmp eq i32 %i.nl, 0
  br i1 %.not455, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  %i.nm = and i32 %i.nk, 127
  %i.nn = add nsw i32 %i.nm, -48
  %i.no = icmp ult i32 %i.nn, -7
  br i1 %i.no, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.np = load i32, ptr %i.ls, align 4, !tbaa !1192
  %.not457 = icmp eq i32 %i.np, 0
  br i1 %.not457, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.nq = call noundef zeroext i1 @_ZNK5clang9ValueDecl15isParameterPackEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ni) #26
  %i.nr = load i8, ptr %i.ii, align 1, !tbaa !2406, !range !26, !noundef !27
  %i.ns = zext i1 %i.nq to i8
  %i.nt = or i8 %i.nr, %i.ns
  store i8 %i.nt, ptr %i.ii, align 1, !tbaa !2406
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %.val233 = load ptr, ptr %0, align 8, !tbaa !1057
  %.sroa.0.0.copyload.i302 = load i32, ptr %i.nf, align 8, !tbaa !863
  %i.nu = call noundef zeroext i1 @_ZN5clang4Sema18tryCaptureVariableEPNS_9ValueDeclENS_14SourceLocationENS_14TryCaptureKindES3_(ptr noundef nonnull align 8 dereferenceable(18640) %.val233, ptr noundef nonnull %i.ni, i32 %.sroa.0.0.copyload.i302, i32 noundef %i.lr, i32 %.sroa.0384.1) #26 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bl, %bb.bm, %bb.bq, %.thread450, %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit, %bb.an, %_ZN4llvm19dyn_cast_if_presentIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit
  %.11 = phi i8 [ %.0189488, %_ZN4llvm19dyn_cast_if_presentIN5clang13CXXRecordDeclENS1_11DeclContextEEEDaPT0_.exit ], [ %.0189488, %bb.an ], [ 0, %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit ], [ %.7.ph, %.thread450 ], [ %.0189488, %bb.bq ], [ 1, %bb.bm ], [ 1, %bb.bl ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.0196486, i64 16 ; 2 uses
  %.not207 = icmp eq ptr %i.nv, %i.ig
  br i1 %.not207, label %.loopexit.loopexit, label %bb.aj, !llvm.loop !4158

.critedge221:                                     ; preds = %._crit_edge484, %bb.aq, %bb.ar
  %i.nw = load ptr, ptr %9, align 8, !tbaa !8     ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.ij
  br i1 %i.nx, label %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit303, label %bb.bs

bb.bs:                                            ; preds = %.critedge221
  call void @free(ptr noundef %i.nw) #26
  br label %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit303

_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit303: ; preds = %.critedge221, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.aj, %bb.br
  %.12.ph = phi i8 [ %.0189488, %bb.aj ], [ %.11, %bb.br ]
  %i.ny = trunc nuw i8 %.12.ph to i1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ai, %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit303
  %.12 = phi i1 [ true, %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit303 ], [ false, %bb.ai ], [ %i.ny, %.loopexit.loopexit ]
  %.val232 = load ptr, ptr %0, align 8, !tbaa !1057
  call void @_ZN5clang4Sema28finishLambdaExplicitCapturesEPNS_4sema15LambdaScopeInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %.val232, ptr noundef %i.er) #26
  %i.nz = call noundef ptr @_ZNK5clang10LambdaExpr24getTemplateParameterListEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  %i.oa = call fastcc noundef ptr @_ZN12_GLOBAL__N_120TemplateInstantiator30TransformTemplateParameterListEPN5clang21TemplateParameterListE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %i.nz) ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.er, i64 1688
  store ptr %i.oa, ptr %i.ob, align 8, !tbaa !2481
  %.not214 = icmp eq ptr %i.oa, null
  br i1 %.not214, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.loopexit
  %.val231 = load ptr, ptr %0, align 8, !tbaa !1057
  call void @_ZN5clang4Sema41AddTemplateParametersToLambdaCallOperatorEPNS_13CXXMethodDeclEPNS_13CXXRecordDeclEPNS_21TemplateParameterListE(ptr noundef nonnull align 8 dereferenceable(18640) %.val231, ptr noundef %i.hh, ptr noundef %i.hg, ptr noundef nonnull %i.oa) #26
  %i.oc = call noundef zeroext i1 @_ZNK5clang21TemplateParameterList31containsUnexpandedParameterPackEv(ptr noundef nonnull align 8 dereferenceable(24) %i.oa) #26
  %i.od = getelementptr inbounds nuw i8, ptr %i.er, i64 1497 ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !2406, !range !26, !noundef !27
  %i.of = zext i1 %i.oc to i8
  %i.og = or i8 %i.oe, %i.of
  store i8 %i.og, ptr %i.od, align 1, !tbaa !2406
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.oh = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr %i.oh, ptr %12, align 8, !tbaa !1051
  %i.oi = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 32, ptr %i.oi, align 8, !tbaa !1053
  %i.oj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i64 32, ptr %i.oj, align 8, !tbaa !1054
  %i.ok = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i32 0, ptr %i.ok, align 8, !tbaa !1055
  %i.ol = getelementptr inbounds nuw i8, ptr %12, i64 60
  store i8 0, ptr %i.ol, align 4, !tbaa !1056
  %i.om = call noundef ptr @_ZNK5clang10LambdaExpr15getCallOperatorEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #26
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 56
  %.0.copyload.i.i.i.i.i.i.i304 = load i64, ptr %i.on, align 8 ; 3 uses
  %i.oo = and i64 %.0.copyload.i.i.i.i.i.i.i304, 4
  %.not.i305 = icmp eq i64 %i.oo, 0
  br i1 %.not.i305, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.op = and i64 %.0.copyload.i.i.i.i.i.i.i304, -5
  %i.oq = inttoptr i64 %i.op to ptr
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !1169
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit306

bb.bw:                                            ; preds = %bb.bu
  %i.ot = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i304 to ptr
  br label %_ZNK5clang14DeclaratorDecl17getTypeSourceInfoEv.exit306

end_hunk_1
