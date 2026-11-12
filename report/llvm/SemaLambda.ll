Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaLambda?download=true
inline.NumInlined: 4549
inline.NumDeleted: 2681
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang4Sema28ActOnLambdaClosureParametersEPNS_5ScopeEN4llvm15MutableArrayRefINS_15DeclaratorChunk9ParamInfoEEE:bb.a
  %i.u = zext i32 %i.p to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 1672
  %.sroa.0.0.copyload.i13.i = load i32, ptr %i.v, align 8, !tbaa !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 1680
  %i.x = load i64, ptr %i.w, align 8, !tbaa !844
  %i.y = and i64 %i.x, -2
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = tail call noundef ptr @_ZN5clang21TemplateParameterList6CreateERKNS_10ASTContextENS_14SourceLocationES4_N4llvm8ArrayRefIPNS_9NamedDeclEEES4_PNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(23904) %.val, i32 %.sroa.0.0.copyload.i.i, i32 %.sroa.0.0.copyload.i12.i, ptr %i.t, i64 %i.u, i32 %.sroa.0.0.copyload.i13.i, ptr noundef %i.z) #18 ; 3 uses
  store ptr %i.aa, ptr %i.m, align 8, !tbaa !841
  %.not26 = icmp eq ptr %i.aa, null
  br i1 %.not26, label %_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit.thread, label %_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit._ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit.thread33_crit_edge

_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit._ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit.thread33_crit_edge: ; preds = %_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !845
  br label %_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit.thread33

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.037 = phi ptr [ %i.ak, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.037, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1062 ; 3 uses
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !126 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %spec.select1 = select i1 %i.ae, ptr null, ptr %i.af
  tail call void @_ZN5clang4Decl14setDeclContextEPNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(104) %i.ac, ptr noundef %spec.select1) #18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !1063 ; 2 uses
  %i.ai = and i64 %i.ah, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %.not2735 = icmp ult i64 %i.ah, 8
  %.not27 = or i1 %.not2735, %i.aj
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN5clang4Sema17PushOnScopeChainsEPNS_9NamedDeclEPNS_5ScopeEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.ac, ptr noundef %1, i1 noundef zeroext false) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %.037, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit.thread33: ; preds = %_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit._ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit.thread33_crit_edge, %._crit_edge
  %i.al = phi ptr [ %.pre, %_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit._ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit.thread33_crit_edge ], [ %.val, %._crit_edge ]
  %i.am = phi ptr [ %i.aa, %_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit._ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit.thread33_crit_edge ], [ %i.n, %._crit_edge ] ; 2 uses
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !126 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 1616 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !984 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %spec.select.i = select i1 %i.aq, ptr null, ptr %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.0.0.copyload.i.i30 = load i32, ptr %i.as, align 8, !tbaa !169
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %.sroa.0.0.copyload.i10.i = load i64, ptr %i.at, align 8, !tbaa !959
  %i.au = tail call noundef ptr @_ZN5clang20FunctionTemplateDecl6CreateERNS_10ASTContextEPNS_11DeclContextENS_14SourceLocationENS_15DeclarationNameEPNS_21TemplateParameterListEPNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.al, ptr noundef %spec.select.i, i32 %.sroa.0.0.copyload.i.i30, i64 %.sroa.0.0.copyload.i10.i, ptr noundef nonnull %i.am, ptr noundef nonnull %i.an) #18 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 28 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = and i32 %i.aw, -24577
  store i32 %i.ax, ptr %i.av, align 4
  tail call void @_ZN5clang12FunctionDecl28setDescribedFunctionTemplateEPNS_20FunctionTemplateDeclE(ptr noundef nonnull align 8 dereferenceable(168) %i.an, ptr noundef nonnull %i.au) #18
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !984
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !165
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = or i64 %i.bc, 4
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = tail call noundef zeroext i1 @_ZNK5clang21TemplateParameterList31containsUnexpandedParameterPackEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 1497 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !1035, !range !939, !noundef !846
  %i.bh = zext i1 %i.be to i8
  %i.bi = or i8 %i.bg, %i.bh
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !1035
  br label %_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit.thread

_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit.thread: ; preds = %bb.b, %_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit.thread33, %_ZL37getGenericLambdaTemplateParameterListPN5clang4sema15LambdaScopeInfoERNS_4SemaE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 1632
  store i8 1, ptr %i.bj, align 8, !tbaa !1031
  ret void
}

declare noundef zeroext i1 @_ZNK5clang21TemplateParameterList31containsUnexpandedParameterPackEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4Sema28ActOnStartOfLambdaDefinitionERNS_16LambdaIntroducerERNS_10DeclaratorERKNS_8DeclSpecE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1, ptr noundef nonnull align 8 dereferenceable(2664) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 10 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %9 = alloca %"class.llvm::SmallVector.1366", align 8 ; 12 uses
  %10 = alloca %"struct.clang::AssociatedConstraint", align 8 ; 5 uses
  %11 = alloca %"class.llvm::ArrayRef.1300", align 8 ; 3 uses
  %12 = alloca %"class.std::optional.1207", align 8 ; 2 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 11 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val123 = load ptr, ptr %i.b, align 8, !tbaa !843
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val124 = load i32, ptr %i.c, align 8, !tbaa !842
  %i.d = zext i32 %.val124 to i64
  %i.e = getelementptr [8 x i8], ptr %.val123, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1624 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !126
  %i.j = load i64, ptr %3, align 8
  %i.k = lshr i64 %i.j, 51
  %i.l = trunc nuw nsw i64 %i.k to i16
  %i.m = and i16 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 84 ; 2 uses
  %i.o = load i16, ptr %i.n, align 4
  %i.p = and i16 %i.o, -4
  %i.q = or disjoint i16 %i.m, %i.p
  store i16 %i.q, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.r, ptr %9, align 8, !tbaa !843
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  store i32 0, ptr %i.s, align 8, !tbaa !842
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  store i32 8, ptr %i.t, align 4, !tbaa !937
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !842  ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.x, align 4, !tbaa !169 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 1616
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !984
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !845, !nonnull !846, !align !847
  %i.ad = call noundef i32 @_ZNK5clang10ASTContext27getDefaultCallingConventionEbb(ptr noundef nonnull align 8 dereferenceable(23904) %i.ac, i1 noundef zeroext false, i1 noundef zeroext true) #18
  %i.ae = trunc i32 %i.ad to i16
  store i16 %i.ae, ptr %7, align 8, !tbaa !1065
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !1081
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !1082
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ai, i8 0, i64 52, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false)
  %i.al = load i16, ptr %i.ak, align 8
  %i.am = and i16 %i.al, -4096
  %i.an = or disjoint i16 %i.am, 2
  store i16 %i.an, ptr %i.ak, align 8
  store i64 1, ptr %i.af, align 8, !tbaa !1083
  %i.ao = call noundef i32 @_ZNK5clang4Sema28getDefaultCXXMethodAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(18640) %0) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !843 ; 2 uses
  %wide.trip.count.i = zext i32 %i.v to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [144 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !1678
  switch i32 %i.as, label %bb.c [
    i32 3, label %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit
    i32 6, label %bb.d
    i32 0, label %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit.loopexit
    i32 1, label %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit.loopexit
    i32 2, label %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit.loopexit
    i32 4, label %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit.loopexit
    i32 5, label %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit.loopexit
    i32 7, label %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit.loopexit, label %bb.b, !llvm.loop !1667

_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit.loopexit: ; preds = %bb.d, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit

_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit: ; preds = %bb.b, %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit.loopexit
  %.0174 = phi i64 [ 0, %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit.loopexit ], [ %indvars.iv.i, %bb.b ]
  %i.at = getelementptr inbounds nuw [144 x i8], ptr %i.aq, i64 %.0174
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1053 ; 2 uses
  %.not184 = icmp eq i32 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 92
  %.sroa.3168.0.extract.trunc = load i32, ptr %i.aw, align 4, !tbaa !169 ; 3 uses
  %.sroa.3168.0.extract.trunc. = select i1 %.not184, i32 %.sroa.3168.0.extract.trunc, i32 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 1616
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !984 ; 2 uses
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !126 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.ba = load ptr, ptr %2, align 8, !tbaa !1697, !nonnull !846, !align !847
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = and i64 %i.bb, 7
  %i.bd = icmp eq i64 %i.bc, 3
  call void @_ZN5clang4Sema25CheckExplicitObjectLambdaERNS_10DeclaratorE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(2664) %2) #18
  %i.be = load i32, ptr %i.u, align 8, !tbaa !842 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.be, 0
  %.pre.i35.i = load ptr, ptr %i.ap, align 8, !tbaa !843 ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.thread
  %i.bf = shl i32 %i.ao, 9
  %i.bg = or disjoint i32 %i.bf, 1
  %i.bh = zext i32 %i.bg to i64
  store i64 %i.bh, ptr %i.af, align 8, !tbaa !1083
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !983, !nonnull !846, !align !847
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = and i64 %i.bk, 16384
  %.not13.i.i = icmp eq i64 %i.bl, 0
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !845, !nonnull !846, !align !847 ; 3 uses
  br i1 %.not13.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = call i64 @_ZNK5clang10ASTContext17getAutoDeductTypeEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.bm) #18
  %.pre.i.i = load ptr, ptr %i.ab, align 8, !tbaa !845
  br label %_ZL18getDummyLambdaTypeRN5clang4SemaENS_14SourceLocationE.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 19336
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bo, align 8, !tbaa !908
  br label %_ZL18getDummyLambdaTypeRN5clang4SemaENS_14SourceLocationE.exit.i

_ZL18getDummyLambdaTypeRN5clang4SemaENS_14SourceLocationE.exit.i: ; preds = %bb.h, %bb.g
  %i.bp = phi ptr [ %.pre.i.i, %bb.g ], [ %i.bm, %bb.h ]
  %.sroa.04.0.i.i = phi i64 [ %i.bn, %bb.g ], [ %.sroa.0.0.copyload.i.i.i, %bb.h ]
  %i.bq = call i64 @_ZNK5clang10ASTContext23getFunctionTypeInternalENS_8QualTypeEN4llvm8ArrayRefIS1_EERKNS_17FunctionProtoType12ExtProtoInfoEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.bp, i64 %.sroa.04.0.i.i, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(138) %7, i1 noundef zeroext false) #18
  %i.br = load ptr, ptr %i.ab, align 8, !tbaa !845, !nonnull !846, !align !847
  %i.bs = call noundef ptr @_ZNK5clang10ASTContext24getTrivialTypeSourceInfoENS_8QualTypeENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(23904) %i.br, i64 %i.bq, i32 %.sroa.0.0.copyload.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZL13getLambdaTypeRN5clang4SemaERNS_16LambdaIntroducerERNS_10DeclaratorEPNS_5ScopeENS_14SourceLocationERb.exit

.lr.ph.i.i.i:                                     ; preds = %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit
  %wide.trip.count.i.i.i = zext i32 %i.be to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.k ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [144 x i8], ptr %.pre.i35.i, i64 %indvars.iv.i.i.i
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !1678
  switch i32 %i.bu, label %bb.j [
    i32 3, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i
    i32 6, label %bb.k
    i32 0, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i.loopexit
    i32 1, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i.loopexit
    i32 2, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i.loopexit
    i32 4, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i.loopexit
    i32 5, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i.loopexit
    i32 7, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i.loopexit
  ]

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i.loopexit, label %bb.i, !llvm.loop !1667

_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i.loopexit: ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.k
  br label %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i

_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i: ; preds = %bb.i, %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i.loopexit, %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit
  %.0.i.i = phi i64 [ 0, %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i.loopexit ], [ 0, %_ZNK5clang10Declarator20isFunctionDeclaratorERj.exit ], [ %indvars.iv.i.i.i, %bb.i ]
  %i.bv = getelementptr inbounds nuw [144 x i8], ptr %.pre.i35.i, i64 %.0.i.i ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = call noundef zeroext i1 @_ZN5clang10Declarator30isExplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(2664) %2) #18
  %i.by = load i16, ptr %i.bw, align 8
  %i.bz = and i16 %i.by, 512
  %i.ca = icmp ne i16 %i.bz, 0                    ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 84
  %.sroa.0.0.copyload.i.i36.i = load i32, ptr %i.cb, align 4, !tbaa !169
  %i.cc = icmp ne i32 %.sroa.0.0.copyload.i.i36.i, 0
  %or.cond.i = or i1 %i.bd, %i.cc
  %or.cond3.i = or i1 %i.bx, %or.cond.i
  br i1 %or.cond3.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 104 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1701 ; 2 uses
  %.not.i37.i = icmp eq ptr %i.ce, null
  br i1 %.not.i37.i, label %bb.m, label %_ZN5clang15DeclaratorChunk16FunctionTypeInfo27getOrCreateMethodQualifiersEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cf = call noalias noundef nonnull dereferenceable(1296) ptr @_Znwm(i64 noundef 1296) #21 ; 2 uses
  call void @_ZN5clang16AttributeFactoryC1Ev(ptr noundef nonnull align 8 dereferenceable(1296) %i.cf) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 112 ; 2 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !1702
  %i.ch = call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #21 ; 15 uses
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !1702
  store i64 0, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !843
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store i32 0, ptr %i.cm, align 8, !tbaa !842
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 52
  store i32 2, ptr %i.cn, align 4, !tbaa !937
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  store ptr %i.ci, ptr %i.co, align 8, !tbaa !1703
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !843
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  store i32 0, ptr %i.cr, align 8, !tbaa !842
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 92
  store i32 2, ptr %i.cs, align 4, !tbaa !937
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 296
  store ptr null, ptr %i.cu, align 8, !tbaa !1710
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(180) %i.ct, i8 0, i64 180, i1 false)
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !1701
  br label %_ZN5clang15DeclaratorChunk16FunctionTypeInfo27getOrCreateMethodQualifiersEv.exit.i

_ZN5clang15DeclaratorChunk16FunctionTypeInfo27getOrCreateMethodQualifiersEv.exit.i: ; preds = %bb.m, %bb.l
  %i.cv = phi ptr [ %i.ch, %bb.m ], [ %i.ce, %bb.l ]
  %i.cw = call noundef zeroext i1 @_ZN5clang8DeclSpec11SetTypeQualENS0_2TQENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(304) %i.cv, i32 noundef 1, i32 %.sroa.3168.0.extract.trunc.) #18 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN5clang15DeclaratorChunk16FunctionTypeInfo27getOrCreateMethodQualifiersEv.exit.i, %_ZN5clang10Declarator19getFunctionTypeInfoEv.exit.i
  br i1 %i.ca, label %bb.o, label %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !983, !nonnull !846, !align !847
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = and i64 %i.da, 1099511627776
  %.not.i132 = icmp eq i64 %i.db, 0
  br i1 %.not.i132, label %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1711 ; 2 uses
  %i.de = icmp ult ptr %i.dd, inttoptr (i64 16 to ptr)
  br i1 %i.de, label %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = and i64 %i.df, -16
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.di, align 8 ; 2 uses
  %i.dj = and i64 %.0.copyload.i.i.i.i.i.i.i.i, 8
  %.not.i.i.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i.i.i, label %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread.i, label %_ZNK5clang8QualType15getAddressSpaceEv.exit.i

_ZNK5clang8QualType15getAddressSpaceEv.exit.i:    ; preds = %bb.q
  %i.dk = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.dm, align 8, !tbaa !959
  %i.dn = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 4294966784
  %.not34.i = icmp eq i64 %i.dn, 0
  br i1 %.not34.i, label %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bv, i64 136
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.dp, align 8, !tbaa !169
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.do, i32 %.sroa.0.0.copyload.i.i, i32 noundef 5070) #18
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #18
  br label %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread.i

_ZNK5clang8QualType15getAddressSpaceEv.exit.thread.i: ; preds = %bb.r, %_ZNK5clang8QualType15getAddressSpaceEv.exit.i, %bb.q, %bb.p, %bb.o, %bb.n
  %i.dq = call noundef ptr @_ZN5clang4Sema20GetTypeForDeclaratorERNS_10DeclaratorE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(2664) %2) #18 ; 4 uses
  %.sroa.0.0.copyload.i38.i = load i64, ptr %i.dq, align 8, !tbaa !908
  %i.dr = and i64 %.sroa.0.0.copyload.i38.i, -16
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !910
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 17
  %i.dv = load i16, ptr %i.du, align 1
  %i.dw = trunc i16 %i.dv to i1
  br i1 %i.dw, label %bb.s, label %_ZL13getLambdaTypeRN5clang4SemaERNS_16LambdaIntroducerERNS_10DeclaratorEPNS_5ScopeENS_14SourceLocationERb.exit

bb.s:                                             ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit.thread.i
  %.sroa.0.0.copyload.i40.i = load i32, ptr %1, align 8, !tbaa !169
  %i.dx = call noundef zeroext i1 @_ZN5clang4Sema31DiagnoseUnexpandedParameterPackENS_14SourceLocationEPNS_14TypeSourceInfoENS0_30UnexpandedParameterPackContextE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i40.i, ptr noundef nonnull %i.dq, i32 noundef 2) #18 ; 0 uses
  br label %_ZL13getLambdaTypeRN5clang4SemaERNS_16LambdaIntroducerERNS_10DeclaratorEPNS_5ScopeENS_14SourceLocationERb.exit

end_hunk_0
begin_hunk_1_@_ZN5clang4Sema16ActOnLambdaErrorENS_14SourceLocationEPNS_5ScopeEb:bb.a
  %.not3.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not3.i.i.i, label %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EEC2INS1_11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEEEERKNS_14iterator_rangeIT_EE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i
  %.05.i.i.i = phi i64 [ %i.z, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %.sroa.02.04.i.i.i = phi ptr [ %.sroa.02.2.i.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i ], [ %i.k, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8
  %i.p = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %.not1.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.02.1.i.i.i = phi ptr [ %i.y, %bb.d ], [ %i.q, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i, i64 28
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 127
  %i.u = add nsw i32 %i.t, -50
  %i.v = icmp ult i32 %i.u, 3
  br i1 %i.v, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i
  %.sroa.02.2.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.sroa.02.1.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.d ] ; 2 uses
  %i.z = add nuw nsw i64 %.05.i.i.i, 1            ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.02.2.i.i.i, null
  br i1 %.not.i.i.i, label %_ZSt10__distanceIN5clang11DeclContext22specific_decl_iteratorINS0_9FieldDeclEEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt10__distanceIN5clang11DeclContext22specific_decl_iteratorINS0_9FieldDeclEEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i.i: ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i
  %i.aa = icmp samesign ugt i64 %.05.i.i.i, 3
  br i1 %i.aa, label %bb.e, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i

bb.e:                                             ; preds = %_ZSt10__distanceIN5clang11DeclContext22specific_decl_iteratorINS0_9FieldDeclEEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.l, i64 noundef %i.z, i64 noundef 8) #18
  %.pre.i.i = load i32, ptr %i.m, align 8, !tbaa !842 ; 2 uses
  %.pre9.i.i = zext i32 %.pre.i.i to i64
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !843
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i:             ; preds = %bb.e, %_ZSt10__distanceIN5clang11DeclContext22specific_decl_iteratorINS0_9FieldDeclEEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i.i
  %i.ab = phi ptr [ %i.l, %_ZSt10__distanceIN5clang11DeclContext22specific_decl_iteratorINS0_9FieldDeclEEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i.i ], [ %.pre.i, %bb.e ] ; 2 uses
  %.pre-phi.i.i = phi i64 [ 0, %_ZSt10__distanceIN5clang11DeclContext22specific_decl_iteratorINS0_9FieldDeclEEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i.i ], [ %.pre9.i.i, %bb.e ]
  %i.ac = phi i32 [ 0, %_ZSt10__distanceIN5clang11DeclContext22specific_decl_iteratorINS0_9FieldDeclEEEENSt15iterator_traitsIT_E15difference_typeES6_S6_St18input_iterator_tag.exit.i.i ], [ %.pre.i.i, %bb.e ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.2.i.i.i.i.i.i.i.i.i.i, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  store ptr %.sroa.03.06.i.i.i.i.i.i.i.i.i.i, ptr %.07.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !980
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8
  %i.ag = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.f
  %.sroa.03.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.f ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i.i.i.i.i, i64 28
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 127
  %i.al = add nsw i32 %i.ak, -50
  %i.am = icmp ult i32 %i.al, 3
  br i1 %i.am, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8
  %i.ao = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.03.2.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ap, %bb.f ], [ %.sroa.03.1.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.03.2.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPN5clang4DeclEE6appendINS1_11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEEvEEvT_SA_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZN4llvm15SmallVectorImplIPN5clang4DeclEE6appendINS1_11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEEvEEvT_SA_.exit.loopexit.i: ; preds = %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.aq = trunc i64 %i.z to i32
  %i.ar = add i32 %i.ac, %i.aq
  br label %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EEC2INS1_11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEEEERKNS_14iterator_rangeIT_EE.exit

_ZN4llvm11SmallVectorIPN5clang4DeclELj4EEC2INS1_11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEEEERKNS_14iterator_rangeIT_EE.exit: ; preds = %bb.c, %_ZN4llvm15SmallVectorImplIPN5clang4DeclEE6appendINS1_11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEEvEEvT_SA_.exit.loopexit.i
  %i.as = phi ptr [ %i.l, %bb.c ], [ %i.ab, %_ZN4llvm15SmallVectorImplIPN5clang4DeclEE6appendINS1_11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEEvEEvT_SA_.exit.loopexit.i ]
  %i.at = phi i32 [ 0, %bb.c ], [ %i.ar, %_ZN4llvm15SmallVectorImplIPN5clang4DeclEE6appendINS1_11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEEvEEvT_SA_.exit.loopexit.i ] ; 2 uses
  store i32 %i.at, ptr %i.m, align 8, !tbaa !842
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.au, align 8, !tbaa !169
  %i.av = zext i32 %i.at to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !843
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 2, ptr %i.ay, align 4, !tbaa !937
  call void @_ZN5clang4Sema11ActOnFieldsEPNS_5ScopeENS_14SourceLocationEPNS_4DeclEN4llvm8ArrayRefIS5_EES3_S3_RKNS_20ParsedAttributesViewE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef null, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull %i.j, ptr %i.as, i64 %i.av, i32 0, i32 0, ptr noundef nonnull align 8 dereferenceable(40) %5) #18
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !843 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ax
  br i1 %i.ba, label %_ZN5clang20ParsedAttributesViewD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EEC2INS1_11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEEEERKNS_14iterator_rangeIT_EE.exit
  call void @free(ptr noundef %i.az) #18
  br label %_ZN5clang20ParsedAttributesViewD2Ev.exit

_ZN5clang20ParsedAttributesViewD2Ev.exit:         ; preds = %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EEC2INS1_11DeclContext22specific_decl_iteratorINS1_9FieldDeclEEEEERKNS_14iterator_rangeIT_EE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN5clang4Sema22CheckCompletedCXXClassEPNS_5ScopeEPNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef null, ptr noundef nonnull %i.j) #18
  call void @_ZN5clang4Sema20PopFunctionScopeInfoEPKNS_4sema21AnalysisBasedWarnings6PolicyEPNS_4DeclENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.1428") align 8 %6, ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef null, ptr noundef null, i64 0) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5clang20ParsedAttributesViewD2Ev.exit
  call void @_ZNK5clang4Sema26PoppedFunctionScopeDeleterclEPNS_4sema17FunctionScopeInfoE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.bc) #18
  br label %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit

_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit: ; preds = %_ZN5clang20ParsedAttributesViewD2Ev.exit, %bb.h
  %i.bd = load ptr, ptr %4, align 8, !tbaa !843   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.l
  br i1 %i.be, label %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit
  call void @free(ptr noundef %i.bd) #18
  br label %_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4DeclELj4EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5clang4sema17FunctionScopeInfoENS0_4Sema26PoppedFunctionScopeDeleterEED2Ev.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

declare void @_ZN5clang4Sema34DiscardCleanupsInEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #2

declare void @_ZN5clang4Sema30PopExpressionEvaluationContextEv(ptr noundef nonnull align 8 dereferenceable(18640)) local_unnamed_addr #2

declare void @_ZN5clang4Sema11ActOnFieldsEPNS_5ScopeENS_14SourceLocationEPNS_4DeclEN4llvm8ArrayRefIS5_EES3_S3_RKNS_20ParsedAttributesViewE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i32, ptr noundef, ptr, i64, i32, i32, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN5clang4Sema22CheckCompletedCXXClassEPNS_5ScopeEPNS_13CXXRecordDeclE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5clang4Sema20PopFunctionScopeInfoEPKNS_4sema21AnalysisBasedWarnings6PolicyEPNS_4DeclENS_8QualTypeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.1428") align 8, ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema37getLambdaConversionFunctionResultTypeEPKNS_17FunctionProtoTypeENS_11CallingConvE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 4 uses
  %4 = alloca %"struct.clang::FunctionProtoType::ExtProtoInfo", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %3, ptr noundef nonnull align 16 dereferenceable(48) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(144) %3, i64 144, i1 false), !tbaa.struct !1457
  %i.a = load i16, ptr %4, align 8, !tbaa !1065
  %i.b = and i16 %i.a, -64
  %i.c = trunc i32 %2 to i16
  %i.d = or i16 %i.b, %i.c
  store i16 %i.d, ptr %4, align 8, !tbaa !1448
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !959
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !845, !nonnull !846, !align !847
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !908
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 16
  %i.l = lshr i64 %i.k, 48
  %i.m = call i64 @_ZNK5clang10ASTContext23getFunctionTypeInternalENS_8QualTypeEN4llvm8ArrayRefIS1_EERKNS_17FunctionProtoType12ExtProtoInfoEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.g, i64 %.sroa.0.0.copyload.i, ptr nonnull %i.i, i64 %i.l, ptr noundef nonnull align 8 dereferenceable(138) %4, i1 noundef zeroext false) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i64 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang17FunctionProtoType15getExtProtoInfoEv(ptr dead_on_unwind noalias writable sret(%"struct.clang::FunctionProtoType::ExtProtoInfo") align 8 %0, ptr noundef nonnull align 16 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !1083
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !1081
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !1082
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.d, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, -4096
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 16             ; 5 uses
  %i.k = lshr i64 %i.j, 34
  %i.l = trunc i64 %i.k to i16
  %i.m = and i16 %i.l, 16383
  store i16 %i.m, ptr %0, align 8, !tbaa !1448
  %i.n = and i64 %i.j, 2147483648                 ; 2 uses
  %.lobit = lshr exact i64 %i.n, 31
  %i.o = trunc nuw nsw i64 %.lobit to i16
  %i.p = or disjoint i16 %i.h, %i.o
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = lshr i64 %i.j, 48
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 8, !tbaa !169
  br label %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit

_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i32 [ %i.t, %bb.b ], [ 0, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sroa.0.0.i, ptr %i.u, align 8, !tbaa !169
  %2 = lshr i64 %i.j, 31
  %3 = trunc i64 %2 to i16
  %4 = and i16 %3, 2
  %i.v = lshr i64 %i.j, 31
  %i.w = trunc i64 %i.v to i16
  %i.x = and i16 %i.w, 4
  %5 = or disjoint i16 %i.x, %4
  %i.y = or disjoint i16 %5, %i.p                 ; 4 uses
  store i16 %i.y, ptr %i.f, align 8
  tail call void @_ZNK5clang17FunctionProtoType20getExceptionSpecInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.clang::FunctionProtoType::ExceptionSpecInfo") align 8 %i.c, ptr noundef nonnull align 16 dereferenceable(48) %1)
  %i.z = load i64, ptr %i.i, align 16             ; 11 uses
  %i.aa = and i64 %i.z, 16777216
  %.not.i4 = icmp eq i64 %i.aa, 0
  br i1 %.not.i4, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = lshr i64 %i.z, 48                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = lshr i64 %i.z, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i64 %i.ae, 1
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.lobit.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = add i64 %i.ag, 7
  %i.ai = and i64 %i.ah, -8
  %i.aj = inttoptr i64 %i.ai to ptr               ; 4 uses
  %i.ak = and i64 %i.z, 1073741824
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load i24, ptr %i.aj, align 8            ; 2 uses
  %i.am = lshr i24 %i.al, 10
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i24 %i.am, 1
  %i.an = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.an
  %i.aq = lshr i24 %i.al, 11
  %.lobit.i.i.i.i.i.i.i.i.i = and i24 %i.aq, 1
  %i.ar = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.as = phi ptr [ %i.ap, %bb.d ], [ %i.aj, %bb.c ]
  %i.at = phi i64 [ %i.ar, %bb.d ], [ 0, %bb.c ]
  %i.au = and i64 %i.z, 503316480
  %i.av = icmp eq i64 %i.au, 67108864
  br i1 %i.av, label %bb.e, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i

bb.e:                                             ; preds = %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i
  %i.aw = load i24, ptr %i.aj, align 8
  %i.ax = and i24 %i.aw, 1023
  %i.ay = zext nneg i24 %i.ax to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i: ; preds = %bb.e, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i = phi i64 [ %i.ay, %bb.e ], [ 0, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i.i ]
  %i.az = trunc i64 %i.z to i32
  %i.ba = lshr i32 %i.az, 25
  %i.bb = and i32 %i.ba, 15                       ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK5clang12FunctionDecl18getFunctionEffectsEv.27, i64 %i.bc
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %spec.select.i.i.i.i.i.i.i.i
  %.off.i.i.i.i.i.i.i = add nsw i32 %i.bb, -6
  %switch.i.i.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i.i.i, 3
  %i.bf = zext i1 %switch.i.i.i.i.i.i.i to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %switch.ext
  %i.bi = and i64 %i.z, 536870912
  %.not.i.i.i.i.i = icmp eq i64 %i.bi, 0
  %i.bj = select i1 %.not.i.i.i.i.i, i64 0, i64 %i.ac
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = add i64 %i.bl, 7
  %i.bn = and i64 %i.bm, -8
  %i.bo = inttoptr i64 %i.bn to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.bo, align 8, !tbaa !959
  br label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit

bb.f:                                             ; preds = %_ZNK5clang17FunctionProtoType14getEllipsisLocEv.exit
  %i.bp = and i64 %i.z, 255
  %.not.i.i.i.i = icmp eq i64 %i.bp, 24
  br i1 %.not.i.i.i.i, label %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !tbaa !908
  %i.br = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !910
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i8, ptr %i.bu, align 16
  %i.bw = icmp eq i8 %i.bv, 24
  br i1 %i.bw, label %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i, label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit

_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i:  ; preds = %bb.g
  %i.bx = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(48) %1) #18
  %.not.i.i = icmp eq ptr %i.bx, null
  %.pre = load i64, ptr %i.i, align 16            ; 2 uses
  br i1 %.not.i.i, label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit, label %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i

_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i: ; preds = %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i, %bb.f
  %i.by = phi i64 [ %i.z, %bb.f ], [ %.pre, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i ] ; 2 uses
  %i.bz = lshr i64 %i.by, 21
  %i.ca = and i64 %i.bz, 7
  br label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit

_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit: ; preds = %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i, %bb.g, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i
  %i.cb = phi i64 [ %i.z, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i ], [ %i.by, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i ], [ %.pre, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i ], [ %i.z, %bb.g ] ; 12 uses
  %.sroa.0.0.i5 = phi i64 [ %.sroa.0.0.copyload.i, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i.i ], [ %i.ca, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.thread.i.i ], [ 0, %_ZNK5clang4Type19isFunctionProtoTypeEv.exit.i.i ], [ 0, %bb.g ]
  store i64 %.sroa.0.0.i5, ptr %i.a, align 8, !tbaa !959
  %i.cc = trunc i64 %i.cb to i32                  ; 3 uses
  %i.cd = lshr i32 %i.cc, 19
  %i.ce = and i32 %i.cd, 3
  store i32 %i.ce, ptr %i.b, align 8, !tbaa !1081
  %i.cf = and i64 %i.cb, 536870912
  %.not.i6 = icmp eq i64 %i.cf, 0                 ; 2 uses
  br i1 %.not.i6, label %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge, label %bb.h

_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge: ; preds = %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit
  %.pre25 = and i64 %i.cb, 1073741824
  br label %_ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit

bb.h:                                             ; preds = %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ch = lshr i64 %i.cb, 48
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = lshr i64 %i.cb, 31
  %.lobit.i.i.i.i.i.i.i.i.i.i7 = and i64 %i.cj, 1
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.lobit.i.i.i.i.i.i.i.i.i.i7
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = add i64 %i.cl, 7
  %i.cn = and i64 %i.cm, -8
  %i.co = inttoptr i64 %i.cn to ptr               ; 4 uses
  %i.cp = and i64 %i.cb, 1073741824               ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cq = load i24, ptr %i.co, align 8            ; 2 uses
  %i.cr = lshr i24 %i.cq, 10
  %.lobit.i.i.i.i.i.i.i.i.i8 = and i24 %i.cr, 1
  %i.cs = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i.i8 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = lshr i24 %i.cq, 11
  %.lobit.i.i.i.i.i.i.i.i = and i24 %i.cv, 1
  %i.cw = zext nneg i24 %.lobit.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.cx = phi ptr [ %i.cu, %bb.i ], [ %i.co, %bb.h ]
  %i.cy = phi i64 [ %i.cw, %bb.i ], [ 0, %bb.h ]
  %i.cz = and i64 %i.cb, 503316480
  %i.da = icmp eq i64 %i.cz, 67108864
  br i1 %i.da, label %bb.j, label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i

bb.j:                                             ; preds = %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i
  %i.db = load i24, ptr %i.co, align 8
  %i.dc = and i24 %i.db, 1023
  %i.dd = zext nneg i24 %i.dc to i64
  br label %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i

_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i: ; preds = %bb.j, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = phi i64 [ %i.dd, %bb.j ], [ 0, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESA_JSB_SD_SF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISB_EE.exit.i.i.i.i.i ]
  %i.de = lshr i32 %i.cc, 25
  %i.df = and i32 %i.de, 15                       ; 2 uses
  %i.dg = zext nneg i32 %i.df to i64
  %switch.gep26 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK5clang12FunctionDecl18getFunctionEffectsEv.27, i64 %i.dg
  %switch.load27 = load i8, ptr %switch.gep26, align 1
  %switch.ext28 = zext i8 %switch.load27 to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %spec.select.i.i.i.i.i.i.i
  %.off.i.i.i.i.i.i = add nsw i32 %i.df, -6
  %switch.i.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i.i, 3
  %i.dj = zext i1 %switch.i.i.i.i.i.i to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %switch.ext28
  br label %_ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit

_ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit: ; preds = %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i
  %.pre-phi = phi i64 [ %.pre25, %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge ], [ %i.cp, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i ]
  %.0.i = phi ptr [ null, %_ZNK5clang17FunctionProtoType14getMethodQualsEv.exit._ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit_crit_edge ], [ %i.dl, %_ZN4llvm25trailing_objects_internal19TrailingObjectsImplILi8EN5clang17FunctionProtoTypeENS_15TrailingObjectsIS3_JNS2_8QualTypeENS2_14SourceLocationENS2_12FunctionType26FunctionTypeExtraBitfieldsENS7_30FunctionTypeExtraAttributeInfoENS7_25FunctionTypeArmAttributesENS7_13ExceptionTypeEPNS2_4ExprEPNS2_12FunctionDeclENS7_16ExtParameterInfoENS2_10QualifiersENS2_14FunctionEffectENS2_19EffectConditionExprEEEESD_JSF_SG_SH_SI_SJ_EE22getTrailingObjectsImplEPKS3_NS0_19TrailingObjectsBase13OverloadTokenISF_EE.exit.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.0.i, ptr %i.dm, align 8, !tbaa !1727
  %.not.i.i9 = icmp eq i64 %.pre-phi, 0
  br i1 %.not.i.i9, label %_ZNK5clang17FunctionProtoType23getAArch64SMEAttributesEv.exit, label %_ZNK5clang17FunctionProtoType21hasExtraAttributeInfoEv.exit.i

_ZNK5clang17FunctionProtoType21hasExtraAttributeInfoEv.exit.i: ; preds = %_ZNK5clang17FunctionProtoType26getExtParameterInfosOrNullEv.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.do = lshr i64 %i.cb, 48                      ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do
  %i.dq = lshr i64 %i.cb, 31
  %.lobit.i.i.i.i.i = and i64 %i.dq, 1
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.lobit.i.i.i.i.i
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = add i64 %i.ds, 7
  %i.du = and i64 %i.dt, -8
  %i.dv = inttoptr i64 %i.du to ptr               ; 5 uses
  %i.dw = load i24, ptr %i.dv, align 8            ; 8 uses
  %i.dx = and i24 %i.dw, 1024
  %.not.i10 = icmp eq i24 %i.dx, 0
  br i1 %.not.i10, label %_ZNK5clang17FunctionProtoType20hasArmTypeAttributesEv.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang17FunctionProtoType21hasExtraAttributeInfoEv.exit.i
end_hunk_1
