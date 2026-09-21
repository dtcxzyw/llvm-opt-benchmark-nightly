Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TokenLexer?download=true
inline.NumInlined: 1027
inline.NumDeleted: 481
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang10TokenLexer26updateLocForMacroArgTokensENS_14SourceLocationEPNS_5TokenES3_:bb.a

"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit56.split.loop.exit": ; preds = %bb.z
  %i.dx = getelementptr inbounds nuw i8, ptr %.02983.i.i.i.i.i.i, i64 72
  br label %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i"

"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit56.split.loop.exit59": ; preds = %bb.y
  %i.dy = getelementptr inbounds nuw i8, ptr %.02983.i.i.i.i.i.i, i64 48
  br label %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i"

"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit56.split.loop.exit61": ; preds = %bb.x
  %i.dz = getelementptr inbounds nuw i8, ptr %.02983.i.i.i.i.i.i, i64 24
  br label %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i"

"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i": ; preds = %.lr.ph.i.i.i.i.i42.i, %.lr.ph.i.i.i.i.i.i, %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit56.split.loop.exit", %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit56.split.loop.exit59", %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit56.split.loop.exit61", %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit.split.loop.exit", %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit.split.loop.exit67", %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit.split.loop.exit69", %bb.ae, %._crit_edge._crit_edge95.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.ab, %bb.o, %bb.n, %bb.l, %bb.j
  %.pn.in.i = phi ptr [ %i.ct, %bb.ae ], [ %.029.lcssa.i.i.i.i.i33.i, %bb.ab ], [ %.2.i.i.i.i.i34.i, %._crit_edge._crit_edge95.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i, %bb.l ], [ %.029.lcssa.i.i.i.i.i.i, %bb.j ], [ %i.ah, %bb.o ], [ %.2.i.i.i.i.i.i, %bb.n ], [ %.1.i.i.i.i.i39.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.02967.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.dv, %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit.split.loop.exit67" ], [ %i.du, %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit.split.loop.exit" ], [ %i.dw, %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit.split.loop.exit69" ], [ %i.dx, %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit56.split.loop.exit" ], [ %i.dy, %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit56.split.loop.exit59" ], [ %i.dz, %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i.loopexit56.split.loop.exit61" ], [ %.02983.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i42.i ] ; 4 uses
  %.pn.i = ptrtoint ptr %.pn.in.i to i64
  %.sroa.10.0.in.i = sub i64 %.pn.i, %i.y
  %i.ea = getelementptr i8, ptr %.038, i64 %.sroa.10.0.in.i ; 5 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.ea, i64 -8
  %i.ed = load i16, ptr %i.ec, align 8, !tbaa !373
  %i.ee = call noundef zeroext i1 @_ZN5clang3tok12isAnnotationENS0_9TokenKindE(i16 noundef zeroext %i.ed) #17
  br i1 %i.ee, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i"
  %i.ef = getelementptr i8, ptr %i.ea, i64 -20
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !406 ; 2 uses
  %.not.i.i46.i = icmp eq i32 %i.eg, 0
  %i.eh = load i32, ptr %i.eb, align 8
  %i.ei = select i1 %.not.i.i46.i, i32 %i.eh, i32 %i.eg
  br label %_ZNK5clang5Token9getEndLocEv.exit.i

bb.ag:                                            ; preds = %"_ZNK4llvm15MutableArrayRefIN5clang5TokenEE10take_whileIZL31updateConsecutiveMacroArgTokensRNS1_13SourceManagerENS1_14SourceLocationERPS2_S8_E3$_0EES3_T_.exit.i"
  %i.ej = load i32, ptr %i.eb, align 8, !tbaa !27
  %i.ek = getelementptr i8, ptr %i.ea, i64 -20
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !406
  %i.em = add i32 %i.el, %i.ej
  br label %_ZNK5clang5Token9getEndLocEv.exit.i

_ZNK5clang5Token9getEndLocEv.exit.i:              ; preds = %bb.ag, %bb.af
  %.sroa.0.0.i45.i = phi i32 [ %i.ei, %bb.af ], [ %i.em, %bb.ag ]
  %i.en = load i32, ptr %.038, align 8, !tbaa !27
  %i.eo = sub i32 %.sroa.0.0.i45.i, %i.en
  %i.ep = call i32 @_ZN5clang13SourceManager26createMacroArgExpansionLocENS_14SourceLocationES1_j(ptr noundef nonnull align 8 dereferenceable(776) %i.e, i32 %i.ab, i32 %i.p, i32 noundef %i.eo) #17
  %.not140.i = icmp eq ptr %.038, %.pn.in.i
  br i1 %.not140.i, label %_ZL31updateConsecutiveMacroArgTokensRN5clang13SourceManagerENS_14SourceLocationERPNS_5TokenES4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5clang5Token9getEndLocEv.exit.i
  %i.eq = sub i32 %i.ep, %i.ab
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i
  %.0141.i = phi ptr [ %.038, %.lr.ph.i ], [ %i.et, %bb.ah ] ; 3 uses
  %i.er = load i32, ptr %.0141.i, align 8, !tbaa !27
  %i.es = add i32 %i.eq, %i.er
  store i32 %i.es, ptr %.0141.i, align 8, !tbaa !27
  %i.et = getelementptr inbounds nuw i8, ptr %.0141.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.et, %.pn.in.i
  br i1 %.not.i, label %_ZL31updateConsecutiveMacroArgTokensRN5clang13SourceManagerENS_14SourceLocationERPNS_5TokenES4_.exit, label %bb.ah

_ZL31updateConsecutiveMacroArgTokensRN5clang13SourceManagerENS_14SourceLocationERPNS_5TokenES4_.exit: ; preds = %bb.ah, %_ZNK5clang5Token9getEndLocEv.exit.i
  %i.eu = icmp ult ptr %.pn.in.i, %3
  br i1 %i.eu, label %bb.b, label %.loopexit, !llvm.loop !486

.loopexit:                                        ; preds = %_ZL31updateConsecutiveMacroArgTokensRN5clang13SourceManagerENS_14SourceLocationERPNS_5TokenES4_.exit, %bb.a, %bb.c
  ret void
}

declare void @_ZN5clang17DiagnosticBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(66), ptr noundef nonnull align 8 dereferenceable(66)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(66) ptr @_ZNK5clang17DiagnosticBuilderlsINS_9FixItHintEvEERKS0_OT_(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !370
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  %.not2.i.i.i = select i1 %i.b, i1 true, i1 %i.e
  br i1 %.not2.i.i.i, label %_ZN5clanglsERKNS_19StreamingDiagnosticERKNS_9FixItHintE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !386    ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i, label %bb.c

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !387
  %i.i = tail call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.h) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !386
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i, %bb.b
  %i.j = phi ptr [ %i.i, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 528
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(57) %1)
  br label %_ZN5clanglsERKNS_19StreamingDiagnosticERKNS_9FixItHintE.exit

_ZN5clanglsERKNS_19StreamingDiagnosticERKNS_9FixItHintE.exit: ; preds = %bb.a, %bb.c
  ret ptr %0
}

declare noundef ptr @_ZN5clang12Preprocessor24cacheMacroExpandedTokensEPNS_10TokenLexerEN4llvm8ArrayRefINS_5TokenEEE(ptr noundef nonnull align 8 dereferenceable(3344), ptr noundef, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang10TokenLexer3LexERNS_5TokenE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(20) initializes((0, 20)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !33
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not52 = icmp eq ptr %i.f, null
  br i1 %.not52, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4
  %i.i = and i16 %i.h, -65
  store i16 %i.i, ptr %i.g, align 4
  %.pr = load ptr, ptr %0, align 8, !tbaa !22
  %.not53 = icmp eq ptr %.pr, null
  br i1 %.not53, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8               ; 2 uses
  %i.l = and i8 %i.k, 64
  %.not76.a = icmp eq i8 %i.l, 0
  br i1 %.not76.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.m = and i8 %i.k, -66
  %i.n = or disjoint i8 %i.m, 1
  store i8 %i.n, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, i8 0, i64 20, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 3 uses
  %i.r = and i8 %i.p, 1
  %.sink.i = zext nneg i8 %i.r to i16             ; 3 uses
  store i16 %.sink.i, ptr %i.q, align 2, !tbaa !29
  %i.s = load i8, ptr %i.o, align 8
  %i.t = and i8 %i.s, 6
  %.not77 = icmp eq i8 %i.t, 0
  %i.u = or disjoint i16 %.sink.i, 2
  %.sink.i58 = select i1 %.not77, i16 %.sink.i, i16 %i.u ; 2 uses
  store i16 %.sink.i58, ptr %i.q, align 2, !tbaa !29
  %i.v = load i32, ptr %i.a, align 4, !tbaa !23
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = or disjoint i16 %.sink.i58, 16
  store i16 %i.x, ptr %i.q, align 2, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.aa = tail call noundef zeroext i1 @_ZN5clang12Preprocessor21HandleEndOfTokenLexerERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.z, ptr noundef nonnull align 8 dereferenceable(20) %1) #17
  br label %.thread66

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !274, !nonnull !20, !align !21 ; 2 uses
  %i.af = icmp eq i32 %i.b, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.ai = add i32 %i.b, 1
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !23
  %i.aj = zext i32 %i.b to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %i.ak, i64 20, i1 false), !tbaa.struct !378
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.am = load i8, ptr %i.al, align 8
  %i.an = and i8 %i.am, 32
  %.not = icmp eq i8 %i.an, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !29
  %i.aq = or i16 %i.ap, 2048
  store i16 %i.aq, ptr %i.ao, align 2, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !23  ; 2 uses
  %i.as = load i32, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %2 = icmp eq i32 %i.ar, %i.as
  %3 = load ptr, ptr %0, align 8
  %i.at = icmp eq ptr %3, null
  %or.cond69 = select i1 %2, i1 true, i1 %i.at
  br i1 %or.cond69, label %_ZL28isWideStringLiteralFromMacroRKN5clang5TokenES2_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 2 uses
  %i.av = zext i32 %i.ar to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !373 ; 2 uses
  %i.az = icmp eq i16 %i.ay, 69
  br i1 %i.az, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.ab, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !381, !nonnull !20, !align !21
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, 32
  %.not47 = icmp eq i64 %i.be, 0
  br i1 %.not47, label %_ZL28isWideStringLiteralFromMacroRKN5clang5TokenES2_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val55 = load i16, ptr %i.bf, align 8, !tbaa !373
  %i.bg = getelementptr i8, ptr %i.aw, i64 18
  %.val57 = load i16, ptr %i.bg, align 2
  %i.bh = icmp eq i16 %.val55, 5
  br i1 %i.bh, label %bb.n, label %_ZL28isWideStringLiteralFromMacroRKN5clang5TokenES2_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !489 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !491
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %_ZNK5clang14IdentifierInfo5isStrILm2EEEbRAT__Kc.exit.i, label %_ZL28isWideStringLiteralFromMacroRKN5clang5TokenES2_.exit.thread

_ZNK5clang14IdentifierInfo5isStrILm2EEEbRAT__Kc.exit.i: ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %lhsc.i.i = load i8, ptr %i.bo, align 8
  %i.bp = icmp eq i8 %lhsc.i.i, 76
  %i.bq = add i16 %i.ay, -7
  %i.br = icmp ult i16 %i.bq, 13
  %or.cond.i = and i1 %i.br, %i.bp
  %i.bs = and i16 %.val57, 256
  %i.bt = icmp ne i16 %i.bs, 0
  %or.cond70 = select i1 %or.cond.i, i1 %i.bt, i1 false
  br i1 %or.cond70, label %bb.o, label %_ZL28isWideStringLiteralFromMacroRKN5clang5TokenES2_.exit.thread

bb.o:                                             ; preds = %_ZNK5clang14IdentifierInfo5isStrILm2EEEbRAT__Kc.exit.i, %bb.k
  %i.bu = zext i32 %i.as to i64
  %i.bv = tail call noundef zeroext i1 @_ZN5clang10TokenLexer11pasteTokensERNS_5TokenEN4llvm8ArrayRefIS1_EERj(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr nonnull %i.au, i64 %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.bv, label %.thread66, label %_ZL28isWideStringLiteralFromMacroRKN5clang5TokenES2_.exit.thread

_ZL28isWideStringLiteralFromMacroRKN5clang5TokenES2_.exit.thread: ; preds = %bb.m, %_ZNK5clang14IdentifierInfo5isStrILm2EEEbRAT__Kc.exit.i, %bb.n, %bb.o, %bb.l, %bb.j
  %.043 = phi i1 [ false, %bb.j ], [ false, %bb.m ], [ false, %_ZNK5clang14IdentifierInfo5isStrILm2EEEbRAT__Kc.exit.i ], [ false, %bb.l ], [ true, %bb.o ], [ false, %bb.n ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !370 ; 2 uses
  %.not71 = icmp eq i32 %i.bx, 0
  br i1 %.not71, label %bb.u, label %bb.p

bb.p:                                             ; preds = %_ZL28isWideStringLiteralFromMacroRKN5clang5TokenES2_.exit.thread
  %i.by = load i32, ptr %1, align 8, !tbaa !27    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !358 ; 2 uses
  %i.cb = and i32 %i.by, 2147483647               ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 324
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !492 ; 2 uses
  %i.ce = icmp uge i32 %i.cb, %i.cd               ; 2 uses
  %i.cf = icmp ult i32 %i.ca, %i.cd
  %i.cg = xor i1 %i.ce, %i.cf
  %i.ch = icmp ult i32 %i.cb, %i.ca
  %.0.i = select i1 %i.cg, i1 %i.ch, i1 %i.ce
  br i1 %.0.i, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load i16, ptr %i.ci, align 8, !tbaa !373
  %i.ck = icmp eq i16 %i.cj, 4
  br i1 %i.ck, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.06.0.copyload = load i32, ptr %i.cl, align 4, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !406
  %i.co = tail call i32 @_ZN5clang13SourceManager18createExpansionLocENS_14SourceLocationES1_S1_jbij(ptr noundef nonnull align 8 dereferenceable(776) %i.ae, i32 %i.by, i32 %i.bx, i32 %.sroa.06.0.copyload, i32 noundef %i.cn, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0) #17
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i = load i32, ptr %i.cp, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !359
  %i.cs = and i32 %.sroa.0.0.copyload.i, 2147483647 ; 3 uses
  %.not.i.i = icmp samesign uge i32 %i.cb, %i.cs
  %i.ct = add i32 %i.cs, %i.cr
  %i.cu = icmp ult i32 %i.cb, %i.ct
  %or.cond.i.i = and i1 %.not.i.i, %i.cu
  %i.cv = sub nuw nsw i32 %i.cb, %i.cs
  %spec.select.i = select i1 %or.cond.i.i, i32 %i.cv, i32 0
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !370
  %i.cy = add i32 %spec.select.i, %i.cx
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %storemerge = phi i32 [ %i.cy, %bb.s ], [ %i.co, %bb.r ]
  store i32 %storemerge, ptr %1, align 8, !tbaa !27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p, %_ZL28isWideStringLiteralFromMacroRKN5clang5TokenES2_.exit.thread
  %i.cz = load i8, ptr %i.al, align 8             ; 3 uses
  br i1 %i.af, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 3 uses
  %i.db = load i16, ptr %i.da, align 2, !tbaa !29
  %i.dc = and i16 %i.db, -2
  %i.dd = and i8 %i.cz, 1
  %masksel = zext nneg i8 %i.dd to i16
  %.sink.i59 = or disjoint i16 %i.dc, %masksel    ; 2 uses
  store i16 %.sink.i59, ptr %i.da, align 2, !tbaa !29
  %i.de = load i8, ptr %i.al, align 8
  %i.df = and i8 %i.de, 2
  %i.dg = and i16 %.sink.i59, -3
  %masksel73 = zext nneg i8 %i.df to i16
  %.sink.i60 = or disjoint i16 %i.dg, %masksel73
  store i16 %.sink.i60, ptr %i.da, align 2, !tbaa !29
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.dh = trunc i8 %i.cz to i1
  br i1 %i.dh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !29
  %i.dk = or i16 %i.dj, 1
  store i16 %i.dk, ptr %i.di, align 2, !tbaa !29
  %.pre = load i8, ptr %i.al, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dl = phi i8 [ %.pre, %bb.x ], [ %i.cz, %bb.w ]
  %i.dm = and i8 %i.dl, 2
  %.not48 = icmp eq i8 %i.dm, 0
  br i1 %.not48, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !29
  %i.dp = or i16 %i.do, 2
  store i16 %i.dp, ptr %i.dn, align 2, !tbaa !29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.v
  %i.dq = load i8, ptr %i.al, align 8
  %i.dr = and i8 %i.dq, -4
  store i8 %i.dr, ptr %i.al, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !373
  %i.du = tail call noundef zeroext i1 @_ZN5clang3tok12isAnnotationENS0_9TokenKindE(i16 noundef zeroext %i.dt) #17
  br i1 %i.du, label %.thread66, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load i16, ptr %i.ds, align 8, !tbaa !373 ; 2 uses
  %i.dw = add i16 %i.dv, -7
  %i.dx = icmp ult i16 %i.dw, 13
  %i.dy = icmp eq i16 %i.dv, 1
  %or.cond.i61 = or i1 %i.dy, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not4974 = icmp eq ptr %i.ea, null
  %.not49 = select i1 %or.cond.i61, i1 true, i1 %.not4974
  br i1 %.not49, label %.thread66, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = load ptr, ptr %i.ab, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !381, !nonnull !20, !align !21
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = and i64 %i.ef, 4398046511104
  %.not50 = icmp eq i64 %i.eg, 0
  br i1 %.not50, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = tail call noundef zeroext i1 @_ZNK5clang5Token25isModuleContextualKeywordEb(ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext true) #17
  br i1 %i.eh, label %.thread66, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ad
  %.pre78 = load ptr, ptr %i.dz, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %bb.ac
  %i.ei = phi ptr [ %.pre78, %._crit_edge ], [ %i.ea, %bb.ac ] ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = trunc i64 %i.ej to i16
  %i.el = and i16 %i.ek, 511
  store i16 %i.el, ptr %i.ds, align 8, !tbaa !373
  %i.em = load i64, ptr %i.ei, align 8
  %i.en = and i64 %i.em, 536870912
  %i.eo = icmp ne i64 %i.en, 0
  %or.cond = and i1 %.043, %i.eo
  br i1 %or.cond, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ep = load ptr, ptr %i.ab, align 8, !tbaa !19, !nonnull !20, !align !21
  tail call void @_ZN5clang12Preprocessor24HandlePoisonedIdentifierERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ep, ptr noundef nonnull align 8 dereferenceable(20) %1) #17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eq = load i8, ptr %i.al, align 8
  %i.er = and i8 %i.eq, 16
  %.not51 = icmp eq i8 %i.er, 0
  br i1 %.not51, label %bb.ah, label %.thread66

bb.ah:                                            ; preds = %bb.ag
  %i.es = load i64, ptr %i.ei, align 8
  %i.et = and i64 %i.es, 2147483648
  %.not75 = icmp eq i64 %i.et, 0
  br i1 %.not75, label %.thread66, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load ptr, ptr %i.ab, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.ev = tail call noundef zeroext i1 @_ZN5clang12Preprocessor16HandleIdentifierERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.eu, ptr noundef nonnull align 8 dereferenceable(20) %1) #17
  br label %.thread66

.thread66:                                        ; preds = %bb.ag, %bb.ah, %bb.aa, %bb.ab, %bb.ad, %bb.ai, %bb.o, %bb.g
  %.2 = phi i1 [ %i.aa, %bb.g ], [ true, %bb.o ], [ %i.ev, %bb.ai ], [ true, %bb.aa ], [ true, %bb.ad ], [ true, %bb.ab ], [ true, %bb.ah ], [ true, %bb.ag ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK5clang10TokenLexer26isLexingCXXModuleDirectiveEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 64
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN5clang10TokenLexer27setLexingCXXModuleDirectiveEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(65) %0, i1 noundef zeroext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = select i1 %1, i8 64, i8 0
  %i.d = and i8 %i.b, -65
  %i.e = or disjoint i8 %i.d, %i.c
  store i8 %i.e, ptr %i.a, align 8
  ret void
}

end_hunk_0
