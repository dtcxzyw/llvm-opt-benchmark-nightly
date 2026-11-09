Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParsePragma?download=true
inline.NumInlined: 5845
inline.NumDeleted: 2402
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5clang6Parser27HandlePragmaOpenCLExtensionEv:bb.a
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !333, !nonnull !103, !align !104
  %i.cb = tail call noundef zeroext i1 @_ZNK5clang13OpenCLOptions20isSupportedExtensionEN4llvm9StringRefERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr nonnull %i.s, i64 %i.u, ptr noundef nonnull align 8 dereferenceable(1136) %i.ca) #22
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cc = icmp eq i8 %i.e, 1
  tail call void @_ZN5clang13OpenCLOptions6enableEN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr nonnull %i.s, i64 %i.u, i1 noundef zeroext %i.cc) #22
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.cd = load ptr, ptr %i.l, align 8, !tbaa !102, !nonnull !103, !align !104
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !333, !nonnull !103, !align !104
  %i.cg = tail call noundef zeroext i1 @_ZNK5clang13OpenCLOptions29isSupportedCoreOrOptionalCoreEN4llvm9StringRefERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr nonnull %i.s, i64 %i.u, ptr noundef nonnull align 8 dereferenceable(1136) %i.cf) #22
  br i1 %i.cg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !102, !nonnull !103, !align !104
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !994, !noalias !1338
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %3, ptr noundef nonnull align 8 dereferenceable(15256) %i.cj, i32 %i.g, i32 noundef 2218) #22
  %i.ck = load ptr, ptr %3, align 8, !tbaa !998   ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i55, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i56, label %_ZNK5clang17DiagnosticBuilderlsIPKNS_14IdentifierInfoEEERKS0_RKT_.exit57

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i56: ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !999
  %i.cn = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.cm) ; 2 uses
  store ptr %i.cn, ptr %3, align 8, !tbaa !998
  br label %_ZNK5clang17DiagnosticBuilderlsIPKNS_14IdentifierInfoEEERKS0_RKT_.exit57

_ZNK5clang17DiagnosticBuilderlsIPKNS_14IdentifierInfoEEERKS0_RKT_.exit57: ; preds = %bb.m, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i56
  %i.co = phi ptr [ %i.cn, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i56 ], [ %i.ck, %bb.m ] ; 2 uses
  %i.cp = ptrtoint ptr %i.f to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cr = load i8, ptr %i.co, align 8, !tbaa !1011
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  store i8 5, ptr %i.ct, align 1, !tbaa !19
  %i.cu = load ptr, ptr %3, align 8, !tbaa !998   ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i8, ptr %i.cu, align 8, !tbaa !1011 ; 2 uses
  %i.cx = add i8 %i.cw, 1
  store i8 %i.cx, ptr %i.cu, align 8, !tbaa !1011
  %i.cy = zext i8 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cy
  store i64 %i.cp, ptr %i.cz, align 8, !tbaa !105
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !102, !nonnull !103, !align !104
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !994, !noalias !1339
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %4, ptr noundef nonnull align 8 dereferenceable(15256) %i.dc, i32 %i.g, i32 noundef 2236) #22
  %i.dd = load ptr, ptr %4, align 8, !tbaa !998   ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i58, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i59, label %_ZNK5clang17DiagnosticBuilderlsIPKNS_14IdentifierInfoEEERKS0_RKT_.exit60

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i59: ; preds = %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !999
  %i.dg = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.df) ; 2 uses
  store ptr %i.dg, ptr %4, align 8, !tbaa !998
  br label %_ZNK5clang17DiagnosticBuilderlsIPKNS_14IdentifierInfoEEERKS0_RKT_.exit60

_ZNK5clang17DiagnosticBuilderlsIPKNS_14IdentifierInfoEEERKS0_RKT_.exit60: ; preds = %bb.n, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i59
  %i.dh = phi ptr [ %i.dg, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i59 ], [ %i.dd, %bb.n ] ; 2 uses
  %i.di = ptrtoint ptr %i.f to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dk = load i8, ptr %i.dh, align 8, !tbaa !1011
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl
  store i8 5, ptr %i.dm, align 1, !tbaa !19
  %i.dn = load ptr, ptr %4, align 8, !tbaa !998   ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load i8, ptr %i.dn, align 8, !tbaa !1011 ; 2 uses
  %i.dq = add i8 %i.dp, 1
  store i8 %i.dq, ptr %i.dn, align 8, !tbaa !1011
  %i.dr = zext i8 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dr
  store i64 %i.di, ptr %i.ds, align 8, !tbaa !105
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread65, %bb.f, %bb.e, %_ZNK5clang17DiagnosticBuilderlsIPKNS_14IdentifierInfoEEERKS0_RKT_.exit, %_ZNK5clang17DiagnosticBuilderlsIPKNS_14IdentifierInfoEEERKS0_RKT_.exit57, %_ZNK5clang17DiagnosticBuilderlsIPKNS_14IdentifierInfoEEERKS0_RKT_.exit60, %bb.k, %bb.b, %_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit
  ret void
}

declare void @_ZN5clang13OpenCLOptions10disableAllEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang13OpenCLOptions7isKnownEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang13OpenCLOptions11isSupportedEN4llvm9StringRefERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef nonnull align 8 dereferenceable(1136)) local_unnamed_addr #2

declare void @_ZN5clang13OpenCLOptions7supportEN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5clang13OpenCLOptions13acceptsPragmaEN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang13OpenCLOptions12isWithPragmaEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang13OpenCLOptions20isSupportedExtensionEN4llvm9StringRefERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef nonnull align 8 dereferenceable(1136)) local_unnamed_addr #2

declare void @_ZN5clang13OpenCLOptions6enableEN4llvm9StringRefEb(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang13OpenCLOptions29isSupportedCoreOrOptionalCoreEN4llvm9StringRefERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr noundef nonnull align 8 dereferenceable(1136)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6Parser31HandlePragmaMSPointersToMembersEv(ptr noundef nonnull align 8 dereferenceable(2960) initializes((40, 44)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !988
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = trunc i64 %i.d to i32
  %i.f = load i32, ptr %i.a, align 8, !tbaa !353  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !354  ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  %i.i = select i1 %.not.i.i, i32 %i.f, i32 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.i, ptr %i.j, align 8, !tbaa !355
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102, !nonnull !103, !align !104
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !107, !nonnull !103, !align !104
  tail call void @_ZN5clang4Sema30ActOnPragmaMSPointersToMembersENS_15LangOptionsBase29PragmaMSPointersToMembersKindENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %i.n, i32 noundef %i.e, i32 %i.f) #22
  ret void
}

declare void @_ZN5clang4Sema30ActOnPragmaMSPointersToMembersENS_15LangOptionsBase29PragmaMSPointersToMembersKindENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640), i32 noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6Parser22HandlePragmaMSVtorDispEv(ptr noundef nonnull align 8 dereferenceable(2960) initializes((40, 44)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !988
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = lshr i32 %i.e, 16
  %i.g = and i32 %i.e, 65535
  %i.h = load i32, ptr %i.a, align 8, !tbaa !353  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !354  ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not.i.i, i32 %i.h, i32 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.k, ptr %i.l, align 8, !tbaa !355
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102, !nonnull !103, !align !104
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.n, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !107, !nonnull !103, !align !104
  tail call void @_ZN5clang4Sema21ActOnPragmaMSVtorDispENS0_19PragmaMsStackActionENS_14SourceLocationENS_14MSVtorDispModeE(ptr noundef nonnull align 8 dereferenceable(18640) %i.p, i32 noundef %i.f, i32 %i.h, i32 noundef %i.g) #22
  ret void
}

declare void @_ZN5clang4Sema21ActOnPragmaMSVtorDispENS0_19PragmaMsStackActionENS_14SourceLocationENS_14MSVtorDispModeE(ptr noundef nonnull align 8 dereferenceable(18640), i32 noundef, i32, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6Parser20HandlePragmaMSPragmaEv(ptr noundef nonnull align 8 dereferenceable(2960) initializes((40, 44)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !988  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102, !nonnull !103, !align !104
  %i.f = load i64, ptr %i.c, align 8, !tbaa !1035
  %i.g = inttoptr i64 %i.f to ptr
  store ptr null, ptr %i.c, align 8, !tbaa !1035
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1043
  %i.j = trunc i64 %i.i to i32
  tail call void @_ZN5clang12Preprocessor16EnterTokenStreamEPKNS_5TokenEjbbb(ptr noundef nonnull align 8 dereferenceable(3344) %i.e, ptr noundef %i.g, i32 noundef %i.j, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #22
  %i.k = load i32, ptr %i.a, align 8, !tbaa !353  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !354  ; 2 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not.i.i, i32 %i.k, i32 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.n, ptr %i.o, align 8, !tbaa !355
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !102, !nonnull !103, !align !104
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.p, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1032 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 15 uses
  %i.v = load i64, ptr %i.t, align 8, !tbaa !1034 ; 2 uses
  %i.w = and i64 %i.v, 4294967295
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !102, !nonnull !103, !align !104
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.x, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #22
  %trunc = trunc i64 %i.v to i32
  switch i32 %trunc, label %unreachable [
    i32 8, label %bb.b
    i32 7, label %bb.c
    i32 9, label %bb.d
    i32 15, label %bb.h
    i32 10, label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124
  ]

bb.b:                                             ; preds = %bb.a
  %i.y = load i64, ptr %i.u, align 1
  %i.z = icmp ne i64 %i.y, 7450488012048458084
  %i.aa = zext i1 %i.z to i32
  %.not.i.i34 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i34, label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ab = load i32, ptr %i.u, align 1
  %i.ac = xor i32 %i.ab, 1601401698
  %i.ad = getelementptr i8, ptr %i.u, i64 3
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = xor i32 %i.ae, 1734701919
  %i.ag = or i32 %i.ac, %i.af
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not.i.i40 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i40, label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.aj = load i64, ptr %i.u, align 1
  %i.ak = xor i64 %i.aj, 7310291573909909347
  %i.al = getelementptr i8, ptr %i.u, i64 8
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i64
  %i.ao = xor i64 %i.an, 103
  %i.ap = or i64 %i.ak, %i.ao
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %.not.i.i49 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i49, label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124, label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit106.thread286.thread

bb.e:                                             ; preds = %bb.b
  %i.as = load i64, ptr %i.u, align 1
  %i.at = icmp ne i64 %i.as, 7450488012114521955
  %i.au = zext i1 %i.at to i32
  %.not.i.i58 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i58, label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.av = load i32, ptr %i.u, align 1
  %i.aw = xor i32 %i.av, 1952671091
  %i.ax = getelementptr i8, ptr %i.u, i64 3
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = xor i32 %i.ay, 1852795252
  %i.ba = or i32 %i.aw, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.not.i.i67 = icmp eq i32 %i.bc, 0
  %spec.select = select i1 %.not.i.i67, i64 ptrtoint (ptr @_ZN5clang6Parser21HandlePragmaMSSectionEN4llvm9StringRefENS_14SourceLocationE to i64), i64 ptrtoint (ptr @_ZN5clang6Parser21HandlePragmaMSSegmentEN4llvm9StringRefENS_14SourceLocationE to i64)
  br label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124

bb.g:                                             ; preds = %bb.e
  %i.bd = load i64, ptr %i.u, align 1
  %i.be = icmp ne i64 %i.bd, 7450488012366507625
  %i.bf = zext i1 %i.be to i32
  %.not.i.i76 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i76, label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124, label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit88.thread261

bb.h:                                             ; preds = %bb.a
  %i.bg = load i64, ptr %i.u, align 1
  %i.bh = xor i64 %i.bg, 7448800279013782643
  %i.bi = getelementptr i8, ptr %i.u, i64 7
  %i.bj = load i64, ptr %i.bi, align 1
  %i.bk = xor i64 %i.bj, 7738140083770848103
  %i.bl = or i64 %i.bh, %i.bk
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %.not.i.i85 = icmp eq i32 %i.bn, 0
  %spec.select300 = select i1 %.not.i.i85, i64 ptrtoint (ptr @_ZN5clang6Parser35HandlePragmaMSStrictGuardStackCheckEN4llvm9StringRefENS_14SourceLocationE to i64), i64 ptrtoint (ptr @_ZN5clang6Parser21HandlePragmaMSSegmentEN4llvm9StringRefENS_14SourceLocationE to i64)
  br label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124

_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit88.thread261: ; preds = %bb.g
  %i.bo = load i64, ptr %i.u, align 1
  %i.bp = icmp ne i64 %i.bo, 7957695015192261990
  %i.bq = zext i1 %i.bp to i32
  %.not.i.i94 = icmp eq i32 %i.bq, 0
  %spec.select305 = select i1 %.not.i.i94, i64 ptrtoint (ptr @_ZN5clang6Parser22HandlePragmaMSFunctionEN4llvm9StringRefENS_14SourceLocationE to i64), i64 ptrtoint (ptr @_ZN5clang6Parser22HandlePragmaMSOptimizeEN4llvm9StringRefENS_14SourceLocationE to i64)
  br label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124

_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit106.thread286.thread: ; preds = %bb.d
  %i.br = load i64, ptr %i.u, align 1
  %i.bs = xor i64 %i.br, 7598538395475013225
  %i.bt = getelementptr i8, ptr %i.u, i64 8
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = zext i8 %i.bu to i64
  %i.bw = xor i64 %i.bv, 99
  %i.bx = or i64 %i.bs, %i.bw
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %.not.i.i121 = icmp eq i32 %i.bz, 0
  %spec.select302 = select i1 %.not.i.i121, i64 ptrtoint (ptr @_ZN5clang6Parser23HandlePragmaMSIntrinsicEN4llvm9StringRefENS_14SourceLocationE to i64), i64 ptrtoint (ptr @_ZN5clang6Parser21HandlePragmaMSSegmentEN4llvm9StringRefENS_14SourceLocationE to i64)
  br label %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124

unreachable:                                      ; preds = %bb.a
  unreachable

_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124: ; preds = %bb.a, %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit88.thread261, %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit106.thread286.thread, %bb.h, %bb.f, %bb.g, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.26.10 = phi i64 [ ptrtoint (ptr @_ZN5clang6Parser21HandlePragmaMSSegmentEN4llvm9StringRefENS_14SourceLocationE to i64), %bb.c ], [ %spec.select, %bb.f ], [ ptrtoint (ptr @_ZN5clang6Parser21HandlePragmaMSSegmentEN4llvm9StringRefENS_14SourceLocationE to i64), %bb.e ], [ ptrtoint (ptr @_ZN5clang6Parser21HandlePragmaMSSegmentEN4llvm9StringRefENS_14SourceLocationE to i64), %bb.b ], [ ptrtoint (ptr @_ZN5clang6Parser21HandlePragmaMSSegmentEN4llvm9StringRefENS_14SourceLocationE to i64), %bb.d ], [ %spec.select300, %bb.h ], [ %spec.select305, %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit88.thread261 ], [ %spec.select302, %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit106.thread286.thread ], [ ptrtoint (ptr @_ZN5clang6Parser21HandlePragmaMSInitSegEN4llvm9StringRefENS_14SourceLocationE to i64), %bb.g ], [ ptrtoint (ptr @_ZN5clang6Parser23HandlePragmaMSAllocTextEN4llvm9StringRefENS_14SourceLocationE to i64), %bb.a ]
  %i.ca = inttoptr i64 %.sroa.26.10 to ptr
  %i.cb = tail call noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr nonnull %i.u, i64 %i.w, i32 %i.k) #22
  br i1 %i.cb, label %bb.i, label %.preheader

.preheader:                                       ; preds = %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124
  %i.cc = load i16, ptr %i.q, align 8, !tbaa !989
  %.not306 = icmp eq i16 %i.cc, 1
  br i1 %.not306, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !102, !nonnull !103, !align !104
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.cd, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #22
  %i.ce = load i16, ptr %i.q, align 8, !tbaa !989
  %.not = icmp eq i16 %i.ce, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1340

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !102, !nonnull !103, !align !104
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.cf, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #22
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZN4llvm12StringSwitchIMN5clang6ParserEFbNS_9StringRefENS1_14SourceLocationEES6_E4CaseENS_13StringLiteralES6_.exit124
  ret void
}

declare void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6Parser21HandlePragmaMSSegmentEN4llvm9StringRefENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr %1, i64 %2, i32 %3) #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %6 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %7 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %8 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %9 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %10 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %11 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %12 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !989
  %.not115 = icmp eq i16 %i.c, 22
  br i1 %.not115, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102, !nonnull !103, !align !104
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !994, !noalias !1357
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %4, ptr noundef nonnull align 8 dereferenceable(15256) %i.g, i32 %3, i32 noundef 2209) #22
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %4, ptr %1, i64 %2)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102, !nonnull !103, !align !104
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #22
  %i.j = load i16, ptr %i.b, align 8, !tbaa !989  ; 2 uses
  %i.k = add i16 %i.j, -5
  %i.l = icmp ult i16 %i.k, 2
  br i1 %i.l, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1032 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !1034 ; 2 uses
  %i.s = and i64 %i.r, 4294967295                 ; 2 uses
  %trunc = trunc i64 %i.r to i32
  switch i32 %trunc, label %_ZN4llvmeqENS_9StringRefES0_.exit55.thread99 [
    i32 4, label %_ZN4llvmeqENS_9StringRefES0_.exit
    i32 3, label %_ZN4llvmeqENS_9StringRefES0_.exit55
  ]

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.d
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.q, ptr nonnull @.str.30, i64 %i.s)
  %i.t = icmp eq i32 %bcmp.i, 0
  br i1 %i.t, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit55.thread99

_ZN4llvmeqENS_9StringRefES0_.exit55:              ; preds = %bb.d
  %bcmp.i54 = tail call i32 @bcmp(ptr nonnull %i.q, ptr nonnull @.str.31, i64 %i.s)
  %i.u = icmp eq i32 %bcmp.i54, 0
  br i1 %i.u, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit55.thread99

_ZN4llvmeqENS_9StringRefES0_.exit55.thread99:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.d, %_ZN4llvmeqENS_9StringRefES0_.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !102, !nonnull !103, !align !104
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !994, !noalias !1358
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr noundef nonnull align 8 dereferenceable(15256) %i.x, i32 %3, i32 noundef 2216) #22
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr %1, i64 %2)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.critedge

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit55
  %.037 = phi i32 [ 2, %_ZN4llvmeqENS_9StringRefES0_.exit ], [ 4, %_ZN4llvmeqENS_9StringRefES0_.exit55 ] ; 4 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !102, !nonnull !103, !align !104
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.y, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #22
  %i.z = load i16, ptr %i.b, align 8, !tbaa !989
  switch i16 %i.z, label %bb.i [
    i16 67, label %bb.e
    i16 23, label %.thread.thread
  ]

bb.e:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !102, !nonnull !103, !align !104
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.aa, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #22
  %i.ab = load i16, ptr %i.b, align 8, !tbaa !989 ; 2 uses
  %i.ac = add i16 %i.ab, -5
  %i.ad = icmp ult i16 %i.ac, 2
  br i1 %i.ad, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.m, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1032 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !1034
  %i.aj = and i64 %i.ai, 4294967295               ; 2 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !102, !nonnull !103, !align !104
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ak, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #22
  %i.al = load i16, ptr %i.b, align 8, !tbaa !989
  switch i16 %i.al, label %bb.h [
    i16 67, label %bb.g
    i16 23, label %.thread.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !102, !nonnull !103, !align !104
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.am, ptr noundef nonnull align 8 dereferenceable(20) %i.a) #22
  %.pr = load i16, ptr %i.b, align 8, !tbaa !989
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !102, !nonnull !103, !align !104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !994, !noalias !1359
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %6, ptr noundef nonnull align 8 dereferenceable(15256) %i.ap, i32 %3, i32 noundef 2212) #22
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %6, ptr %1, i64 %2)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge

bb.i:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !102, !nonnull !103, !align !104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !994, !noalias !1360
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr noundef nonnull align 8 dereferenceable(15256) %i.as, i32 %3, i32 noundef 2212) #22
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr %1, i64 %2)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.critedge

bb.j:                                             ; preds = %bb.g, %bb.e, %bb.c
  %i.at = phi i16 [ %.pr, %bb.g ], [ %i.j, %bb.c ], [ %i.ab, %bb.e ]
  %.sroa.5.0 = phi i64 [ %i.aj, %bb.g ], [ 0, %bb.c ], [ 0, %bb.e ] ; 3 uses
  %.sroa.085.0 = phi ptr [ %i.ah, %bb.g ], [ null, %bb.c ], [ null, %bb.e ] ; 2 uses
  %.239 = phi i32 [ %.037, %bb.g ], [ 0, %bb.c ], [ %.037, %bb.e ] ; 3 uses
  switch i16 %i.at, label %bb.k [
    i16 23, label %.thread.thread
    i16 14, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %.not48 = icmp eq i32 %.239, 0
  %i.au = icmp eq i64 %.sroa.5.0, 0
  %i.av = select i1 %i.au, i32 2214, i32 2215
  %i.aw = select i1 %.not48, i32 2216, i32 %i.av
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !102, !nonnull !103, !align !104
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !994, !noalias !1361
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %8, ptr noundef nonnull align 8 dereferenceable(15256) %i.az, i32 %3, i32 noundef %i.aw) #22
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %8, ptr %1, i64 %2)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.ba = tail call i64 @_ZN5clang6Parser28ParseStringLiteralExpressionEb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i1 noundef zeroext false) #22 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = and i64 %i.ba, -2
  %i.bd = inttoptr i64 %i.bc to ptr               ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = and i32 %i.be, 29360128
  %.not = icmp eq i32 %i.bf, 4194304
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_120PragmaSupportHandlerILN5clang3tok9TokenKindE460ELS3_461ELj1533EE12HandlePragmaERNS1_12PreprocessorENS1_16PragmaIntroducerERNS1_5TokenE:bb.a
  store ptr %i.t, ptr %6, align 8, !tbaa !998
  br label %_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit: ; preds = %bb.e, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.u = phi ptr [ %i.t, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.r, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.u, align 8, !tbaa !1011
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  store i8 2, ptr %i.y, align 1, !tbaa !19
  %i.z = load ptr, ptr %6, align 8, !tbaa !998    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i8, ptr %i.z, align 8, !tbaa !1011 ; 2 uses
  %i.ac = add i8 %i.ab, 1
  store i8 %i.ac, ptr %i.z, align 8, !tbaa !1011
  %i.ad = zext i8 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ad
  store i64 0, ptr %i.ae, align 8, !tbaa !105
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit, %bb.f
  %.019 = phi i32 [ 1, %_ZNK5clang17DiagnosticBuilderlsIivEERKS0_OT_.exit ], [ %.1, %bb.f ]
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %5) #22
  %i.af = load i16, ptr %i.d, align 8, !tbaa !989 ; 2 uses
  %i.ag = icmp eq i16 %i.af, 460
  %i.ah = icmp eq i16 %i.af, 461
  %i.ai = sext i1 %i.ah to i32
  %.1.v = select i1 %i.ag, i32 1, i32 %i.ai
  %.1 = add i32 %.1.v, %.019                      ; 2 uses
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %bb.g, label %bb.f, !llvm.loop !1787

bb.g:                                             ; preds = %bb.f
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %5) #22
  %.pr.pre = load i16, ptr %i.d, align 8, !tbaa !989
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit
  %.pr = phi i16 [ %.pr.pre, %bb.g ], [ %i.n, %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit ]
  %.off = add i16 %.pr, -1
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %.critedge, label %bb.b, !llvm.loop !1788

.critedge:                                        ; preds = %bb.h
  %i.aj = load i32, ptr %5, align 8, !tbaa !353
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  store i16 461, ptr %i.d, align 8, !tbaa !989
  store i32 %i.aj, ptr %5, align 8, !tbaa !353
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !349 ; 2 uses
  %i.al = load i32, ptr %i.c, align 4, !tbaa !350
  %.not.i10 = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i10, label %bb.j, label %bb.i, !prof !1013

bb.i:                                             ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(20) %5)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !349
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit11

bb.j:                                             ; preds = %.critedge
  %i.am = zext i32 %i.ak to i64
  %i.an = load ptr, ptr %4, align 8, !tbaa !348
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !349
  %i.aq = add i32 %i.ap, 1                        ; 2 uses
  store i32 %i.aq, ptr %i.b, align 8, !tbaa !349
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit11

_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit11: ; preds = %bb.i, %bb.j
  %i.ar = phi i32 [ %.pre, %bb.i ], [ %i.aq, %bb.j ]
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nuw nsw i64 %i.as, 24               ; 2 uses
  %i.au = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #21, !noalias !1792 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.au, i8 0, i64 %i.at, i1 false), !noalias !1792
  %i.av = load ptr, ptr %4, align 8, !tbaa !348   ; 2 uses
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !349 ; 4 uses
  %i.ax = icmp ugt i32 %i.aw, 1
  br i1 %i.ax, label %bb.k, label %bb.l, !prof !1013

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit11
  %i.ay = zext i32 %i.aw to i64
  %.idx = mul nuw nsw i64 %i.ay, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.av, i64 %.idx, i1 false)
  br label %_ZNSt10unique_ptrIA_N5clang5TokenESt14default_deleteIS2_EED2Ev.exit15

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit11
  %i.az = icmp eq i32 %i.aw, 1
  br i1 %i.az, label %bb.m, label %_ZNSt10unique_ptrIA_N5clang5TokenESt14default_deleteIS2_EED2Ev.exit15

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.au, ptr noundef nonnull align 8 dereferenceable(20) %i.av, i64 20, i1 false), !tbaa.struct !1095
  br label %_ZNSt10unique_ptrIA_N5clang5TokenESt14default_deleteIS2_EED2Ev.exit15

_ZNSt10unique_ptrIA_N5clang5TokenESt14default_deleteIS2_EED2Ev.exit15: ; preds = %bb.k, %bb.l, %bb.m
  call void @_ZN5clang12Preprocessor16EnterTokenStreamEPKNS_5TokenEjbbb(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull %i.au, i32 noundef %i.aw, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ba = load ptr, ptr %4, align 8, !tbaa !348   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZN4llvm11SmallVectorIN5clang5TokenELj16EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIA_N5clang5TokenESt14default_deleteIS2_EED2Ev.exit15
  call void @free(ptr noundef %i.ba) #22
  br label %_ZN4llvm11SmallVectorIN5clang5TokenELj16EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang5TokenELj16EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N5clang5TokenESt14default_deleteIS2_EED2Ev.exit15, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122PragmaNoOpenACCHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN5clang13PragmaHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122PragmaNoSupportHandlerILj2196EE12HandlePragmaERN5clang12PreprocessorENS2_16PragmaIntroducerERNS2_5TokenE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3344) %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::Token", align 8      ; 3 uses
  %5 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !994  ; 3 uses
  %i.c = load i32, ptr %3, align 8, !tbaa !353    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1118
  %i.f = tail call noundef zeroext i8 @_ZNK5clang13DiagnosticIDs21getDiagnosticSeverityEjNS_14SourceLocationERKNS_17DiagnosticsEngineE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef 2196, i32 %i.c, ptr noundef nonnull align 8 dereferenceable(15256) %i.b) #26
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr noundef nonnull align 8 dereferenceable(15256) %i.b, i32 %i.c, i32 noundef 2196) #22
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #22
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !994
  call void @_ZN5clang17DiagnosticsEngine11setSeverityEjNS_4diag8SeverityENS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(15256) %i.h, i32 noundef 2196, i8 noundef zeroext 1, i32 0) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.i = call i64 @_ZN5clang12Preprocessor26DiscardUntilEndOfDirectiveERNS_5TokenEPN4llvm15SmallVectorImplIS1_EE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef null) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120PragmaCommentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN5clang13PragmaHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120PragmaCommentHandler12HandlePragmaERN5clang12PreprocessorENS1_16PragmaIntroducerERNS1_5TokenE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(3344) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(20) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %5 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %6 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %7 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %8 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %9 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %12 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %i.a = load i32, ptr %3, align 8, !tbaa !353    ; 4 uses
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #22
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !989
  %.not225 = icmp eq i16 %i.c, 22
  br i1 %.not225, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !994, !noalias !1809
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %4, ptr noundef nonnull align 8 dereferenceable(15256) %i.e, i32 %i.a, i32 noundef 1867) #22
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %4) #22
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #22
  %i.f = load i16, ptr %i.b, align 8, !tbaa !989
  %.not226 = icmp eq i16 %i.f, 5
  br i1 %.not226, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !994, !noalias !1810
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr noundef nonnull align 8 dereferenceable(15256) %i.h, i32 %i.a, i32 noundef 1867) #22
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #22
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1032 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 10 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !1034 ; 2 uses
  %trunc = trunc i64 %i.n to i32
  switch i32 %trunc, label %13 [
    i32 6, label %bb.f
    i32 3, label %bb.g
    i32 8, label %bb.h
    i32 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.m, align 1
  %i.p = xor i32 %i.o, 1802398060
  %i.q = getelementptr i8, ptr %i.m, i64 4
  %i.r = load i16, ptr %i.q, align 1
  %i.s = zext i16 %i.r to i32
  %i.t = xor i32 %i.s, 29285
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.x = load i16, ptr %i.m, align 1
  %i.y = xor i16 %i.x, 26988
  %i.z = getelementptr i8, ptr %i.m, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i16
  %i.ac = xor i16 %i.ab, 98
  %i.ad = or i16 %i.y, %i.ac
  %i.ae = icmp ne i16 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %.not.i.i69 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i69, label %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103, label %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103.thread

bb.h:                                             ; preds = %bb.e
  %i.ag = load i64, ptr %i.m, align 1
  %i.ah = icmp ne i64 %i.ag, 8243113893085146979
  %i.ai = zext i1 %i.ah to i32
  %.not.i.i77 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i77, label %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103, label %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103.thread

bb.i:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.m, align 1
  %i.ak = xor i32 %i.aj, 1936029797
  %i.al = getelementptr i8, ptr %i.m, i64 4
  %i.am = load i16, ptr %i.al, align 1
  %i.an = zext i16 %i.am to i32
  %i.ao = xor i32 %i.an, 29300
  %i.ap = or i32 %i.ak, %i.ao
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %.not.i.i85 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i85, label %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103, label %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103.thread

bb.j:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.m, align 1
  %i.at = icmp ne i32 %i.as, 1919251317
  %i.au = zext i1 %i.at to i32
  %.not.i.i93 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i93, label %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103, label %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103.thread

13:                                               ; preds = %bb.e
  %14 = and i64 %i.n, 4294967295
  %.not.i.i.i.i99 = icmp eq i64 %14, 9
  br i1 %.not.i.i.i.i99, label %bb.k, label %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103.thread

bb.k:                                             ; preds = %13
  %i.av = load i64, ptr %i.m, align 1
  %i.aw = xor i64 %i.av, 7523097642930302819
  %i.ax = getelementptr i8, ptr %i.m, i64 8
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i64
  %i.ba = xor i64 %i.az, 116
  %i.bb = or i64 %i.aw, %i.ba
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %.not.i.i101 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i101, label %.thread, label %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103.thread

_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103: ; preds = %bb.g, %bb.f, %bb.i, %bb.h, %bb.j
  %i.be = phi i1 [ true, %bb.h ], [ true, %bb.j ], [ true, %bb.f ], [ true, %bb.i ], [ false, %bb.g ]
  %.sroa.16.5 = phi i32 [ 3, %bb.h ], [ 5, %bb.j ], [ 1, %bb.f ], [ 4, %bb.i ], [ 2, %bb.g ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !334 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 260
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !343
  %i.bj = icmp eq i32 %i.bi, 19
  br i1 %i.bj, label %bb.l, label %bb.m

_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103.thread: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %13, %bb.k
  %i.bk = load i32, ptr %3, align 8, !tbaa !353
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !994, !noalias !1811
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %6, ptr noundef nonnull align 8 dereferenceable(15256) %i.bm, i32 %i.bk, i32 noundef 1868) #22
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %6) #22
  br label %bb.ac

bb.l:                                             ; preds = %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bn = load i32, ptr %3, align 8, !tbaa !353
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !994, !noalias !1812
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr noundef nonnull align 8 dereferenceable(15256) %i.bp, i32 %i.bn, i32 noundef 2199) #22
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !1032 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !1034
  %i.bt = and i64 %i.bs, 4294967295
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr nonnull %i.br, i64 %i.bt)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ac

bb.m:                                             ; preds = %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 268
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !342
  %i.bw = icmp eq i32 %i.bv, 3
  %or.cond3 = and i1 %i.be, %i.bw
  br i1 %or.cond3, label %bb.n, label %bb.r

.thread:                                          ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !334
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 268
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !342
  %i.cb = icmp eq i32 %i.ca, 3
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.cc = load i32, ptr %3, align 8, !tbaa !353
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !994, !noalias !1813
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %8, ptr noundef nonnull align 8 dereferenceable(15256) %i.ce, i32 %i.cc, i32 noundef 2199) #22
  %i.cf = load ptr, ptr %i.k, align 8, !tbaa !1032 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !1034
  %i.ci = and i64 %i.ch, 4294967295
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %8, ptr nonnull %i.cg, i64 %i.ci)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ac

bb.o:                                             ; preds = %.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !346, !range !1015, !noundef !103
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.cm = load i32, ptr %3, align 8, !tbaa !353
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !994, !noalias !1814
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %9, ptr noundef nonnull align 8 dereferenceable(15256) %i.co, i32 %i.cm, i32 noundef 2200) #22
  %i.cp = load ptr, ptr %i.k, align 8, !tbaa !1032 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !1034
  %i.cs = and i64 %i.cr, 4294967295
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %9, ptr nonnull %i.cq, i64 %i.cs)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  store i8 1, ptr %i.cj, align 8, !tbaa !346
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q
  %.sroa.16.5236239242 = phi i32 [ 6, %bb.q ], [ %.sroa.16.5, %bb.m ]
  %i.ct = phi i1 [ true, %bb.q ], [ false, %bb.m ]
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.cu, ptr %10, align 8, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.cv, align 8, !tbaa !18
  store i8 0, ptr %i.cu, align 8, !tbaa !19
  %i.cw = load i16, ptr %i.b, align 8, !tbaa !989 ; 2 uses
  %i.cx = icmp eq i16 %i.cw, 67
  br i1 %i.cx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #22
  %i.cy = call noundef zeroext i1 @_ZN5clang12Preprocessor22FinishLexStringLiteralERNS_5TokenERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcb(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.150, i1 noundef zeroext true) #22
  br i1 %i.cy, label %thread-pre-split, label %bb.ab

thread-pre-split:                                 ; preds = %bb.s
  %.pr = load i16, ptr %i.b, align 8, !tbaa !989
  br label %bb.t

bb.t:                                             ; preds = %thread-pre-split, %bb.r
  %i.cz = phi i16 [ %.pr, %thread-pre-split ], [ %i.cw, %bb.r ]
  %.not228 = icmp eq i16 %i.cz, 23
  br i1 %.not228, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = load i32, ptr %3, align 8, !tbaa !353
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !994, !noalias !1815
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %11, ptr noundef nonnull align 8 dereferenceable(15256) %i.dc, i32 %i.da, i32 noundef 1867) #22
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %11) #22
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #22
  %i.dd = load i16, ptr %i.b, align 8, !tbaa !989
  %.not229 = icmp eq i16 %i.dd, 2
  br i1 %.not229, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.de = load i32, ptr %3, align 8, !tbaa !353
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !994, !noalias !1816
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %12, ptr noundef nonnull align 8 dereferenceable(15256) %i.dg, i32 %i.de, i32 noundef 1867) #22
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %12) #22
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.dh = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.di = icmp eq i64 %i.dh, 0
  %or.cond224 = select i1 %i.ct, i1 %i.di, i1 false
  br i1 %or.cond224, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1117 ; 3 uses
  %.not = icmp eq ptr %i.dk, null
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = load ptr, ptr %10, align 8, !tbaa !106
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !21
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 128
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, i32 %i.a, ptr noundef nonnull %i.j, ptr %i.dl, i64 %i.dh) #22
  %.pre = load i64, ptr %i.cv, align 8, !tbaa !18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dp = phi i64 [ %.pre, %bb.z ], [ %i.dh, %bb.y ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1817, !nonnull !103, !align !104
  %i.ds = load ptr, ptr %10, align 8, !tbaa !106
  call void @_ZN5clang4Sema20ActOnPragmaMSCommentENS_14SourceLocationENS_19PragmaMSCommentKindEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dr, i32 %i.a, i32 noundef %.sroa.16.5236239242, ptr %i.ds, i64 %i.dp) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.s, %bb.aa, %bb.w, %bb.u
  %i.dt = load ptr, ptr %10, align 8, !tbaa !106  ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cu
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ab
  %i.dv = load i64, ptr %i.cu, align 8, !tbaa !19
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm12StringSwitchIN5clang19PragmaMSCommentKindES2_E4CaseENS_13StringLiteralES2_.exit103.thread, %bb.l, %bb.n, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %bb.b
  ret void
}

declare void @_ZN5clang4Sema20ActOnPragmaMSCommentENS_14SourceLocationENS_19PragmaMSCommentKindEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(18640), i32, i32 noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_125PragmaFloatControlHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN5clang13PragmaHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_125PragmaFloatControlHandler12HandlePragmaERN5clang12PreprocessorENS1_16PragmaIntroducerERNS1_5TokenE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3344) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(20) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %5 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %6 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %7 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %8 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %9 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %10 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %11 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %12 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %13 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %14 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 2 uses
  %15 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_121PragmaOptimizeHandler12HandlePragmaERN5clang12PreprocessorENS1_16PragmaIntroducerERNS1_5TokenE:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !994, !noalias !1964
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %8, ptr noundef nonnull align 8 dereferenceable(15256) %i.by, i32 %i.bw, i32 noundef 1883) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1047, !noalias !1965, !nonnull !103, !align !104
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !333, !noalias !1965, !nonnull !103, !align !104
  call void @_ZN5clang5Lexer11getSpellingB5cxx11ERKNS_5TokenERKNS_13SourceManagerERKNS_11LangOptionsEPb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(776) %i.ca, ptr noundef nonnull align 8 dereferenceable(1136) %i.cc, ptr noundef null) #22
  %i.cd = load ptr, ptr %9, align 8, !tbaa !106
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !18
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %8, ptr %i.cd, i64 %i.cf)
  %i.cg = load ptr, ptr %9, align 8, !tbaa !106   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNK5clang14IdentifierInfo5isStrILm4EEEbRAT__Kc.exit.thread
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !19
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNK5clang14IdentifierInfo5isStrILm4EEEbRAT__Kc.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.h

bb.e:                                             ; preds = %_ZNK5clang14IdentifierInfo5isStrILm3EEEbRAT__Kc.exit, %_ZNK5clang14IdentifierInfo5isStrILm4EEEbRAT__Kc.exit
  %i.cl = phi i1 [ true, %_ZNK5clang14IdentifierInfo5isStrILm3EEEbRAT__Kc.exit ], [ false, %_ZNK5clang14IdentifierInfo5isStrILm4EEEbRAT__Kc.exit ]
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %4) #22
  %i.cm = load i16, ptr %i.a, align 8, !tbaa !989
  %.not = icmp eq i16 %i.cm, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.cn = load i32, ptr %4, align 8, !tbaa !353
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !994, !noalias !1966
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %10, ptr noundef nonnull align 8 dereferenceable(15256) %i.cp, i32 %i.cn, i32 noundef 1882) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1047, !noalias !1967, !nonnull !103, !align !104
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !333, !noalias !1967, !nonnull !103, !align !104
  call void @_ZN5clang5Lexer11getSpellingB5cxx11ERKNS_5TokenERKNS_13SourceManagerERKNS_11LangOptionsEPb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(776) %i.cr, ptr noundef nonnull align 8 dereferenceable(1136) %i.ct, ptr noundef null) #22
  %i.cu = load ptr, ptr %11, align 8, !tbaa !106
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !18
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %10, ptr %i.cu, i64 %i.cw)
  %i.cx = load ptr, ptr %11, align 8, !tbaa !106  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.f
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !19
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1969, !nonnull !103, !align !104
  %i.de = load i32, ptr %3, align 8, !tbaa !353
  call void @_ZN5clang4Sema19ActOnPragmaOptimizeEbNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640) %i.dd, i1 noundef zeroext %i.cl, i32 %i.de) #22
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK5clang17DiagnosticBuilderlsIA14_cEERKS0_RKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

declare void @_ZN5clang4Sema19ActOnPragmaOptimizeEbNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(18640), i1 noundef zeroext, i32) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121PragmaLoopHintHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN5clang13PragmaHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_121PragmaLoopHintHandler12HandlePragmaERN5clang12PreprocessorENS1_16PragmaIntroducerERNS1_5TokenE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3344) %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(20) %3) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.5 = alloca <{ i32, ptr, i16, i16, [4 x i8] }>, align 8 ; 4 uses
  %4 = alloca %"class.llvm::SmallVector.180", align 8 ; 10 uses
  %5 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %6 = alloca %"class.clang::Token", align 8      ; 2 uses
  %7 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 9 uses
  %8 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %9 = alloca %"class.clang::Token", align 8      ; 3 uses
  %10 = alloca %"class.clang::Token", align 8     ; 9 uses
  %11 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %.sroa.1.0.extract.shift = lshr i64 %2, 32
  %.sroa.1.0.extract.trunc = trunc nuw i64 %.sroa.1.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.0201.0.copyload = load i32, ptr %3, align 8, !tbaa !355 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx, i64 20, i1 false), !tbaa.struct !1114
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !348
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !349
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 1, ptr %i.c, align 4, !tbaa !350
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #22
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !989
  %.not = icmp eq i16 %i.e, 5
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.5.0..sroa_idx203 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.m = load i32, ptr %3, align 8, !tbaa !353
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !994, !noalias !1980
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %5, ptr noundef nonnull align 8 dereferenceable(15256) %i.o, i32 %i.m, i32 noundef 1877) #22
  %i.p = load ptr, ptr %5, align 8, !tbaa !998    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIA1_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !999
  %i.s = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.r) ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !998
  br label %_ZNK5clang17DiagnosticBuilderlsIA1_cEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIA1_cEERKS0_RKT_.exit: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, %bb.b
  %i.t = phi ptr [ %i.s, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.t, align 8, !tbaa !1011
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  store i8 2, ptr %i.x, align 1, !tbaa !19
  %i.y = load ptr, ptr %5, align 8, !tbaa !998    ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i8, ptr %i.y, align 8, !tbaa !1011 ; 2 uses
  %i.ab = add i8 %i.aa, 1                         ; 2 uses
  store i8 %i.ab, ptr %i.y, align 8, !tbaa !1011
  %i.ac = zext i8 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ac
  store i64 1, ptr %i.ad, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.af = zext i8 %i.ab to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 1, ptr %i.ag, align 1, !tbaa !19
  %i.ah = load ptr, ptr %5, align 8, !tbaa !998   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i8, ptr %i.ah, align 8, !tbaa !1011 ; 2 uses
  %i.ak = add i8 %i.aj, 1
  store i8 %i.ak, ptr %i.ah, align 8, !tbaa !1011
  %i.al = zext i8 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al
  store i64 ptrtoint (ptr @.str.20 to i64), ptr %i.am, align 8, !tbaa !105
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.critedge

thread-pre-split:                                 ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %.pr = load i16, ptr %i.d, align 8, !tbaa !989
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %thread-pre-split
  %i.an = phi i16 [ %.pr, %thread-pre-split ], [ 5, %.preheader ]
  switch i16 %i.an, label %bb.w [
    i16 5, label %bb.d
    i16 2, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ao = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1032 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 19 uses
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !1034 ; 2 uses
  %trunc = trunc i64 %i.as to i32
  switch i32 %trunc, label %12 [
    i32 9, label %bb.e
    i32 10, label %bb.f
    i32 6, label %bb.g
    i32 19, label %bb.i
    i32 15, label %bb.j
    i32 16, label %bb.k
    i32 12, label %bb.l
    i32 8, label %bb.m
    i32 28, label %bb.n
  ]

bb.e:                                             ; preds = %bb.d
  %i.at = load i64, ptr %i.ar, align 1
  %i.au = xor i64 %i.at, 8820707168201434486
  %i.av = getelementptr i8, ptr %i.ar, i64 8
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = xor i64 %i.ax, 101
  %i.az = or i64 %i.au, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread

bb.f:                                             ; preds = %bb.d
  %i.bc = load i64, ptr %i.ar, align 1
  %i.bd = xor i64 %i.bc, 7018134832910986857
  %i.be = getelementptr i8, ptr %i.ar, i64 8
  %i.bf = load i16, ptr %i.be, align 1
  %i.bg = zext i16 %i.bf to i64
  %i.bh = xor i64 %i.bg, 25974
  %i.bi = or i64 %i.bd, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %.not.i.i42 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i42, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.bl = load i32, ptr %i.ar, align 1
  %i.bm = xor i32 %i.bl, 1869770357
  %i.bn = getelementptr i8, ptr %i.ar, i64 4
  %i.bo = load i16, ptr %i.bn, align 1
  %i.bp = zext i16 %i.bo to i32
  %i.bq = xor i32 %i.bp, 27756
  %i.br = or i32 %i.bm, %i.bq
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %.not.i.i50 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i50, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread

bb.h:                                             ; preds = %bb.f
  %i.bu = load i64, ptr %i.ar, align 1
  %i.bv = xor i64 %i.bu, 8458438990456121700
  %i.bw = getelementptr i8, ptr %i.ar, i64 8
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i64
  %i.bz = xor i64 %i.by, 25972
  %i.ca = or i64 %i.bv, %i.bz
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %.not.i.i58 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i58, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread

bb.i:                                             ; preds = %bb.d
  %i.cd = load i128, ptr %i.ar, align 1
  %i.ce = xor i128 %i.cd, 132140799031274748734401000286743389558
  %i.cf = getelementptr i8, ptr %i.ar, i64 3
  %i.cg = load i128, ptr %i.cf, align 1
  %i.ch = xor i128 %i.cg, 134856309279803483975638186908823220084
  %i.ci = or i128 %i.ce, %i.ch
  %i.cj = icmp ne i128 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %.not.i.i66 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.i66, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread

bb.j:                                             ; preds = %bb.d
  %i.cl = load i64, ptr %i.ar, align 1
  %i.cm = xor i64 %i.cl, 8820707168201434486
  %i.cn = getelementptr i8, ptr %i.ar, i64 7
  %i.co = load i64, ptr %i.cn, align 1
  %i.cp = xor i64 %i.co, 7526751281380025722
  %i.cq = or i64 %i.cm, %i.cp
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %.not.i.i74 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i74, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread

bb.k:                                             ; preds = %bb.d
  %i.ct = load i128, ptr %i.ar, align 1
  %i.cu = icmp ne i128 %i.ct, 154763982032493081692686305240668204649
  %i.cv = zext i1 %i.cu to i32
  %.not.i.i82 = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i82, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread

bb.l:                                             ; preds = %bb.d
  %i.cw = load i64, ptr %i.ar, align 1
  %i.cx = xor i64 %i.cw, 7160561145524416117
  %i.cy = getelementptr i8, ptr %i.ar, i64 8
  %i.cz = load i32, ptr %i.cy, align 1
  %i.da = zext i32 %i.cz to i64
  %i.db = xor i64 %i.da, 1953396079
  %i.dc = or i64 %i.cx, %i.db
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %.not.i.i90 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i90, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread

bb.m:                                             ; preds = %bb.d
  %i.df = load i64, ptr %i.ar, align 1
  %i.dg = icmp ne i64 %i.df, 7308895159548143984
  %i.dh = zext i1 %i.dg to i32
  %.not.i.i98 = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i98, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread

bb.n:                                             ; preds = %bb.d
  %i.di = load i128, ptr %i.ar, align 1
  %i.dj = xor i128 %i.di, 154696239182432760096495877348960266608
  %i.dk = getelementptr i8, ptr %i.ar, i64 12
  %i.dl = load i128, ptr %i.dk, align 1
  %i.dm = xor i128 %i.dl, 144062678727791292867952080599574997364
  %i.dn = or i128 %i.dj, %i.dm
  %i.do = icmp ne i128 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %.not.i.i106 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i106, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread

12:                                               ; preds = %bb.d
  %13 = and i64 %i.as, 4294967295
  %.not.i.i.i.i112 = icmp eq i64 %13, 4
  br i1 %.not.i.i.i.i112, label %bb.o, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread

bb.o:                                             ; preds = %12
  %i.dq = load i32, ptr %i.ar, align 1
  %i.dr = icmp ne i32 %i.dq, 1835231596
  %i.ds = zext i1 %i.dr to i32
  %.not.i.i114 = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i114, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108, label %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread: ; preds = %bb.e, %bb.i, %bb.h, %bb.g, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %12, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.dt = load i32, ptr %3, align 8, !tbaa !353
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !994, !noalias !1981
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %7, ptr noundef nonnull align 8 dereferenceable(15256) %i.dv, i32 %i.dt, i32 noundef 1877) #22
  %i.dw = load ptr, ptr %7, align 8, !tbaa !998   ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i118, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i119, label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i119: ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !999
  %i.dz = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.dy) ; 2 uses
  store ptr %i.dz, ptr %7, align 8, !tbaa !998
  br label %_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIPNS_14IdentifierInfoEEERKS0_RKT_.exit: ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i119, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread
  %i.ea = phi ptr [ %i.dz, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i119 ], [ %i.dw, %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit116.thread ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.ea, align 8, !tbaa !1011
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed
  store i8 2, ptr %i.ee, align 1, !tbaa !19
  %i.ef = load ptr, ptr %7, align 8, !tbaa !998   ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load i8, ptr %i.ef, align 8, !tbaa !1011 ; 2 uses
  %i.ei = add i8 %i.eh, 1                         ; 2 uses
  store i8 %i.ei, ptr %i.ef, align 8, !tbaa !1011
  %i.ej = zext i8 %i.eh to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ej
  store i64 0, ptr %i.ek, align 8, !tbaa !105
  %i.el = ptrtoint ptr %i.ao to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.en = zext i8 %i.ei to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en
  store i8 5, ptr %i.eo, align 1, !tbaa !19
  %i.ep = load ptr, ptr %7, align 8, !tbaa !998   ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i8, ptr %i.ep, align 8, !tbaa !1011 ; 2 uses
  %i.es = add i8 %i.er, 1
  store i8 %i.es, ptr %i.ep, align 8, !tbaa !1011
  %i.et = zext i8 %i.er to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.et
  store i64 %i.el, ptr %i.eu, align 8, !tbaa !105
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.critedge

_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108: ; preds = %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #22
  %i.ev = load i16, ptr %i.d, align 8, !tbaa !989
  %.not291 = icmp eq i16 %i.ev, 22
  br i1 %.not291, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ew = load i32, ptr %3, align 8, !tbaa !353
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !994, !noalias !1982
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %8, ptr noundef nonnull align 8 dereferenceable(15256) %i.ey, i32 %i.ew, i32 noundef 14) #22
  %i.ez = load ptr, ptr %8, align 8, !tbaa !998   ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i123, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i124, label %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i124: ; preds = %bb.p
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !999
  %i.fc = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.fb) ; 2 uses
  store ptr %i.fc, ptr %8, align 8, !tbaa !998
  br label %_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_3tok9TokenKindEvEERKS0_OT_.exit: ; preds = %bb.p, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i124
  %i.fd = phi ptr [ %i.fc, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i124 ], [ %i.ez, %bb.p ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.ff = load i8, ptr %i.fd, align 8, !tbaa !1011
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fg
  store i8 4, ptr %i.fh, align 1, !tbaa !19
  %i.fi = load ptr, ptr %8, align 8, !tbaa !998   ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i8, ptr %i.fi, align 8, !tbaa !1011 ; 2 uses
  %i.fl = add i8 %i.fk, 1
  store i8 %i.fl, ptr %i.fi, align 8, !tbaa !1011
  %i.fm = zext i8 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fm
  store i64 22, ptr %i.fn, align 8, !tbaa !105
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.critedge

bb.q:                                             ; preds = %_ZN4llvm12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit108
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3) #22
  %i.fo = load ptr, ptr %i.g, align 8, !tbaa !1049
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = add i64 %i.fp, 15
  %i.fr = and i64 %i.fq, -16                      ; 2 uses
  %i.fs = add i64 %i.fr, 64                       ; 2 uses
  %i.ft = load i64, ptr %i.h, align 8, !tbaa !1050
  %i.fu = icmp ult i64 %i.fs, %i.ft
  br i1 %i.fu, label %bb.r, label %bb.s, !prof !1013

bb.r:                                             ; preds = %bb.q
  %i.fv = inttoptr i64 %i.fs to ptr
  store ptr %i.fv, ptr %i.g, align 8, !tbaa !1049
  %i.fw = inttoptr i64 %i.fr to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

bb.s:                                             ; preds = %bb.q
  %i.fx = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 noundef 64, i64 noundef 64, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit: ; preds = %bb.r, %bb.s
  %.0.i.i.i = phi ptr [ %i.fw, %bb.r ], [ %i.fx, %bb.s ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false)
  store i32 %.sroa.0201.0.copyload, ptr %9, align 8, !tbaa !355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx203, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, i64 20, i1 false), !tbaa.struct !1114
  %i.fz = call fastcc noundef zeroext i1 @_ZL18ParseLoopHintValueRN5clang12PreprocessorERNS_5TokenES2_S2_bRNS_18PragmaLoopHintInfoE(ptr noundef nonnull align 8 dereferenceable(3344) %1, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull byval(%"class.clang::Token") align 8 %9, ptr noundef nonnull byval(%"class.clang::Token") align 8 %6, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i)
  br i1 %i.fz, label %.critedge, label %bb.t

bb.t:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store i32 0, ptr %i.l, align 8
  store i16 462, ptr %i.i, align 8, !tbaa !989
  store i32 %.sroa.1.0.extract.trunc, ptr %10, align 8, !tbaa !353
  store i32 %.sroa.0201.0.copyload, ptr %i.j, align 4, !tbaa !354
  store ptr %.0.i.i.i, ptr %i.k, align 8, !tbaa !988
  %i.ga = load i32, ptr %i.b, align 8, !tbaa !349 ; 2 uses
  %i.gb = load i32, ptr %i.c, align 4, !tbaa !350
  %.not.i = icmp ult i32 %i.ga, %i.gb
  br i1 %.not.i, label %bb.v, label %bb.u, !prof !1013

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(20) %10)
  br label %thread-pre-split

bb.v:                                             ; preds = %bb.t
  %i.gc = zext i32 %i.ga to i64
  %i.gd = load ptr, ptr %4, align 8, !tbaa !348
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ge, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.gf = load i32, ptr %i.b, align 8, !tbaa !349
  %i.gg = add i32 %i.gf, 1
  store i32 %i.gg, ptr %i.b, align 8, !tbaa !349
  br label %thread-pre-split

bb.w:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.gh = load i32, ptr %3, align 8, !tbaa !353
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !994, !noalias !1983
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %11, ptr noundef nonnull align 8 dereferenceable(15256) %i.gj, i32 %i.gh, i32 noundef 2219) #22
  %i.gk = load ptr, ptr %11, align 8, !tbaa !998  ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i125, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i126, label %_ZNK5clang17DiagnosticBuilderlsIA11_cEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i126: ; preds = %bb.w
  %i.gl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !999
  %i.gn = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.gm) ; 2 uses
  store ptr %i.gn, ptr %11, align 8, !tbaa !998
  br label %_ZNK5clang17DiagnosticBuilderlsIA11_cEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsIA11_cEERKS0_RKT_.exit: ; preds = %bb.w, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i126
  %i.go = phi ptr [ %i.gn, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i126 ], [ %i.gk, %bb.w ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gq = load i8, ptr %i.go, align 8, !tbaa !1011
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gr
  store i8 1, ptr %i.gs, align 1, !tbaa !19
  %i.gt = load ptr, ptr %11, align 8, !tbaa !998  ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load i8, ptr %i.gt, align 8, !tbaa !1011 ; 2 uses
  %i.gw = add i8 %i.gv, 1
  store i8 %i.gw, ptr %i.gt, align 8, !tbaa !1011
  %i.gx = zext i8 %i.gv to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gx
  store i64 ptrtoint (ptr @.str.170 to i64), ptr %i.gy, align 8, !tbaa !105
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.critedge

bb.x:                                             ; preds = %bb.c
  %i.gz = load i32, ptr %i.b, align 8, !tbaa !349
  %i.ha = zext i32 %i.gz to i64
  %i.hb = mul nuw nsw i64 %i.ha, 24               ; 2 uses
  %i.hc = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.hb) #21, !noalias !1984 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.hc, i8 0, i64 %i.hb, i1 false), !noalias !1984
  %i.hd = load ptr, ptr %4, align 8, !tbaa !348   ; 2 uses
  %i.he = load i32, ptr %i.b, align 8, !tbaa !349 ; 4 uses
  %i.hf = icmp ugt i32 %i.he, 1
  br i1 %i.hf, label %bb.y, label %bb.z, !prof !1013

bb.y:                                             ; preds = %bb.x
  %i.hg = zext i32 %i.he to i64
  %.idx = mul nuw nsw i64 %i.hg, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hc, ptr align 8 %i.hd, i64 %.idx, i1 false)
  br label %_ZNSt10unique_ptrIA_N5clang5TokenESt14default_deleteIS2_EED2Ev.exit130

bb.z:                                             ; preds = %bb.x
end_hunk_2
