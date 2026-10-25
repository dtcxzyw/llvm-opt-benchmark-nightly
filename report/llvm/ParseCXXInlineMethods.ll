Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParseCXXInlineMethods?download=true
inline.NumInlined: 1834
inline.NumDeleted: 983
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang6Parser34ParseCXXNonStaticMemberInitializerEPNS_4DeclE:bb.a
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !112, !nonnull !23, !align !113
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.cc, ptr noundef nonnull align 8 dereferenceable(20) %i.ae) #16
  %i.cd = tail call noundef zeroext i1 @_ZN5clang6Parser20ConsumeAndStoreUntilENS_3tok9TokenKindES2_RN4llvm11SmallVectorINS_5TokenELj4EEEbb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i16 noundef zeroext 25, i16 noundef zeroext 25, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i1 noundef zeroext true, i1 noundef zeroext true), !inline_history !0 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang21LateParsedDeclarationELb1EE9push_backES3_.exit
  %i.ce = tail call noundef zeroext i1 @_ZN5clang6Parser26ConsumeAndStoreInitializerERN4llvm11SmallVectorINS_5TokenELj4EEENS_14CachedInitKindE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i32 noundef 1) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5clang6Parser12ConsumeBraceEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i16 1, ptr %i.cf, align 8, !tbaa !17
  %i.cg = load i32, ptr %i.ae, align 8, !tbaa !343
  store i32 %i.cg, ptr %2, align 8, !tbaa !343
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.ch, align 8, !tbaa !1063
  %i.ci = load i32, ptr %i.f, align 8, !tbaa !350 ; 2 uses
  %i.cj = load i32, ptr %i.g, align 4, !tbaa !351
  %.not.i18 = icmp ult i32 %i.ci, %i.cj
  br i1 %.not.i18, label %bb.s, label %bb.r, !prof !352

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit19

bb.s:                                             ; preds = %bb.q
  %i.ck = zext i32 %i.ci to i64
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !353
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.cn = load i32, ptr %i.f, align 8, !tbaa !350
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.f, align 8, !tbaa !350
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit19

_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit19: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6Parser26ConsumeAndStoreInitializerERN4llvm11SmallVectorINS_5TokenELj4EEENS_14CachedInitKindE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.8 = alloca %"class.clang::PreferredTypeBuilder", align 8 ; 4 uses
  %.sroa.10 = alloca <{ i32, i32, ptr, i16, i16 }>, align 8 ; 4 uses
  %3 = alloca %"class.clang::Sema::TentativeAnalysisScope", align 8 ; 11 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 56 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 42 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2760 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2752 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.m = icmp eq i32 %2, 0
  %i.n = icmp eq i32 %2, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2680 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 26 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2688
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.a
  %.077.ph = phi i32 [ 0, %bb.a ], [ %.077.ph.be, %.outer.backedge ] ; 23 uses
  %.072.ph = phi i32 [ 0, %bb.a ], [ %.072.ph.be, %.outer.backedge ] ; 24 uses
  %.071.ph = phi i1 [ true, %bb.a ], [ false, %.outer.backedge ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %i.ab = load i16, ptr %i.c, align 8, !tbaa !17
  switch i16 %i.ab, label %.loopexit [
    i16 27, label %bb.c
    i16 67, label %bb.g
    i16 1, label %.loopexit250
    i16 47, label %bb.r
    i16 62, label %bb.s
    i16 76, label %bb.t
    i16 53, label %.loopexit251
    i16 52, label %.loopexit252
    i16 149, label %bb.v
    i16 143, label %bb.ae
    i16 22, label %bb.ak
    i16 20, label %bb.as
    i16 24, label %bb.ba
    i16 23, label %bb.bi
    i16 21, label %bb.bs
    i16 25, label %bb.cb
    i16 3, label %bb.ck
    i16 14, label %bb.cn
    i16 15, label %bb.cn
    i16 17, label %bb.cn
    i16 18, label %bb.cn
    i16 19, label %bb.cn
    i16 64, label %bb.cq
  ]

bb.c:                                             ; preds = %bb.b
  %i.ac = load i16, ptr %i.i, align 8, !tbaa !342
  %i.ad = icmp eq i16 %i.ac, 1
  br i1 %i.ad, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !112, !nonnull !23, !align !113 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2960
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !376 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2928
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !350
  %i.aj = zext i32 %i.ai to i64
  %i.ak = icmp ult i64 %i.ag, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 2920
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !353
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ag
  br label %_ZN5clang6Parser9NextTokenEv.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.ae, i32 noundef 1) #16
  br label %_ZN5clang6Parser9NextTokenEv.exit

_ZN5clang6Parser9NextTokenEv.exit:                ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.an, %bb.e ], [ %i.ao, %bb.f ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !17
  %i.ar = icmp eq i16 %i.aq, 23
  br i1 %i.ar, label %.loopexit250, label %.loopexit

bb.g:                                             ; preds = %bb.b
  %.not93 = icmp eq i32 %.072.ph, 0
  br i1 %.not93, label %.loopexit250, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not94 = icmp eq i32 %.077.ph, 0
  br i1 %.not94, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !tbaa.struct !1053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(20) %i.b, i64 20, i1 false), !tbaa.struct !1054
  %i.as = load i32, ptr %i.p, align 8, !tbaa !350 ; 6 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = load <2 x i16>, ptr %i.i, align 8, !tbaa !35
  %i.av = load i16, ptr %i.d, align 4, !tbaa !1044
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !112, !nonnull !23, !align !113
  call void @_ZN5clang12Preprocessor24EnableBacktrackAtThisPosEb(ptr noundef nonnull align 8 dereferenceable(3344) %i.aw, i1 noundef zeroext true) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !391, !nonnull !23, !align !113 ; 5 uses
  store ptr %i.ax, ptr %3, align 8, !tbaa !1183
  store ptr %i.ax, ptr %i.r, align 8, !tbaa !1183
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 13760 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1184
  store ptr %i.r, ptr %i.ay, align 8, !tbaa !1184
  store ptr %i.az, ptr %i.s, align 8, !tbaa !1186
  store i8 0, ptr %i.t, align 8, !tbaa !1189
  store i8 1, ptr %i.u, align 1, !tbaa !1190
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 248
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1191, !nonnull !23, !align !113
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 204
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !1226
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i8
  store i8 %i.bf, ptr %i.v, align 2, !tbaa !1227
  store ptr null, ptr %i.w, align 8, !tbaa !1228
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 11216 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !1229, !range !22, !noundef !23
  store i8 %i.bh, ptr %i.x, align 8, !tbaa !1231
  store i8 1, ptr %i.bg, align 8, !tbaa !1229
  %i.bi = load i32, ptr %i.b, align 8, !tbaa !343
  store i32 %i.bi, ptr %i.k, align 8, !tbaa !344
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !112, !nonnull !23, !align !113
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.bj, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #16
  switch i32 %2, label %bb.m [
    i32 1, label %bb.j
    i32 0, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.bk = call noundef i32 @_ZN5clang6Parser26TryParseInitDeclaratorListEb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i1 noundef zeroext false) #16 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 2
  br i1 %i.bl, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bm = load i16, ptr %i.c, align 8, !tbaa !17
  %.not249 = icmp eq i16 %i.bm, 64
  %spec.select = select i1 %.not249, i32 2, i32 1
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.a, align 1, !tbaa !21
  %i.bn = call noundef i32 @_ZN5clang6Parser34TryParseParameterDeclarationClauseEPbbNS_23ImplicitTypenameContextE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull %i.a, i1 noundef zeroext true, i32 noundef 0) #16 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 2
  %i.bp = load i8, ptr %i.a, align 1, !range !22
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond = select i1 %i.bo, i1 %i.bq, i1 false
  %spec.store.select = select i1 %or.cond, i32 1, i32 %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.l, %bb.i
  %.083 = phi i32 [ 3, %bb.i ], [ %spec.store.select, %bb.l ], [ %spec.select, %bb.k ], [ %i.bk, %bb.j ]
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !112, !nonnull !23, !align !113
  call void @_ZN5clang12Preprocessor9BacktrackEv(ptr noundef nonnull align 8 dereferenceable(3344) %i.br) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false), !tbaa.struct !1053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10, i64 20, i1 false), !tbaa.struct !1054
  %i.bs = load i32, ptr %i.p, align 8, !tbaa !350 ; 3 uses
  %i.bt = icmp eq i32 %i.as, %i.bs
  br i1 %i.bt, label %_ZN5clang6Parser22TentativeParsingAction6RevertEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = icmp ult i32 %i.as, %i.bs
  br i1 %i.bu, label %.sink.split.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.z, align 4, !tbaa !351
  %i.bw = icmp ugt i32 %i.as, %i.bv
  br i1 %i.bw, label %bb.p, label %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.aa, i64 noundef %i.at, i64 noundef 8) #16
  %.pre.i.i.i = load i32, ptr %i.p, align 8, !tbaa !350
  br label %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.pre-phi.i.i.i.in = phi i32 [ %i.bs, %bb.o ], [ %.pre.i.i.i, %bb.p ] ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.as, %.pre-phi.i.i.i.in
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i
  %.pre-phi.i.i.i = zext i32 %.pre-phi.i.i.i.in to i64 ; 2 uses
  %i.bx = load ptr, ptr %i.y, align 8, !tbaa !353
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %.pre-phi.i.i.i
  %i.bz = sub nsw i64 %i.at, %.pre-phi.i.i.i
  %i.ca = shl nsw i64 %i.bz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.by, i8 0, i64 %i.ca, i1 false), !tbaa !1059
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i, %bb.n
  store i32 %i.as, ptr %i.p, align 8, !tbaa !350
  br label %_ZN5clang6Parser22TentativeParsingAction6RevertEv.exit

_ZN5clang6Parser22TentativeParsingAction6RevertEv.exit: ; preds = %bb.m, %.sink.split.i.i.i
  store <2 x i16> %i.au, ptr %i.i, align 8, !tbaa !35
  store i16 %i.av, ptr %i.d, align 4, !tbaa !1044
  %i.cb = and i32 %.083, -3
  %or.cond3.not = icmp eq i32 %i.cb, 1
  %i.cc = load i8, ptr %i.x, align 8, !tbaa !1231, !range !22, !noundef !23
  %i.cd = load ptr, ptr %3, align 8, !tbaa !1232, !nonnull !23, !align !113
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 11216
  store i8 %i.cc, ptr %i.ce, align 8, !tbaa !1229
  %i.cf = load ptr, ptr %i.r, align 8, !tbaa !1233, !nonnull !23, !align !113 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 248
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1191, !nonnull !23, !align !113 ; 2 uses
  %i.ci = load i8, ptr %i.v, align 2, !tbaa !1227, !range !22, !noundef !23
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 204 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !1226
  %i.cl = icmp eq i32 %i.ck, 5
  br i1 %i.cl, label %bb.q, label %_ZN5clang4Sema22TentativeAnalysisScopeD2Ev.exit

bb.q:                                             ; preds = %_ZN5clang6Parser22TentativeParsingAction6RevertEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 194
  store i8 1, ptr %i.cm, align 2, !tbaa !1234
  br label %_ZN5clang4Sema22TentativeAnalysisScopeD2Ev.exit

_ZN5clang4Sema22TentativeAnalysisScopeD2Ev.exit:  ; preds = %_ZN5clang6Parser22TentativeParsingAction6RevertEv.exit, %bb.q
  %i.cn = trunc nuw i8 %i.ci to i1
  %i.co = select i1 %i.cn, i32 0, i32 3
  store i32 %i.co, ptr %i.cj, align 4, !tbaa !1226
  %i.cp = load ptr, ptr %i.s, align 8, !tbaa !1186
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 13760
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !1235
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br i1 %or.cond3.not, label %.loopexit, label %.loopexit250

bb.r:                                             ; preds = %bb.b
  %i.cr = add i32 %.072.ph, 1
  br label %.loopexit

bb.s:                                             ; preds = %bb.b
  %i.cs = call noundef zeroext i1 @_ZN5clang6Parser26ConsumeAndStoreConditionalERN4llvm11SmallVectorINS_5TokenELj4EEE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br i1 %i.cs, label %.outer.backedge, label %.loopexit250

bb.t:                                             ; preds = %bb.b
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !112, !nonnull !23, !align !113
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !341, !nonnull !23, !align !113
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = and i64 %i.cw, 8192
  %.not = icmp eq i64 %i.cx, 0
  br i1 %.not, label %.loopexit, label %.loopexit251.thread

.loopexit251.thread:                              ; preds = %bb.t
  %spec.select95 = call i32 @llvm.usub.sat.i32(i32 %.072.ph, i32 1)
  %spec.select98 = call i32 @llvm.usub.sat.i32(i32 %.077.ph, i32 1)
  br label %bb.u

.loopexit251:                                     ; preds = %bb.b
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !112
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %.pre290 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !341
  %.pre291 = load i64, ptr %.pre290, align 8
  %.pre292 = and i64 %.pre291, 8192
  %i.cy = icmp eq i64 %.pre292, 0
  br i1 %i.cy, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.loopexit251.thread, %.loopexit251
  %.274327 = phi i32 [ %spec.select95, %.loopexit251.thread ], [ %.072.ph, %.loopexit251 ]
  %.178326 = phi i32 [ %spec.select98, %.loopexit251.thread ], [ %.077.ph, %.loopexit251 ]
  %spec.select96 = call i32 @llvm.usub.sat.i32(i32 %.274327, i32 1)
  %spec.select99 = call i32 @llvm.usub.sat.i32(i32 %.178326, i32 1)
  br label %.loopexit252

.loopexit252:                                     ; preds = %bb.b, %bb.u
  %.279 = phi i32 [ %spec.select99, %bb.u ], [ %.077.ph, %bb.b ]
  %.476 = phi i32 [ %spec.select96, %bb.u ], [ %.072.ph, %bb.b ]
  %spec.select97 = call i32 @llvm.usub.sat.i32(i32 %.476, i32 1)
  %spec.select100 = call i32 @llvm.usub.sat.i32(i32 %.279, i32 1)
  br label %.loopexit

bb.v:                                             ; preds = %bb.b
  %i.cz = load i32, ptr %i.e, align 8, !tbaa !350 ; 2 uses
  %i.da = load i32, ptr %i.f, align 4, !tbaa !351
  %.not.i = icmp ult i32 %i.cz, %i.da
  br i1 %.not.i, label %bb.x, label %bb.w, !prof !352

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit

bb.x:                                             ; preds = %bb.v
  %i.db = zext i32 %i.cz to i64
  %i.dc = load ptr, ptr %1, align 8, !tbaa !353
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.de = load i32, ptr %i.e, align 8, !tbaa !350
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.e, align 8, !tbaa !350
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit: ; preds = %bb.w, %bb.x
  %i.dg = load i32, ptr %i.b, align 8, !tbaa !343
  store i32 %i.dg, ptr %i.k, align 8, !tbaa !344
  %i.dh = load ptr, ptr %i.l, align 8, !tbaa !112, !nonnull !23, !align !113
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.dh, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #16
  %i.di = load i16, ptr %i.c, align 8, !tbaa !17
  %i.dj = icmp eq i16 %i.di, 5
  br i1 %i.dj, label %bb.y, label %.outer.backedge

bb.y:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit
  %i.dk = load i32, ptr %i.e, align 8, !tbaa !350 ; 2 uses
  %i.dl = load i32, ptr %i.f, align 4, !tbaa !351
  %.not.i102 = icmp ult i32 %i.dk, %i.dl
  br i1 %.not.i102, label %bb.aa, label %bb.z, !prof !352

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit103

bb.aa:                                            ; preds = %bb.y
  %i.dm = zext i32 %i.dk to i64
  %i.dn = load ptr, ptr %1, align 8, !tbaa !353
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.dp = load i32, ptr %i.e, align 8, !tbaa !350
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.e, align 8, !tbaa !350
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit103

_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit103: ; preds = %bb.z, %bb.aa
  %i.dr = load i32, ptr %i.b, align 8, !tbaa !343
  store i32 %i.dr, ptr %i.k, align 8, !tbaa !344
  %i.ds = load ptr, ptr %i.l, align 8, !tbaa !112, !nonnull !23, !align !113
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ds, ptr noundef nonnull align 8 dereferenceable(20) %i.b) #16
  %i.dt = load i16, ptr %i.c, align 8, !tbaa !17
  %i.du = icmp eq i16 %i.dt, 47
  br i1 %i.du, label %bb.ab, label %.outer.backedge

bb.ab:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit103
  %i.dv = add i32 %.072.ph, 1
  %i.dw = add i32 %.077.ph, 1
  %i.dx = load i32, ptr %i.e, align 8, !tbaa !350 ; 2 uses
  %i.dy = load i32, ptr %i.f, align 4, !tbaa !351
  %.not.i105 = icmp ult i32 %i.dx, %i.dy
  br i1 %.not.i105, label %bb.ad, label %bb.ac, !prof !352

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit106

bb.ad:                                            ; preds = %bb.ab
  %i.dz = zext i32 %i.dx to i64
  %i.ea = load ptr, ptr %1, align 8, !tbaa !353
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ec = load i32, ptr %i.e, align 8, !tbaa !350
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.e, align 8, !tbaa !350
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang5TokenELb1EE9push_backERKS2_.exit106

end_hunk_0
