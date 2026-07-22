inline.NumInlined: 6238
inline.NumDeleted: 1654
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl20parseReturnStatementEv:bb.a
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl18parseWithStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !tbaa !229 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.f, i32 noundef 0) #17 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !tbaa !229
  %i.i = load i32, ptr %i.g, align 8, !tbaa !235
  %i.j = icmp eq i32 %i.i, 53
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 53, ptr %i.b, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.b, i64 1, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.f, i32 noundef 0) #17
  store ptr %i.k, ptr %i.c, align 8, !tbaa !85
  %i.l = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseExpressionENS1_5ParamENS2_20CoverTypedParametersE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 1) ; 2 uses
  %i.m = extractvalue { i64, i8 } %i.l, 0
  %i.n = extractvalue { i64, i8 } %i.l, 1
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.q = load i32, ptr %i.p, align 8, !tbaa !235
  %i.r = icmp eq i32 %i.q, 54
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 54, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.137, ptr %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.s = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.f, i32 noundef 0) #17
  store ptr %i.s, ptr %i.c, align 8, !tbaa !85
  %i.t = and i32 %1, 2
  %i.u = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl14parseStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i8 } %i.u, 1
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = extractvalue { i64, i8 } %i.u, 0
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !240 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !241
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !247
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !248
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !250 ; 2 uses
  %i.ak = add i64 %i.ah, 7
  %i.al = add i64 %i.ak, %i.aj
  %i.am = and i64 %i.al, 7
  %.neg16 = add i64 %i.aj, 7
  %i.an = sub i64 %.neg16, %i.am                  ; 3 uses
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !250
  %i.ao = add i64 %i.an, 64                       ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 262144
  br i1 %i.ap, label %.critedge.i.i.i, label %bb.h, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.g
  %i.aq = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.z, i64 noundef 64, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = add i64 %i.an, %i.ah
  %i.as = inttoptr i64 %i.ar to ptr
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.aq, %.critedge.i.i.i ], [ %i.as, %bb.h ] ; 9 uses
  %i.at = inttoptr i64 %i.m to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 27, ptr %i.au, align 8, !tbaa !252
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.av, i8 0, i64 28, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !405
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr %i.y, ptr %i.ax, align 8, !tbaa !407
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ay, align 8, !tbaa !229
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !229
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ba, align 8, !tbaa !229
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bb, align 8, !tbaa !229
  %i.bc = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.c, %bb.f, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.b
  %.sroa.014.2 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.e ], [ %i.bc, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.f ]
  %.sroa.2.2 = phi i8 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.014.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseSwitchStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %3 = alloca %"class.llvh::simple_ilist", align 8 ; 15 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 13 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !229 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.j = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #17 ; 3 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.k, align 8, !tbaa !229
  %i.l = load i32, ptr %i.j, align 8, !tbaa !235
  %i.m = icmp eq i32 %i.l, 53
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 53, ptr %i.e, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.e, i64 1, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #17
  store ptr %i.n, ptr %i.f, align 8, !tbaa !85
  %i.o = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseExpressionENS1_5ParamENS2_20CoverTypedParametersE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 1) ; 2 uses
  %i.p = extractvalue { i64, i8 } %i.o, 0
  %i.q = extractvalue { i64, i8 } %i.o, 1
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.t = load i32, ptr %i.s, align 8, !tbaa !235
  %i.u = icmp eq i32 %i.t, 54
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 54, ptr %i.d, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.d, i64 1, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.137, ptr %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #17 ; 2 uses
  store ptr %i.v, ptr %i.f, align 8, !tbaa !85
  %i.w = load i32, ptr %i.v, align 8, !tbaa !235
  %i.x = icmp eq i32 %i.w, 49
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 49, ptr %i.c, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.c, i64 1, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.154, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aa

bb.h:                                             ; preds = %bb.f
  %i.y = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #17 ; 4 uses
  store ptr %i.y, ptr %i.f, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %2, ptr %2, align 8, !tbaa !231
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %2, ptr %i.z, align 8, !tbaa !234
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !235
  %i.ab = icmp eq i32 %i.aa, 51
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.ai = and i32 %1, 2
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.w
  %i.aj = phi ptr [ %i.y, %.lr.ph ], [ %i.cs, %bb.w ] ; 2 uses
  %.sroa.046.066 = phi ptr [ null, %.lr.ph ], [ %.sroa.046.1, %bb.w ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i37 = load ptr, ptr %i.ak, align 8, !tbaa !229 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %3, ptr %3, align 8, !tbaa !231
  store ptr %3, ptr %i.ac, align 8, !tbaa !234
  %.sroa.0.0.copyload.i38 = load ptr, ptr %i.ak, align 8, !tbaa !229
  %6 = load i32, ptr %i.aj, align 8, !tbaa !235
  switch i32 %6, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit39 [
    i32 17, label %bb.j
    i32 21, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.al = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #17
  store ptr %i.al, ptr %i.f, align 8, !tbaa !85
  %i.am = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseExpressionENS1_5ParamENS2_20CoverTypedParametersE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 0) ; 2 uses
  %i.an = extractvalue { i64, i8 } %i.am, 1
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.j
  %i.ap = extractvalue { i64, i8 } %i.am, 0
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ar = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #17
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !85
  %.not = icmp eq ptr %.sroa.046.066, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i8 1, ptr %i.ae, align 1, !tbaa !277
  store ptr @.str.155, ptr %4, align 8, !tbaa !278
  store i8 3, ptr %i.ad, align 8, !tbaa !274
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.as, i32 noundef 0, ptr %.sroa.0.0.copyload.i37, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i8 1, ptr %i.ah, align 1, !tbaa !277
  store ptr @.str.156, ptr %5, align 8, !tbaa !278
  store i8 3, ptr %i.ag, align 8, !tbaa !274
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.at, i32 noundef 3, ptr nonnull %.sroa.046.066, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.m

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit39: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 17, ptr %i.b, align 4, !tbaa !264
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 21, ptr %i.au, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.b, i64 2, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.151, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.critedge

bb.m:                                             ; preds = %bb.k, %.thread, %bb.l
  %.sroa.046.1 = phi ptr [ %.sroa.046.066, %.thread ], [ %.sroa.046.066, %bb.l ], [ %.sroa.0.0.copyload.i37, %bb.k ]
  %.031 = phi i1 [ false, %.thread ], [ true, %bb.l ], [ false, %bb.k ]
  %.130 = phi ptr [ %i.aq, %.thread ], [ null, %bb.l ], [ null, %bb.k ]
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !85  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.0.0.copyload.i40 = load ptr, ptr %i.aw, align 8, !tbaa !229
  %i.ax = load i32, ptr %i.av, align 8, !tbaa !235
  %i.ay = icmp eq i32 %i.ax, 92
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 92, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, ptr %.sroa.0.0.copyload.i38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.az = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #17
  store ptr %i.az, ptr %i.f, align 8, !tbaa !85
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !85  ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !235
  switch i32 %i.bb, label %bb.q [
    i32 120, label %_ZN6hermes6parser6detail12JSParserImpl18parseStatementListIJNS0_9TokenKindES4_EEEN4llvh8OptionalIbEENS1_5ParamES4_bNS2_17AllowImportExportERNS5_12simple_ilistINS_6ESTree4NodeEJEEEDpT_.exit
    i32 21, label %_ZN6hermes6parser6detail12JSParserImpl18parseStatementListIJNS0_9TokenKindES4_EEEN4llvh8OptionalIbEENS1_5ParamES4_bNS2_17AllowImportExportERNS5_12simple_ilistINS_6ESTree4NodeEJEEEDpT_.exit
    i32 51, label %_ZN6hermes6parser6detail12JSParserImpl18parseStatementListIJNS0_9TokenKindES4_EEEN4llvh8OptionalIbEENS1_5ParamES4_bNS2_17AllowImportExportERNS5_12simple_ilistINS_6ESTree4NodeEJEEEDpT_.exit
    i32 17, label %_ZN6hermes6parser6detail12JSParserImpl18parseStatementListIJNS0_9TokenKindES4_EEEN4llvh8OptionalIbEENS1_5ParamES4_bNS2_17AllowImportExportERNS5_12simple_ilistINS_6ESTree4NodeEJEEEDpT_.exit
  ]

bb.q:                                             ; preds = %bb.p
  %i.bc = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl22parseStatementListItemENS1_5ParamENS2_17AllowImportExportERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.ai, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !408
  br i1 %i.bc, label %bb.p, label %.critedge, !llvm.loop !409

_ZN6hermes6parser6detail12JSParserImpl18parseStatementListIJNS0_9TokenKindES4_EEEN4llvh8OptionalIbEENS1_5ParamES4_bNS2_17AllowImportExportERNS5_12simple_ilistINS_6ESTree4NodeEJEEEDpT_.exit: ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  br i1 %.031, label %bb.w, label %bb.r

bb.r:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl18parseStatementListIJNS0_9TokenKindES4_EEEN4llvh8OptionalIbEENS1_5ParamES4_bNS2_17AllowImportExportERNS5_12simple_ilistINS_6ESTree4NodeEJEEEDpT_.exit
  %i.bd = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.be = icmp eq ptr %3, %i.bd
  br i1 %i.be, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.sroa.0.0.copyload.i43 = load ptr, ptr %i.bf, align 8, !tbaa !229
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.sroa.07.0 = phi ptr [ %.sroa.0.0.copyload.i43, %bb.s ], [ %.sroa.0.0.copyload.i40, %bb.r ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !240 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !241
  %i.bk = zext i32 %i.bj to i64
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !247
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !248
  %i.bo = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !250
  %i.br = add i64 %i.bq, 7                        ; 2 uses
  %i.bs = add i64 %i.br, %i.bo
  %i.bt = and i64 %i.bs, 7
  %i.bu = sub i64 %i.br, %i.bt                    ; 3 uses
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !250
  %i.bv = add i64 %i.bu, 72                       ; 2 uses
  %i.bw = icmp ugt i64 %i.bv, 262144
  br i1 %i.bw, label %.critedge.i.i.i, label %bb.u, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.t
  %i.bx = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.bg, i64 noundef 72, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.u:                                             ; preds = %bb.t
  %i.by = add i64 %i.bu, %i.bo
  %i.bz = inttoptr i64 %i.by to ptr
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.u
  %.0.i.i.i = phi ptr [ %i.bx, %.critedge.i.i.i ], [ %i.bz, %bb.u ] ; 13 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 69, ptr %i.ca, align 8, !tbaa !252
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cb, i8 0, i64 28, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %.130, ptr %i.cc, align 8, !tbaa !410
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 7 uses
  store ptr %i.cd, ptr %i.cd, align 8, !tbaa !231
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !234
  %i.cf = load ptr, ptr %i.ac, align 8, !tbaa !234 ; 4 uses
  %i.cg = icmp eq ptr %i.cd, %3
  %i.ch = icmp eq ptr %i.cf, %3
  %or.cond.i.i.i.i.i.i = or i1 %i.cg, %i.ch
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree14SwitchCaseNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.ci = load ptr, ptr %3, align 8, !tbaa !231   ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !231 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %3, ptr %i.ck, align 8, !tbaa !234
  store ptr %i.cj, ptr %3, align 8, !tbaa !231
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cd, ptr %i.cl, align 8, !tbaa !234
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !231
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !234
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree14SwitchCaseNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit

_ZN6hermes6ESTree14SwitchCaseNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i37, ptr %i.cm, align 8, !tbaa !229
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.07.0, ptr %i.cn, align 8, !tbaa !229
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i37, ptr %i.co, align 8, !tbaa !229
  %i.cp = load ptr, ptr %2, align 8, !tbaa !231   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store ptr %2, ptr %i.cq, align 8, !tbaa !234
  store ptr %i.cp, ptr %.0.i.i.i, align 8, !tbaa !231
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.0.i.i.i, ptr %i.cr, align 8, !tbaa !234
  store ptr %.0.i.i.i, ptr %2, align 8, !tbaa !231
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !85
  br label %bb.w

bb.w:                                             ; preds = %_ZN6hermes6ESTree14SwitchCaseNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit, %_ZN6hermes6parser6detail12JSParserImpl18parseStatementListIJNS0_9TokenKindES4_EEEN4llvh8OptionalIbEENS1_5ParamES4_bNS2_17AllowImportExportERNS5_12simple_ilistINS_6ESTree4NodeEJEEEDpT_.exit
  %i.cs = phi ptr [ %.pre, %_ZN6hermes6ESTree14SwitchCaseNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit ], [ %i.ba, %_ZN6hermes6parser6detail12JSParserImpl18parseStatementListIJNS0_9TokenKindES4_EEEN4llvh8OptionalIbEENS1_5ParamES4_bNS2_17AllowImportExportERNS5_12simple_ilistINS_6ESTree4NodeEJEEEDpT_.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !235
  %i.cu = icmp eq i32 %i.ct, 51
  br i1 %i.cu, label %._crit_edge, label %bb.i, !llvm.loop !412

._crit_edge:                                      ; preds = %bb.w, %bb.h
  %i.cv = phi ptr [ %i.y, %bb.h ], [ %i.cs, %bb.w ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %.sroa.0.0.copyload.i44 = load ptr, ptr %i.cw, align 8, !tbaa !229
  %i.cx = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.i, i32 noundef 0) #17
  store ptr %i.cx, ptr %i.f, align 8, !tbaa !85
  %i.cy = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !240 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !241
  %i.dc = zext i32 %i.db to i64
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !247
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !248
  %i.dg = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !250 ; 2 uses
  %i.dj = add i64 %i.dg, 7
  %i.dk = add i64 %i.dj, %i.di
  %i.dl = and i64 %i.dk, 7
  %.neg122 = add i64 %i.di, 7
  %i.dm = sub i64 %.neg122, %i.dl                 ; 3 uses
  store i64 %i.dm, ptr %i.dh, align 8, !tbaa !250
  %i.dn = add i64 %i.dm, 80                       ; 2 uses
  %i.do = icmp ugt i64 %i.dn, 262144
  br i1 %i.do, label %.critedge.i.i.i118, label %bb.x, !prof !251

.critedge.i.i.i118:                               ; preds = %._crit_edge
  %i.dp = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.cy, i64 noundef 80, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit119

bb.x:                                             ; preds = %._crit_edge
  %i.dq = add i64 %i.dm, %i.dg
  %i.dr = inttoptr i64 %i.dq to ptr
  store i64 %i.dn, ptr %i.dh, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit119

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit119: ; preds = %.critedge.i.i.i118, %bb.x
  %.0.i.i.i117 = phi ptr [ %i.dp, %.critedge.i.i.i118 ], [ %i.dr, %bb.x ] ; 11 uses
  %i.ds = inttoptr i64 %i.p to ptr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i117, i8 0, i64 16, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 16
  store i32 28, ptr %i.dt, align 8, !tbaa !252
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.du, i8 0, i64 28, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 48
  store i32 -1, ptr %i.dv, align 8, !tbaa !363
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 56
  store ptr %i.ds, ptr %i.dw, align 8, !tbaa !413
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 64 ; 7 uses
  store ptr %i.dx, ptr %i.dx, align 8, !tbaa !231
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 72 ; 2 uses
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !234
  %i.dz = load ptr, ptr %i.z, align 8, !tbaa !234 ; 4 uses
  %i.ea = icmp eq ptr %i.dx, %2
  %i.eb = icmp eq ptr %i.dz, %2
  %or.cond.i.i.i.i.i.i120 = or i1 %i.ea, %i.eb
  br i1 %or.cond.i.i.i.i.i.i120, label %_ZN6hermes6ESTree19SwitchStatementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit119
  %i.ec = load ptr, ptr %2, align 8, !tbaa !231   ; 2 uses
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !231
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %2, ptr %i.ee, align 8, !tbaa !234
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.dx, ptr %i.ef, align 8, !tbaa !234
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !231
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !234
  store ptr %i.ec, ptr %i.dx, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree19SwitchStatementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit

_ZN6hermes6ESTree19SwitchStatementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit119, %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.eg, align 8, !tbaa !229
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 32
  store ptr %.sroa.0.0.copyload.i44, ptr %i.eh, align 8, !tbaa !229
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i.i117, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ei, align 8, !tbaa !229
  %i.ej = ptrtoint ptr %.0.i.i.i117 to i64
  br label %bb.z

.critedge:                                        ; preds = %bb.j, %bb.q, %bb.n, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.z

bb.z:                                             ; preds = %_ZN6hermes6ESTree19SwitchStatementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit, %.critedge
  %.sroa.051.0 = phi i64 [ %i.ej, %_ZN6hermes6ESTree19SwitchStatementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit ], [ undef, %.critedge ]
  %.sroa.2.4 = phi i8 [ 1, %_ZN6hermes6ESTree19SwitchStatementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEE.exit ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.e, %bb.z, %bb.g, %bb.c, %bb.b
  %.sroa.051.2 = phi i64 [ undef, %bb.b ], [ %.sroa.051.0, %bb.z ], [ undef, %bb.g ], [ undef, %bb.e ], [ undef, %bb.c ]
  %.sroa.2.6 = phi i8 [ 0, %bb.b ], [ %.sroa.2.4, %bb.z ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.051.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.6, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseThrowStatementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !229 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !280, !range !81, !noundef !75
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.k, align 1, !tbaa !277
  store ptr @.str.161, ptr %3, align 8, !tbaa !278
  store i8 3, ptr %i.j, align 8, !tbaa !274
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.m, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.p, align 1, !tbaa !277
  store ptr @.str.162, ptr %4, align 8, !tbaa !278
  store i8 3, ptr %i.o, align 8, !tbaa !274
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.n, i32 noundef 3, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseExpressionENS1_5ParamENS2_20CoverTypedParametersE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 1) ; 2 uses
  %i.r = extractvalue { i64, i8 } %i.q, 0
  %i.s = extractvalue { i64, i8 } %i.q, 1
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !235
  switch i32 %i.v, label %bb.f [
    i32 60, label %bb.e
    i32 51, label %bb.h
    i32 120, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17
  store ptr %i.w, ptr %i.a, align 8, !tbaa !85
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.f, align 8, !tbaa !280, !range !81, !noundef !75
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload.i.i8 = load ptr, ptr %i.z, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.ab, align 1, !tbaa !277
  store ptr @.str.82, ptr %2, align 8, !tbaa !278
  store i8 3, ptr %i.aa, align 8, !tbaa !274
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !270, !nonnull !75, !align !76
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ad, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i8, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.d, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i9 = load ptr, ptr %i.ae, align 8, !tbaa !229
  %i.af = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !240 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !241
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !247
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !248
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !250 ; 2 uses
  %i.aq = add i64 %i.an, 7
end_hunk_0
