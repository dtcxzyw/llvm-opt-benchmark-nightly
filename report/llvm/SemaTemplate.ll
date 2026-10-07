Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaTemplate?download=true
inline.NumInlined: 36021
inline.NumDeleted: 15703
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5clang4Sema28CompleteMemberSpecializationEPNS_9NamedDeclERNS_12LookupResultE:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5clang12FunctionDecl29setTemplateSpecializationKindENS_26TemplateSpecializationKindENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(168) %i.d, i32 noundef 2, i32 0) #28
  br label %_ZL32completeMemberSpecializationImplIN5clang13CXXMethodDeclEEvRNS0_4SemaEPT_NS0_14SourceLocationE.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %i.l = and i32 %i.g, 127                        ; 2 uses
  %i.m = add nsw i32 %i.l, -48
  %i.n = icmp ult i32 %i.m, -7
  %.not27 = or i1 %.not38, %i.n
  br i1 %.not27, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.o, align 8, !tbaa !58
  %i.p = tail call noundef i32 @_ZNK5clang7VarDecl29getTemplateSpecializationKindEv(ptr noundef nonnull align 8 dereferenceable(100) %i.d) #28
  %.not.i31 = icmp eq i32 %i.p, 1
  br i1 %.not.i31, label %bb.g, label %_ZL32completeMemberSpecializationImplIN5clang13CXXMethodDeclEEvRNS0_4SemaEPT_NS0_14SourceLocationE.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5clang7VarDecl29setTemplateSpecializationKindENS_26TemplateSpecializationKindENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(100) %i.d, i32 noundef 2, i32 0) #28
  br label %_ZL32completeMemberSpecializationImplIN5clang13CXXMethodDeclEEvRNS0_4SemaEPT_NS0_14SourceLocationE.exit.sink.split

bb.h:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.l, -63
  %i.r = icmp ult i32 %i.q, -3
  %.not28 = or i1 %.not38, %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i36 = load i32, ptr %i.s, align 8, !tbaa !58 ; 2 uses
  br i1 %.not28, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call noundef i32 @_ZNK5clang13CXXRecordDecl29getTemplateSpecializationKindEv(ptr noundef nonnull align 8 dereferenceable(144) %i.d) #28
  %.not.i34 = icmp eq i32 %i.t, 1
  br i1 %.not.i34, label %bb.j, label %_ZL32completeMemberSpecializationImplIN5clang13CXXMethodDeclEEvRNS0_4SemaEPT_NS0_14SourceLocationE.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5clang13CXXRecordDecl29setTemplateSpecializationKindENS_26TemplateSpecializationKindE(ptr noundef nonnull align 8 dereferenceable(144) %i.d, i32 noundef 2) #28
  br label %_ZL32completeMemberSpecializationImplIN5clang13CXXMethodDeclEEvRNS0_4SemaEPT_NS0_14SourceLocationE.exit.sink.split

bb.k:                                             ; preds = %bb.h
  %i.u = tail call noundef i32 @_ZNK5clang8EnumDecl29getTemplateSpecializationKindEv(ptr noundef nonnull align 8 dereferenceable(164) %i.d) #28
  %.not.i37 = icmp eq i32 %i.u, 1
  br i1 %.not.i37, label %bb.l, label %_ZL32completeMemberSpecializationImplIN5clang13CXXMethodDeclEEvRNS0_4SemaEPT_NS0_14SourceLocationE.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5clang8EnumDecl29setTemplateSpecializationKindENS_26TemplateSpecializationKindENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(164) %i.d, i32 noundef 2, i32 0) #28
  br label %_ZL32completeMemberSpecializationImplIN5clang13CXXMethodDeclEEvRNS0_4SemaEPT_NS0_14SourceLocationE.exit.sink.split

_ZL32completeMemberSpecializationImplIN5clang13CXXMethodDeclEEvRNS0_4SemaEPT_NS0_14SourceLocationE.exit.sink.split: ; preds = %bb.d, %bb.g, %bb.j, %bb.l
  %.sroa.0.0.copyload.i36.sink = phi i32 [ %.sroa.0.0.copyload.i36, %bb.l ], [ %.sroa.0.0.copyload.i36, %bb.j ], [ %.sroa.0.0.copyload.i30, %bb.g ], [ %.sroa.0.0.copyload.i, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %.sroa.0.0.copyload.i36.sink, ptr %i.v, align 8, !tbaa !58
  br label %_ZL32completeMemberSpecializationImplIN5clang13CXXMethodDeclEEvRNS0_4SemaEPT_NS0_14SourceLocationE.exit

_ZL32completeMemberSpecializationImplIN5clang13CXXMethodDeclEEvRNS0_4SemaEPT_NS0_14SourceLocationE.exit: ; preds = %_ZL32completeMemberSpecializationImplIN5clang13CXXMethodDeclEEvRNS0_4SemaEPT_NS0_14SourceLocationE.exit.sink.split, %bb.k, %bb.i, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN5clang4Sema26ActOnExplicitInstantiationEPNS_5ScopeENS_14SourceLocationES3_jS3_RKNS_12CXXScopeSpecENS_9OpaquePtrINS_12TemplateNameEEES3_S3_N4llvm15MutableArrayRefINS_22ParsedTemplateArgumentEEES3_RKNS_20ParsedAttributesViewE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i32 %2, i32 %3, i32 noundef %4, i32 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 %7, i32 %8, i32 %9, ptr nofree noundef readonly byval(%"class.llvm::MutableArrayRef") align 8 captures(none) %10, i32 %11, ptr noundef nonnull align 8 dereferenceable(40) %12) local_unnamed_addr #2 align 2 {
bb.a:
  %13 = alloca %"class.clang::NestedNameSpecifierLoc", align 8 ; 4 uses
  %14 = alloca %"class.clang::NestedNameSpecifierLoc", align 8 ; 4 uses
  %15 = alloca %"class.clang::TemplateArgumentLoc", align 8 ; 5 uses
  %16 = alloca %"class.clang::TemplateName", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 14 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %18 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %19 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %20 = alloca %"class.clang::FixItHint", align 8 ; 6 uses
  %21 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %22 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %23 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %24 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %25 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %26 = alloca %"class.clang::TemplateArgumentListInfo", align 8 ; 15 uses
  %27 = alloca %"struct.clang::Sema::CheckTemplateArgumentInfo", align 8 ; 15 uses
  %28 = alloca %"struct.clang::DefaultArguments", align 8 ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %29 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %30 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %31 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %32 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %33 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.f = alloca i8, align 1                       ; 7 uses
  %34 = alloca %"class.llvm::ArrayRef.1634", align 8 ; 3 uses
  %35 = alloca %"struct.clang::Sema::ProcessDeclAttributeOptions", align 1 ; 5 uses
  %36 = alloca %"class.llvm::ArrayRef.1634", align 8 ; 3 uses
  %37 = alloca %"class.llvm::ArrayRef.1634", align 8 ; 3 uses
  %i.g = inttoptr i64 %7 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN5clang12TemplateNameC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.h = call noundef ptr @_ZNK5clang12TemplateName17getAsTemplateDeclEb(ptr noundef nonnull align 8 dereferenceable(8) %16, i1 noundef zeroext false) #28 ; 6 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !1497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.i = call noundef i32 @_ZN5clang14KeywordHelpers25getTagTypeKindForTypeSpecEj(i32 noundef %4) #28 ; 4 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !1607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 127
  %i.m = icmp eq i32 %i.l, 73
  %spec.select.i.i = select i1 %i.m, ptr %i.h, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %i.c, align 8, !tbaa !1846
  %.not = icmp eq ptr %spec.select.i.i, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.n = call noundef i32 @_ZN5clang4Sema21getNonTagTypeDeclKindEPKNS_4DeclENS_11TagTypeKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.h, i32 noundef %i.i) #28
  store i32 %i.n, ptr %i.d, align 4, !tbaa !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 %8, i32 noundef 5201) #28
  %i.p = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_12TemplateDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.q = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_10NonTagKindEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.r = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11TagTypeKindEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !1497
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.t, align 8, !tbaa !58
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i32 %.sroa.0.0.copyload.i, i32 noundef 120) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.cg

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1365
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !898  ; 2 uses
  %i.y = and i64 %i.x, 7
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = and i64 %i.x, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  %.0.i.i = select i1 %i.z, ptr %i.ab, ptr null
  %i.ac = call noundef zeroext i1 @_ZN5clang4Sema28isAcceptableTagRedeclarationEPKNS_7TagDeclENS_11TagTypeKindEbNS_14SourceLocationEPKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.v, i32 noundef %i.i, i1 noundef zeroext false, i32 %5, ptr noundef %.0.i.i) #28
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 %5, i32 noundef 5520) #28
  %i.ae = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIPNS_17ClassTemplateDeclEEERKNS_8SemaBase21SemaDiagnosticBuilderES6_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !1846
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1365
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = lshr i16 %i.aj, 13
  %i.al = zext nneg i16 %i.ak to i32
  %i.am = call noundef i32 @_ZN5clang14KeywordHelpers24getKeywordForTagTypeKindENS_11TagTypeKindE(i32 noundef %i.al) #28
  %i.an = call { ptr, i64 } @_ZN5clang14KeywordHelpers14getKeywordNameENS_21ElaboratedTypeKeywordE(i32 noundef %i.am) #28 ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 0
  %i.ap = extractvalue { ptr, i64 } %i.an, 1
  %.sroa.2333.0.insert.ext = zext i32 %5 to i64
  %.sroa.0332.0.insert.insert = mul nuw i64 %.sroa.2333.0.insert.ext, 4294967297
  call void @_ZN5clang9FixItHint17CreateReplacementENS_15CharSourceRangeEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.clang::FixItHint") align 8 %20, i64 %.sroa.0332.0.insert.insert, i8 1, ptr %i.ao, i64 %i.ap)
  %i.aq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_9FixItHintEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ae, ptr noundef nonnull align 8 dereferenceable(57) %20) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !912 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN5clang9FixItHintD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.av = load i64, ptr %i.at, align 8, !tbaa !843
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #30
  br label %_ZN5clang9FixItHintD2Ev.exit

_ZN5clang9FixItHintD2Ev.exit:                     ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !1846
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1365
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.0.0.copyload.i262 = load i32, ptr %i.ba, align 8, !tbaa !58
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 %.sroa.0.0.copyload.i262, i32 noundef 120) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %21) #28
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !1846
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1365
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = lshr i16 %i.bf, 13
  %i.bh = zext nneg i16 %i.bg to i32              ; 2 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !1607
  br label %bb.e

bb.e:                                             ; preds = %_ZN5clang9FixItHintD2Ev.exit, %bb.c
  %i.bi = phi i32 [ %i.bh, %_ZN5clang9FixItHintD2Ev.exit ], [ %i.i, %bb.c ] ; 3 uses
  %i.bj = icmp eq i32 %2, 0                       ; 2 uses
  %38 = select i1 %i.bj, i32 4, i32 3             ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 17712
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1688 ; 3 uses
  br i1 %i.bj, label %.critedge253, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 260
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !1859
  %i.bq = icmp eq i32 %i.bp, 15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 264
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 30
  %i.bu = icmp eq i32 %i.bs, 1
  %i.bv = or i1 %i.bt, %i.bu
  %or.cond362 = select i1 %i.bq, i1 %i.bv, i1 false
  br i1 %or.cond362, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !84 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !765 ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %.idx = shl nuw nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx
  %.not367382 = icmp eq i32 %i.bz, 0
  br i1 %.not367382, label %.loopexit373, label %.critedge251

bb.h:                                             ; preds = %.critedge251
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0329.0383, i64 8 ; 2 uses
  %.not367 = icmp eq ptr %i.cc, %i.cb
  br i1 %.not367, label %.loopexit373, label %.critedge251

.critedge251:                                     ; preds = %bb.g, %bb.h
  %.sroa.0329.0383 = phi ptr [ %i.cc, %bb.h ], [ %i.bx, %bb.g ] ; 2 uses
  %i.cd = load ptr, ptr %.sroa.0329.0383, align 8, !tbaa !2656 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2659, !nonnull !865, !align !866
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = and i64 %i.ch, 65535
  %.not239 = icmp eq i64 %i.ci, 114
  br i1 %.not239, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.critedge251
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i32 %2, i32 noundef 6758) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %22) #28
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ck, align 4, !tbaa !58
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i32 %.sroa.0.0.copyload.i.i, i32 noundef 5948) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %23) #28
  br label %.loopexit373

.loopexit373:                                     ; preds = %bb.h, %bb.g, %bb.i
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !1846
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1365 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 28
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = and i32 %i.cp, 256
  %.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.loopexit373
  %i.cr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.cn) #28 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !84 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !765 ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %.idx.i.i = shl nuw nsw i64 %i.cv, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i, label %.critedge, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %bb.k
  %.sroa.07.1.i.i.i.i = phi ptr [ %i.db, %bb.k ], [ %i.cs, %bb.j ] ; 3 uses
  %i.cx = load ptr, ptr %.sroa.07.1.i.i.i.i, align 8, !tbaa !1753
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 36
  %i.cz = load i16, ptr %i.cy, align 4
  %i.da = icmp eq i16 %i.cz, 205
  br i1 %i.da, label %_ZN5clangneENS_22specific_attr_iteratorINS_13DLLExportAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.db, %i.cw
  br i1 %.not.i.i.i.i.i, label %.critedge, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZN5clangneENS_22specific_attr_iteratorINS_13DLLExportAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.not5.i.i = icmp eq ptr %.sroa.07.1.i.i.i.i, %i.cw
  br i1 %.not5.i.i, label %.critedge, label %bb.l

bb.l:                                             ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_13DLLExportAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !1753 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 36
  %i.de = load i16, ptr %i.dd, align 4
  %i.df = icmp eq i16 %i.de, 205
  br i1 %i.df, label %_ZNK5clang4Decl7getAttrINS_13DLLExportAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %.lr.ph.i.i.i.i
  %i.dg = phi ptr [ %i.dh, %.lr.ph.i.i.i.i ], [ %i.cs, %bb.l ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1753 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 36
  %i.dk = load i16, ptr %i.dj, align 4
  %i.dl = icmp eq i16 %i.dk, 205
  br i1 %i.dl, label %_ZNK5clang4Decl7getAttrINS_13DLLExportAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i, !llvm.loop !26

_ZNK5clang4Decl7getAttrINS_13DLLExportAttrEEEPT_v.exit: ; preds = %.lr.ph.i.i.i.i, %bb.l
  %i.dm = phi ptr [ %i.dc, %bb.l ], [ %i.di, %.lr.ph.i.i.i.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i32 %2, i32 noundef 6758) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %24) #28
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %.sroa.0.0.copyload.i.i263 = load i64, ptr %i.do, align 8, !tbaa !58
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i263 to i32
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i32 %.sroa.0.0.extract.trunc.i, i32 noundef 5948) #28
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %25) #28
  br label %.critedge

.critedge253:                                     ; preds = %bb.e
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bn, i64 348
  %.sroa.0.0.copyload.i264 = load i32, ptr %i.dp, align 4, !tbaa !1892
  %cond.i = icmp eq i32 %.sroa.0.0.copyload.i264, 10
  br i1 %cond.i, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.critedge253
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !1846
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1365 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = and i32 %i.du, 256
  %.not.i265 = icmp eq i32 %i.dv, 0
  br i1 %.not.i265, label %_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ds) #28 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !84 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !765 ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %.idx.i.i266 = shl nuw nsw i64 %i.ea, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx.i.i266 ; 2 uses
  %.not.i.i267 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i267, label %_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i.i268

.lr.ph.i.i.i.i.i268:                              ; preds = %bb.n, %bb.o
  %.sroa.07.1.i.i.i.i269 = phi ptr [ %i.eg, %bb.o ], [ %i.dx, %bb.n ] ; 3 uses
  %i.ec = load ptr, ptr %.sroa.07.1.i.i.i.i269, align 8, !tbaa !1753
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 36
  %i.ee = load i16, ptr %i.ed, align 4
  %i.ef = icmp eq i16 %i.ee, 208
  br i1 %i.ef, label %_ZN5clangneENS_22specific_attr_iteratorINS_13DLLImportAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i268
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i269, i64 8 ; 2 uses
  %.not.i.i.i.i.i270 = icmp eq ptr %i.eg, %i.eb
  br i1 %.not.i.i.i.i.i270, label %_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i.i268, !llvm.loop !21

_ZN5clangneENS_22specific_attr_iteratorINS_13DLLImportAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i268
  %.not5.i.i271 = icmp eq ptr %.sroa.07.1.i.i.i.i269, %i.eb
  br i1 %.not5.i.i271, label %_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5clangneENS_22specific_attr_iteratorINS_13DLLImportAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !1753 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 36
  %i.ej = load i16, ptr %i.ei, align 4
  %i.ek = icmp eq i16 %i.ej, 208
  br i1 %i.ek, label %_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i272

.lr.ph.i.i.i.i272:                                ; preds = %bb.p, %.lr.ph.i.i.i.i272
  %i.el = phi ptr [ %i.em, %.lr.ph.i.i.i.i272 ], [ %i.dx, %bb.p ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1753 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 36
  %i.ep = load i16, ptr %i.eo, align 4
  %i.eq = icmp eq i16 %i.ep, 208
  br i1 %i.eq, label %_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit, label %.lr.ph.i.i.i.i272, !llvm.loop !27

_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit: ; preds = %bb.o, %.lr.ph.i.i.i.i272, %bb.m, %bb.n, %_ZN5clangneENS_22specific_attr_iteratorINS_13DLLImportAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i, %bb.p
  %i.er = phi ptr [ null, %bb.m ], [ null, %bb.n ], [ null, %_ZN5clangneENS_22specific_attr_iteratorINS_13DLLImportAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i ], [ %i.eh, %bb.p ], [ %i.en, %.lr.ph.i.i.i.i272 ], [ null, %bb.o ]
  %i.es = icmp ne ptr %i.er, null                 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !84 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !765 ; 2 uses
  %i.ex = zext i32 %i.ew to i64
  %.idx399 = shl nuw nsw i64 %i.ex, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx399
  %.not368384 = icmp eq i32 %i.ew, 0
  br i1 %.not368384, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit, %bb.q
  %.0221386 = phi i1 [ %spec.select, %bb.q ], [ %i.es, %_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit ]
  %.sroa.0324.0385 = phi ptr [ %i.fh, %bb.q ], [ %i.eu, %_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit ] ; 2 uses
  %i.ez = load ptr, ptr %.sroa.0324.0385, align 8, !tbaa !2656
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 72
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !2659, !nonnull !865, !align !866
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = and i32 %i.fe, 65535                    ; 2 uses
  %.not241 = icmp eq i32 %i.ff, 114
  br i1 %.not241, label %.critedge, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.fg = icmp eq i32 %i.ff, 117
  %spec.select = select i1 %i.fg, i1 true, i1 %.0221386 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0324.0385, i64 8 ; 2 uses
  %.not368 = icmp eq ptr %i.fh, %i.ey
  br i1 %.not368, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit
  %.3 = phi i1 [ %i.es, %_ZNK5clang4Decl7getAttrINS_13DLLImportAttrEEEPT_v.exit ], [ %spec.select, %bb.q ]
  %cond.fr = freeze i1 %.3                        ; 2 uses
  %spec.select463 = select i1 %cond.fr, i32 3, i32 %38
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %.lr.ph, %._crit_edge, %_ZN5clangneENS_22specific_attr_iteratorINS_13DLLExportAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i, %bb.j, %.loopexit373, %bb.f, %_ZNK5clang4Decl7getAttrINS_13DLLExportAttrEEEPT_v.exit, %.critedge253
  %.1220 = phi i1 [ false, %.lr.ph ], [ false, %.critedge253 ], [ false, %_ZN5clangneENS_22specific_attr_iteratorINS_13DLLExportAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i ], [ false, %_ZNK5clang4Decl7getAttrINS_13DLLExportAttrEEEPT_v.exit ], [ false, %bb.f ], [ false, %.loopexit373 ], [ false, %bb.j ], [ %cond.fr, %._crit_edge ], [ false, %bb.k ] ; 2 uses
  %.1218 = phi i32 [ %38, %.lr.ph ], [ 4, %.critedge253 ], [ %38, %_ZN5clangneENS_22specific_attr_iteratorINS_13DLLExportAttrEN4llvm11SmallVectorIPNS_4AttrELj4EEEEES7_.exit.i.i ], [ %38, %_ZNK5clang4Decl7getAttrINS_13DLLExportAttrEEEPT_v.exit ], [ 3, %bb.f ], [ %38, %.loopexit373 ], [ %38, %bb.j ], [ %spec.select463, %._crit_edge ], [ %38, %bb.k ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.fi = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  store ptr %i.fi, ptr %26, align 8, !tbaa !84
  %i.fj = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  store i32 0, ptr %i.fj, align 8, !tbaa !765
  %i.fk = getelementptr inbounds nuw i8, ptr %26, i64 12 ; 2 uses
  store i32 8, ptr %i.fk, align 4, !tbaa !868
  %i.fl = getelementptr inbounds nuw i8, ptr %26, i64 272
  store i32 %9, ptr %i.fl, align 8, !tbaa !58
  %i.fm = getelementptr inbounds nuw i8, ptr %26, i64 276
  store i32 %11, ptr %i.fm, align 4, !tbaa !58
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !1371
  %i.fp = and i64 %i.fo, 4294967295               ; 2 uses
  %.not7.i = icmp eq i64 %i.fp, 0
  br i1 %.not7.i, label %_ZN5clang4Sema26translateTemplateArgumentsERKN4llvm15MutableArrayRefINS_22ParsedTemplateArgumentEEERNS_24TemplateArgumentListInfoE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.critedge
  %i.fq = load ptr, ptr %10, align 8, !tbaa !1372
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.fr = getelementptr inbounds nuw [80 x i8], ptr %i.fq, i64 %indvars.iv.i
  call fastcc void @_ZL25translateTemplateArgumentRN5clang4SemaERKNS_22ParsedTemplateArgumentE(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull readonly align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.fr)
  %i.fs = load i32, ptr %i.fj, align 8, !tbaa !765 ; 2 uses
  %i.ft = load i32, ptr %i.fk, align 4, !tbaa !868
  %.not.i.i.i = icmp ult i32 %i.fs, %i.ft
  br i1 %.not.i.i.i, label %bb.s, label %bb.r, !prof !901

bb.r:                                             ; preds = %.lr.ph.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang19TemplateArgumentLocELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(280) %26, ptr noundef nonnull align 8 dereferenceable(32) %15)
  br label %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.fu = zext i32 %i.fs to i64
  %i.fv = load ptr, ptr %26, align 8, !tbaa !84
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %i.fv, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.fx = load i32, ptr %i.fj, align 8, !tbaa !765
  %i.fy = add i32 %i.fx, 1
  store i32 %i.fy, ptr %i.fj, align 8, !tbaa !765
  br label %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit.i

_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i273 = icmp eq i64 %indvars.iv.next.i, %i.fp
  br i1 %.not.i273, label %_ZN5clang4Sema26translateTemplateArgumentsERKN4llvm15MutableArrayRefINS_22ParsedTemplateArgumentEEERNS_24TemplateArgumentListInfoE.exit, label %.lr.ph.i, !llvm.loop !3

_ZN5clang4Sema26translateTemplateArgumentsERKN4llvm15MutableArrayRefINS_22ParsedTemplateArgumentEEERNS_24TemplateArgumentListInfoE.exit: ; preds = %_ZN5clang24TemplateArgumentListInfo11addArgumentERKNS_19TemplateArgumentLocE.exit.i, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.fz = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  store ptr %i.fz, ptr %27, align 8, !tbaa !84
  %i.ga = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i32 0, ptr %i.ga, align 8, !tbaa !765
  %i.gb = getelementptr inbounds nuw i8, ptr %27, i64 12
  store i32 4, ptr %i.gb, align 4, !tbaa !868
  %i.gc = getelementptr inbounds nuw i8, ptr %27, i64 112 ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %27, i64 128 ; 2 uses
  store ptr %i.gd, ptr %i.gc, align 8, !tbaa !84
  %i.ge = getelementptr inbounds nuw i8, ptr %27, i64 120 ; 5 uses
  store i32 0, ptr %i.ge, align 8, !tbaa !765
  %i.gf = getelementptr inbounds nuw i8, ptr %27, i64 124
  store i32 4, ptr %i.gf, align 4, !tbaa !868
  %i.gg = getelementptr inbounds nuw i8, ptr %27, i64 224
  store i8 0, ptr %i.gg, align 8, !tbaa !1599
  %i.gh = getelementptr inbounds nuw i8, ptr %27, i64 225
  store i8 0, ptr %i.gh, align 1, !tbaa !1600
  %i.gi = getelementptr inbounds nuw i8, ptr %27, i64 226 ; 3 uses
  store i8 0, ptr %i.gi, align 2, !tbaa !1601
  %i.gj = load ptr, ptr %i.c, align 8, !tbaa !1846 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  store i32 0, ptr %28, align 8, !tbaa !1764
  %i.gk = getelementptr inbounds nuw i8, ptr %28, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i8 0, i64 16, i1 false)
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !894
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = call noundef ptr %i.gn(ptr noundef nonnull align 8 dereferenceable(48) %i.gj) #28, !inline_history !8 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 28
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = and i32 %i.gq, 25165824
  %.not.i6.i.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i6.i.i, label %_ZN5clang4Sema25CheckTemplateArgumentListEPNS_12TemplateDeclENS_14SourceLocationERNS_24TemplateArgumentListInfoERKNS_16DefaultArgumentsEbRNS0_25CheckTemplateArgumentInfoEbPb.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5clang4Sema26translateTemplateArgumentsERKN4llvm15MutableArrayRefINS_22ParsedTemplateArgumentEEERNS_24TemplateArgumentListInfoE.exit, %bb.t
  %.07.i.i = phi ptr [ %i.gz, %bb.t ], [ %i.go, %_ZN5clang4Sema26translateTemplateArgumentsERKN4llvm15MutableArrayRefINS_22ParsedTemplateArgumentEEERNS_24TemplateArgumentListInfoE.exit ] ; 5 uses
  %i.gs = load ptr, ptr %.07.i.i, align 8, !tbaa !894
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call noundef ptr %i.gu(ptr noundef nonnull align 8 dereferenceable(33) %.07.i.i) #28, !inline_history !9
  %.not5.i.i274 = icmp eq ptr %i.gv, null
  br i1 %.not5.i.i274, label %_ZN5clang4Sema25CheckTemplateArgumentListEPNS_12TemplateDeclENS_14SourceLocationERNS_24TemplateArgumentListInfoERKNS_16DefaultArgumentsEbRNS0_25CheckTemplateArgumentInfoEbPb.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.gw = load ptr, ptr %.07.i.i, align 8, !tbaa !894
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = call noundef ptr %i.gy(ptr noundef nonnull align 8 dereferenceable(33) %.07.i.i) #28, !inline_history !9 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 28
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = and i32 %i.hb, 25165824
  %.not.i.i.i275 = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i.i275, label %_ZN5clang4Sema25CheckTemplateArgumentListEPNS_12TemplateDeclENS_14SourceLocationERNS_24TemplateArgumentListInfoERKNS_16DefaultArgumentsEbRNS0_25CheckTemplateArgumentInfoEbPb.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZN5clang4Sema25CheckTemplateArgumentListEPNS_12TemplateDeclENS_14SourceLocationERNS_24TemplateArgumentListInfoERKNS_16DefaultArgumentsEbRNS0_25CheckTemplateArgumentInfoEbPb.exit: ; preds = %.lr.ph.i.i, %bb.t, %_ZN5clang4Sema26translateTemplateArgumentsERKN4llvm15MutableArrayRefINS_22ParsedTemplateArgumentEEERNS_24TemplateArgumentListInfoE.exit
  %.0.lcssa.i.i = phi ptr [ %i.go, %_ZN5clang4Sema26translateTemplateArgumentsERKN4llvm15MutableArrayRefINS_22ParsedTemplateArgumentEEERNS_24TemplateArgumentListInfoE.exit ], [ %i.gz, %bb.t ], [ %.07.i.i, %.lr.ph.i.i ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 56
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !1407
  %i.hf = call noundef zeroext i1 @_ZN5clang4Sema25CheckTemplateArgumentListEPNS_12TemplateDeclEPNS_21TemplateParameterListENS_14SourceLocationERNS_24TemplateArgumentListInfoERKNS_16DefaultArgumentsEbRNS0_25CheckTemplateArgumentInfoEbPb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.gj, ptr noundef %i.he, i32 %8, ptr noundef nonnull align 8 dereferenceable(280) %26, ptr noundef nonnull readonly align 8 dereferenceable(24) %28, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(227) %27, i1 noundef zeroext true, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br i1 %i.hf, label %bb.cc, label %bb.u

bb.u:                                             ; preds = %_ZN5clang4Sema25CheckTemplateArgumentListEPNS_12TemplateDeclENS_14SourceLocationERNS_24TemplateArgumentListInfoERKNS_16DefaultArgumentsEbRNS0_25CheckTemplateArgumentInfoEbPb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store ptr null, ptr %i.e, align 8, !tbaa !874
  %i.hg = load ptr, ptr %i.c, align 8, !tbaa !1846
  %i.hh = load ptr, ptr %i.gc, align 8, !tbaa !84
  %i.hi = load i32, ptr %i.ge, align 8, !tbaa !765
  %i.hj = zext i32 %i.hi to i64
  %i.hk = call noundef ptr @_ZN5clang17ClassTemplateDecl18findSpecializationEN4llvm8ArrayRefINS_16TemplateArgumentEEERPv(ptr noundef nonnull align 8 dereferenceable(88) %i.hg, ptr %i.hh, i64 %i.hj, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #28 ; 17 uses
  %.not369 = icmp ne ptr %i.hk, null              ; 4 uses
  br i1 %.not369, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.u
  %i.hl = icmp eq i32 %.1218, 4
  br label %.critedge258

bb.v:                                             ; preds = %bb.u
  %i.hm = call noundef i32 @_ZNK5clang13CXXRecordDecl29getTemplateSpecializationKindEv(ptr noundef nonnull align 8 dereferenceable(144) %i.hk) #28 ; 5 uses
  %i.hn = icmp eq i32 %.1218, 4
  br i1 %i.hn, label %bb.w, label %.critedge258

bb.w:                                             ; preds = %bb.v
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !864, !nonnull !865, !align !866
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 17712
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1688 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 260
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !1859
  %i.hu = icmp eq i32 %i.ht, 15
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 264
  %i.hw = load i32, ptr %i.hv, align 8            ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 30
  %i.hy = icmp eq i32 %i.hw, 1
  %i.hz = or i1 %i.hx, %i.hy
  %or.cond364 = select i1 %i.hu, i1 %i.hz, i1 false
  br i1 %or.cond364, label %_ZNK4llvm6Triple11isOSCygMingEv.exit276.thread, label %.loopexit

_ZNK4llvm6Triple11isOSCygMingEv.exit276.thread:   ; preds = %bb.w
  %i.ia = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !84 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !765 ; 2 uses
  %i.ie = zext i32 %i.id to i64
  %.idx400 = shl nuw nsw i64 %i.ie, 3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.idx400
  %.not370389 = icmp eq i32 %i.id, 0
  br i1 %.not370389, label %.loopexit, label %.critedge256

bb.x:                                             ; preds = %.critedge256
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0319.0390, i64 8 ; 2 uses
  %.not370 = icmp eq ptr %i.ig, %i.if
  br i1 %.not370, label %.loopexit, label %.critedge256

.critedge256:                                     ; preds = %_ZNK4llvm6Triple11isOSCygMingEv.exit276.thread, %bb.x
  %.sroa.0319.0390 = phi ptr [ %i.ig, %bb.x ], [ %i.ib, %_ZNK4llvm6Triple11isOSCygMingEv.exit276.thread ] ; 2 uses
  %i.ih = load ptr, ptr %.sroa.0319.0390, align 8, !tbaa !2656 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 72
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !2659, !nonnull !865, !align !866
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load i64, ptr %i.ik, align 8
  %i.im = and i64 %i.il, 65535
  %.not242 = icmp eq i64 %i.im, 114
  br i1 %.not242, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.critedge256
  %i.in = getelementptr inbounds nuw i8, ptr %i.hk, i64 28
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = and i32 %i.io, 256
  %.not.i277 = icmp eq i32 %i.ip, 0
  br i1 %.not.i277, label %_ZNK5clang4Decl7hasAttrINS_13DLLExportAttrEEEbv.exit.thread344, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNK5clang4Decl8getAttrsEv(ptr noundef nonnull align 8 dereferenceable(33) %i.hk) #28 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !84 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.it = load i32, ptr %i.is, align 8, !tbaa !765 ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %.idx.i.i278 = shl nuw nsw i64 %i.iu, 3
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %.idx.i.i278 ; 2 uses
  %.not.i.i279 = icmp eq i32 %i.it, 0
  br i1 %.not.i.i279, label %_ZNK5clang4Decl7hasAttrINS_13DLLExportAttrEEEbv.exit.thread344, label %.lr.ph.i.i.i.i.i280

.lr.ph.i.i.i.i.i280:                              ; preds = %bb.z, %bb.aa
  %.sroa.07.1.i.i.i.i281 = phi ptr [ %i.ja, %bb.aa ], [ %i.ir, %bb.z ] ; 3 uses
  %i.iw = load ptr, ptr %.sroa.07.1.i.i.i.i281, align 8, !tbaa !1753
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 36
end_hunk_0
