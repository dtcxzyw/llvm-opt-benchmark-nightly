Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParseExprCXX?download=true
inline.NumInlined: 3425
inline.NumDeleted: 1200
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5clang6Parser21ParseCXXNewExpressionEbNS_14SourceLocationE:bb.a

.thread84:                                        ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 64, ptr %i.b, align 2, !tbaa !333
  %i.gk = call noundef zeroext i1 @_ZN5clang6Parser9SkipUntilEN4llvm8ArrayRefINS_3tok9TokenKindEEENS0_14SkipUntilFlagsE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr nonnull %i.b, i64 1, i32 noundef 3) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.x

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit58
  %i.gl = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker12consumeCloseEv(ptr noundef nonnull align 8 dereferenceable(56) %10) ; 0 uses
  %.sroa.0.0.copyload.i60 = load i32, ptr %i.fg, align 4, !tbaa !331 ; 2 uses
  %i.gm = icmp eq i32 %.sroa.0.0.copyload.i60, 0
  br i1 %i.gm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 64, ptr %i.a, align 2, !tbaa !333
  %i.gn = call noundef zeroext i1 @_ZN5clang6Parser9SkipUntilEN4llvm8ArrayRefINS_3tok9TokenKindEEENS0_14SkipUntilFlagsE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr nonnull %i.a, i64 1, i32 noundef 3) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !342, !nonnull !95, !align !96
  %.sroa.09.0.copyload = load i32, ptr %8, align 4, !tbaa !331
  %i.gq = load ptr, ptr %9, align 8, !tbaa !330
  %i.gr = load i32, ptr %i.ex, align 8, !tbaa !329
  %i.gs = zext i32 %i.gr to i64
  %i.gt = call i64 @_ZN5clang4Sema18ActOnParenListExprENS_14SourceLocationES1_N4llvm15MutableArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(18640) %i.gp, i32 %.sroa.09.0.copyload, i32 %.sroa.0.0.copyload.i60, ptr %i.gq, i64 %i.gs) #18
  br label %bb.x

bb.x:                                             ; preds = %.thread84, %bb.w, %bb.v
  %.sroa.068.0 = phi i64 [ 0, %.thread84 ], [ 0, %bb.v ], [ %i.gt, %bb.w ]
  %cond = phi i1 [ false, %.thread84 ], [ false, %bb.v ], [ true, %bb.w ]
  %i.gu = load i8, ptr %i.fa, align 8, !tbaa !1098, !range !998, !noundef !95
  %i.gv = load ptr, ptr %10, align 8, !tbaa !1106, !nonnull !95
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !997
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.gw = load ptr, ptr %9, align 8, !tbaa !330   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.ew
  br i1 %i.gx, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj12EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.gw) #18
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj12EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj12EED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br i1 %cond, label %bb.ab, label %bb.ac

bb.z:                                             ; preds = %bb.n
  %i.gy = load ptr, ptr %i.i, align 8, !tbaa !94, !nonnull !95, !align !96
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 64
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !1030, !nonnull !95, !align !96
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = and i64 %i.hb, 8192
  %.not = icmp eq i64 %i.hc, 0
  br i1 %.not, label %.thread86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hd = load i32, ptr %i.f, align 8, !tbaa !325
  call void @_ZN5clang6Parser4DiagENS_14SourceLocationEj(ptr dead_on_unwind nonnull writable sret(%"class.clang::DiagnosticBuilder") align 8 %13, ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 %i.hd, i32 noundef 2134) #18
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %13) #18
  %i.he = call i64 @_ZN5clang6Parser21ParseBraceInitializerEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN4llvm11SmallVectorIPN5clang4ExprELj12EED2Ev.exit
  %.sroa.068.1 = phi i64 [ %.sroa.068.0, %_ZN4llvm11SmallVectorIPN5clang4ExprELj12EED2Ev.exit ], [ %i.he, %bb.aa ] ; 2 uses
  %i.hf = icmp eq i64 %.sroa.068.1, 1
  br i1 %i.hf, label %bb.ac, label %.thread86

.thread86:                                        ; preds = %bb.n, %bb.z, %bb.ab
  %.sroa.068.188 = phi i64 [ %.sroa.068.1, %bb.ab ], [ 0, %bb.z ], [ 0, %bb.n ]
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !342, !nonnull !95, !align !96
  %i.hi = load ptr, ptr %3, align 8, !tbaa !330
  %i.hj = load i32, ptr %i.l, align 8, !tbaa !329
  %i.hk = zext i32 %i.hj to i64
  %i.hl = and i64 %.sroa.068.188, -2
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = call i64 @_ZN5clang4Sema11ActOnCXXNewENS_14SourceLocationEbS1_N4llvm15MutableArrayRefIPNS_4ExprEEES1_NS_11SourceRangeERNS_10DeclaratorES5_(ptr noundef nonnull align 8 dereferenceable(18640) %i.hh, i32 %2, i1 noundef zeroext %1, i32 %.sroa.078.1, ptr %i.hi, i64 %i.hk, i32 %.sroa.076.1, i64 %.sroa.6.1, ptr noundef nonnull align 8 dereferenceable(2664) %5, ptr noundef %i.hm) #18
  br label %bb.ac

bb.ac:                                            ; preds = %.thread86, %_ZN4llvm11SmallVectorIPN5clang4ExprELj12EED2Ev.exit, %bb.ab, %bb.l, %_ZNK5clang10Declarator13isInvalidTypeEv.exit.thread
  %.sroa.029.6 = phi i64 [ 1, %_ZNK5clang10Declarator13isInvalidTypeEv.exit.thread ], [ 1, %bb.l ], [ 1, %_ZN4llvm11SmallVectorIPN5clang4ExprELj12EED2Ev.exit ], [ %i.hn, %.thread86 ], [ 1, %bb.ab ]
  call void @_ZN5clang10DeclaratorD2Ev(ptr noundef nonnull align 8 dead_on_return(2664) dereferenceable(2664) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 140
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !1025
  %.not.i.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not.i.i.i, label %_ZN5clang12CXXScopeSpecD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !1026
  call void @free(ptr noundef %i.hr) #18
  br label %_ZN5clang12CXXScopeSpecD2Ev.exit.i

_ZN5clang12CXXScopeSpecD2Ev.exit.i:               ; preds = %bb.ad, %bb.ac
  %i.hs = load ptr, ptr %i.t, align 8, !tbaa !1027, !nonnull !95, !align !96
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.hs, ptr noundef nonnull align 8 dereferenceable(40) %i.t) #18
  %i.ht = load ptr, ptr %i.u, align 8, !tbaa !330 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.v
  br i1 %i.hu, label %_ZN5clang13AttributePoolD2Ev.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN5clang12CXXScopeSpecD2Ev.exit.i
  call void @free(ptr noundef %i.ht) #18
  br label %_ZN5clang13AttributePoolD2Ev.exit.i.i

_ZN5clang13AttributePoolD2Ev.exit.i.i:            ; preds = %bb.ae, %_ZN5clang12CXXScopeSpecD2Ev.exit.i
  %i.hv = load ptr, ptr %i.p, align 8, !tbaa !330 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.q
  br i1 %i.hw, label %_ZN5clang8DeclSpecD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i.i
  call void @free(ptr noundef %i.hv) #18
  br label %_ZN5clang8DeclSpecD2Ev.exit

_ZN5clang8DeclSpecD2Ev.exit:                      ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.hx = load ptr, ptr %3, align 8, !tbaa !330   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.k
  br i1 %i.hy, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj12EED2Ev.exit61, label %bb.ag

bb.ag:                                            ; preds = %_ZN5clang8DeclSpecD2Ev.exit
  call void @free(ptr noundef %i.hx) #18
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj12EED2Ev.exit61

_ZN4llvm11SmallVectorIPN5clang4ExprELj12EED2Ev.exit61: ; preds = %_ZN5clang8DeclSpecD2Ev.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i64 %.sroa.029.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang6Parser27ParseExpressionListOrTypeIdERN4llvm15SmallVectorImplIPNS_4ExprEEERNS_10DeclaratorE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(2664) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94, !nonnull !95, !align !96
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1030, !nonnull !95, !align !96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 4096
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_ZN5clang6Parser16isTypeIdInParensEv.exit, label %.split

.split:                                           ; preds = %bb.a
  %i.h = call noundef zeroext i1 @_ZN5clang6Parser11isCXXTypeIdENS_25TentativeCXXTypeIdContextERb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.h, label %bb.b, label %bb.d

_ZN5clang6Parser16isTypeIdInParensEv.exit:        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = tail call noundef zeroext i1 @_ZN5clang6Parser24isTypeSpecifierQualifierERKNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(20) %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.split, %_ZN5clang6Parser16isTypeIdInParensEv.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !1155, !nonnull !95, !align !96
  call void @_ZN5clang6Parser27ParseSpecifierQualifierListERNS_8DeclSpecENS_23ImplicitTypenameContextENS_15AccessSpecifierENS0_15DeclSpecContextE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(304) %i.k, i32 noundef 0, i8 noundef zeroext 3, i32 noundef 0) #18
  %i.l = load ptr, ptr %2, align 8, !tbaa !1155, !nonnull !95, !align !96
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.m, align 8, !tbaa !331
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %.sroa.0.0.copyload.i, ptr %i.n, align 8, !tbaa !331
  call void @_ZN5clang6Parser15ParseDeclaratorERNS_10DeclaratorE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(2664) %2) #18
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 720
  %i.p = load i16, ptr %i.o, align 8
  %i.q = and i16 %i.p, 1
  %.not.i = icmp eq i16 %i.q, 0
  br i1 %.not.i, label %bb.c, label %_ZNK5clang10Declarator13isInvalidTypeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %2, align 8, !tbaa !1155, !nonnull !95, !align !96
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 520192
  %i.u = icmp eq i64 %i.t, 282624
  br label %_ZNK5clang10Declarator13isInvalidTypeEv.exit

bb.d:                                             ; preds = %.split, %_ZN5clang6Parser16isTypeIdInParensEv.exit
  %i.v = call noundef zeroext i1 @_ZN5clang6Parser19ParseExpressionListERN4llvm15SmallVectorImplIPNS_4ExprEEENS1_12function_refIFvvEEEbb(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr null, i64 0, i1 noundef zeroext false, i1 noundef zeroext false) #18
  br label %_ZNK5clang10Declarator13isInvalidTypeEv.exit

_ZNK5clang10Declarator13isInvalidTypeEv.exit:     ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i1 [ %i.v, %bb.d ], [ true, %bb.b ], [ %i.u, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang6Parser24ParseDirectNewDeclaratorERNS_10DeclaratorE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(2664) %1) #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %2 = alloca %"class.clang::BalancedDelimiterTracker", align 8 ; 17 uses
  %3 = alloca %"class.clang::ParsedAttributes", align 8 ; 14 uses
  %4 = alloca %"struct.clang::DeclaratorChunk", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %.repack6.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %6 = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %7 = insertelement <2 x ptr> %6, ptr %i.u, i64 1
  br label %.outer

.outer:                                           ; preds = %_ZN5clang16ParsedAttributesD2Ev.exit, %bb.a
  %.0.ph = phi i1 [ false, %_ZN5clang16ParsedAttributesD2Ev.exit ], [ true, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %_ZN5clang6Parser29CheckProhibitedCXX11AttributeEv.exit
  %i.am = load i16, ptr %i.b, align 8, !tbaa !327
  %i.an = icmp eq i16 %i.am, 20
  br i1 %i.an, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !94, !nonnull !95, !align !96 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2960
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !328 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2928
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !329
  %i.at = zext i32 %i.as to i64
  %i.au = icmp ult i64 %i.aq, %i.at
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 2920
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !330
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.aq
  br label %_ZN5clang6Parser9NextTokenEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ay = call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.ao, i32 noundef 1) #18
  br label %_ZN5clang6Parser9NextTokenEv.exit.i

_ZN5clang6Parser9NextTokenEv.exit.i:              ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.ax, %bb.d ], [ %i.ay, %bb.e ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ba = load i16, ptr %i.az, align 8, !tbaa !327
  %.not.i = icmp eq i16 %i.ba, 20
  br i1 %.not.i, label %_ZN5clang6Parser29CheckProhibitedCXX11AttributeEv.exit, label %_ZN5clang6Parser29CheckProhibitedCXX11AttributeEv.exit.thread

_ZN5clang6Parser29CheckProhibitedCXX11AttributeEv.exit: ; preds = %_ZN5clang6Parser9NextTokenEv.exit.i
  %i.bb = call noundef zeroext i1 @_ZN5clang6Parser32DiagnoseProhibitedCXX11AttributeEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #18
  br i1 %i.bb, label %bb.b, label %_ZN5clang6Parser29CheckProhibitedCXX11AttributeEv.exit.thread, !llvm.loop !1395

_ZN5clang6Parser29CheckProhibitedCXX11AttributeEv.exit.thread: ; preds = %_ZN5clang6Parser9NextTokenEv.exit.i, %_ZN5clang6Parser29CheckProhibitedCXX11AttributeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %i.d, ptr %2, align 8, !tbaa !1096
  %i.bc = load i8, ptr %i.d, align 8, !tbaa !997, !range !998, !noundef !95
  store i8 %i.bc, ptr %i.e, align 8, !tbaa !1098
  store i8 1, ptr %i.d, align 8, !tbaa !997
  store ptr %0, ptr %i.f, align 8, !tbaa !1100
  store i16 20, ptr %i.g, align 8, !tbaa !1102
  store i16 64, ptr %i.h, align 4, !tbaa !1103
  store i32 0, ptr %i.i, align 8, !tbaa !993
  store i32 0, ptr %i.j, align 4, !tbaa !993
  store i16 21, ptr %i.l, align 2, !tbaa !1104
  store i64 ptrtoint (ptr @_ZN5clang6Parser14ConsumeBracketEv to i64), ptr %i.k, align 8, !tbaa !1105
  store i64 0, ptr %.repack6.i, align 8, !tbaa !1105
  %i.bd = load i16, ptr %i.b, align 8, !tbaa !327
  %i.be = icmp eq i16 %i.bd, 20
  br i1 %i.be, label %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i, label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit

_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i: ; preds = %_ZN5clang6Parser29CheckProhibitedCXX11AttributeEv.exit.thread
  %i.bf = load i16, ptr %i.m, align 2, !tbaa !334 ; 2 uses
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !94, !nonnull !95, !align !96 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1030, !nonnull !95, !align !96
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = lshr i64 %i.bk, 32
  %i.bm = zext i16 %i.bf to i64
  %i.bn = icmp samesign ugt i64 %i.bl, %i.bm
  br i1 %i.bn, label %_ZN5clang6Parser14ConsumeBracketEv.exit, label %bb.f

_ZN5clang6Parser14ConsumeBracketEv.exit:          ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.bo = add i16 %i.bf, 1
  store i16 %i.bo, ptr %i.m, align 2, !tbaa !1146
  %i.bp = load i32, ptr %i.ak, align 8, !tbaa !325
  store i32 %i.bp, ptr %i.al, align 8, !tbaa !331
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.bg, ptr noundef nonnull align 8 dereferenceable(20) %i.ak) #18
  %.sroa.01.0.copyload.i = load i32, ptr %i.al, align 8, !tbaa !331
  store i32 %.sroa.01.0.copyload.i, ptr %i.i, align 8, !tbaa !331
  br label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit

bb.f:                                             ; preds = %_ZN5clang24BalancedDelimiterTracker8getDepthEv.exit.i
  %i.bq = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker16diagnoseOverflowEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18 ; 0 uses
  br label %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit

_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit: ; preds = %_ZN5clang6Parser29CheckProhibitedCXX11AttributeEv.exit.thread, %_ZN5clang6Parser14ConsumeBracketEv.exit, %bb.f
  br i1 %.0.ph, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit
  %i.br = load i16, ptr %i.b, align 8, !tbaa !327
  %i.bs = icmp eq i16 %i.br, 21
  br i1 %i.bs, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = call i64 @_ZN5clang6Parser15ParseExpressionENS_26TypoCorrectionTypeBehaviorE(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef 0) #18
  br label %bb.j

bb.i:                                             ; preds = %_ZN5clang24BalancedDelimiterTracker11consumeOpenEv.exit
  %i.bu = call i64 @_ZN5clang6Parser23ParseConstantExpressionEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.013.0 = phi i64 [ %i.bu, %bb.i ], [ %i.bt, %bb.h ] ; 2 uses
  %i.bv = icmp eq i64 %.sroa.013.0, 1
  br i1 %i.bv, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 21, ptr %i.a, align 2, !tbaa !333
  %i.bw = call noundef zeroext i1 @_ZN5clang6Parser9SkipUntilEN4llvm8ArrayRefINS_3tok9TokenKindEEENS0_14SkipUntilFlagsE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr nonnull %i.a, i64 1, i32 noundef 1) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bx = load i8, ptr %i.e, align 8, !tbaa !1098, !range !998, !noundef !95
  %i.by = load ptr, ptr %2, align 8, !tbaa !1106, !nonnull !95
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !997
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.loopexit

.thread:                                          ; preds = %bb.g, %bb.j
  %.sroa.013.017 = phi i64 [ %.sroa.013.0, %bb.j ], [ 0, %bb.g ]
  %i.bz = call noundef zeroext i1 @_ZN5clang24BalancedDelimiterTracker12consumeCloseEv(ptr noundef nonnull align 8 dereferenceable(56) %2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 0, ptr %3, align 8, !tbaa !993
  store i32 0, ptr %i.o, align 4, !tbaa !993
  store ptr %i.q, ptr %i.p, align 8, !tbaa !330
  store i32 0, ptr %i.r, align 8, !tbaa !329
  store i32 2, ptr %i.s, align 4, !tbaa !1000
  store <2 x ptr> %7, ptr %i.t, align 8, !tbaa !332
  store i32 0, ptr %i.v, align 8, !tbaa !329
  store i32 2, ptr %i.w, align 4, !tbaa !1000
  %i.ca = load i16, ptr %i.b, align 8, !tbaa !327
  %i.cb = add i16 %i.ca, -416
  %spec.select.i.i.i.i = icmp ult i16 %i.cb, 9
  br i1 %spec.select.i.i.i.i, label %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.thread.i, label %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.i

_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.i: ; preds = %.thread
  %i.cc = call noundef i32 @_ZN5clang6Parser25isCXX11AttributeSpecifierEbb(ptr noundef nonnull align 8 dereferenceable(2960) %0, i1 noundef zeroext false, i1 noundef zeroext false) #18
  %.not.i9 = icmp eq i32 %i.cc, 0
  br i1 %.not.i9, label %_ZN5clang6Parser25MaybeParseCXX11AttributesERNS_16ParsedAttributesEb.exit, label %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.thread.i

_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.thread.i: ; preds = %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.i, %.thread
  call void @_ZN5clang6Parser20ParseCXX11AttributesERNS_16ParsedAttributesE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(80) %3) #18
  br label %_ZN5clang6Parser25MaybeParseCXX11AttributesERNS_16ParsedAttributesEb.exit

_ZN5clang6Parser25MaybeParseCXX11AttributesERNS_16ParsedAttributesEb.exit: ; preds = %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.i, %_ZN5clang6Parser32isAllowedCXX11AttributeSpecifierEbb.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cd = and i64 %.sroa.013.017, -2
  %i.ce = inttoptr i64 %i.cd to ptr
  store i32 0, ptr %i.y, align 8, !tbaa !993, !alias.scope !1398
  store i32 0, ptr %i.z, align 4, !tbaa !993, !alias.scope !1398
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !330, !alias.scope !1398
  store i32 0, ptr %i.ac, align 8, !tbaa !329, !alias.scope !1398
  store i32 2, ptr %i.ad, align 4, !tbaa !1000, !alias.scope !1398
  store i32 2, ptr %4, align 8, !tbaa !1158, !alias.scope !1398
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.j, align 4, !tbaa !331 ; 2 uses
  %i.cf = load <2 x i32>, ptr %i.i, align 8, !tbaa !331
  store <2 x i32> %i.cf, ptr %i.x, align 4, !tbaa !331, !alias.scope !1398
  %i.cg = load i8, ptr %i.ae, align 8, !alias.scope !1398
  %i.ch = and i8 %i.cg, -128
  store i8 %i.ch, ptr %i.ae, align 8, !alias.scope !1398
  store ptr %i.ce, ptr %i.af, align 8, !tbaa !341, !alias.scope !1398
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang15DeclaratorChunkELb0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(144) %4)
  %i.ci = load ptr, ptr %i.ag, align 8, !tbaa !330
  %i.cj = load i32, ptr %i.ah, align 8, !tbaa !329
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [144 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = load ptr, ptr %i.p, align 8, !tbaa !330 ; 2 uses
  %i.cn = load i32, ptr %i.r, align 8, !tbaa !329
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.cl, i64 -120 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !330
  %i.cs = call noundef ptr @_ZN4llvm15SmallVectorImplIPN5clang10ParsedAttrEE6insertIPS3_vEES6_S6_T_S7_(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef %i.cr, ptr noundef %i.cm, ptr noundef %i.cp) ; 0 uses
  call void @_ZN5clang13AttributePool8takePoolERS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.t) #18
  store i32 0, ptr %i.v, align 8, !tbaa !329
  %i.ct = icmp eq i32 %.sroa.0.0.copyload.i10, 0
  br i1 %i.ct, label %_ZN5clang10Declarator11AddTypeInfoERKNS_15DeclaratorChunkEONS_16ParsedAttributesENS_14SourceLocationE.exit, label %_ZN5clang10Declarator11SetRangeEndENS_14SourceLocationE.exit.i

_ZN5clang10Declarator11SetRangeEndENS_14SourceLocationE.exit.i: ; preds = %_ZN5clang6Parser25MaybeParseCXX11AttributesERNS_16ParsedAttributesEb.exit
  store i32 %.sroa.0.0.copyload.i10, ptr %i.aj, align 4, !tbaa !331
  br label %_ZN5clang10Declarator11AddTypeInfoERKNS_15DeclaratorChunkEONS_16ParsedAttributesENS_14SourceLocationE.exit

_ZN5clang10Declarator11AddTypeInfoERKNS_15DeclaratorChunkEONS_16ParsedAttributesENS_14SourceLocationE.exit: ; preds = %_ZN5clang6Parser25MaybeParseCXX11AttributesERNS_16ParsedAttributesEb.exit, %_ZN5clang10Declarator11SetRangeEndENS_14SourceLocationE.exit.i
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !330 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ab
  br i1 %i.cv, label %_ZN5clang15DeclaratorChunkD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5clang10Declarator11AddTypeInfoERKNS_15DeclaratorChunkEONS_16ParsedAttributesENS_14SourceLocationE.exit
  call void @free(ptr noundef %i.cu) #18
  br label %_ZN5clang15DeclaratorChunkD2Ev.exit

_ZN5clang15DeclaratorChunkD2Ev.exit:              ; preds = %_ZN5clang10Declarator11AddTypeInfoERKNS_15DeclaratorChunkEONS_16ParsedAttributesENS_14SourceLocationE.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.sroa.0.0.copyload.i12 = load i32, ptr %i.j, align 4, !tbaa !331
  %.not = icmp eq i32 %.sroa.0.0.copyload.i12, 0
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !1027, !nonnull !95, !align !96
  call void @_ZN5clang16AttributeFactory11reclaimPoolERNS_13AttributePoolE(ptr noundef nonnull align 8 dereferenceable(1296) %i.cw, ptr noundef nonnull align 8 dereferenceable(40) %i.t) #18
  %i.cx = load ptr, ptr %5, align 8, !tbaa !330   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.u
  br i1 %i.cy, label %_ZN5clang13AttributePoolD2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN5clang15DeclaratorChunkD2Ev.exit
  call void @free(ptr noundef %i.cx) #18
  br label %_ZN5clang13AttributePoolD2Ev.exit.i

_ZN5clang13AttributePoolD2Ev.exit.i:              ; preds = %bb.l, %_ZN5clang15DeclaratorChunkD2Ev.exit
  %i.cz = load ptr, ptr %i.p, align 8, !tbaa !330 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.q
  br i1 %i.da, label %_ZN5clang16ParsedAttributesD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i
  call void @free(ptr noundef %i.cz) #18
  br label %_ZN5clang16ParsedAttributesD2Ev.exit

_ZN5clang16ParsedAttributesD2Ev.exit:             ; preds = %_ZN5clang13AttributePoolD2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.db = load i8, ptr %i.e, align 8, !tbaa !1098, !range !998, !noundef !95
  %i.dc = load ptr, ptr %2, align 8, !tbaa !1106, !nonnull !95
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !997
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.not, label %.loopexit, label %.outer, !llvm.loop !1395

.loopexit:                                        ; preds = %_ZN5clang16ParsedAttributesD2Ev.exit, %bb.b, %.critedge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN5clang6Parser21ParseCXXNewExpressionEbNS_14SourceLocationEENK3$_0clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1193   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !342, !nonnull !95, !align !96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1196, !nonnull !95, !align !96
  %i.f = tail call { ptr, i8 } @_ZN5clang4Sema13ActOnTypeNameERNS_10DeclaratorE(ptr noundef nonnull align 8 dereferenceable(18640) %i.c, ptr noundef nonnull align 8 dereferenceable(2664) %i.e) #18
  %.fca.0.extract = extractvalue { ptr, i8 } %i.f, 0 ; 2 uses
  %.not = icmp eq ptr %.fca.0.extract, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !342, !nonnull !95, !align !96
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 728
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1070
  %i.j = ptrtoint ptr %.fca.0.extract to i64
  %i.k = and i64 %i.j, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !1177
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i5 = load i64, ptr %i.n, align 8, !tbaa !341
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !1196, !nonnull !95, !align !96
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 92
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 4, !tbaa !331
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1197, !nonnull !95, !align !96 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !330
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !329
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1198, !nonnull !95, !align !1199
  %.sroa.0.0.copyload = load i32, ptr %i.x, align 4, !tbaa !331
  %i.y = tail call i64 @_ZN5clang18SemaCodeCompletion31ProduceConstructorSignatureHelpENS_8QualTypeENS_14SourceLocationEN4llvm8ArrayRefIPNS_4ExprEEES2_b(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 %.sroa.0.0.copyload.i5, i32 %.sroa.0.0.copyload.i.i, ptr %i.s, i64 %i.v, i32 %.sroa.0.0.copyload, i1 noundef zeroext false) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store i8 1, ptr %i.z, align 8, !tbaa !1172
  ret void
}

declare i64 @_ZN5clang4Sema11ActOnCXXNewENS_14SourceLocationEbS1_N4llvm15MutableArrayRefIPNS_4ExprEEES1_NS_11SourceRangeERNS_10DeclaratorES5_(ptr noundef nonnull align 8 dereferenceable(18640), i32, i1 noundef zeroext, i32, ptr, i64, i32, i64, ptr noundef nonnull align 8 dereferenceable(2664), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang6Parser24ParseCXXDeleteExpressionEbNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(2960) initializes((40, 44)) %0, i1 noundef zeroext %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %.sroa.13 = alloca %"class.clang::PreferredTypeBuilder", align 8 ; 5 uses
  %.sroa.16 = alloca <{ i32, i32, ptr, i16, i16 }>, align 8 ; 5 uses
  %i.b = alloca [2 x i16], align 2                ; 5 uses
  %3 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 13 uses
  %4 = alloca %"class.clang::FixItHint", align 8  ; 11 uses
  %5 = alloca %"class.clang::FixItHint", align 8  ; 11 uses
  %6 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 7 uses
  %7 = alloca %"class.clang::BalancedDelimiterTracker", align 8 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !325
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !331
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94, !nonnull !95, !align !96
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.g, ptr noundef nonnull align 8 dereferenceable(20) %i.c) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !327
  %i.j = icmp eq i16 %i.i, 20
  br i1 %i.j, label %bb.b, label %bb.ao

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !94, !nonnull !95, !align !96 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2960
  %i.m = load i64, ptr %i.l, align 8, !tbaa !328  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2928
  %i.o = load i32, ptr %i.n, align 8, !tbaa !329
  %i.p = zext i32 %i.o to i64
  %i.q = icmp ult i64 %i.m, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 2920
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !330
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.m
  br label %_ZN5clang6Parser9NextTokenEv.exit

bb.d:                                             ; preds = %bb.b
  %i.u = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.k, i32 noundef 1) #18
  br label %_ZN5clang6Parser9NextTokenEv.exit

_ZN5clang6Parser9NextTokenEv.exit:                ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.t, %bb.c ], [ %i.u, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.w = load i16, ptr %i.v, align 8, !tbaa !327
  %i.x = icmp eq i16 %i.w, 21
  br i1 %i.x, label %bb.e, label %bb.ao

bb.e:                                             ; preds = %_ZN5clang6Parser9NextTokenEv.exit
  %i.y = load i16, ptr %i.h, align 8
  %i.z = icmp eq i16 %i.y, 1
  br i1 %i.z, label %_ZN5clang6Parser17GetLookAheadTokenEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !94, !nonnull !95, !align !96 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2960
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !328
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2928
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !329
  %i.ag = zext i32 %i.af to i64
  %i.ah = icmp ult i64 %i.ad, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 2920
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !330
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ad
  br label %_ZN5clang6Parser17GetLookAheadTokenEj.exit

bb.h:                                             ; preds = %bb.f
  %i.al = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.aa, i32 noundef 2) #18
  br label %_ZN5clang6Parser17GetLookAheadTokenEj.exit

_ZN5clang6Parser17GetLookAheadTokenEj.exit:       ; preds = %bb.e, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.al, %bb.h ], [ %i.ak, %bb.g ], [ %i.c, %bb.e ]
  %.sroa.3.0..0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %.sroa.3.0.copyload = load i16, ptr %.sroa.3.0..0.i.sroa_idx, align 8, !tbaa !333
  switch i16 %.sroa.3.0.copyload, label %bb.am [
    i16 47, label %bb.r
    i16 24, label %bb.r
    i16 22, label %bb.i
  ]

bb.i:                                             ; preds = %_ZN5clang6Parser17GetLookAheadTokenEj.exit
  %i.am = load i16, ptr %i.h, align 8
  %i.an = icmp eq i16 %i.am, 1
  br i1 %i.an, label %_ZN5clang6Parser17GetLookAheadTokenEj.exit35, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !94, !nonnull !95, !align !96 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2960
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !328
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 2928
  %i.at = load i32, ptr %i.as, align 8, !tbaa !329
  %i.au = zext i32 %i.at to i64
  %i.av = icmp ult i64 %i.ar, %i.au
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 2920
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !330
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.ar
  br label %_ZN5clang6Parser17GetLookAheadTokenEj.exit35

bb.l:                                             ; preds = %bb.j
  %i.az = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.ao, i32 noundef 3) #18
  br label %_ZN5clang6Parser17GetLookAheadTokenEj.exit35

_ZN5clang6Parser17GetLookAheadTokenEj.exit35:     ; preds = %bb.i, %bb.k, %bb.l
  %.0.i34 = phi ptr [ %i.az, %bb.l ], [ %i.ay, %bb.k ], [ %i.c, %bb.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i34, i64 16
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !327
  %i.bc = icmp eq i16 %i.bb, 23
  br i1 %i.bc, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_ZN5clang6Parser17GetLookAheadTokenEj.exit35
  %i.bd = load i16, ptr %i.h, align 8
  %i.be = icmp eq i16 %i.bd, 1
  br i1 %i.be, label %_ZN5clang6Parser17GetLookAheadTokenEj.exit37, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !94, !nonnull !95, !align !96 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2960
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !328
  %i.bi = add i64 %i.bh, 2                        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 2928
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !329
  %i.bl = zext i32 %i.bk to i64
  %i.bm = icmp ult i64 %i.bi, %i.bl
  br i1 %i.bm, label %bb.o, label %bb.p

end_hunk_0
