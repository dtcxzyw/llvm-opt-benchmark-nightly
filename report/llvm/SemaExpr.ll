Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExpr?download=true
inline.NumInlined: 75954
inline.NumDeleted: 20715
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5clang4Sema20BuildBuiltinCallExprENS_14SourceLocationENS_7Builtin2IDEN4llvm15MutableArrayRefIPNS_4ExprEEE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr %i.i, i64 %i.k) #30, !inline_history !1521 ; 3 uses
  store ptr %i.u, ptr %i.n, align 8, !tbaa !1519
  %.not23.i = icmp eq ptr %i.u, null
  br i1 %.not23.i, label %bb.d, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1522 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = add i64 %i.x, 24                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1523
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !856

bb.e:                                             ; preds = %bb.d
  %i.ac = inttoptr i64 %i.y to ptr
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !1522
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.ad, %bb.f ] ; 6 uses
  %i.ae = load i64, ptr %.0.i.i.i.i.i, align 8
  %i.af = and i64 %i.ae, -17592186044416
  %i.ag = or disjoint i64 %i.af, 33553413
  store i64 %i.ag, ptr %.0.i.i.i.i.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ah, align 8
  store ptr %.0.i.i.i.i.i, ptr %i.n, align 8, !tbaa !1519
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store ptr %i.m, ptr %i.ai, align 8, !tbaa !1113
  br label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit: ; preds = %bb.a, %bb.c, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i
  %.0.i = phi ptr [ %.0.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.o, %bb.a ], [ %i.u, %bb.c ]
  %i.aj = ptrtoint ptr %.0.i to i64               ; 2 uses
  store i32 0, ptr %8, align 8, !tbaa !1722
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.ak, align 4, !tbaa !1723
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !858
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.an, align 8, !tbaa !859
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 8, ptr %i.ao, align 4, !tbaa !876
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  store ptr %0, ptr %i.aq, align 8, !tbaa !1724
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i64 %i.aj, ptr %i.ar, align 8, !tbaa !815
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i32 %1, ptr %i.as, align 8, !tbaa !795
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 136
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i64 %i.aj) #30
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.au, i8 0, i64 18, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 163
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 164
  store <4 x i8> <i8 1, i8 1, i8 1, i8 0>, ptr %i.av, align 2, !tbaa !840
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 166
  store i8 0, ptr %i.ay, align 2, !tbaa !1733
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 167
  store i8 0, ptr %i.az, align 1, !tbaa !1835
  call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %8) #30
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1597
  %i.bc = call noundef zeroext i1 @_ZN5clang4Sema10LookupNameERNS_12LookupResultEPNS_5ScopeEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef %i.bb, i1 noundef zeroext true, i1 noundef zeroext false) #30 ; 0 uses
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !858 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bd, i64 8) ]
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bd, align 8
  %i.be = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.bf = inttoptr i64 %i.be to ptr               ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, 127
  switch i32 %i.bi, label %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i [
    i32 54, label %bb.g
    i32 55, label %bb.g
    i32 77, label %bb.g
    i32 79, label %bb.g
  ]

bb.g:                                             ; preds = %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit, %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit, %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit, %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit
  %i.bj = call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bf) #31
  br label %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i

_ZNK5clang12LookupResult12getFoundDeclEv.exit.i:  ; preds = %bb.g, %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit
  %.0.i.i.i = phi ptr [ %i.bf, %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit ], [ %i.bj, %bb.g ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.bk, align 8, !tbaa !788
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  %.sroa.0.0.copyload.i14 = load i64, ptr %i.bl, align 8, !tbaa !815 ; 2 uses
  store i64 %.sroa.0.0.copyload.i14, ptr %6, align 8, !tbaa !815
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %1, ptr %i.bm, align 8, !tbaa !795
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @_ZN5clang18DeclarationNameLocC1ENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i64 %.sroa.0.0.copyload.i14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bo = call noundef ptr @_ZN5clang4Sema16BuildDeclRefExprEPNS_9ValueDeclENS_8QualTypeENS_13ExprValueKindERKNS_19DeclarationNameInfoENS_22NestedNameSpecifierLocEPNS_9NamedDeclENS_14SourceLocationEPKNS_24TemplateArgumentListInfoE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.0.i.i.i, i64 %.sroa.0.0.copyload.i, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull byval(%"class.clang::NestedNameSpecifierLoc") align 8 %5, ptr noundef null, i32 0, ptr noundef null), !inline_history !3513
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = and i64 %i.bp, -2
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = call i64 @_ZN5clang4Sema13BuildCallExprEPNS_5ScopeEPNS_4ExprENS_14SourceLocationEN4llvm15MutableArrayRefIS4_EES5_S4_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef null, ptr noundef %i.br, i32 %1, ptr %3, i64 %4, i32 %1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.bt = load i8, ptr %i.aw, align 1, !tbaa !1726, !range !96, !noundef !97
  %i.bu = trunc nuw i8 %i.bt to i1
  %.pre24 = load i32, ptr %8, align 8             ; 3 uses
  br i1 %i.bu, label %bb.h, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.h:                                             ; preds = %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i
  %i.bv = icmp ne i32 %.pre24, 5
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp ne ptr %i.bx, null
  %or.cond.i.i = select i1 %i.bv, i1 %i.by, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bz = load ptr, ptr %i.aq, align 8, !tbaa !1724 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 216
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = and i64 %i.cd, 18014398509481984
  %.not.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4Sema17CheckLookupAccessERKNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.bz, ptr noundef nonnull align 8 dereferenceable(168) %8) #30
  %.pre = load i32, ptr %8, align 8
  br label %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i

_ZN5clang12LookupResult14diagnoseAccessEv.exit.i: ; preds = %bb.j, %bb.h, %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i
  %i.cf = phi i32 [ %.pre, %bb.j ], [ %.pre24, %_ZNK5clang12LookupResult12getFoundDeclEv.exit.i ], [ %.pre24, %bb.h ]
  %i.cg = load i8, ptr %i.ax, align 4, !tbaa !1727, !range !96, !noundef !97
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = icmp eq i32 %i.cf, 5
  %or.cond = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond, label %bb.k, label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

bb.k:                                             ; preds = %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.cj = load ptr, ptr %i.aq, align 8, !tbaa !1724
  call void @_ZN5clang4Sema23DiagnoseAmbiguousLookupERNS_12LookupResultE(ptr noundef nonnull align 8 dereferenceable(18640) %i.cj, ptr noundef nonnull align 8 dereferenceable(168) %8) #30
  br label %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i

_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i: ; preds = %bb.i, %bb.k, %_ZN5clang12LookupResult14diagnoseAccessEv.exit.i
  %i.ck = load ptr, ptr %i.ap, align 8, !tbaa !1728 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ck, null
  br i1 %.not.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  call void @_ZN5clang12LookupResult11deletePathsEPNS_12CXXBasePathsE(ptr noundef nonnull %i.ck) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5clang12LookupResult17diagnoseAmbiguousEv.exit.i
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !858 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.am
  br i1 %i.cm, label %_ZN5clang12LookupResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.cl) #30
  br label %_ZN5clang12LookupResultD2Ev.exit

_ZN5clang12LookupResultD2Ev.exit:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.cn = load ptr, ptr %7, align 8, !tbaa !843   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5clang12LookupResultD2Ev.exit
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !788
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5clang12LookupResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cs = and i64 %i.bs, -2
  %i.ct = inttoptr i64 %i.cs to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret ptr %i.ct
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema32CheckUnaryExprOrTypeTraitOperandEPNS_4ExprENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::QualType", align 8   ; 5 uses
  %4 = alloca %"class.clang::SourceRange", align 8 ; 5 uses
  %5 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca i8, align 1                         ; 4 uses
  %7 = alloca %"class.clang::Sema::SizelessTypeDiagnoser.3900", align 8 ; 7 uses
  %8 = alloca %"class.clang::Sema::SizelessTypeDiagnoser.3900", align 8 ; 7 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %14 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %15 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %16 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %17 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %18 = alloca %"class.clang::QualType", align 8  ; 4 uses
  %19 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %20 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !788 ; 3 uses
  %21 = icmp eq i32 %2, 0
  switch i32 %2, label %.critedge [
    i32 6, label %bb.b
    i32 4, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.b
    i32 0, label %bb.b
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = tail call i64 @_ZN5clang4Sema23CheckUnevaluatedOperandEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1) #30 ; 2 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %.critedge112, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, -2
  %i.i = inttoptr i64 %i.h to ptr                 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12616
  %i.k = load i32, ptr %i.j, align 8, !tbaa !859
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13768
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1783
  %i.n = icmp ugt i32 %i.k, %i.m
  br i1 %i.n, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i24, ptr %i.i, align 8
  %i.p = and i24 %i.o, 32768
  %.not152 = icmp eq i24 %i.p, 0
  br i1 %.not152, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i115 = load i64, ptr %i.q, align 8, !tbaa !788
  %i.r = and i64 %.sroa.0.0.copyload.i115, -16
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !791
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.u, align 8, !tbaa !788
  %i.v = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load ptr, ptr %i.w, align 16, !tbaa !791
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i8, ptr %i.y, align 16
  %i.aa = icmp eq i8 %i.z, 6
  br i1 %i.aa, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ad = tail call noundef zeroext i1 @_ZNK5clang4Expr14HasSideEffectsERKNS_10ASTContextEb(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(23904) %i.ac, i1 noundef zeroext false) #30
  br i1 %i.ad, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #31
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 %i.af, i32 noundef 7629) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #30
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.g, %bb.f
  %.1103148 = phi ptr [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %1, %bb.a ] ; 19 uses
  %i.ag = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.1103148) #31 ; 3 uses
  %i.ah = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.1103148) #31 ; 3 uses
  switch i32 %2, label %bb.j [
    i32 6, label %bb.h
    i32 8, label %bb.i
  ]

bb.h:                                             ; preds = %.critedge
  %i.ai = call fastcc noundef zeroext i1 @_ZL28CheckVecStepTraitOperandTypeRN5clang4SemaENS_8QualTypeENS_14SourceLocationENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i, i32 %i.ag, i64 %i.ah)
  br label %.critedge112

bb.i:                                             ; preds = %.critedge
  %i.aj = call fastcc noundef zeroext i1 @_ZL35CheckVectorElementsTraitOperandTypeRN5clang4SemaENS_8QualTypeENS_14SourceLocationENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i, i32 %i.ag, i64 %i.ah)
  br label %.critedge112

bb.j:                                             ; preds = %.critedge
  %i.ak = call fastcc noundef zeroext i1 @_ZL30CheckExtensionTraitOperandTypeRN5clang4SemaENS_8QualTypeENS_14SourceLocationENS_11SourceRangeENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i, i32 %i.ag, i64 %i.ah, i32 noundef %2)
  br i1 %i.ak, label %bb.k, label %.critedge112

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 17712
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1476
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 248
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1675
  %i.ar = and i32 %i.aq, -2
  %spec.select.i = icmp eq i32 %i.ar, 58
  br i1 %spec.select.i, label %bb.l, label %.critedge10

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.1103148, i64 8
  %.sroa.0.0.copyload.i116 = load i64, ptr %i.as, align 8, !tbaa !788
  %i.at = and i64 %.sroa.0.0.copyload.i116, -16
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !791
  %i.aw = call noundef zeroext i1 @_ZNK5clang4Type22isWebAssemblyTableTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.av) #30
  br i1 %i.aw, label %bb.m, label %.critedge10

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.1103148) #31
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 %i.ay, i32 noundef 5610) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.az = call noundef ptr @_ZN5clang16getTraitSpellingENS_20UnaryExprOrTypeTraitE(i32 noundef %2) #31
  store ptr %i.az, ptr %i.a, align 8, !tbaa !1501
  %i.ba = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKcvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %.critedge112

.critedge10:                                      ; preds = %bb.k, %bb.l
  %i.bb = add i32 %2, -3
  %or.cond12 = icmp ult i32 %i.bb, 2
  br i1 %or.cond12, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge10
  %i.bc = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.1103148) #31
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.be = getelementptr inbounds nuw i8, ptr %.1103148, i64 8
  %.sroa.0.0.copyload.i118 = load i64, ptr %i.be, align 8, !tbaa !788
  %i.bf = call i64 @_ZNK5clang10ASTContext18getBaseElementTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.bd, i64 %.sroa.0.0.copyload.i118) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.bg = call noundef ptr @_ZN5clang16getTraitSpellingENS_20UnaryExprOrTypeTraitE(i32 noundef %2) #31
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !1501
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.bh = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.1103148) #31
  store i64 %i.bh, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 5104, ptr %i.bi, align 8, !tbaa !1923
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %11, ptr %i.bj, align 8, !tbaa !1924
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.b, ptr %i.bk, align 8, !tbaa !3514
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4Sema21SizelessTypeDiagnoserIJPKcNS_11SourceRangeEEEE, i64 16), ptr %8, align 8, !tbaa !102
  %i.bl = call noundef zeroext i1 @_ZN5clang4Sema19RequireCompleteTypeENS_14SourceLocationENS_8QualTypeENS0_16CompleteTypeKindERNS0_13TypeDiagnoserE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %i.bc, i64 %i.bf, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br i1 %i.bl, label %.critedge112, label %bb.p

bb.o:                                             ; preds = %.critedge10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.bm = call noundef ptr @_ZN5clang16getTraitSpellingENS_20UnaryExprOrTypeTraitE(i32 noundef %2) #31
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !1501
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.bn = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.1103148) #31
  store i64 %i.bn, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 5104, ptr %i.bo, align 8, !tbaa !1923
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %12, ptr %i.bp, align 8, !tbaa !1924
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.c, ptr %i.bq, align 8, !tbaa !3514
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4Sema21SizelessTypeDiagnoserIJPKcNS_11SourceRangeEEEE, i64 16), ptr %7, align 8, !tbaa !102
  %i.br = call noundef zeroext i1 @_ZN5clang4Sema23RequireCompleteExprTypeEPNS_4ExprENS0_16CompleteTypeKindERNS0_13TypeDiagnoserE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %.1103148, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br i1 %i.br, label %.critedge112, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %.1103148, i64 8
  %.sroa.0.0.copyload.i119 = load i64, ptr %i.bs, align 8, !tbaa !788 ; 2 uses
  %i.bt = and i64 %.sroa.0.0.copyload.i119, -16
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !791
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.0.0.copyload.i.i.i.i121 = load i64, ptr %i.bw, align 8, !tbaa !788
  %i.bx = and i64 %.sroa.0.0.copyload.i.i.i.i121, -16
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !791
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i8, ptr %i.ca, align 16            ; 2 uses
  %i.cc = add i8 %i.cb, -23
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.cc, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.1103148) #31
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i32 %i.ce, i32 noundef 5103) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.cf = call noundef ptr @_ZN5clang16getTraitSpellingENS_20UnaryExprOrTypeTraitE(i32 noundef %2) #31
  store ptr %i.cf, ptr %i.d, align 8, !tbaa !1501
  %i.cg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKcvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.ch = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.1103148) #31
  store i64 %i.ch, ptr %14, align 8
  %i.ci = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.cg, ptr noundef nonnull align 4 dereferenceable(8) %14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %.critedge112

bb.r:                                             ; preds = %bb.p
  %i.cj = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.1103148) #31
  %i.ck = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %.1103148) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.copyload.i119, ptr %3, align 8
  store i64 %i.ck, ptr %4, align 8
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 216
  %23 = load ptr, ptr %22, align 8, !tbaa !786, !nonnull !97, !align !787
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 392
  %25 = load i32, ptr %24, align 8, !tbaa !1927
  switch i32 %25, label %26 [
    i32 1, label %bb.s
    i32 4, label %bb.s
    i32 0, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.i
    i32 5, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.i
    i32 6, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.i
    i32 2, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.i
    i32 3, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.i
  ]

26:                                               ; preds = %bb.r
  unreachable

_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.i: ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  %27 = and i8 %i.cb, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %27, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZL32CheckObjCTraitOperandConstraintsRN5clang4SemaENS_8QualTypeENS_14SourceLocationENS_11SourceRangeENS_20UnaryExprOrTypeTraitE.exit, label %bb.s

_ZL32CheckObjCTraitOperandConstraintsRN5clang4SemaENS_8QualTypeENS_14SourceLocationENS_11SourceRangeENS_20UnaryExprOrTypeTraitE.exit: ; preds = %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %28, i32 %i.cj, i32 noundef 5106) #30
  %29 = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %30 = zext i1 %21 to i8
  store i8 %30, ptr %6, align 1, !tbaa !840
  %31 = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %29, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %32 = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %31, ptr noundef nonnull align 4 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.critedge112

bb.s:                                             ; preds = %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.i, %bb.r, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  switch i32 %2, label %.critedge112 [
    i32 2, label %bb.t
    i32 0, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.cl = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.1103148) #31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.0.0.copyload.i122 = load i64, ptr %i.cm, align 8, !tbaa !788 ; 2 uses
  store i64 %.sroa.0.0.copyload.i122, ptr %15, align 8
  %i.cn = and i64 %.sroa.0.0.copyload.i122, -16
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !791
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.0.0.copyload.i.i.i.i124 = load i64, ptr %i.cq, align 8, !tbaa !788
  %i.cr = and i64 %.sroa.0.0.copyload.i.i.i.i124, -16
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load ptr, ptr %i.cs, align 16, !tbaa !791
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.cu, align 16
  %i.cw = add i8 %i.cv, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.cw, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %.critedge114, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.1103148) #31
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.cx, i32 %i.cy, i32 noundef 3585) #30
  %i.cz = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %16, ptr noundef nonnull align 8 dereferenceable(8) %15) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.critedge112

.critedge114:                                     ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %.critedge112

bb.v:                                             ; preds = %bb.s
  %i.da = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.1103148) #31 ; 4 uses
  %i.db = load i16, ptr %i.da, align 8
  %i.dc = and i16 %i.db, 511
  %.not = icmp eq i16 %i.dc, 73
  br i1 %.not, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.dd = load i32, ptr %i.da, align 8            ; 2 uses
  %i.de = and i32 %i.dd, 2097152
  %.not.i = icmp eq i32 %i.de, 0
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dg = lshr i32 %i.dd, 19
  %.lobit.i.i.i.i.i = and i32 %i.dg, 1
  %i.dh = zext nneg i32 %.lobit.i.i.i.i.i to i64
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.in.i = select i1 %.not.i, ptr %i.dj, ptr %i.di
  %i.dk = load ptr, ptr %.in.i, align 8, !tbaa !100 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = and i32 %i.dm, 127
  %i.do = icmp ne i32 %i.dn, 44
  %.not109154 = icmp eq ptr %i.dk, null
  %.not109 = or i1 %.not109154, %i.do
  br i1 %.not109, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.dp = call i64 @_ZNK5clang11ParmVarDecl15getOriginalTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %i.dk) #30 ; 2 uses
  store i64 %i.dp, ptr %17, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %.sroa.0.0.copyload.i126 = load i64, ptr %i.dq, align 8, !tbaa !788 ; 2 uses
  store i64 %.sroa.0.0.copyload.i126, ptr %18, align 8
  %i.dr = and i64 %.sroa.0.0.copyload.i126, -16
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !791
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.0.0.copyload.i.i.i.i128 = load i64, ptr %i.du, align 8, !tbaa !788
  %i.dv = and i64 %.sroa.0.0.copyload.i.i.i.i128, -16
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = load ptr, ptr %i.dw, align 16, !tbaa !791
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i8, ptr %i.dy, align 16
  %i.ea = icmp eq i8 %i.dz, 40
  br i1 %i.ea, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.eb = and i64 %i.dp, -16
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = load ptr, ptr %i.ec, align 16, !tbaa !791
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.0.0.copyload.i.i.i.i130 = load i64, ptr %i.ee, align 8, !tbaa !788
  %i.ef = and i64 %.sroa.0.0.copyload.i.i.i.i130, -16
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load ptr, ptr %i.eg, align 16, !tbaa !791
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i8, ptr %i.ei, align 16
  %i.ek = add i8 %i.ej, -2
  %switch.i.i.i.i.i.i.i.i.i131 = icmp ult i8 %i.ek, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i131, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.em = call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.1103148) #31
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.el, i32 %i.em, i32 noundef 7632) #30
  %i.en = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %i.eo = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.en, ptr noundef nonnull align 8 dereferenceable(8) %17) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %.sroa.0.0.copyload.i132 = load i32, ptr %i.ep, align 8, !tbaa !795
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %i.el, i32 %.sroa.0.0.copyload.i132, i32 noundef 108) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %20) #30
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %bb.aa, %bb.v
  %i.eq = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.1103148) #31 ; 5 uses
  %i.er = load i16, ptr %i.eq, align 8
  %i.es = and i16 %i.er, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.es, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.ac, label %.critedge112

bb.ac:                                            ; preds = %bb.ab
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i134 = load i32, ptr %i.et, align 4, !tbaa !795
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i135 = load i64, ptr %i.eu, align 8, !tbaa !788
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1587
  call fastcc void @_ZL24warnOnSizeofOnArrayDecayRN5clang4SemaENS_14SourceLocationENS_8QualTypeEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i134, i64 %.sroa.0.0.copyload.i135, ptr noundef %i.ew)
  %.sroa.0.0.copyload.i136 = load i32, ptr %i.et, align 4, !tbaa !795
  %.sroa.0.0.copyload.i137 = load i64, ptr %i.eu, align 8, !tbaa !788
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1587
  call fastcc void @_ZL24warnOnSizeofOnArrayDecayRN5clang4SemaENS_14SourceLocationENS_8QualTypeEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %.sroa.0.0.copyload.i136, i64 %.sroa.0.0.copyload.i137, ptr noundef %i.ey)
  br label %.critedge112

.critedge112:                                     ; preds = %bb.b, %.critedge114, %_ZL32CheckObjCTraitOperandConstraintsRN5clang4SemaENS_8QualTypeENS_14SourceLocationENS_11SourceRangeENS_20UnaryExprOrTypeTraitE.exit, %bb.u, %bb.s, %bb.ac, %bb.ab, %bb.o, %bb.n, %bb.j, %bb.q, %bb.m, %bb.i, %bb.h
  %.3 = phi i1 [ %i.ai, %bb.h ], [ %i.aj, %bb.i ], [ true, %bb.m ], [ false, %bb.j ], [ true, %bb.q ], [ true, %bb.o ], [ true, %_ZL32CheckObjCTraitOperandConstraintsRN5clang4SemaENS_8QualTypeENS_14SourceLocationENS_11SourceRangeENS_20UnaryExprOrTypeTraitE.exit ], [ true, %bb.u ], [ true, %bb.n ], [ false, %bb.s ], [ false, %.critedge114 ], [ false, %bb.ab ], [ false, %bb.ac ], [ true, %bb.b ]
  ret i1 %.3
}

declare i64 @_ZN5clang4Sema23CheckUnevaluatedOperandEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL28CheckVecStepTraitOperandTypeRN5clang4SemaENS_8QualTypeENS_14SourceLocationENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %1, i32 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.clang::QualType", align 8   ; 2 uses
  %5 = alloca %"class.clang::SourceRange", align 8 ; 2 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  store i64 %1, ptr %4, align 8
  store i64 %3, ptr %5, align 8
  %i.a = and i64 %1, -16
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !791
  %i.d = tail call noundef zeroext i1 @_ZNK5clang4Type16isArithmeticTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #30
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 16, !tbaa !791
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !788
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !791 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 16              ; 2 uses
  %i.l = icmp eq i8 %i.k, 13
  %.not7.i.i = icmp ne ptr %i.i, null
  %.not.not.not.i.i = and i1 %.not7.i.i, %i.l
  br i1 %.not.not.not.i.i, label %_ZNK5clang4Type10isVoidTypeEv.exit, label %bb.c

_ZNK5clang4Type10isVoidTypeEv.exit:               ; preds = %bb.b
  %i.m = load i32, ptr %i.j, align 16
  %i.n = and i32 %i.m, 536346624
  %i.o = icmp eq i32 %i.n, 236978176
  br i1 %i.o, label %bb.d, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.p = and i8 %i.k, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.d, label %.thread

.thread:                                          ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 %2, i32 noundef 5573) #30
  %i.r = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.s = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.r, ptr noundef nonnull align 4 dereferenceable(8) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK5clang4Type10isVoidTypeEv.exit, %bb.c, %.thread
  %.0 = phi i1 [ true, %.thread ], [ false, %bb.c ], [ false, %_ZNK5clang4Type10isVoidTypeEv.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL35CheckVectorElementsTraitOperandTypeRN5clang4SemaENS_8QualTypeENS_14SourceLocationENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %1, i32 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.clang::QualType", align 8   ; 2 uses
  %5 = alloca %"class.clang::SourceRange", align 8 ; 2 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %7 = alloca %"class.llvm::StringMap.2329", align 8 ; 10 uses
  store i64 %1, ptr %4, align 8
  store i64 %3, ptr %5, align 8
  %i.a = and i64 %1, -16
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !791 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !788
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !791
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 16
  %i.j = and i8 %i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZNK5clang4Type20isSizelessVectorTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #30
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 %2, i32 noundef 3384) #30
  %i.m = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIA1_cEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 1 dereferenceable(1) @.str.19)
  %i.n = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsIA25_cEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.m, ptr noundef nonnull align 1 dereferenceable(25) @.str.42)
  %i.o = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.p = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load i8, ptr %i.q, align 8, !tbaa !797, !range !96, !noundef !97
  %i.s = trunc nuw i8 %i.r to i1
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.k

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !792  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i16, ptr %i.v, align 8
  %i.x = and i16 %i.w, 127
  %i.y = add nsw i16 %i.x, -41
  %i.z = icmp ult i16 %i.y, -6
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -72 ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.b, align 16, !tbaa !791
  %i.ac = tail call noundef zeroext i1 @_ZNK5clang4Type24isSVESizelessBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ab) #30
  br i1 %i.ac, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 16, i1 false)
  store i32 16, ptr %i.ad, align 8, !tbaa !3515
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1116, !nonnull !97, !align !787
  call void @_ZNK5clang10ASTContext21getFunctionFeatureMapERN4llvm9StringMapIbNS1_15MallocAllocatorEEEPKNS_12FunctionDeclE(ptr noundef nonnull align 8 dereferenceable(23904) %i.af, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull %i.aa) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1928
  %i.ai = call noundef zeroext i1 @_ZN5clang7SemaARM19checkSVETypeSupportENS_8QualTypeENS_14SourceLocationEPKNS_12FunctionDeclERKN4llvm9StringMapIbNS6_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 %1, i32 %2, ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(20) %7) #30
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !1602
  %i.al = icmp eq i32 %i.ak, 0
  %.pre13.i = load ptr, ptr %7, align 8, !tbaa !1599 ; 4 uses
  br i1 %i.al, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !3516 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %.idx.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %bb.j, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.012.i = phi ptr [ %i.at, %bb.i ], [ %.pre13.i, %bb.g ] ; 2 uses
  %i.aq = load ptr, ptr %.012.i, align 8, !tbaa !1518 ; 3 uses
  %.not10.i = icmp eq ptr %i.aq, null
  br i1 %.not10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1115
  %i.as = add i64 %i.ar, 17
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 noundef %i.as, i64 noundef 8) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.at, %i.ap
  br i1 %.not.i, label %.loopexit.loopexit.i, label %.lr.ph.i

.loopexit.loopexit.i:                             ; preds = %bb.i
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !1599
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.loopexit.i, %bb.g, %bb.f
  %i.au = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %.pre13.i, %bb.g ], [ %.pre13.i, %bb.f ]
  call void @free(ptr noundef %i.au) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e, %bb.d, %bb.c
  %.1 = phi i1 [ %i.s, %bb.c ], [ %i.ai, %bb.j ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL30CheckExtensionTraitOperandTypeRN5clang4SemaENS_8QualTypeENS_14SourceLocationENS_11SourceRangeENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %1, i32 %2, i64 %3, i32 noundef range(i32 7, 6) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.clang::SourceRange", align 8 ; 3 uses
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store i64 %3, ptr %5, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !786, !nonnull !97, !align !787 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4096
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %_ZNK5clang4Type10isVoidTypeEv.exit.thread [
    i32 4, label %bb.c
    i32 3, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.g = and i64 %1, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !791
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !788
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !791
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load i8, ptr %i.n, align 16              ; 2 uses
  %i.p = add i8 %i.o, -23
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.p, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 %2, i32 noundef 5804) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.r = call noundef ptr @_ZN5clang16getTraitSpellingENS_20UnaryExprOrTypeTraitE(i32 noundef %4) #31
  store ptr %i.r, ptr %i.a, align 8, !tbaa !1501
  %i.s = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKcvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.t = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.s, ptr noundef nonnull align 4 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i8 %i.o, 13
  br i1 %i.u, label %_ZNK5clang4Type10isVoidTypeEv.exit, label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

_ZNK5clang4Type10isVoidTypeEv.exit:               ; preds = %bb.e
  %i.v = load i32, ptr %i.n, align 16
  %i.w = and i32 %i.v, 536346624
  %i.x = icmp eq i32 %i.w, 236978176
  br i1 %i.x, label %bb.f, label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

bb.f:                                             ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 4611686018427387904
  %.not16 = icmp eq i64 %i.aa, 0
  %i.ab = select i1 %.not16, i32 5805, i32 4814
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 %2, i32 noundef %i.ab) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ad = call noundef ptr @_ZN5clang16getTraitSpellingENS_20UnaryExprOrTypeTraitE(i32 noundef %4) #31
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !1501
  %i.ae = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKcvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.af = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNK5clang4Type10isVoidTypeEv.exit.thread

_ZNK5clang4Type10isVoidTypeEv.exit.thread:        ; preds = %bb.e, %_ZNK5clang4Type10isVoidTypeEv.exit, %bb.b, %bb.a, %bb.f, %bb.d
  %.0 = phi i1 [ true, %bb.a ], [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.b ], [ true, %_ZNK5clang4Type10isVoidTypeEv.exit ], [ true, %bb.e ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK5clang4Type22isWebAssemblyTableTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIPKcvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::CanonicalDeclPtr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !797, !range !96, !noundef !97
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1501
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !801  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPKcvEERKS1_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !802
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !801
  br label %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPKcvEERKS1_OT_.exit

_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPKcvEERKS1_OT_.exit: ; preds = %bb.b, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.j, align 8, !tbaa !814
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i8 1, ptr %i.o, align 1, !tbaa !788
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !801  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i8, ptr %i.p, align 8, !tbaa !814   ; 2 uses
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.p, align 8, !tbaa !814
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  store i64 %i.k, ptr %i.u, align 8, !tbaa !815
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.x = load i8, ptr %i.w, align 4, !tbaa !817, !range !96, !noundef !97
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilder22getDeviceDeferredDiagsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !826 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #30, !inline_history !1
  br label %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit

_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit: ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ]
  store ptr %i.ag, ptr %2, align 8, !tbaa !828
  %i.ah = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang16CanonicalDeclPtrIKNS2_12FunctionDeclEEESt6vectorISt4pairINS2_14SourceLocationENS2_17PartialDiagnosticEESaISB_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SD_EEEES6_SD_SF_SI_E24lookupOrInsertIntoBucketIS6_JEEES8_IPSI_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !795
  %i.ak = zext i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !831
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !1501
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !801 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17PartialDiagnosticlsIPKcvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !802
  %i.as = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ar) ; 2 uses
  store ptr %i.as, ptr %i.an, align 8, !tbaa !801
  br label %_ZNK5clang17PartialDiagnosticlsIPKcvEERKS0_OT_.exit

_ZNK5clang17PartialDiagnosticlsIPKcvEERKS0_OT_.exit: ; preds = %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.ap, %_ZN5clang16CanonicalDeclPtrIKNS_12FunctionDeclEEC2EPS2_.exit ] ; 2 uses
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.aw = load i8, ptr %i.at, align 8, !tbaa !814
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  store i8 1, ptr %i.ay, align 1, !tbaa !788
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !801 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i8, ptr %i.az, align 8, !tbaa !814 ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.az, align 8, !tbaa !814
  %i.bd = zext i8 %i.bb to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  store i64 %i.au, ptr %i.be, align 8, !tbaa !815
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZNK5clang17PartialDiagnosticlsIPKcvEERKS0_OT_.exit, %_ZNK5clang8SemaBase20ImmediateDiagBuilderlsIPKcvEERKS1_OT_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang16getTraitSpellingENS_20UnaryExprOrTypeTraitE(i32 noundef) local_unnamed_addr #6

declare i64 @_ZNK5clang10ASTContext18getBaseElementTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL32CheckObjCTraitOperandConstraintsRN5clang4SemaENS_8QualTypeENS_14SourceLocationENS_11SourceRangeENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %1, i32 %2, i64 %3, i32 noundef range(i32 7, 6) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.clang::QualType", align 8   ; 2 uses
  %6 = alloca %"class.clang::SourceRange", align 8 ; 2 uses
  %7 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store i64 %1, ptr %5, align 8
  store i64 %3, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1927
  switch i32 %i.e, label %bb.b [
    i32 1, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.thread
    i32 4, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.thread
    i32 0, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit
    i32 5, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit
    i32 6, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit
    i32 2, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit
    i32 3, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = and i64 %1, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !791
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !788
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !791
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 16
  %i.o = and i8 %i.n, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.thread

bb.c:                                             ; preds = %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 %2, i32 noundef 5106) #30
  %i.q = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.r = icmp eq i32 %4, 0
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr %i.a, align 1, !tbaa !840
  %i.t = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIbvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.u = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_11SourceRangeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.thread

_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit.thread: ; preds = %bb.a, %bb.a, %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %_ZNK5clang11ObjCRuntime19allowsSizeofAlignofEv.exit ], [ false, %bb.a ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare i64 @_ZNK5clang11ParmVarDecl15getOriginalTypeEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL24warnOnSizeofOnArrayDecayRN5clang4SemaENS_14SourceLocationENS_8QualTypeEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i64 %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %6 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %7 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !788
  %.not13 = icmp eq i64 %2, %.sroa.0.0.copyload.i
  br i1 %.not13, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %3, align 8
  %i.c = and i16 %i.b, 511
  %.not = icmp eq i16 %i.c, 81
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %3, align 8
  %i.e = and i32 %i.d, 66584576
  %.not9 = icmp eq i32 %i.e, 5767168
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 %1, i32 noundef 7631) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.g = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #31
  store i64 %i.g, ptr %5, align 8
  %i.h = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i10 = load i64, ptr %i.a, align 8, !tbaa !788
  store i64 %.sroa.0.0.copyload.i10, ptr %6, align 8
  %i.i = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1930
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.l, align 8, !tbaa !788
  store i64 %.sroa.0.0.copyload.i11, ptr %7, align 8
  %i.m = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema16CheckVecStepExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #31 ; 2 uses
  %i.b = load i24, ptr %i.a, align 8
  %i.c = and i24 %i.b, 65536
  %.not = icmp eq i24 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5clang4Sema32CheckUnaryExprOrTypeTraitOperandEPNS_4ExprENS_20UnaryExprOrTypeTraitE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.a, i32 noundef 6)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang4Sema32CheckUnaryExprOrTypeTraitOperandENS_8QualTypeENS_14SourceLocationENS_11SourceRangeENS_20UnaryExprOrTypeTraitEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %1, i32 %2, i64 %3, i32 noundef %4, ptr noundef byval(%"class.llvm::StringRef") align 8 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.clang::Sema::SizelessTypeDiagnoser.3907", align 8 ; 7 uses
  %7 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %8 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %9 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %10 = alloca %"class.clang::QualType", align 8  ; 5 uses
  %11 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %12 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 2 uses
  %13 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %14 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %15 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  store i64 %1, ptr %10, align 8
  store i64 %3, ptr %11, align 8
  %i.b = and i64 %1, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !791 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %i.f = load i16, ptr %i.e, align 1
  %i.g = and i16 %i.f, 4
  %.not118 = icmp eq i16 %i.g, 0
  br i1 %.not118, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i8, ptr %i.h, align 16
  %i.j = and i8 %i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i = icmp eq i8 %i.j, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread107, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !788
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !791
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i8, ptr %i.o, align 16
  %i.q = and i8 %i.p, -2
  %spec.select.i.i.i.i.i.i.i.i5.i = icmp eq i8 %i.q, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit: ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.d) #30 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread107

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread107: ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit
  %.1.i110 = phi ptr [ %i.r, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit ], [ %i.d, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i110, i64 16
  %i.t = load i24, ptr %i.s, align 16
  %i.u = and i24 %i.t, 1048576
  %.not4.i = icmp eq i24 %i.u, 0
  br i1 %.not4.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread107, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i
  %.05.i = phi ptr [ %.1.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %.1.i110, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread107 ]
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i, i64 32
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.v, align 8
  %i.w = and i64 %.0.copyload.i.i.i.i.i.i, -16
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !791 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i8, ptr %i.z, align 16
  %i.ab = and i8 %i.aa, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.ab, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ac = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.y) #30
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i

end_hunk_0
begin_hunk_1_@_ZN5clang4Sema31CreateBuiltinArraySubscriptExprEPNS_4ExprENS_14SourceLocationES2_S3_:bb.a
  %i.f = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #31 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !788
  %i.h = and i64 %.sroa.0.0.copyload.i, -16
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !791
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !788
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 16, !tbaa !791
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i8, ptr %i.o, align 16
  %i.q = add i8 %i.p, -2
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.q, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.r = load i24, ptr %i.f, align 8
  %i.s = and i24 %i.r, 1536
  %i.t = icmp eq i24 %i.s, 512
  %spec.select240 = select i1 %i.t, i32 1, i32 2
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.1174 = phi i32 [ %spec.select240, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.u = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #31 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.v, align 8, !tbaa !788
  %i.w = and i64 %.sroa.0.0.copyload.i.1, -16
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !791
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0.0.copyload.i.i.i.i.1 = load i64, ptr %i.z, align 8, !tbaa !788
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i.i.1, -16
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !791
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i8, ptr %i.ad, align 16
  %i.af = add i8 %i.ae, -2
  %switch.i.i.i.i.i.i.i.i.i.1 = icmp ult i8 %i.af, 5
  br i1 %switch.i.i.i.i.i.i.i.i.i.1, label %bb.d, label %.critedge.1

bb.d:                                             ; preds = %.critedge
  %i.ag = load i24, ptr %i.u, align 8
  %i.ah = and i24 %i.ag, 1536
  %i.ai = icmp eq i24 %i.ah, 512
  %spec.select240.1 = select i1 %i.ai, i32 %.1174, i32 2
  br label %.critedge.1

.critedge.1:                                      ; preds = %.critedge, %bb.d, %bb.a
  %.2175 = phi i32 [ 1, %bb.a ], [ %spec.select240.1, %bb.d ], [ %.1174, %.critedge ] ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i250 = load i64, ptr %i.aj, align 8, !tbaa !788
  %i.ak = and i64 %.sroa.0.0.copyload.i250, -16
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !791 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !788
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !791
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i8, ptr %i.ar, align 16
  %i.at = and i8 %i.as, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.at, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit.thread, label %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit

_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit: ; preds = %.critedge.1
  %i.au = tail call noundef zeroext i1 @_ZNK5clang4Type19isSveVLSBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.am) #30
  br i1 %i.au, label %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit
  %i.av = tail call i64 @_ZN5clang4Sema30DefaultFunctionArrayConversionEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %1, i1 noundef zeroext true), !inline_history !1667 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = and i64 %i.av, -2
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = tail call i64 @_ZN5clang4Sema23DefaultLvalueConversionEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.ay), !inline_history !1667 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = and i64 %i.az, -2
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit.thread

_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit.thread: ; preds = %.critedge.1, %bb.g, %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit
  %i.bd = phi ptr [ %i.bc, %bb.g ], [ %1, %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit ], [ %1, %.critedge.1 ] ; 24 uses
  %i.be = tail call i64 @_ZN5clang4Sema30DefaultFunctionArrayConversionEPNS_4ExprEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %3, i1 noundef zeroext true), !inline_history !1667 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit.thread
  %i.bg = and i64 %i.be, -2
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = tail call i64 @_ZN5clang4Sema23DefaultLvalueConversionEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.bh), !inline_history !1667 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %.thread, label %_ZN5clang4Sema36DefaultFunctionArrayLvalueConversionEPNS_4ExprEb.exit254

_ZN5clang4Sema36DefaultFunctionArrayLvalueConversionEPNS_4ExprEb.exit254: ; preds = %bb.h
  %i.bk = and i64 %i.bi, -2
  %i.bl = inttoptr i64 %i.bk to ptr               ; 24 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i255 = load i64, ptr %i.bm, align 8, !tbaa !788 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.0.0.copyload.i256 = load i64, ptr %i.bn, align 8, !tbaa !788 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i64 0, ptr %6, align 8
  %i.bo = and i64 %.sroa.0.0.copyload.i255, -16
  %i.bp = inttoptr i64 %i.bo to ptr               ; 5 uses
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !791 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 17
  %i.bs = load i16, ptr %i.br, align 1
  %i.bt = and i16 %i.bs, 4
  %.not432 = icmp eq i16 %i.bt, 0
  br i1 %.not432, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5clang4Sema36DefaultFunctionArrayLvalueConversionEPNS_4ExprEb.exit254
  %i.bu = and i64 %.sroa.0.0.copyload.i256, -16
  %i.bv = inttoptr i64 %i.bu to ptr               ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !791
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 17
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = and i16 %i.by, 4
  %.not433 = icmp eq i16 %i.bz, 0
  br i1 %.not433, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5clang4Sema36DefaultFunctionArrayLvalueConversionEPNS_4ExprEb.exit254
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !1514
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.cc = tail call fastcc i64 @_ZL30getDependentArraySubscriptTypePN5clang4ExprES1_RKNS_10ASTContextE(i64 %.sroa.0.0.copyload.i255, i64 %.sroa.0.0.copyload.i256, ptr noundef nonnull align 8 dereferenceable(23904) %i.cb)
  br label %.thread413.sink.split

bb.k:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ce = load i8, ptr %i.cd, align 16            ; 2 uses
  %.not.i = icmp eq i8 %i.ce, 40
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread399, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.0.0.copyload.i.i.i.i260 = load i64, ptr %i.cf, align 8, !tbaa !788
  %i.cg = and i64 %.sroa.0.0.copyload.i.i.i.i260, -16
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !791
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i8, ptr %i.cj, align 16
  %i.cl = icmp eq i8 %i.ck, 40
  br i1 %i.cl, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit: ; preds = %bb.l
  %i.cm = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bq) #30 ; 2 uses
  %.not228 = icmp eq ptr %i.cm, null
  br i1 %.not228, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread399

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit
  %.pre = load ptr, ptr %i.bp, align 16, !tbaa !791 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre466 = load i8, ptr %.phi.trans.insert, align 16
  br label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread399: ; preds = %bb.k, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit
  %.1.i402 = phi ptr [ %i.cm, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit ], [ %i.bq, %bb.k ]
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !1514
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.i402, i64 32
  %.sroa.0.0.copyload.i261 = load i64, ptr %i.cn, align 16, !tbaa !788
  br label %.thread413.sink.split

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge, %bb.l
  %i.co = phi i8 [ %.pre466, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge ], [ %i.ce, %bb.l ]
  %i.cp = phi ptr [ %.pre, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread_crit_edge ], [ %i.bq, %bb.l ] ; 3 uses
  %.not.i263 = icmp eq i8 %i.co, 31
  br i1 %.not.i263, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread405, label %bb.m

bb.m:                                             ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.sroa.0.0.copyload.i.i.i.i264 = load i64, ptr %i.cq, align 8, !tbaa !788
  %i.cr = and i64 %.sroa.0.0.copyload.i.i.i.i264, -16
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load ptr, ptr %i.cs, align 16, !tbaa !791
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.cu, align 16
  %i.cw = icmp eq i8 %i.cv, 31
  br i1 %i.cw, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit: ; preds = %bb.m
  %i.cx = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cp) #30 ; 2 uses
  %.not229 = icmp eq ptr %i.cx, null
  br i1 %.not229, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread405

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread405: ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit
  %.1.i265408 = phi ptr [ %i.cx, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit ], [ %i.cp, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.thread ]
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !1514
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !786, !nonnull !97, !align !787 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 392
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !1927
  switch i32 %i.da, label %bb.n [
    i32 1, label %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit
    i32 4, label %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit
    i32 0, label %.critedge243.critedge
    i32 2, label %.critedge243.critedge
    i32 3, label %.critedge243.critedge
    i32 5, label %.critedge243.critedge
    i32 6, label %.critedge243.critedge
  ]

bb.n:                                             ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread405
  unreachable

_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit: ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread405, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread405
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = and i64 %i.dc, 2
  %.not.i266 = icmp eq i64 %i.dd, 0
  br i1 %.not.i266, label %bb.o, label %.critedge243.critedge

.critedge243.critedge:                            ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread405, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread405, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread405, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread405, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread405, %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1504
  %i.dg = tail call i64 @_ZN5clang8SemaObjC28BuildObjCSubscriptExpressionENS_14SourceLocationEPNS_4ExprES3_PNS_14ObjCMethodDeclES5_(ptr noundef nonnull align 8 dereferenceable(328) %i.df, i32 %4, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bl, ptr noundef null, ptr noundef null) #30
  br label %.critedge243

bb.o:                                             ; preds = %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.i265408, i64 32
  %.sroa.0.0.copyload.i267 = load i64, ptr %i.dh, align 16, !tbaa !788
  br label %.thread413.sink.split

_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread: ; preds = %bb.m, %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit
  %i.di = load ptr, ptr %i.bv, align 16, !tbaa !791
  %i.dj = tail call noundef ptr @_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.di) ; 2 uses
  %.not230 = icmp eq ptr %i.dj, null
  br i1 %.not230, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !1514
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %.sroa.0.0.copyload.i269 = load i64, ptr %i.dk, align 16, !tbaa !788
  br label %.thread413.sink.split

bb.q:                                             ; preds = %_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit.thread
  %i.dl = load ptr, ptr %i.bv, align 16, !tbaa !791
  %i.dm = tail call noundef ptr @_ZNK5clang4Type5getAsINS_21ObjCObjectPointerTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.dl) ; 2 uses
  %.not231 = icmp eq ptr %i.dm, null
  br i1 %.not231, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !1514
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %.sroa.0.0.copyload.i271 = load i64, ptr %i.dn, align 16, !tbaa !788
  store i64 %.sroa.0.0.copyload.i271, ptr %6, align 8, !tbaa !788
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !786, !nonnull !97, !align !787 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 392
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !1927
  switch i32 %i.dq, label %bb.s [
    i32 1, label %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit273
    i32 4, label %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit273
    i32 0, label %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit273.thread
    i32 2, label %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit273.thread
    i32 3, label %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit273.thread
    i32 5, label %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit273.thread
    i32 6, label %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit273.thread
  ]

bb.s:                                             ; preds = %bb.r
  unreachable

_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit273: ; preds = %bb.r, %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 104
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = and i64 %i.ds, 2
  %.not.i272 = icmp eq i64 %i.dt, 0
  br i1 %.not.i272, label %.thread413, label %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit273.thread

_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit273.thread: ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %_ZNK5clang11LangOptions28isSubscriptPointerArithmeticEv.exit273
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.du, i32 %2, i32 noundef 5160) #30
  %i.dv = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.dw = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #31
  store i64 %i.dw, ptr %8, align 8
  %i.dx = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.dv, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.critedge243

bb.t:                                             ; preds = %bb.q
  %i.dy = load ptr, ptr %i.bp, align 16, !tbaa !791 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i275 = load i64, ptr %i.dz, align 8, !tbaa !788
  %i.ea = and i64 %.sroa.0.0.copyload.i.i.i.i.i275, -16
  %i.eb = inttoptr i64 %i.ea to ptr               ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 16, !tbaa !791
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load i8, ptr %i.ed, align 16
  %i.ef = and i8 %i.ee, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i276 = icmp eq i8 %i.ef, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i276, label %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277.thread, label %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277

_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277: ; preds = %bb.t
  %i.eg = tail call noundef zeroext i1 @_ZNK5clang4Type19isSveVLSBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.dy) #30
  %.pre467 = load ptr, ptr %i.bp, align 16, !tbaa !791 ; 2 uses
  %.phi.trans.insert468 = getelementptr inbounds nuw i8, ptr %.pre467, i64 8
  %.sroa.0.0.copyload.i.i.i.i279.pre = load i64, ptr %.phi.trans.insert468, align 8, !tbaa !788
  %.pre472 = and i64 %.sroa.0.0.copyload.i.i.i.i279.pre, -16
  %.pre473 = inttoptr i64 %.pre472 to ptr         ; 2 uses
  br i1 %i.eg, label %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277.thread, label %bb.ag

_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277.thread: ; preds = %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277, %bb.t
  %.pre-phi474 = phi ptr [ %i.eb, %bb.t ], [ %.pre473, %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277 ]
  %i.eh = phi ptr [ %i.dy, %bb.t ], [ %.pre467, %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277 ]
  %i.ei = load ptr, ptr %.pre-phi474, align 8, !tbaa !791 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i8, ptr %i.ej, align 16
  %i.el = icmp eq i8 %i.ek, 13
  br i1 %i.el, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277.thread
  %i.em = tail call noundef zeroext i1 @_ZNK5clang4Type19isSveVLSBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ei) #30
  %.pre470 = load ptr, ptr %i.bp, align 16, !tbaa !791 ; 2 uses
  br i1 %i.em, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.en = getelementptr inbounds nuw i8, ptr %.pre470, i64 8
  %.sroa.0.0.copyload.i.i.i.i283 = load i64, ptr %i.en, align 8, !tbaa !788
  %i.eo = and i64 %.sroa.0.0.copyload.i.i.i.i283, -16
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load ptr, ptr %i.ep, align 16, !tbaa !791 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load i32, ptr %i.er, align 16
  %i.et = and i32 %i.es, 536346624
  %i.eu = icmp eq i32 %i.et, 52428800
  br i1 %i.eu, label %.thread409, label %bb.w

.thread409:                                       ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ev, i32 %2, i32 noundef 5161) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.ew = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #31
  store i64 %i.ew, ptr %10, align 8
  %i.ex = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.ey = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #31
  store i64 %i.ey, ptr %11, align 8
  %i.ez = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.ex, ptr noundef nonnull align 4 dereferenceable(8) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %.critedge243

bb.w:                                             ; preds = %bb.v
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.fc = tail call i64 @_ZNK5clang4Type13getSveEltTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(23904) %i.fb) #30
  br label %bb.y

bb.x:                                             ; preds = %bb.u, %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277.thread
  %i.fd = phi ptr [ %.pre470, %bb.u ], [ %i.eh, %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277.thread ]
  %i.fe = tail call noundef ptr @_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.fd)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %.sroa.0.0.copyload.i286 = load i64, ptr %i.ff, align 16, !tbaa !788
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.050.0.copyload = phi i64 [ %.sroa.0.0.copyload.i286, %bb.x ], [ %i.fc, %bb.w ] ; 4 uses
  store i64 %.sroa.050.0.copyload, ptr %6, align 8, !tbaa !788
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !1514
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = and i64 %i.fh, 8192
  %.not232 = icmp eq i64 %i.fi, 0
  br i1 %.not232, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fj = load i24, ptr %i.bd, align 8
  %i.fk = and i24 %i.fj, 1536
  %i.fl = icmp eq i24 %i.fk, 0
  br i1 %i.fl, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.fm = tail call i64 @_ZN5clang4Sema34TemporaryMaterializationConversionEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull %i.bd) #30 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %.critedge243, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fo = and i64 %i.fm, -2
  %i.fp = inttoptr i64 %i.fo to ptr
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
  %.3 = phi ptr [ %i.fp, %bb.ab ], [ %i.bd, %bb.z ], [ %i.bd, %bb.y ] ; 3 uses
  %i.fq = load i24, ptr %.3, align 8
  %i.fr = lshr i24 %i.fq, 9
  %i.fs = and i24 %i.fr, 3                        ; 2 uses
  %i.ft = zext nneg i24 %i.fs to i32              ; 2 uses
  %.not233 = icmp eq i24 %i.fs, 0
  %spec.select241 = select i1 %.not233, i32 0, i32 2 ; 2 uses
  %.sroa.0.0.copyload.i287 = load i64, ptr %i.bm, align 8, !tbaa !788 ; 2 uses
  %i.fu = and i64 %.sroa.0.0.copyload.i287, -16
  %i.fv = inttoptr i64 %i.fu to ptr
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.fw, align 8 ; 3 uses
  %i.fx = and i64 %.0.copyload.i.i.i.i.i.i, 8
  %.not.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i, label %_ZNK5clang8QualType13getQualifiersEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fy = and i64 %.0.copyload.i.i.i.i.i.i, -16
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ga, align 8, !tbaa !815
  br label %_ZNK5clang8QualType13getQualifiersEv.exit

_ZNK5clang8QualType13getQualifiersEv.exit:        ; preds = %bb.ac, %bb.ad
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.ad ], [ 0, %bb.ac ]
  %i.gb = or i64 %.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i287
  %i.gc = and i64 %i.gb, 7
  %i.gd = or i64 %.sroa.0.0.i.i, %i.gc
  %i.ge = and i64 %.sroa.050.0.copyload, -16
  %i.gf = inttoptr i64 %i.ge to ptr
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.0.copyload.i.i.i.i.i.i289 = load i64, ptr %i.gg, align 8 ; 3 uses
  %i.gh = and i64 %.0.copyload.i.i.i.i.i.i289, 8
  %.not.i.i290 = icmp eq i64 %i.gh, 0
  br i1 %.not.i.i290, label %_ZNK5clang8QualType13getQualifiersEv.exit293, label %bb.ae

bb.ae:                                            ; preds = %_ZNK5clang8QualType13getQualifiersEv.exit
  %i.gi = and i64 %.0.copyload.i.i.i.i.i.i289, -16
  %i.gj = inttoptr i64 %i.gi to ptr
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %.sroa.0.0.copyload.i.i.i291 = load i64, ptr %i.gk, align 8, !tbaa !815
  br label %_ZNK5clang8QualType13getQualifiersEv.exit293

_ZNK5clang8QualType13getQualifiersEv.exit293:     ; preds = %_ZNK5clang8QualType13getQualifiersEv.exit, %bb.ae
  %.sroa.0.0.i.i292 = phi i64 [ %.sroa.0.0.copyload.i.i.i291, %bb.ae ], [ 0, %_ZNK5clang8QualType13getQualifiersEv.exit ]
  %i.gl = or i64 %.0.copyload.i.i.i.i.i.i289, %.sroa.050.0.copyload
  %i.gm = and i64 %i.gl, 7
  %i.gn = or i64 %.sroa.0.0.i.i292, %i.gm         ; 2 uses
  %i.go = tail call i64 @_ZN5clangplENS_10QualifiersES0_(i64 %i.gd, i64 %i.gn) ; 2 uses
  %.not434 = icmp eq i64 %i.go, %i.gn
  br i1 %.not434, label %.thread413, label %bb.af

bb.af:                                            ; preds = %_ZNK5clang8QualType13getQualifiersEv.exit293
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.gr = tail call i64 @_ZNK5clang10ASTContext16getQualifiedTypeENS_8QualTypeENS_10QualifiersE(ptr noundef nonnull align 8 dereferenceable(23904) %i.gq, i64 %.sroa.050.0.copyload, i64 %i.go)
  br label %.thread413.sink.split

bb.ag:                                            ; preds = %_ZNK5clang4Type25isSubscriptableVectorTypeEv.exit277
  %i.gs = load ptr, ptr %.pre473, align 16, !tbaa !791
end_hunk_1
begin_hunk_2_@_ZN5clang4Sema26CheckAssignmentConstraintsENS_8QualTypeERNS_12ActionResultIPNS_4ExprELb1EEERNS_8CastKindEb:bb.a
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store i32 26, ptr %3, align 4, !tbaa !2159
  br label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

bb.ae:                                            ; preds = %bb.aa, %.thread421
  %i.fg = load ptr, ptr %i.ay, align 16, !tbaa !791 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.sroa.0.0.copyload.i.i.i.i247 = load i64, ptr %i.fh, align 8, !tbaa !788
  %i.fi = and i64 %.sroa.0.0.copyload.i.i.i.i247, -16
  %i.fj = inttoptr i64 %i.fi to ptr
  %i.fk = load ptr, ptr %i.fj, align 16, !tbaa !791
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i8, ptr %i.fl, align 16
  %i.fn = and i8 %i.fm, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.fn, 58
  %i.fo = and i64 %i.u, -16
  %i.fp = inttoptr i64 %i.fo to ptr               ; 15 uses
  %i.fq = load ptr, ptr %i.fp, align 16, !tbaa !791
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.0.0.copyload.i.i.i.i255 = load i64, ptr %i.fr, align 8, !tbaa !788
  %i.fs = and i64 %.sroa.0.0.copyload.i.i.i.i255, -16
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = load ptr, ptr %i.ft, align 16, !tbaa !791
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load i8, ptr %i.fv, align 16
  %i.fx = and i8 %i.fw, -2
  %spec.select.i.i.i.i.i.i.i.i.i256 = icmp eq i8 %i.fx, 58 ; 2 uses
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  br i1 %spec.select.i.i.i.i.i.i.i.i.i256, label %bb.ap, label %bb.bk

bb.ag:                                            ; preds = %bb.ae
  br i1 %spec.select.i.i.i.i.i.i.i.i.i256, label %bb.ah, label %bb.ap

bb.ah:                                            ; preds = %bb.ag
  %i.fy = load ptr, ptr %i.ag, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.fz = tail call noundef zeroext i1 @_ZN5clang10ASTContext24areCompatibleVectorTypesENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(23904) %i.fy, i64 %i.m, i64 %i.v) #30
  br i1 %i.fz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 1, ptr %3, align 4, !tbaa !2159
  br label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

bb.aj:                                            ; preds = %bb.ah
  %i.ga = tail call noundef zeroext i1 @_ZN5clang4Sema21isLaxVectorConversionENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.v, i64 %i.m)
  br i1 %i.ga, label %bb.ak, label %._crit_edge456

._crit_edge456:                                   ; preds = %bb.aj
  %.pre457 = load ptr, ptr %i.ay, align 16, !tbaa !791
  br label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.gb = load ptr, ptr %i.ag, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 17712
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1476
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 248
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !1675
  %i.gg = add i32 %i.gf, -21
  %switch.selectcmp.i = icmp ult i32 %i.gg, 4
  br i1 %switch.selectcmp.i, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.gh = tail call noundef zeroext i1 @_ZN5clang4Sema15anyAltivecTypesENS_8QualTypeES1_(ptr nonnull align 8 poison, i64 %i.v, i64 %i.m)
  br i1 %i.gh, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gi = load ptr, ptr %i.ag, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.gj = tail call noundef zeroext i1 @_ZN5clang10ASTContext24areCompatibleVectorTypesENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(23904) %i.gi, i64 %i.v, i64 %i.m) #30
  br i1 %i.gj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gl = load i64, ptr %2, align 8, !tbaa !1532
  %i.gm = and i64 %i.gl, -2
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn) #31
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.gk, i32 %i.go, i32 noundef 7039) #30
  %i.gp = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.gq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.gp, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  store i32 1, ptr %3, align 4, !tbaa !2159
  br label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

bb.ap:                                            ; preds = %._crit_edge456, %bb.af, %bb.ag
  %i.gr = phi ptr [ %.pre457, %._crit_edge456 ], [ %i.fg, %bb.af ], [ %i.fg, %bb.ag ]
  %i.gs = tail call noundef zeroext i1 @_ZNK5clang4Type12isScalarTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.gr)
  br i1 %i.gs, label %bb.aq, label %.thread435

bb.aq:                                            ; preds = %bb.ap
  %i.gt = and i64 %i.u, -16
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = load ptr, ptr %i.gu, align 16, !tbaa !791
  %i.gw = tail call noundef ptr @_ZNK5clang4Type5getAsINS_10VectorTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.gv) ; 3 uses
  %.not215 = icmp eq ptr %i.gw, null
  br i1 %.not215, label %.thread435, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 20
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !788
  %i.gz = icmp eq i32 %i.gy, 1
  br i1 %i.gz, label %bb.as, label %.thread435

bb.as:                                            ; preds = %bb.ar
  %i.ha = tail call noundef zeroext i1 @_ZN5clang4Sema21isLaxVectorConversionENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.v, i64 %i.m)
  br i1 %i.ha, label %bb.at, label %.thread435

bb.at:                                            ; preds = %bb.as
  %i.hb = load ptr, ptr %i.ag, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 17712
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !1476
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 248
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !1675
  %i.hg = add i32 %i.hf, -21
  %switch.selectcmp.i259 = icmp ult i32 %i.hg, 4
  br i1 %switch.selectcmp.i259, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hi = load i32, ptr %i.hh, align 16
  %i.hj = lshr i32 %i.hi, 19
  %i.hk = and i32 %i.hj, 15
  %.off = add nsw i32 %i.hk, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hm = load i64, ptr %2, align 8, !tbaa !1532
  %i.hn = and i64 %i.hm, -2
  %i.ho = inttoptr i64 %i.hn to ptr
  %i.hp = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #31
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.hl, i32 %i.hp, i32 noundef 7039) #30
  %i.hq = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.hr = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5clanglsINS_8QualTypeEEERKNS_8SemaBase21SemaDiagnosticBuilderES5_RKT_(ptr noundef nonnull align 8 dereferenceable(136) %i.hq, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.sroa.052.0.copyload.pre = load i64, ptr %5, align 8, !tbaa !788
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.av
  %.sroa.052.0.copyload = phi i64 [ %i.m, %bb.au ], [ %i.m, %bb.at ], [ %.sroa.052.0.copyload.pre, %bb.av ]
  %i.hs = load i64, ptr %2, align 8, !tbaa !1532
  %i.ht = and i64 %i.hs, -2
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = call i64 @_ZN5clang4Sema17ImpCastExprToTypeEPNS_4ExprENS_8QualTypeENS_8CastKindENS_13ExprValueKindEPKN4llvm11SmallVectorIPNS_16CXXBaseSpecifierELj4EEENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.hu, i64 %.sroa.052.0.copyload, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0) #30
  store i64 %i.hv, ptr %2, align 8, !tbaa !815
  store i32 1, ptr %3, align 4, !tbaa !2159
  br label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

.thread435:                                       ; preds = %bb.aq, %bb.ar, %bb.as, %bb.ap
  %i.hw = load ptr, ptr %i.ay, align 16, !tbaa !791
  %i.hx = tail call noundef zeroext i1 @_ZNK5clang4Type24isSVESizelessBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.hw) #30
  br i1 %i.hx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread435
  %i.hy = and i64 %i.u, -16
  %i.hz = inttoptr i64 %i.hy to ptr
  %i.ia = load ptr, ptr %i.hz, align 16, !tbaa !791
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.sroa.0.0.copyload.i.i.i.i262 = load i64, ptr %i.ib, align 8, !tbaa !788
  %i.ic = and i64 %.sroa.0.0.copyload.i.i.i.i262, -16
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = load ptr, ptr %i.id, align 16, !tbaa !791
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load i8, ptr %i.if, align 16
  %i.ih = and i8 %i.ig, -2
  %spec.select.i.i.i.i.i.i.i.i.i263 = icmp eq i8 %i.ih, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.i263, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.thread435
  %i.ii = load ptr, ptr %i.ay, align 16, !tbaa !791
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %.sroa.0.0.copyload.i.i.i.i265 = load i64, ptr %i.ij, align 8, !tbaa !788
  %i.ik = and i64 %.sroa.0.0.copyload.i.i.i.i265, -16
  %i.il = inttoptr i64 %i.ik to ptr
  %i.im = load ptr, ptr %i.il, align 16, !tbaa !791
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load i8, ptr %i.in, align 16
  %i.ip = and i8 %i.io, -2
  %spec.select.i.i.i.i.i.i.i.i.i266 = icmp eq i8 %i.ip, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.i266, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.iq = and i64 %i.u, -16
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = load ptr, ptr %i.ir, align 16, !tbaa !791
  %i.it = tail call noundef zeroext i1 @_ZNK5clang4Type24isSVESizelessBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.is) #30
  br i1 %i.it, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !1928
  %i.iw = tail call noundef zeroext i1 @_ZN5clang7SemaARM21areCompatibleSveTypesENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, i64 %i.m, i64 %i.v) #30
  br i1 %i.iw, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ix = load ptr, ptr %i.iu, align 8, !tbaa !1928
  %i.iy = tail call noundef zeroext i1 @_ZN5clang7SemaARM24areLaxCompatibleSveTypesENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, i64 %i.m, i64 %i.v) #30
  br i1 %i.iy, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  store i32 1, ptr %3, align 4, !tbaa !2159
  br label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

bb.bd:                                            ; preds = %bb.bb, %bb.az, %bb.ay
  %i.iz = load ptr, ptr %i.ay, align 16, !tbaa !791
  %i.ja = tail call noundef zeroext i1 @_ZNK5clang4Type24isRVVSizelessBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.iz) #30
  br i1 %i.ja, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.jb = and i64 %i.u, -16
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = load ptr, ptr %i.jc, align 16, !tbaa !791
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %.sroa.0.0.copyload.i.i.i.i270 = load i64, ptr %i.je, align 8, !tbaa !788
  %i.jf = and i64 %.sroa.0.0.copyload.i.i.i.i270, -16
  %i.jg = inttoptr i64 %i.jf to ptr
  %i.jh = load ptr, ptr %i.jg, align 16, !tbaa !791
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load i8, ptr %i.ji, align 16
  %i.jk = and i8 %i.jj, -2
  %spec.select.i.i.i.i.i.i.i.i.i271 = icmp eq i8 %i.jk, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.i271, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jl = load ptr, ptr %i.ay, align 16, !tbaa !791
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %.sroa.0.0.copyload.i.i.i.i273 = load i64, ptr %i.jm, align 8, !tbaa !788
  %i.jn = and i64 %.sroa.0.0.copyload.i.i.i.i273, -16
  %i.jo = inttoptr i64 %i.jn to ptr
  %i.jp = load ptr, ptr %i.jo, align 16, !tbaa !791
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load i8, ptr %i.jq, align 16
  %i.js = and i8 %i.jr, -2
  %spec.select.i.i.i.i.i.i.i.i.i274 = icmp eq i8 %i.js, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.i274, label %bb.bg, label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

bb.bg:                                            ; preds = %bb.bf
  %i.jt = and i64 %i.u, -16
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = load ptr, ptr %i.ju, align 16, !tbaa !791
  %i.jw = tail call noundef zeroext i1 @_ZNK5clang4Type24isRVVSizelessBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.jv) #30
  br i1 %i.jw, label %bb.bh, label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %i.jx = load ptr, ptr %i.ag, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.jy = tail call noundef zeroext i1 @_ZN5clang10ASTContext21areCompatibleRVVTypesENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(23904) %i.jx, i64 %i.m, i64 %i.v) #30
  br i1 %i.jy, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jz = load ptr, ptr %i.ag, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ka = tail call noundef zeroext i1 @_ZN5clang10ASTContext24areLaxCompatibleRVVTypesENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(23904) %i.jz, i64 %i.m, i64 %i.v) #30
  br i1 %i.ka, label %bb.bj, label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  store i32 1, ptr %3, align 4, !tbaa !2159
  br label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

bb.bk:                                            ; preds = %bb.af
  %i.kb = tail call fastcc noundef zeroext i1 @_ZL25unsupportedTypeConversionRKN5clang4SemaENS_8QualTypeES3_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.m, i64 %i.v)
  br i1 %i.kb, label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = and i64 %i.ke, 4096
  %.not202 = icmp eq i64 %i.kf, 0
  br i1 %.not202, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kg = load ptr, ptr %i.fp, align 16, !tbaa !791
  %i.kh = tail call noundef ptr @_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.kg)
  %.not203 = icmp eq ptr %i.kh, null
  br i1 %.not203, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ki = load ptr, ptr %i.ay, align 16, !tbaa !791
  %i.kj = tail call noundef ptr @_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v(ptr noundef nonnull align 16 dereferenceable(24) %i.ki)
  %.not204 = icmp eq ptr %i.kj, null
  br i1 %.not204, label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.kk = load ptr, ptr %i.ay, align 16, !tbaa !791
  %i.kl = tail call noundef zeroext i1 @_ZNK5clang4Type16isArithmeticTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.kk) #30
  br i1 %i.kl, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.km = load ptr, ptr %i.fp, align 16, !tbaa !791
  %i.kn = tail call noundef zeroext i1 @_ZNK5clang4Type16isArithmeticTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.km) #30
  br i1 %i.kn, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.ko = load ptr, ptr %i.kc, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = and i64 %i.kp, 4096
  %.not205 = icmp eq i64 %i.kq, 0
  br i1 %.not205, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kr = load ptr, ptr %i.ay, align 16, !tbaa !791
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %.sroa.0.0.copyload.i.i.i.i281 = load i64, ptr %i.ks, align 8, !tbaa !788
  %i.kt = and i64 %.sroa.0.0.copyload.i.i.i.i281, -16
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = load ptr, ptr %i.ku, align 16, !tbaa !791
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load i8, ptr %i.kw, align 16
  %i.ky = icmp eq i8 %i.kx, 47
  br i1 %i.ky, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  br i1 %4, label %bb.bt, label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

bb.bt:                                            ; preds = %bb.bs
  %i.kz = tail call noundef i32 @_ZN5clang4Sema17PrepareScalarCastERNS_12ActionResultIPNS_4ExprELb1EEENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %i.m)
  store i32 %i.kz, ptr %3, align 4, !tbaa !2159
  br label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

bb.bu:                                            ; preds = %bb.br, %bb.bp, %bb.bo
  %i.la = load ptr, ptr %i.ay, align 16, !tbaa !791 ; 7 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load i8, ptr %i.lb, align 16            ; 2 uses
  %i.ld = icmp ne i8 %i.lc, 40
  %.not206454 = icmp eq ptr %i.la, null
  %.not206 = or i1 %.not206454, %i.ld
  br i1 %.not206, label %bb.co, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.le = load ptr, ptr %i.fp, align 16, !tbaa !791 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lg = load i8, ptr %i.lf, align 16
  %i.lh = icmp eq i8 %i.lg, 40
  br i1 %i.lh, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.li = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %.sroa.0.0.copyload.i284 = load i64, ptr %i.li, align 16, !tbaa !788
  %i.lj = and i64 %.sroa.0.0.copyload.i284, -16
  %i.lk = inttoptr i64 %i.lj to ptr
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ll, align 8 ; 2 uses
  %i.lm = and i64 %.0.copyload.i.i.i.i.i.i.i, 8
  %.not.i.i.i = icmp eq i64 %i.lm, 0
  br i1 %.not.i.i.i, label %_ZNK5clang8QualType15getAddressSpaceEv.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ln = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.lo = inttoptr i64 %i.ln to ptr
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %.sroa.0.0.copyload.i.i.i.i286 = load i64, ptr %i.lp, align 8, !tbaa !815
  %i.lq = trunc i64 %.sroa.0.0.copyload.i.i.i.i286 to i32
  %i.lr = lshr i32 %i.lq, 9
  br label %_ZNK5clang8QualType15getAddressSpaceEv.exit

_ZNK5clang8QualType15getAddressSpaceEv.exit:      ; preds = %bb.bw, %bb.bx
  %.sroa.0.0.i.i.i = phi i32 [ %i.lr, %bb.bx ], [ 0, %bb.bw ]
  %i.ls = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.le) #30
  %i.lt = and i64 %i.ls, -16
  %i.lu = inttoptr i64 %i.lt to ptr
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %.0.copyload.i.i.i.i.i.i.i289 = load i64, ptr %i.lv, align 8 ; 2 uses
  %i.lw = and i64 %.0.copyload.i.i.i.i.i.i.i289, 8
  %.not.i.i.i290 = icmp eq i64 %i.lw, 0
  br i1 %.not.i.i.i290, label %_ZNK5clang8QualType15getAddressSpaceEv.exit293, label %bb.by

bb.by:                                            ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit
  %i.lx = and i64 %.0.copyload.i.i.i.i.i.i.i289, -16
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %.sroa.0.0.copyload.i.i.i.i291 = load i64, ptr %i.lz, align 8, !tbaa !815
  %i.ma = trunc i64 %.sroa.0.0.copyload.i.i.i.i291 to i32
  %i.mb = lshr i32 %i.ma, 9
  br label %_ZNK5clang8QualType15getAddressSpaceEv.exit293

_ZNK5clang8QualType15getAddressSpaceEv.exit293:   ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit, %bb.by
  %.sroa.0.0.i.i.i292 = phi i32 [ %i.mb, %bb.by ], [ 0, %_ZNK5clang8QualType15getAddressSpaceEv.exit ]
  %.not209 = icmp eq i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i292
  br i1 %.not209, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_ZNK5clang8QualType15getAddressSpaceEv.exit293
  %i.mc = load ptr, ptr %i.ag, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.md = tail call noundef zeroext i1 @_ZN5clang10ASTContext17hasCvrSimilarTypeENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(23904) %i.mc, i64 %i.v, i64 %i.m) #30
  %. = select i1 %i.md, i32 5, i32 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZNK5clang8QualType15getAddressSpaceEv.exit293
  %.sink = phi i32 [ %., %bb.bz ], [ 63, %_ZNK5clang8QualType15getAddressSpaceEv.exit293 ]
  store i32 %.sink, ptr %3, align 4, !tbaa !2159
  %i.me = load i64, ptr %2, align 8, !tbaa !1532
  %i.mf = and i64 %i.me, -2
  %i.mg = inttoptr i64 %i.mf to ptr
  %i.mh = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mg) #31
  %i.mi = tail call fastcc noundef i32 @_ZL30checkPointerTypesForAssignmentRN5clang4SemaENS_8QualTypeES2_NS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %i.m, i64 %i.v, i32 %i.mh)
  br label %_ZN5clang4Sema25IsAssignConvertCompatibleENS_17AssignConvertTypeE.exit.thread410

bb.cb:                                            ; preds = %bb.bv
end_hunk_2
begin_hunk_3_@_ZL31checkArithmeticOpPointerOperandRN5clang4SemaENS_14SourceLocationEPNS_4ExprE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !788
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !791
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i8, ptr %i.n, align 16
  %i.p = icmp eq i8 %i.o, 7
  br i1 %i.p, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit: ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.g) #30 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread38

_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread38: ; preds = %bb.a, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit
  %.1.i41 = phi ptr [ %i.q, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit ], [ %i.g, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %.1.i41, i64 32
  %.sroa.0.0.copyload.i21 = load i64, ptr %i.r, align 16, !tbaa !788
  %.pre = and i64 %.sroa.0.0.copyload.i21, -16
  %.pre44 = inttoptr i64 %.pre to ptr
  br label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread

_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread: ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread38, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit
  %.pre-phi45 = phi ptr [ %i.f, %bb.b ], [ %.pre44, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread38 ], [ %i.f, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit ]
  %i.s = load ptr, ptr %.pre-phi45, align 8, !tbaa !791 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !788
  %i.u = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !791
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i8, ptr %i.x, align 16
  switch i8 %i.y, label %bb.h [
    i8 40, label %bb.c
    i8 31, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread
  %i.z = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.s) #30
  %i.aa = and i64 %i.z, -16
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !791
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !788
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !791 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 16            ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 13
  %.not7.i.i = icmp ne ptr %i.ag, null
  %.not.not.not.i.i = and i1 %.not7.i.i, %i.aj
  br i1 %.not.not.not.i.i, label %_ZNK5clang4Type10isVoidTypeEv.exit, label %bb.e

_ZNK5clang4Type10isVoidTypeEv.exit:               ; preds = %bb.c
  %i.ak = load i32, ptr %i.ah, align 16
  %i.al = and i32 %i.ak, 536346624
  %i.am = icmp eq i32 %i.al, 236978176
  br i1 %i.am, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 4096
  %.not.i25 = icmp eq i64 %i.ar, 0
  %i.as = select i1 %.not.i25, i32 5708, i32 5437
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 %1, i32 noundef %i.as) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i32 0, ptr %i.c, align 4, !tbaa !795
  %i.at = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.au = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  store i64 %i.au, ptr %9, align 8
  %i.av = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.at, ptr noundef nonnull align 4 dereferenceable(8) %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = and i64 %i.ax, 4096
  %.not20 = icmp eq i64 %i.ay, 0
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.az = add i8 %i.ai, -23
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.az, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, 4096
  %.not.i28 = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not.i28, i32 5706, i32 5436
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i32 %1, i32 noundef %i.bf) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !795
  %i.bg = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !788
  %i.bh = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !791
  %i.bk = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bj) #30
  store i64 %i.bk, ptr %6, align 8
  %i.bl = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !795
  %i.bm = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsIivEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bn = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  store i64 %i.bn, ptr %7, align 8
  %i.bo = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.bm, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = and i64 %i.bq, 4096
  %.not19 = icmp eq i64 %i.br, 0
  br label %bb.h

.thread:                                          ; preds = %_ZNK5clang4Type10isVoidTypeEv.exit, %bb.e
  %.sroa.0.0.copyload.i.i29 = load i64, ptr %i.d, align 8, !tbaa !788
  %i.bs = and i64 %.sroa.0.0.copyload.i.i29, -16
  %i.bt = inttoptr i64 %i.bs to ptr               ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !791 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i8, ptr %i.bv, align 16
  %.not.i.i = icmp eq i8 %i.bw, 7
  br i1 %.not.i.i, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread14.i, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i30 = load i64, ptr %i.bx, align 8, !tbaa !788
  %i.by = and i64 %.sroa.0.0.copyload.i.i.i.i.i30, -16
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !791
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i8, ptr %i.cb, align 16
  %i.cd = icmp eq i8 %i.cc, 7
  br i1 %i.cd, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.i, label %_ZL36checkArithmeticIncompletePointerTypeRN5clang4SemaENS_14SourceLocationEPNS_4ExprE.exit

_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.i: ; preds = %bb.g
  %i.ce = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bu) #30 ; 2 uses
  %.not.i31 = icmp eq ptr %i.ce, null
  br i1 %.not.i31, label %_ZL36checkArithmeticIncompletePointerTypeRN5clang4SemaENS_14SourceLocationEPNS_4ExprE.exit, label %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread14.i

_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread14.i: ; preds = %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.i, %.thread
  %.1.i17.i = phi ptr [ %i.ce, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.i ], [ %i.bu, %.thread ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.1.i17.i, i64 32
  %.sroa.0.0.copyload.i9.i = load i64, ptr %i.cf, align 16, !tbaa !788
  %.pre.i = and i64 %.sroa.0.0.copyload.i9.i, -16
  %.pre18.i = inttoptr i64 %.pre.i to ptr
  br label %_ZL36checkArithmeticIncompletePointerTypeRN5clang4SemaENS_14SourceLocationEPNS_4ExprE.exit

_ZL36checkArithmeticIncompletePointerTypeRN5clang4SemaENS_14SourceLocationEPNS_4ExprE.exit: ; preds = %bb.g, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.i, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread14.i
  %.pre-phi19.i = phi ptr [ %i.bt, %bb.g ], [ %.pre18.i, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread14.i ], [ %i.bt, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.i ]
  %i.cg = load ptr, ptr %.pre-phi19.i, align 8, !tbaa !791
  %i.ch = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cg) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ci = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  store i64 %i.ci, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 5340, ptr %i.cj, align 8, !tbaa !2140
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %4, ptr %i.ck, align 8, !tbaa !1924
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang4Sema21SizelessTypeDiagnoserIJNS_11SourceRangeEEEE, i64 16), ptr %3, align 8, !tbaa !102
  %i.cl = call noundef zeroext i1 @_ZN5clang4Sema19RequireCompleteTypeENS_14SourceLocationENS_8QualTypeENS0_16CompleteTypeKindERNS0_13TypeDiagnoserE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, i64 %i.ch, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %not. = xor i1 %i.cl, true
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread, %bb.d, %bb.f, %_ZL36checkArithmeticIncompletePointerTypeRN5clang4SemaENS_14SourceLocationEPNS_4ExprE.exit
  %.1 = phi i1 [ true, %_ZNK5clang4Type5getAsINS_10AtomicTypeEEEPKT_v.exit.thread ], [ %.not20, %bb.d ], [ %.not19, %bb.f ], [ %not., %_ZL36checkArithmeticIncompletePointerTypeRN5clang4SemaENS_14SourceLocationEPNS_4ExprE.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL28checkArithmeticOnObjCPointerRN5clang4SemaENS_14SourceLocationEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i32 %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %4 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %5 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !786, !nonnull !97, !align !787 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1927
  switch i32 %i.d, label %bb.b [
    i32 1, label %bb.c
    i32 4, label %bb.c
    i32 0, label %_ZNK5clang11ObjCRuntime23allowsPointerArithmeticEv.exit
    i32 2, label %_ZNK5clang11ObjCRuntime23allowsPointerArithmeticEv.exit
    i32 3, label %_ZNK5clang11ObjCRuntime23allowsPointerArithmeticEv.exit
    i32 5, label %_ZNK5clang11ObjCRuntime23allowsPointerArithmeticEv.exit
    i32 6, label %_ZNK5clang11ObjCRuntime23allowsPointerArithmeticEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 2
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.e, label %_ZNK5clang11ObjCRuntime23allowsPointerArithmeticEv.exit

_ZNK5clang11ObjCRuntime23allowsPointerArithmeticEv.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5clang8SemaBase4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::SemaBase::SemaDiagnosticBuilder") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 %1, i32 noundef 3070) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !788
  %i.j = and i64 %.sroa.0.0.copyload.i, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !791 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 16
  %.not.i = icmp eq i8 %i.n, 31
  br i1 %.not.i, label %_ZNK5clang4Type6castAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang11ObjCRuntime23allowsPointerArithmeticEv.exit
  %i.o = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.l) #30
  br label %_ZNK5clang4Type6castAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit

_ZNK5clang4Type6castAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit: ; preds = %_ZNK5clang11ObjCRuntime23allowsPointerArithmeticEv.exit, %bb.d
  %.1.i = phi ptr [ %i.o, %bb.d ], [ %i.l, %_ZNK5clang11ObjCRuntime23allowsPointerArithmeticEv.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %.sroa.0.0.copyload.i7 = load i64, ptr %i.p, align 16, !tbaa !788
  store i64 %.sroa.0.0.copyload.i7, ptr %4, align 8
  %i.q = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_8QualTypeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.r = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  store i64 %i.r, ptr %5, align 8
  %i.s = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK5clang8SemaBase21SemaDiagnosticBuilderlsINS_11SourceRangeEvEERKS1_OT_(ptr noundef nonnull align 8 dereferenceable(136) %i.q, ptr noundef nonnull align 4 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN5clang8SemaBase21SemaDiagnosticBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZNK5clang4Type6castAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit
  %.0 = phi i1 [ true, %_ZNK5clang4Type6castAsINS_21ObjCObjectPointerTypeEEEPKT_v.exit ], [ false, %bb.c ]
  ret i1 %.0
}

declare void @_ZN5clang4Sema16CheckArrayAccessEPKNS_4ExprES3_PKNS_18ArraySubscriptExprEbb(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang4Sema24CheckSubtractionOperandsERNS_12ActionResultIPNS_4ExprELb1EEES5_NS_14SourceLocationENS_18BinaryOperatorKindEPNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"struct.clang::Expr::EvalResult", align 8 ; 10 uses
  %8 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  %9 = alloca %"class.clang::QualType", align 8   ; 4 uses
  %10 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  %11 = alloca %"class.clang::SourceRange", align 8 ; 4 uses
  tail call fastcc void @_ZL19checkArithmeticNullRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 %3, i1 noundef zeroext false)
  %i.b = load i64, ptr %1, align 8, !tbaa !1532
  %i.c = and i64 %i.b, -2
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !tbaa !788
  %i.f = and i64 %.sroa.0.0.copyload.i, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !791 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !788
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !791
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i8, ptr %i.m, align 16
  %i.o = and i8 %i.n, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %2, align 8, !tbaa !1532
  %i.q = and i64 %i.p, -2
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.0.0.copyload.i142 = load i64, ptr %i.s, align 8, !tbaa !788
  %i.t = and i64 %.sroa.0.0.copyload.i142, -16
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !791
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.0.0.copyload.i.i.i.i144 = load i64, ptr %i.w, align 8, !tbaa !788
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i144, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !791
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i8, ptr %i.aa, align 16
  %i.ac = and i8 %i.ab, -2
  %spec.select.i.i.i.i.i.i.i.i.i145 = icmp eq i8 %i.ac, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.i145, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.ad = icmp ne ptr %5, null                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = and i64 %i.ah, 2199023255552
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = and i64 %i.ah, 4398046511104
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = tail call i64 @_ZN5clang4Sema19CheckVectorOperandsERNS_12ActionResultIPNS_4ExprELb1EEES5_NS_14SourceLocationEbbbbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 %3, i1 noundef zeroext %i.ad, i1 noundef zeroext %i.aj, i1 noundef zeroext %i.al, i1 noundef zeroext false, i1 noundef zeroext true) ; 3 uses
  br i1 %i.ad, label %bb.c, label %.critedge138

bb.c:                                             ; preds = %.critedge
  store i64 %i.am, ptr %5, align 8, !tbaa !788
  br label %.critedge138

bb.d:                                             ; preds = %bb.b
  %i.an = tail call noundef zeroext i1 @_ZNK5clang4Type19isSveVLSBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.h) #30
  br i1 %i.an, label %.critedge3, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load i64, ptr %2, align 8, !tbaa !1532
  %i.ap = and i64 %i.ao, -2
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0.0.copyload.i148 = load i64, ptr %i.ar, align 8, !tbaa !788
  %i.as = and i64 %.sroa.0.0.copyload.i148, -16
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !791
  %i.av = tail call noundef zeroext i1 @_ZNK5clang4Type19isSveVLSBuiltinTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.au) #30
  br i1 %i.av, label %.critedge3, label %bb.g

.critedge3:                                       ; preds = %bb.d, %bb.e
  %i.aw = icmp ne ptr %5, null                    ; 2 uses
  %i.ax = tail call i64 @_ZN5clang4Sema27CheckSizelessVectorOperandsERNS_12ActionResultIPNS_4ExprELb1EEES5_NS_14SourceLocationEbNS_13ArithConvKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 %3, i1 noundef zeroext %i.aw, i32 noundef 0) ; 3 uses
  br i1 %i.aw, label %bb.f, label %.critedge138

bb.f:                                             ; preds = %.critedge3
  store i64 %i.ax, ptr %5, align 8, !tbaa !788
  br label %.critedge138

bb.g:                                             ; preds = %bb.e
  %i.ay = load i64, ptr %1, align 8, !tbaa !1532
  %i.az = and i64 %i.ay, -2
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.0.0.copyload.i150 = load i64, ptr %i.bb, align 8, !tbaa !788
  %i.bc = and i64 %.sroa.0.0.copyload.i150, -16
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !791
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.0.0.copyload.i.i.i.i152 = load i64, ptr %i.bf, align 8, !tbaa !788
  %i.bg = and i64 %.sroa.0.0.copyload.i.i.i.i152, -16
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !791
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i8, ptr %i.bj, align 16
  %i.bl = icmp eq i8 %i.bk, 28
  br i1 %i.bl, label %.critedge5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = load i64, ptr %2, align 8, !tbaa !1532
  %i.bn = and i64 %i.bm, -2
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.0.0.copyload.i153 = load i64, ptr %i.bp, align 8, !tbaa !788
  %i.bq = and i64 %.sroa.0.0.copyload.i153, -16
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !791
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.0.0.copyload.i.i.i.i155 = load i64, ptr %i.bt, align 8, !tbaa !788
  %i.bu = and i64 %.sroa.0.0.copyload.i.i.i.i155, -16
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !791
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i8, ptr %i.bx, align 16
  %i.bz = icmp eq i8 %i.by, 28
  br i1 %i.bz, label %.critedge5, label %bb.j

.critedge5:                                       ; preds = %bb.g, %bb.h
  %i.ca = icmp ne ptr %5, null                    ; 2 uses
  %i.cb = tail call i64 @_ZN5clang4Sema30CheckMatrixElementwiseOperandsERNS_12ActionResultIPNS_4ExprELb1EEES5_NS_14SourceLocationEb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 %3, i1 noundef zeroext %i.ca) ; 3 uses
  br i1 %i.ca, label %bb.i, label %.critedge138

bb.i:                                             ; preds = %.critedge5
  store i64 %i.cb, ptr %5, align 8, !tbaa !788
  br label %.critedge138
end_hunk_3
begin_hunk_4_@llvm.fshl.i64
!1725 = !{i64 0, i64 8, !815, i64 8, i64 4, !795, i64 16, i64 8, !788}
!1726 = !{!1721, !93, i64 163}
!1727 = !{!1721, !93, i64 164}
!1728 = !{!1721, !1718, i64 88}
!1729 = !{!1721, !1720, i64 152}
!1730 = !{!1721, !88, i64 156}
!1731 = !{!"_ZTSN5clang27CorrectionCandidateCallbackE", !93, i64 8, !93, i64 9, !93, i64 10, !93, i64 11, !93, i64 12, !93, i64 13, !93, i64 14, !93, i64 15, !190, i64 16, !1590, i64 24}
!1732 = !{!1731, !190, i64 16}
!1733 = !{!1721, !93, i64 166}
!1734 = !{!"p2 _ZTSN5clang4ExprE", !92, i64 0}
!1735 = !{!"_ZTSN4llvm8ArrayRefIPN5clang4ExprEEE", !1734, i64 0, !119, i64 8}
!1736 = !{!1735, !1734, i64 0}
!1737 = !{!1735, !119, i64 8}
!1738 = !{ptr @_ZL25rebuildUnknownAnyFunctionRN5clang4SemaEPNS_4ExprE}
!1739 = !{!191, !191, i64 0}
!1740 = !{!"_ZTSN5clang9ValueDeclE", !886, i64 0, !637, i64 48}
!1741 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang14TypeSourceInfoEPNS3_14DeclaratorDecl7ExtInfoEEEELi2EJEEE", !832, i64 0}
!1742 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang14TypeSourceInfoEPNS3_14DeclaratorDecl7ExtInfoEEEELi1EJS8_EEE", !1741, i64 0}
!1743 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang14TypeSourceInfoEPNS3_14DeclaratorDecl7ExtInfoEEEELi0EJS5_S8_EEE", !1742, i64 0}
!1744 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang14TypeSourceInfoEPNS1_14DeclaratorDecl7ExtInfoEEEE", !1743, i64 0}
!1745 = !{!"_ZTSN5clang14DeclaratorDeclE", !1740, i64 0, !1744, i64 56, !381, i64 64}
!1746 = !{!"p2 _ZTSN5clang11ParmVarDeclE", !92, i64 0}
!1747 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_24MemberSpecializationInfoEPNS3_34FunctionTemplateSpecializationInfoEPNS3_43DependentFunctionTemplateSpecializationInfoEEEELi4EJEEE", !832, i64 0}
!1748 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_24MemberSpecializationInfoEPNS3_34FunctionTemplateSpecializationInfoEPNS3_43DependentFunctionTemplateSpecializationInfoEEEELi3EJSB_EEE", !1747, i64 0}
!1749 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_24MemberSpecializationInfoEPNS3_34FunctionTemplateSpecializationInfoEPNS3_43DependentFunctionTemplateSpecializationInfoEEEELi2EJS9_SB_EEE", !1748, i64 0}
!1750 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_24MemberSpecializationInfoEPNS3_34FunctionTemplateSpecializationInfoEPNS3_43DependentFunctionTemplateSpecializationInfoEEEELi1EJS7_S9_SB_EEE", !1749, i64 0}
!1751 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_24MemberSpecializationInfoEPNS3_34FunctionTemplateSpecializationInfoEPNS3_43DependentFunctionTemplateSpecializationInfoEEEELi0EJS5_S7_S9_SB_EEE", !1750, i64 0}
!1752 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang9NamedDeclEPNS1_24MemberSpecializationInfoEPNS1_34FunctionTemplateSpecializationInfoEPNS1_43DependentFunctionTemplateSpecializationInfoEEEE", !1751, i64 0}
!1753 = !{!"_ZTSN5clang12FunctionDeclE", !1745, i64 0, !889, i64 72, !838, i64 104, !1746, i64 120, !87, i64 128, !88, i64 136, !381, i64 140, !381, i64 144, !1752, i64 152, !1528, i64 160}
!1754 = !{!1753, !1746, i64 120}
!1755 = !{!"p1 _ZTSN5clang11ParmVarDeclE", !91, i64 0}
!1756 = !{!1755, !1755, i64 0}
!1757 = !{!"_ZTSN5clang13ArithConvKindE", !87, i64 0}
!1758 = !{!1757, !1757, i64 0}
!1759 = !{!"p1 _ZTSN4llvm15SmallVectorImplISt4pairIN5clang14SourceLocationENS2_17PartialDiagnosticEEEE", !91, i64 0}
!1760 = !{!"_ZTSN5clang4Expr10EvalStatusE", !93, i64 0, !93, i64 1, !93, i64 2, !1759, i64 8}
!1761 = !{!1760, !93, i64 0}
!1762 = !{!1760, !93, i64 1}
!1763 = !{!1760, !93, i64 2}
!1764 = !{!1760, !1759, i64 8}
!1765 = !{!"_ZTSN5clang7APValue9ValueKindE", !87, i64 0}
!1766 = !{!"_ZTSN4llvm21AlignedCharArrayUnionIPvJNS_6APSIntENS_7APFloatEN5clang7APValue13ComplexAPSIntENS5_14ComplexAPFloatENS5_3VecENS5_3MatENS5_3ArrENS5_10StructDataENS5_9UnionDataENS5_17AddrLabelDiffDataEEEE", !87, i64 0}
!1767 = !{!"_ZTSN5clang7APValueE", !1765, i64 0, !93, i64 4, !1766, i64 8}
!1768 = !{!1767, !1765, i64 0}
!1769 = !{!"_ZTSN4llvm5APIntE", !87, i64 0, !88, i64 8}
!1770 = !{!1769, !88, i64 8}
!1771 = !{!"_ZTSN4llvm6APSIntE", !1769, i64 0, !93, i64 12}
!1772 = !{!1771, !93, i64 12}
!1773 = !{!"_ZTSN5clang20OverflowBehaviorType20OverflowBehaviorKindE", !87, i64 0}
!1774 = !{!"_ZTSN5clang20OverflowBehaviorTypeE", !1662, i64 0, !877, i64 24, !637, i64 32, !1773, i64 40}
!1775 = !{!1774, !1773, i64 40}
!1776 = !{!"_ZTSN5clang9OpaquePtrINS_8QualTypeEEE", !91, i64 0}
!1777 = !{!1776, !91, i64 0}
!1778 = !{!1506, !1506, i64 0}
!1779 = !{!"p2 _ZTSN5clang14TypeSourceInfoE", !92, i64 0}
!1780 = !{!"_ZTSN4llvm8ArrayRefIPN5clang14TypeSourceInfoEEE", !1779, i64 0, !119, i64 8}
!1781 = !{!1780, !1779, i64 0}
!1782 = !{!1780, !119, i64 8}
!1783 = !{!785, !88, i64 13768}
!1784 = !{!1546, !1545, i64 0}
!1785 = !{!1779, !1779, i64 0}
!1786 = !{!"_ZTSNSt12_Vector_baseIN5clang5TokenESaIS1_EE17_Vector_impl_dataE", !936, i64 0, !936, i64 8, !936, i64 16}
!1787 = !{!1786, !936, i64 0}
!1788 = !{!1786, !936, i64 8}
!1789 = !{!1786, !936, i64 16}
!1790 = !{!"p1 _ZTSN5clang12TextEncodingE", !91, i64 0}
!1791 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !91, i64 0, !119, i64 8, !119, i64 16}
!1792 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIcvEE", !1791, i64 0}
!1793 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIcLb1EEE", !1792, i64 0}
!1794 = !{!"_ZTSN4llvm15SmallVectorImplIcEE", !1793, i64 0}
!1795 = !{!"_ZTSN4llvm18SmallVectorStorageIcLj512EEE", !87, i64 0}
!1796 = !{!"_ZTSN4llvm11SmallVectorIcLj512EEE", !1794, i64 0, !1795, i64 24}
!1797 = !{!"_ZTSN4llvm11SmallStringILj512EEE", !1796, i64 0}
!1798 = !{!"_ZTSN4llvm18SmallVectorStorageIcLj32EEE", !87, i64 0}
!1799 = !{!"_ZTSN4llvm11SmallVectorIcLj32EEE", !1794, i64 0, !1798, i64 24}
!1800 = !{!"_ZTSN4llvm11SmallStringILj32EEE", !1799, i64 0}
!1801 = !{!"_ZTSN5clang23StringLiteralEvalMethodE", !87, i64 0}
!1802 = !{!"_ZTSN5clang19StringLiteralParserE", !142, i64 0, !137, i64 8, !915, i64 16, !141, i64 24, !1790, i64 32, !88, i64 40, !88, i64 44, !88, i64 48, !967, i64 52, !1797, i64 56, !118, i64 592, !1800, i64 600, !88, i64 656, !88, i64 660, !1801, i64 664, !93, i64 668, !93, i64 669}
!1803 = !{!1802, !93, i64 668}
!1804 = !{!1791, !91, i64 0}
!1805 = !{!1802, !118, i64 592}
!1806 = !{!"_ZTSN4llvm8ArrayRefIN5clang14SourceLocationEEE", !671, i64 0, !119, i64 8}
!1807 = !{!1806, !671, i64 0}
!1808 = !{!1806, !119, i64 8}
!1809 = !{!1791, !119, i64 8}
!1810 = !{!969, !88, i64 0}
!1811 = !{!1802, !88, i64 656}
!1812 = !{!1802, !88, i64 660}
!1813 = !{!1475, !1332, i64 2536}
!1814 = !{!"_ZTSN5clang12RedeclarableINS_19TranslationUnitDeclEE8DeclLinkE", !836, i64 0}
!1815 = !{!"_ZTSN5clang12RedeclarableINS_19TranslationUnitDeclEEE", !1814, i64 0, !1332, i64 8}
!1816 = !{!1815, !1332, i64 8}
!1817 = !{!969, !967, i64 16}
!1818 = !{!967, !967, i64 0}
!1819 = !{!968, !968, i64 0}
!1820 = !{!1791, !119, i64 16}
!1821 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !87, i64 0}
!1822 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !87, i64 0}
!1823 = !{!"_ZTSN4llvm11raw_ostreamE", !1821, i64 8, !118, i64 16, !118, i64 24, !118, i64 32, !93, i64 40, !1822, i64 44}
!1824 = !{!1823, !1821, i64 8}
!1825 = !{!1823, !93, i64 40}
!1826 = !{!1823, !1822, i64 44}
!1827 = !{!"p1 _ZTSN4llvm15SmallVectorImplIcEE", !91, i64 0}
!1828 = !{!1827, !1827, i64 0}
!1829 = !{!1823, !118, i64 32}
!1830 = !{!1823, !118, i64 24}
!1831 = !{!"_ZTSN4llvm17raw_pwrite_streamE", !1823, i64 0}
!1832 = !{!"_ZTSN4llvm19raw_svector_ostreamE", !1831, i64 0, !1827, i64 48}
!1833 = !{!1832, !1827, i64 48}
!1834 = !{!969, !88, i64 4}
!1835 = !{!1721, !93, i64 167}
!1836 = !{i64 0, i64 24, !788}
!1837 = !{!"p2 _ZTSN5clang9NamedDeclE", !92, i64 0}
!1838 = !{!"_ZTSN5clang17IndirectFieldDeclE", !1740, i64 0, !1837, i64 56, !88, i64 64}
!1839 = !{!1838, !1837, i64 56}
!1840 = !{!1838, !88, i64 64}
!1841 = !{ptr @_ZNK5clang13CXXMethodDecl9isVirtualEv}
!1842 = !{!1654, !93, i64 749}
!1843 = !{!785, !93, i64 4576}
!1844 = !{!545, !88, i64 16}
!1845 = !{!545, !544, i64 0}
!1846 = !{!545, !145, i64 8}
!1847 = !{!545, !88, i64 20}
!1848 = !{!"_ZTSN5clang22OverloadedOperatorKindE", !87, i64 0}
!1849 = !{!"_ZTSN5clang9OpaquePtrINS_12TemplateNameEEE", !91, i64 0}
!1850 = !{!1849, !91, i64 0}
!1851 = !{!"_ZTSN5clang4Sema20CodeSynthesisContext13SynthesisKindE", !87, i64 0}
!1852 = !{!1721, !869, i64 96}
!1853 = !{!"_ZTSN5clang6detail20DeclarationNameExtraE", !88, i64 0}
!1854 = !{!1853, !88, i64 0}
!1855 = !{!94, !88, i64 8}
!1856 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang17OverloadCandidateEvEE", !112, i64 0}
!1857 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang17OverloadCandidateELb0EEE", !1856, i64 0}
!1858 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang17OverloadCandidateEEE", !1857, i64 0}
!1859 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang17OverloadCandidateELj16EEE", !87, i64 0}
!1860 = !{!"_ZTSN4llvm11SmallVectorIN5clang17OverloadCandidateELj16EEE", !1858, i64 0, !1859, i64 16}
!1861 = !{!"_ZTSN4llvm15SmallPtrSetImplImEE", !94, i64 0}
!1862 = !{!"_ZTSN4llvm11SmallPtrSetImLj16EEE", !1861, i64 0, !87, i64 24}
!1863 = !{!"p1 _ZTSN5clang33DeferredTemplateOverloadCandidateE", !91, i64 0}
!1864 = !{!"_ZTSN5clang20OverloadCandidateSet16CandidateSetKindE", !87, i64 0}
!1865 = !{!"_ZTSN5clang20OverloadCandidateSet19OperatorRewriteInfoE", !1848, i64 0, !381, i64 4, !93, i64 8}
!1866 = !{!"_ZTSN5clang6LangASE", !87, i64 0}
!1867 = !{!"_ZTSN5clang20OverloadCandidateSetE", !1860, i64 0, !1862, i64 2704, !1863, i64 2856, !88, i64 2864, !88, i64 2867, !88, i64 2867, !129, i64 2872, !381, i64 2952, !1864, i64 2956, !1865, i64 2960, !88, i64 2972, !87, i64 2976, !1866, i64 7840}
!1868 = !{!1867, !1863, i64 2856}
!1869 = !{!1867, !1864, i64 2956}
!1870 = !{!1867, !88, i64 2972}
!1871 = !{!1867, !1866, i64 7840}
!1872 = !{!1734, !1734, i64 0}
!1873 = !{!"p1 _ZTSN5clang17OverloadCandidateE", !91, i64 0}
!1874 = !{!1873, !1873, i64 0}
!1875 = !{!"p1 _ZTSN5clang17PartialDiagnosticE", !91, i64 0}
!1876 = !{!"_ZTSNSt12_Vector_baseIN5clang17PartialDiagnosticESaIS1_EE17_Vector_impl_dataE", !1875, i64 0, !1875, i64 8, !1875, i64 16}
!1877 = !{!1876, !1875, i64 0}
!1878 = !{!1876, !1875, i64 8}
!1879 = !{!1876, !1875, i64 16}
!1880 = !{!1875, !1875, i64 0}
!1881 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPN5clang9NamedDeclEvEE", !112, i64 0}
!1882 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPN5clang9NamedDeclELb1EEE", !1881, i64 0}
!1883 = !{!"_ZTSN4llvm15SmallVectorImplIPN5clang9NamedDeclEEE", !1882, i64 0}
!1884 = !{!180, !180, i64 0}
!1885 = !{!"p1 _ZTSN5clang9FixItHintE", !91, i64 0}
!1886 = !{!"_ZTSNSt12_Vector_baseIN5clang9FixItHintESaIS1_EE17_Vector_impl_dataE", !1885, i64 0, !1885, i64 8, !1885, i64 16}
!1887 = !{!1886, !1885, i64 0}
!1888 = !{!1886, !1885, i64 8}
!1889 = !{!1886, !1885, i64 16}
!1890 = !{!"_ZTSN5clang12RedeclarableINS_15UsingShadowDeclEE8DeclLinkE", !836, i64 0}
!1891 = !{!"p1 _ZTSN5clang15UsingShadowDeclE", !91, i64 0}
!1892 = !{!"_ZTSN5clang12RedeclarableINS_15UsingShadowDeclEEE", !1890, i64 0, !1891, i64 8}
!1893 = !{!"_ZTSN5clang15UsingShadowDeclE", !886, i64 0, !1892, i64 48, !852, i64 64, !852, i64 72}
!1894 = !{!1893, !852, i64 64}
!1895 = !{!867, !180, i64 8}
!1896 = !{!"_ZTSN5clang14TypeLocBuilderE", !118, i64 0, !119, i64 8, !119, i64 16, !87, i64 24, !88, i64 56, !93, i64 60}
!1897 = !{!1896, !118, i64 0}
!1898 = !{!1896, !119, i64 8}
!1899 = !{!1896, !119, i64 16}
!1900 = !{!1896, !88, i64 56}
!1901 = !{!1896, !93, i64 60}
!1902 = !{!104, !103, i64 0}
!1903 = !{!"_ZTSN5clang14TagTypeLocInfoE", !381, i64 0, !381, i64 4, !91, i64 8}
!1904 = !{!1903, !91, i64 8}
!1905 = !{!"_ZTSN5clang16CharacterLiteralE", !1527, i64 0, !88, i64 16, !381, i64 20}
!1906 = !{!1905, !88, i64 16}
!1907 = !{!1479, !87, i64 6}
!1908 = !{!"_ZTSN5clang4Sema18VerifyICEDiagnoserE", !93, i64 8}
!1909 = !{!1908, !93, i64 8}
!1910 = !{!1109, !142, i64 96}
!1911 = !{!1479, !87, i64 22}
!1912 = !{!"_ZTSN5clang9ParenExprE", !1527, i64 0, !381, i64 16, !381, i64 20, !1584, i64 24}
!1913 = !{!1912, !1584, i64 24}
!1914 = !{!"_ZTSN5clang4Sema13TypeDiagnoserE"}
!1915 = !{!"p1 _ZTSN5clang11SourceRangeE", !91, i64 0}
!1916 = !{!"_ZTSSt10_Head_baseILm1ERKN5clang11SourceRangeELb0EE", !1915, i64 0}
!1917 = !{!"_ZTSSt11_Tuple_implILm1EJRKN5clang11SourceRangeEEE", !1916, i64 0}
!1918 = !{!"p2 omnipotent char", !92, i64 0}
!1919 = !{!"_ZTSSt10_Head_baseILm0ERKPKcLb0EE", !1918, i64 0}
!1920 = !{!"_ZTSSt11_Tuple_implILm0EJRKPKcRKN5clang11SourceRangeEEE", !1917, i64 0, !1919, i64 8}
!1921 = !{!"_ZTSSt5tupleIJRKPKcRKN5clang11SourceRangeEEE", !1920, i64 0}
!1922 = !{!"_ZTSN5clang4Sema18BoundTypeDiagnoserIJPKcNS_11SourceRangeEEEE", !1914, i64 0, !88, i64 8, !1921, i64 16}
!1923 = !{!1922, !88, i64 8}
!1924 = !{!1915, !1915, i64 0}
!1925 = !{!"_ZTSN5clang11ObjCRuntime4KindE", !87, i64 0}
!1926 = !{!"_ZTSN5clang11ObjCRuntimeE", !1925, i64 0, !143, i64 4}
!1927 = !{!1926, !1925, i64 0}
!1928 = !{!198, !198, i64 0}
!1929 = !{!"_ZTSN5clang8CastExprE", !1527, i64 0, !1584, i64 16}
!1930 = !{!1929, !1584, i64 16}
!1931 = !{!"p1 _ZTSN4llvm9StringRefE", !91, i64 0}
!1932 = !{!"_ZTSSt10_Head_baseILm0ERKN4llvm9StringRefELb0EE", !1931, i64 0}
!1933 = !{!"_ZTSSt11_Tuple_implILm0EJRKN4llvm9StringRefERKN5clang11SourceRangeEEE", !1917, i64 0, !1932, i64 8}
!1934 = !{!"_ZTSSt5tupleIJRKN4llvm9StringRefERKN5clang11SourceRangeEEE", !1933, i64 0}
!1935 = !{!"_ZTSN5clang4Sema18BoundTypeDiagnoserIJN4llvm9StringRefENS_11SourceRangeEEEE", !1914, i64 0, !88, i64 8, !1934, i64 16}
!1936 = !{!1935, !88, i64 8}
!1937 = !{!"_ZTSN5clang4sema17FunctionScopeInfo9ScopeKindE", !87, i64 0}
!1938 = !{!"_ZTSN5clang4sema17FunctionScopeInfoUt_E", !87, i64 0}
!1939 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang4sema17FunctionScopeInfo10SwitchInfoEvEE", !112, i64 0}
!1940 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang4sema17FunctionScopeInfo10SwitchInfoELb1EEE", !1939, i64 0}
!1941 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang4sema17FunctionScopeInfo10SwitchInfoEEE", !1940, i64 0}
!1942 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang4sema17FunctionScopeInfo10SwitchInfoELj8EEE", !87, i64 0}
!1943 = !{!"_ZTSN4llvm11SmallVectorIN5clang4sema17FunctionScopeInfo10SwitchInfoELj8EEE", !1941, i64 0, !1942, i64 16}
!1944 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPN5clang10ReturnStmtEvEE", !112, i64 0}
!1945 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPN5clang10ReturnStmtELb1EEE", !1944, i64 0}
!1946 = !{!"_ZTSN4llvm15SmallVectorImplIPN5clang10ReturnStmtEEE", !1945, i64 0}
!1947 = !{!"_ZTSN4llvm18SmallVectorStorageIPN5clang10ReturnStmtELj4EEE", !87, i64 0}
!1948 = !{!"_ZTSN4llvm11SmallVectorIPN5clang10ReturnStmtELj4EEE", !1946, i64 0, !1947, i64 16}
!1949 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPN5clang11ParmVarDeclEjEE", !91, i64 0}
!1950 = !{!"_ZTSN4llvm8DenseMapIPN5clang11ParmVarDeclEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !1949, i64 0, !145, i64 8, !88, i64 16, !88, i64 20}
!1951 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPN5clang11ParmVarDeclEPNS2_4StmtEEvEE", !112, i64 0}
!1952 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang11ParmVarDeclEPNS2_4StmtEELb1EEE", !1951, i64 0}
!1953 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPN5clang11ParmVarDeclEPNS2_4StmtEEEE", !1952, i64 0}
!1954 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairIPN5clang11ParmVarDeclEPNS2_4StmtEELj4EEE", !87, i64 0}
!1955 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPN5clang11ParmVarDeclEPNS2_4StmtEELj4EEE", !1953, i64 0, !1954, i64 16}
!1956 = !{!"_ZTSN4llvm9MapVectorIPN5clang11ParmVarDeclEPNS1_4StmtENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S5_ELj4EEELj4EEE", !1950, i64 0, !1955, i64 24}
!1957 = !{!"_ZTSN4llvm14SmallMapVectorIPN5clang11ParmVarDeclEPNS1_4StmtELj4EEE", !1956, i64 0}
!1958 = !{!"_ZTSSt4pairIPN5clang4StmtES2_E", !1584, i64 0, !1584, i64 8}
!1959 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang4sema17CompoundScopeInfoEvEE", !112, i64 0}
!1960 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang4sema17CompoundScopeInfoELb1EEE", !1959, i64 0}
!1961 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang4sema17CompoundScopeInfoEEE", !1960, i64 0}
!1962 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang4sema17CompoundScopeInfoELj4EEE", !87, i64 0}
!1963 = !{!"_ZTSN4llvm11SmallVectorIN5clang4sema17CompoundScopeInfoELj4EEE", !1961, i64 0, !1962, i64 16}
!1964 = !{!"_ZTSN4llvm15SmallPtrSetImplIPKN5clang9BlockDeclEEE", !94, i64 0}
!1965 = !{!"_ZTSN4llvm11SmallPtrSetIPKN5clang9BlockDeclELj1EEE", !1964, i64 0, !87, i64 24}
!1966 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang7VarDeclEPNS_11SmallVectorIS5_Lj4EEEEEELi2EJEEE", !832, i64 0}
!1967 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang7VarDeclEPNS_11SmallVectorIS5_Lj4EEEEEELi1EJS8_EEE", !1966, i64 0}
!1968 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang7VarDeclEPNS_11SmallVectorIS5_Lj4EEEEEELi0EJS5_S8_EEE", !1967, i64 0}
!1969 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang7VarDeclEPNS_11SmallVectorIS3_Lj4EEEEEE", !1968, i64 0}
!1970 = !{!"_ZTSN4llvm13TinyPtrVectorIPN5clang7VarDeclEEE", !1969, i64 0}
!1971 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang4sema23PossiblyUnreachableDiagEvEE", !112, i64 0}
!1972 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang4sema23PossiblyUnreachableDiagELb0EEE", !1971, i64 0}
!1973 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang4sema23PossiblyUnreachableDiagEEE", !1972, i64 0}
!1974 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang4sema23PossiblyUnreachableDiagELj4EEE", !87, i64 0}
!1975 = !{!"_ZTSN4llvm11SmallVectorIN5clang4sema23PossiblyUnreachableDiagELj4EEE", !1973, i64 0, !1974, i64 16}
!1976 = !{!"_ZTSN4llvm15SmallPtrSetImplIPKN5clang11ParmVarDeclEEE", !94, i64 0}
!1977 = !{!"_ZTSN4llvm11SmallPtrSetIPKN5clang11ParmVarDeclELj8EEE", !1976, i64 0, !87, i64 24}
!1978 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPN5clang13AddrLabelExprEvEE", !112, i64 0}
!1979 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPN5clang13AddrLabelExprELb1EEE", !1978, i64 0}
!1980 = !{!"_ZTSN4llvm15SmallVectorImplIPN5clang13AddrLabelExprEEE", !1979, i64 0}
!1981 = !{!"_ZTSN4llvm18SmallVectorStorageIPN5clang13AddrLabelExprELj4EEE", !87, i64 0}
!1982 = !{!"_ZTSN4llvm11SmallVectorIPN5clang13AddrLabelExprELj4EEE", !1980, i64 0, !1981, i64 16}
!1983 = !{!"_ZTSN4llvm13SmallDenseMapIN5clang4sema17FunctionScopeInfo19WeakObjectProfileTyENS_11SmallVectorINS3_9WeakUseTyELj4EEELj8ENS4_12DenseMapInfoENS_6detail12DenseMapPairIS4_S7_EEEE", !88, i64 0, !88, i64 0, !87, i64 8}
!1984 = !{!"_ZTSN5clang4sema17FunctionScopeInfoE", !1937, i64 8, !93, i64 8, !93, i64 8, !93, i64 8, !93, i64 8, !93, i64 8, !93, i64 9, !93, i64 9, !93, i64 9, !93, i64 9, !93, i64 9, !93, i64 9, !93, i64 9, !93, i64 9, !93, i64 10, !93, i64 10, !87, i64 10, !93, i64 10, !381, i64 12, !381, i64 16, !381, i64 20, !1938, i64 24, !381, i64 28, !381, i64 32, !1700, i64 40, !1943, i64 56, !1948, i64 200, !1617, i64 248, !1957, i64 256, !1958, i64 360, !1963, i64 376, !1965, i64 424, !1970, i64 456, !1975, i64 464, !1977, i64 640, !1982, i64 728, !873, i64 776, !1983, i64 784}
!1985 = !{!"_ZTSN5clang4sema18CapturingScopeInfo20ImplicitCaptureStyleE", !87, i64 0}
!1986 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPN5clang9ValueDeclEjEE", !91, i64 0}
!1987 = !{!"_ZTSN4llvm8DenseMapIPN5clang9ValueDeclEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !1986, i64 0, !145, i64 8, !88, i64 16, !88, i64 20}
!1988 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang4sema7CaptureEvEE", !112, i64 0}
!1989 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang4sema7CaptureELb1EEE", !1988, i64 0}
!1990 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang4sema7CaptureEEE", !1989, i64 0}
!1991 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang4sema7CaptureELj4EEE", !87, i64 0}
!1992 = !{!"_ZTSN4llvm11SmallVectorIN5clang4sema7CaptureELj4EEE", !1990, i64 0, !1991, i64 16}
!1993 = !{!"_ZTSN4llvm18SmallVectorStorageIPN5clang9NamedDeclELj4EEE", !87, i64 0}
!1994 = !{!"_ZTSN4llvm11SmallVectorIPN5clang9NamedDeclELj4EEE", !1883, i64 0, !1993, i64 16}
!1995 = !{!"_ZTSN5clang4sema18CapturingScopeInfoE", !1984, i64 0, !1985, i64 1312, !1987, i64 1320, !88, i64 1344, !1992, i64 1352, !93, i64 1496, !93, i64 1497, !637, i64 1504, !1994, i64 1512}
!1996 = !{!"_ZTSN5clang29InventedTemplateParameterInfoE", !88, i64 0, !88, i64 4, !1994, i64 8}
!1997 = !{!"p1 _ZTSN5clang13CXXMethodDeclE", !91, i64 0}
!1998 = !{!"p1 _ZTSN5clang21TemplateParameterListE", !91, i64 0}
!1999 = !{!"_ZTSN4llvm15SmallPtrSetImplIPN5clang4ExprEEE", !94, i64 0}
!2000 = !{!"_ZTSN4llvm11SmallPtrSetIPN5clang4ExprELj8EEE", !1999, i64 0, !87, i64 24}
!2001 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjN5clang11SourceRangeEEE", !91, i64 0}
!2002 = !{!"_ZTSN4llvm8DenseMapIjN5clang11SourceRangeENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEE", !2001, i64 0, !145, i64 8, !88, i64 16, !88, i64 20}
!2003 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIN5clang4sema15LambdaScopeInfo17ShadowedOuterDeclEvEE", !112, i64 0}
!2004 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIN5clang4sema15LambdaScopeInfo17ShadowedOuterDeclELb1EEE", !2003, i64 0}
!2005 = !{!"_ZTSN4llvm15SmallVectorImplIN5clang4sema15LambdaScopeInfo17ShadowedOuterDeclEEE", !2004, i64 0}
!2006 = !{!"_ZTSN4llvm18SmallVectorStorageIN5clang4sema15LambdaScopeInfo17ShadowedOuterDeclELj4EEE", !87, i64 0}
!2007 = !{!"_ZTSN4llvm11SmallVectorIN5clang4sema15LambdaScopeInfo17ShadowedOuterDeclELj4EEE", !2005, i64 0, !2006, i64 16}
!2008 = !{!"_ZTSN4llvm11SmallPtrSetIPN5clang7VarDeclELj4EEE", !1705, i64 0, !87, i64 24}
!2009 = !{!"_ZTSN5clang4sema15LambdaScopeInfoE", !1995, i64 0, !1996, i64 1560, !869, i64 1616, !1997, i64 1624, !93, i64 1632, !1755, i64 1640, !847, i64 1648, !381, i64 1656, !88, i64 1660, !93, i64 1664, !93, i64 1665, !604, i64 1666, !847, i64 1668, !1531, i64 1680, !1998, i64 1688, !599, i64 1696, !2000, i64 1744, !2002, i64 1832, !2007, i64 1856, !381, i64 1936, !2008, i64 1944}
!2010 = !{!2009, !1997, i64 1624}
!2011 = !{!"p1 _ZTSN5clang12CapturedDeclE", !91, i64 0}
!2012 = !{!"_ZTSN5clang4sema23CapturedRegionScopeInfoE", !1995, i64 0, !2011, i64 1560, !610, i64 1568, !131, i64 1576, !1508, i64 1584, !968, i64 1592, !968, i64 1594, !968, i64 1596}
!2013 = !{!2012, !2011, i64 1560}
!2014 = !{!"p1 _ZTSN5clang9BlockDeclE", !91, i64 0}
!2015 = !{!"_ZTSN5clang4sema14BlockScopeInfoE", !1995, i64 0, !2014, i64 1560, !131, i64 1568, !637, i64 1576}
!2016 = !{!2015, !2014, i64 1560}
!2017 = !{!"p1 _ZTSN5clang15TypedefNameDeclE", !91, i64 0}
!2018 = !{!"_ZTSN5clang11TypedefTypeE", !1664, i64 0, !2017, i64 24}
!2019 = !{!2018, !2017, i64 24}
!2020 = !{!"_ZTSN5clang9ArrayTypeE", !1662, i64 0, !877, i64 24, !637, i64 32}
!2021 = !{!"_ZTSN5clang17VariableArrayTypeE", !2020, i64 0, !1584, i64 40}
!2022 = !{!2021, !1584, i64 40}
!2023 = !{!"_ZTSN5clang14TypeOfExprTypeE", !1662, i64 0, !873, i64 24, !139, i64 32}
!2024 = !{!2023, !873, i64 24}
!2025 = !{!926, !118, i64 0}
!2026 = !{!926, !119, i64 8}
!2027 = !{!1654, !93, i64 752}
!2028 = !{!1283, !88, i64 20}
!2029 = !{ptr @_ZN5clang4Sema31TransformToPotentiallyEvaluatedEPNS_4ExprE}
!2030 = !{!296, !296, i64 0}
!2031 = !{!"p1 _ZTSN5clang14MSPropertyDeclE", !91, i64 0}
!2032 = !{!"_ZTSN5clang22NestedNameSpecifierLocE", !1590, i64 0, !91, i64 8}
!2033 = !{!"_ZTSN5clang17MSPropertyRefExprE", !1527, i64 0, !873, i64 16, !2031, i64 24, !381, i64 32, !93, i64 36, !2032, i64 40}
!2034 = !{!2033, !2031, i64 24}
!2035 = !{!"_ZTSN5clang10MatrixTypeE", !1662, i64 0, !877, i64 24, !637, i64 32}
!2036 = !{!"_ZTSN5clang18ConstantMatrixTypeE", !2035, i64 0, !88, i64 40, !88, i64 44}
!2037 = !{!2036, !88, i64 40}
!2038 = !{!2036, !88, i64 44}
!2039 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm6APSIntEE", !87, i64 0, !93, i64 16}
!2040 = !{!2039, !93, i64 16}
!2041 = !{!"_ZTSSt10_Head_baseILm0ERKPN5clang4ExprELb0EE", !1734, i64 0}
!2042 = !{!"_ZTSSt11_Tuple_implILm0EJRKPN5clang4ExprEEE", !2041, i64 0}
!2043 = !{!"_ZTSSt5tupleIJRKPN5clang4ExprEEE", !2042, i64 0}
!2044 = !{!"_ZTSN5clang4Sema18BoundTypeDiagnoserIJPNS_4ExprEEEE", !1914, i64 0, !88, i64 8, !2043, i64 16}
!2045 = !{!2044, !88, i64 8}
!2046 = !{!1585, !1584, i64 16}
!2047 = !{!"_ZTSN4llvm23SmallPtrSetIteratorImplE", !92, i64 0, !92, i64 8}
!2048 = !{!570, !569, i64 0}
!2049 = !{!570, !145, i64 8}
!2050 = !{!570, !88, i64 20}
!2051 = !{!1654, !93, i64 751}
!2052 = !{!"_ZTSZN5clang4Sema22CheckCXXDefaultArgExprENS_14SourceLocationEPNS_12FunctionDeclEPNS_11ParmVarDeclEPNS_4ExprEbE3$_0", !103, i64 0, !1734, i64 8}
!2053 = !{!2052, !103, i64 0}
!2054 = !{!1654, !93, i64 755}
!2055 = !{!1650, !93, i64 24}
!2056 = !{!139, !139, i64 0}
!2057 = !{!"_ZTSN5clang30DynamicRecursiveASTVisitorBaseILb0EEE", !93, i64 8, !93, i64 9, !93, i64 10, !93, i64 11}
!2058 = !{!"_ZTS20ImmediateCallVisitor", !2057, i64 0, !139, i64 16, !93, i64 24}
!2059 = !{!2058, !93, i64 24}
!2060 = !{!1654, !93, i64 753}
!2061 = !{!"p1 _ZTSN5clang12ActionResultIPNS_4ExprELb1EEE", !91, i64 0}
!2062 = !{!2061, !2061, i64 0}
!2063 = !{!"p1 _ZTS38EnsureImmediateInvocationInDefaultArgs", !91, i64 0}
!2064 = !{!2063, !2063, i64 0}
!2065 = !{!1283, !1282, i64 0}
!2066 = !{!"p1 _ZTSN5clang9FieldDeclE", !91, i64 0}
!2067 = !{!2066, !2066, i64 0}
!2068 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_12DeclListNodeEEEELi2EJEEE", !832, i64 0}
!2069 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_12DeclListNodeEEEELi1EJS7_EEE", !2068, i64 0}
!2070 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_12DeclListNodeEEEELi0EJS5_S7_EEE", !2069, i64 0}
!2071 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang9NamedDeclEPNS1_12DeclListNodeEEEE", !2070, i64 0}
!2072 = !{!"_ZTSN5clang12DeclListNodeE", !852, i64 0, !2071, i64 8}
!2073 = !{!2072, !852, i64 0}
!2074 = !{!"p2 _ZTSN5clang9FieldDeclE", !92, i64 0}
!2075 = !{!"_ZTSZN5clang4Sema23BuildCXXDefaultInitExprENS_14SourceLocationEPNS_9FieldDeclEE3$_1", !103, i64 0, !1734, i64 8}
!2076 = !{!2075, !103, i64 0}
!2077 = !{!1654, !88, i64 8}
!2078 = !{!592, !88, i64 16}
!2079 = !{!592, !88, i64 20}
!2080 = !{!592, !145, i64 8}
!2081 = !{!610, !610, i64 0}
!2082 = !{!"_ZTSN5clang8CallExprE", !1527, i64 0, !88, i64 16, !381, i64 20}
!2083 = !{!2082, !88, i64 16}
!2084 = !{!"llvm.loop.isvectorized", i32 1}
!2085 = !{!"llvm.loop.unroll.runtime.disable"}
!2086 = !{!"llvm.loop.unroll.disable"}
!2087 = !{!"p1 _ZTSN5clang10MemberExprE", !91, i64 0}
!2088 = !{!"_ZTSN5clang21FunctionCallFilterCCCE", !1731, i64 0, !88, i64 32, !93, i64 36, !180, i64 40, !2087, i64 48}
!2089 = !{!"_ZTSN12_GLOBAL__N_115FunctionCallCCCE", !2088, i64 0, !190, i64 56}
!2090 = !{!2089, !190, i64 56}
!2091 = !{!"_ZTSN5clang9BlockExprE", !1527, i64 0, !2014, i64 16}
!2092 = !{!2091, !2014, i64 16}
!2093 = !{!240, !240, i64 0}
!2094 = !{!"_ZTSN5clang12FunctionType16ExtParameterInfoE", !87, i64 0}
!2095 = !{!2094, !87, i64 0}
!2096 = !{!"_ZTSN5clang16ExplicitCastExprE", !1929, i64 0, !1506, i64 24}
!2097 = !{!2096, !1506, i64 24}
!2098 = !{!"p2 _ZTSN5clang21TemplateParameterListE", !92, i64 0}
!2099 = !{!"_ZTSN5clang13QualifierInfoE", !2032, i64 0, !88, i64 16, !2098, i64 24}
!2100 = !{!"_ZTSN5clang14DeclaratorDecl7ExtInfoE", !2099, i64 0, !1506, i64 32, !874, i64 40}
!2101 = !{!2100, !1506, i64 32}
!2102 = !{!1995, !1985, i64 1312}
!2103 = !{!1995, !88, i64 1344}
!2104 = !{!"_ZTSN5clang12FunctionType7ExtInfoE", !968, i64 0}
!2105 = !{!2104, !968, i64 0}
!2106 = !{!"_ZTSN5clang10QualifiersE", !119, i64 0}
!2107 = !{!2106, !119, i64 0}
!2108 = !{!"_ZTSN5clang16RefQualifierKindE", !87, i64 0}
!2109 = !{!"_ZTSN5clang26ExceptionSpecificationTypeE", !87, i64 0}
!2110 = !{!"p1 _ZTSN5clang8QualTypeE", !91, i64 0}
!2111 = !{!"_ZTSN4llvm8ArrayRefIN5clang8QualTypeEEE", !2110, i64 0, !119, i64 8}
!2112 = !{!"_ZTSN5clang17FunctionProtoType17ExceptionSpecInfoE", !2109, i64 0, !2111, i64 8, !873, i64 24, !793, i64 32, !793, i64 40}
!2113 = !{!"p1 _ZTSN5clang12FunctionType16ExtParameterInfoE", !91, i64 0}
!2114 = !{!"p1 _ZTSN5clang14FunctionEffectE", !91, i64 0}
!2115 = !{!"_ZTSN4llvm8ArrayRefIN5clang14FunctionEffectEEE", !2114, i64 0, !119, i64 8}
!2116 = !{!"p1 _ZTSN5clang19EffectConditionExprE", !91, i64 0}
!2117 = !{!"_ZTSN4llvm8ArrayRefIN5clang19EffectConditionExprEEE", !2116, i64 0, !119, i64 8}
!2118 = !{!"_ZTSN5clang18FunctionEffectsRefE", !2115, i64 0, !2117, i64 16}
!2119 = !{!"_ZTSN5clang12FunctionType30FunctionTypeExtraAttributeInfoE", !926, i64 0}
!2120 = !{!"_ZTSN5clang17FunctionProtoType12ExtProtoInfoE", !2104, i64 0, !2106, i64 8, !2108, i64 16, !2112, i64 24, !2113, i64 72, !381, i64 80, !2118, i64 88, !2119, i64 120, !88, i64 136, !88, i64 136, !88, i64 136, !88, i64 136}
!2121 = !{!2120, !2108, i64 16}
!2122 = !{!2112, !2109, i64 0}
!2123 = !{!785, !131, i64 680}
!2124 = !{!"_ZTSN5clang10AsTypeExprE", !1527, i64 0, !1584, i64 16, !381, i64 24, !381, i64 28}
!2125 = !{!2124, !1584, i64 16}
!2126 = !{!"p1 _ZTSN5clang7APValueE", !91, i64 0}
!2127 = !{!"_ZTSZN5clang4Sema27CheckForImmediateInvocationENS_12ActionResultIPNS_4ExprELb1EEEPNS_12FunctionDeclEE3$_0", !2061, i64 0, !103, i64 8, !2126, i64 16}
!2128 = !{!2127, !103, i64 8}
end_hunk_4
