inline.NumInlined: 6239
inline.NumDeleted: 1654
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl24parseArrayBindingPatternENS1_5ParamE:bb.a
bb.e:                                             ; preds = %.preheader
  %i.as = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseBindingElementENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) ; 2 uses
  %i.at = extractvalue { i64, i8 } %i.as, 1
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.thread38, label %.loopexit

.thread38:                                        ; preds = %bb.e
  %i.av = extractvalue { i64, i8 } %i.as, 0
  %i.aw = inttoptr i64 %i.av to ptr
  br label %bb.f

bb.f:                                             ; preds = %.thread38, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.sink63 = phi ptr [ %i.aw, %.thread38 ], [ %.0.i.i.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ] ; 4 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !231   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink63, i64 8
  store ptr %2, ptr %i.ay, align 8, !tbaa !234
  store ptr %i.ax, ptr %.sink63, align 8, !tbaa !231
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sink63, ptr %i.az, align 8, !tbaa !234
  store ptr %.sink63, ptr %2, align 8, !tbaa !231
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !235 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 61
  br i1 %i.bc, label %bb.g, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit

bb.g:                                             ; preds = %bb.f
  %i.bd = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17 ; 3 uses
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !85
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !235 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 56
  br i1 %i.bf, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread, label %.preheader, !llvm.loop !465

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit: ; preds = %bb.f, %.thread
  %i.bg = phi i32 [ %.pre48, %.thread ], [ %i.bb, %bb.f ]
  %i.bh = icmp eq i32 %i.bg, 56
  br i1 %i.bh, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 56, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread: ; preds = %bb.g, %bb.a, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit
  %i.bi = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 1) #17 ; 3 uses
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !85
  %i.bj = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 188
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !284
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  %i.bo = load i8, ptr %i.bn, align 8, !range !81
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = select i1 %i.bm, i1 true, i1 %i.bp
  br i1 %i.bq, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread
  %i.br = load i32, ptr %i.bi, align 8, !tbaa !235
  %i.bs = icmp eq i32 %i.br, 92
  br i1 %i.bs, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.0.0.copyload.i.i18 = load ptr, ptr %i.bt, align 8, !tbaa !229
  %i.bu = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 3) #17
  store ptr %i.bu, ptr %i.b, align 8, !tbaa !85
  %i.bv = ptrtoint ptr %.sroa.0.0.copyload.i.i18 to i64 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 188
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !284
  %.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %i.bv, i8 1, i32 noundef 1) #17
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

bb.l:                                             ; preds = %bb.j
  %i.ca = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTypeAnnotationTSEN4llvh8OptionalINS3_5SMLocEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %i.bv, i8 1) #17
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit: ; preds = %bb.k, %bb.l
  %.pn.i = phi { i64, i8 } [ %i.bz, %bb.k ], [ %i.ca, %bb.l ] ; 2 uses
  %i.cb = extractvalue { i64, i8 } %.pn.i, 1
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %.thread40, label %.loopexit

.thread40:                                        ; preds = %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit
  %i.cd = extractvalue { i64, i8 } %.pn.i, 0
  %i.ce = inttoptr i64 %i.cd to ptr
  %.pre49 = load ptr, ptr %0, align 8, !tbaa !239
  br label %bb.m

bb.m:                                             ; preds = %.thread40, %bb.i, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread
  %i.cf = phi ptr [ %.pre49, %.thread40 ], [ %i.bj, %bb.i ], [ %i.bj, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread ] ; 3 uses
  %.117 = phi ptr [ %i.ce, %.thread40 ], [ null, %bb.i ], [ null, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i23 = load ptr, ptr %i.cg, align 8, !tbaa !229
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !240 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !241
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !247
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !248
  %i.co = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !250 ; 2 uses
  %i.cr = add i64 %i.co, 7
  %i.cs = add i64 %i.cr, %i.cq
  %i.ct = and i64 %i.cs, 7
  %.neg47 = add i64 %i.cq, 7
  %i.cu = sub i64 %.neg47, %i.ct                  ; 3 uses
  store i64 %i.cu, ptr %i.cp, align 8, !tbaa !250
  %i.cv = add i64 %i.cu, 72                       ; 2 uses
  %i.cw = icmp ugt i64 %i.cv, 262144
  br i1 %i.cw, label %.critedge.i.i.i25, label %bb.n, !prof !251

.critedge.i.i.i25:                                ; preds = %bb.m
  %i.cx = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.cf, i64 noundef 72, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit26

bb.n:                                             ; preds = %bb.m
  %i.cy = add i64 %i.cu, %i.co
  %i.cz = inttoptr i64 %i.cy to ptr
  store i64 %i.cv, ptr %i.cp, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit26

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit26:  ; preds = %.critedge.i.i.i25, %bb.n
  %.0.i.i.i24 = phi ptr [ %i.cx, %.critedge.i.i.i25 ], [ %i.cz, %bb.n ] ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i.i24, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i24, i64 16
  store i32 95, ptr %i.da, align 8, !tbaa !252
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i24, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.db, i8 0, i64 28, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i24, i64 48 ; 7 uses
  store ptr %i.dc, ptr %i.dc, align 8, !tbaa !231
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i24, i64 56 ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !234
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !234 ; 4 uses
  %i.df = icmp eq ptr %i.dc, %2
  %i.dg = icmp eq ptr %i.de, %2
  %or.cond.i.i.i.i.i.i = or i1 %i.df, %i.dg
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit26
  %i.dh = load ptr, ptr %2, align 8, !tbaa !231   ; 2 uses
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !231
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %2, ptr %i.dj, align 8, !tbaa !234
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dc, ptr %i.dk, align 8, !tbaa !234
  store ptr %i.dc, ptr %i.de, align 8, !tbaa !231
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !234
  store ptr %i.dh, ptr %i.dc, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit

_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit26, %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i24, i64 64
  store ptr %.117, ptr %i.dl, align 8, !tbaa !466
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i.i24, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.dm, align 8, !tbaa !229
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i.i24, i64 32
  store ptr %.sroa.0.0.copyload.i.i23, ptr %i.dn, align 8, !tbaa !229
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i.i24, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.do, align 8, !tbaa !229
  %i.dp = ptrtoint ptr %.0.i.i.i24 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit, %bb.d, %_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, %bb.h
  %.sroa.035.0 = phi i64 [ %i.dp, %_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ undef, %bb.h ], [ undef, %bb.d ], [ undef, %bb.e ]
  %.sroa.236.6 = phi i8 [ 1, %_ZN6hermes6ESTree16ArrayPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.035.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.236.6, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseObjectBindingPatternENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.llvh::simple_ilist", align 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !tbaa !229 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %2, ptr %2, align 8, !tbaa !231
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %2, ptr %i.g, align 8, !tbaa !234
  %i.h = load i32, ptr %i.f, align 8, !tbaa !235  ; 2 uses
  %i.i = icmp eq i32 %i.h, 51
  br i1 %i.i, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34.thread, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit: ; preds = %bb.a, %bb.e
  %i.j = phi i32 [ %.fr, %bb.e ], [ %i.h, %bb.a ]
  %i.k = icmp eq i32 %i.j, 59
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit
  %i.l = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseBindingRestPropertyENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) ; 2 uses
  %i.m = extractvalue { i64, i8 } %i.l, 1
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.thread, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread37

.thread:                                          ; preds = %bb.b
  %i.o = extractvalue { i64, i8 } %i.l, 0
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !231    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %2, ptr %i.r, align 8, !tbaa !234
  store ptr %i.q, ptr %i.p, align 8, !tbaa !231
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.s, align 8, !tbaa !234
  store ptr %i.p, ptr %2, align 8, !tbaa !231
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !85
  %.pre45 = load i32, ptr %.pre, align 8, !tbaa !235
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34

bb.c:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit
  %i.t = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseBindingPropertyENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1) ; 2 uses
  %i.u = extractvalue { i64, i8 } %i.t, 1
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread37

bb.d:                                             ; preds = %bb.c
  %i.w = extractvalue { i64, i8 } %i.t, 0
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !231    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %2, ptr %i.z, align 8, !tbaa !234
  store ptr %i.y, ptr %i.x, align 8, !tbaa !231
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !234
  store ptr %i.x, ptr %2, align 8, !tbaa !231
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !235 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 61
  br i1 %i.ad, label %bb.e, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34

bb.e:                                             ; preds = %bb.d
  %i.ae = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17 ; 2 uses
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !85
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !235
  %.fr = freeze i32 %i.af                         ; 2 uses
  %i.ag = icmp eq i32 %.fr, 51
  br i1 %i.ag, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34.thread, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34: ; preds = %bb.d, %.thread
  %i.ah = phi i32 [ %.pre45, %.thread ], [ %i.ac, %bb.d ]
  %i.ai = icmp eq i32 %i.ah, 51
  br i1 %i.ai, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 51, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread37

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34.thread: ; preds = %bb.e, %bb.a, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34
  %i.aj = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 1) #17 ; 3 uses
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !85
  %i.ak = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 188
  %i.am = load i32, ptr %i.al, align 4, !tbaa !284
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  %i.ap = load i8, ptr %i.ao, align 8, !range !81
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %i.an, i1 true, i1 %i.aq
  br i1 %i.ar, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34.thread
  %i.as = load i32, ptr %i.aj, align 8, !tbaa !235
  %i.at = icmp eq i32 %i.as, 92
  br i1 %i.at, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.0.0.copyload.i.i17 = load ptr, ptr %i.au, align 8, !tbaa !229
  %i.av = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 3) #17
  store ptr %i.av, ptr %i.b, align 8, !tbaa !85
  %i.aw = ptrtoint ptr %.sroa.0.0.copyload.i.i17 to i64 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 188
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !284
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseTypeAnnotationFlowEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %i.aw, i8 1, i32 noundef 1) #17
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

bb.j:                                             ; preds = %bb.h
  %i.bb = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTypeAnnotationTSEN4llvh8OptionalINS3_5SMLocEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %i.aw, i8 1) #17
  br label %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit

_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit: ; preds = %bb.i, %bb.j
  %.pn.i = phi { i64, i8 } [ %i.ba, %bb.i ], [ %i.bb, %bb.j ] ; 2 uses
  %i.bc = extractvalue { i64, i8 } %.pn.i, 1
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %.thread40, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread37

.thread40:                                        ; preds = %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit
  %i.be = extractvalue { i64, i8 } %.pn.i, 0
  %i.bf = inttoptr i64 %i.be to ptr
  %.pre46 = load ptr, ptr %0, align 8, !tbaa !239
  br label %bb.k

bb.k:                                             ; preds = %.thread40, %bb.g, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34.thread
  %i.bg = phi ptr [ %.pre46, %.thread40 ], [ %i.ak, %bb.g ], [ %i.ak, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34.thread ] ; 3 uses
  %.116 = phi ptr [ %i.bf, %.thread40 ], [ null, %bb.g ], [ null, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread34.thread ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i22 = load ptr, ptr %i.bh, align 8, !tbaa !229
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !240 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !241
  %i.bl = zext i32 %i.bk to i64
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !247
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !248
  %i.bp = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !250 ; 2 uses
  %i.bs = add i64 %i.bp, 7
  %i.bt = add i64 %i.bs, %i.br
  %i.bu = and i64 %i.bt, 7
  %.neg44 = add i64 %i.br, 7
  %i.bv = sub i64 %.neg44, %i.bu                  ; 3 uses
  store i64 %i.bv, ptr %i.bq, align 8, !tbaa !250
  %i.bw = add i64 %i.bv, 72                       ; 2 uses
  %i.bx = icmp ugt i64 %i.bw, 262144
  br i1 %i.bx, label %.critedge.i.i.i, label %bb.l, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.k
  %i.by = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.bg, i64 noundef 72, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.l:                                             ; preds = %bb.k
  %i.bz = add i64 %i.bv, %i.bp
  %i.ca = inttoptr i64 %i.bz to ptr
  store i64 %i.bw, ptr %i.bq, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.l
  %.0.i.i.i = phi ptr [ %i.by, %.critedge.i.i.i ], [ %i.ca, %bb.l ] ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 94, ptr %i.cb, align 8, !tbaa !252
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.cc, i8 0, i64 28, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 7 uses
  store ptr %i.cd, ptr %i.cd, align 8, !tbaa !231
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !234
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !234 ; 4 uses
  %i.cg = icmp eq ptr %i.cd, %2
  %i.ch = icmp eq ptr %i.cf, %2
  %or.cond.i.i.i.i.i.i = or i1 %i.cg, %i.ch
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.ci = load ptr, ptr %2, align 8, !tbaa !231   ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !231
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %2, ptr %i.ck, align 8, !tbaa !234
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cd, ptr %i.cl, align 8, !tbaa !234
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !231
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !234
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit

_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store ptr %.116, ptr %i.cm, align 8, !tbaa !468
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.cn, align 8, !tbaa !229
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i22, ptr %i.co, align 8, !tbaa !229
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.cp, align 8, !tbaa !229
  %i.cq = ptrtoint ptr %.0.i.i.i to i64
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread37

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread37: ; preds = %bb.c, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit, %bb.b, %_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, %bb.f
  %.sroa.031.0 = phi i64 [ %i.cq, %_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ undef, %bb.b ], [ undef, %bb.f ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ undef, %bb.c ]
  %.sroa.232.5 = phi i8 [ 1, %_ZN6hermes6ESTree17ObjectPatternNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl19parseTypeAnnotationEN4llvh8OptionalINS3_5SMLocEEENS2_21AllowAnonFunctionTypeE.exit ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.031.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.232.5, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseBindingInitializerENS1_5ParamEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !229
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17
  store ptr %i.e, ptr %i.a, align 8, !tbaa !85
  %i.f = or i32 %1, 1
  %i.g = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 %i.f, i32 noundef 1, i32 noundef 1, ptr noundef null) ; 2 uses
  %i.h = extractvalue { i64, i8 } %i.g, 0
  %i.i = extractvalue { i64, i8 } %i.g, 1
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i9 = load ptr, ptr %i.k, align 8, !tbaa !229
  %i.l = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !240  ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !241
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !247
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !248
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !250  ; 2 uses
  %i.w = add i64 %i.t, 7
  %i.x = add i64 %i.w, %i.v
  %i.y = and i64 %i.x, 7
  %.neg12 = add i64 %i.v, 7
  %i.z = sub i64 %.neg12, %i.y                    ; 3 uses
  store i64 %i.z, ptr %i.u, align 8, !tbaa !250
  %i.aa = add i64 %i.z, 64                        ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 262144
  br i1 %i.ab, label %.critedge.i.i.i, label %bb.c, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.b
  %i.ac = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.l, i64 noundef 64, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.c:                                             ; preds = %bb.b
  %i.ad = add i64 %i.z, %i.t
  %i.ae = inttoptr i64 %i.ad to ptr
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

end_hunk_0
begin_hunk_1_@_ZN6hermes6parser6detail12JSParserImpl17parseMemberSelectEN4llvh5SMLocES4_PNS_6ESTree4NodeEb:bb.a
  %i.fv = icmp eq i32 %i.l, 74
  %or.cond153 = and i1 %.not, %i.fv
  br i1 %or.cond153, label %.thread141, label %.thread136

.thread138:                                       ; preds = %bb.n
  %i.fw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i73139 = load ptr, ptr %i.fw, align 8, !tbaa !229 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.pre117, i64 188
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !284
  %.not140 = icmp eq i32 %i.fy, 0
  br i1 %.not140, label %.thread136, label %.thread141

.thread131:                                       ; preds = %bb.m
  %i.fz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.i73132 = load ptr, ptr %i.fz, align 8, !tbaa !229
  br label %.thread136

.thread141:                                       ; preds = %bb.z, %.thread138
  %.sroa.0.0.copyload.i73134143 = phi ptr [ %.sroa.0.0.copyload.i73, %bb.z ], [ %.sroa.0.0.copyload.i73139, %.thread138 ]
  %i.ga = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseTypeArgsFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.gb = extractvalue { i64, i8 } %i.ga, 1
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %.thread141
  %i.gd = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !235
  %i.gf = icmp eq i32 %i.ge, 53
  br i1 %i.gf, label %.thread144, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 53, ptr %i.b, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.b, i64 1, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211, ptr %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.critedge

.thread136:                                       ; preds = %.thread131, %.thread138, %bb.z
  %.sroa.0.0.copyload.i73135 = phi ptr [ %.sroa.0.0.copyload.i73, %bb.z ], [ %.sroa.0.0.copyload.i73132, %.thread131 ], [ %.sroa.0.0.copyload.i73139, %.thread138 ] ; 2 uses
  %i.gg = phi ptr [ %.pre116, %bb.z ], [ %.pre117, %.thread131 ], [ %.pre117, %.thread138 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 192
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !285, !range !81, !noundef !75
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = icmp eq i32 %i.l, 74
  %or.cond154 = and i1 %i.gk, %i.gj
  br i1 %or.cond154, label %bb.ac, label %.thread150

.thread144:                                       ; preds = %bb.aa
  %i.gl = extractvalue { i64, i8 } %i.ga, 0
  %i.gm = inttoptr i64 %i.gl to ptr
  br label %.thread150

bb.ac:                                            ; preds = %.thread136
  %i.gn = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseTSTypeArgumentsEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17 ; 2 uses
  %i.go = extractvalue { i64, i8 } %i.gn, 1
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.gq = extractvalue { i64, i8 } %i.gn, 0
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = load ptr, ptr %i.e, align 8, !tbaa !85
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !235
  %i.gu = icmp eq i32 %i.gt, 53
  br i1 %i.gu, label %.thread150, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 53, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.211, ptr %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge

.thread150:                                       ; preds = %.thread144, %bb.ad, %.thread136
  %.sroa.0.0.copyload.i73135147 = phi ptr [ %.sroa.0.0.copyload.i73135, %.thread136 ], [ %.sroa.0.0.copyload.i73134143, %.thread144 ], [ %.sroa.0.0.copyload.i73135, %bb.ad ]
  %.3 = phi ptr [ null, %.thread136 ], [ %i.gm, %.thread144 ], [ %i.gr, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %5, ptr %5, align 8, !tbaa !231
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %5, ptr %i.gv, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr null, ptr %6, align 8, !tbaa !322
  %i.gw = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl14parseArgumentsERN4llvh12simple_ilistINS_6ESTree4NodeEJEEERNS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.gx = extractvalue { i64, i8 } %i.gw, 1
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.thread150
  %.sroa.06.0.copyload = load ptr, ptr %6, align 8, !tbaa !229
  %i.gz = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !240 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !241
  %i.hd = zext i32 %i.hc to i64
  %i.he = load ptr, ptr %i.gz, align 8, !tbaa !247
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.hd
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !248
  %i.hh = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 3 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !250 ; 2 uses
  %i.hk = add i64 %i.hh, 7
  %i.hl = add i64 %i.hk, %i.hj
  %i.hm = and i64 %i.hl, 7
  %.neg100 = add i64 %i.hj, 7
  %i.hn = sub i64 %.neg100, %i.hm                 ; 3 uses
  store i64 %i.hn, ptr %i.hi, align 8, !tbaa !250
  %i.ho = add i64 %i.hn, 88                       ; 2 uses
  %i.hp = icmp ugt i64 %i.ho, 262144
  br i1 %i.hp, label %.critedge.i.i.i77, label %bb.ag, !prof !251

.critedge.i.i.i77:                                ; preds = %bb.af
  %i.hq = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.gz, i64 noundef 88, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit78

bb.ag:                                            ; preds = %bb.af
  %i.hr = add i64 %i.hn, %i.hh
  %i.hs = inttoptr i64 %i.hr to ptr
  store i64 %i.ho, ptr %i.hi, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit78

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit78:  ; preds = %.critedge.i.i.i77, %bb.ag
  %.0.i.i.i76 = phi ptr [ %i.hq, %.critedge.i.i.i77 ], [ %i.hs, %bb.ag ] ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %.0.i.i.i76, i8 0, i64 16, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i.i.i76, i64 16
  store i32 52, ptr %i.ht, align 8, !tbaa !252
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i.i76, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hu, i8 0, i64 28, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i.i.i76, i64 48
  store ptr %3, ptr %i.hv, align 8, !tbaa !547
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i.i.i76, i64 56
  store ptr %.3, ptr %i.hw, align 8, !tbaa !550
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i.i.i76, i64 64 ; 7 uses
  store ptr %i.hx, ptr %i.hx, align 8, !tbaa !231
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i.i.i76, i64 72 ; 2 uses
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !234
  %i.hz = load ptr, ptr %i.gv, align 8, !tbaa !234 ; 4 uses
  %i.ia = icmp eq ptr %i.hx, %5
  %i.ib = icmp eq ptr %i.hz, %5
  %or.cond.i.i.i.i.i.i = or i1 %i.ia, %i.ib
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit78
  %i.ic = load ptr, ptr %5, align 8, !tbaa !231   ; 2 uses
  %i.id = load ptr, ptr %i.hz, align 8, !tbaa !231
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr %5, ptr %i.ie, align 8, !tbaa !234
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store ptr %i.hx, ptr %i.if, align 8, !tbaa !234
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !231
  store ptr %i.hz, ptr %i.hy, align 8, !tbaa !234
  store ptr %i.ic, ptr %i.hx, align 8, !tbaa !231
  br label %_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb.exit

_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit78, %bb.ah
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i.i.i76, i64 80
  store i8 1, ptr %i.ig, align 8, !tbaa !551
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i.i.i76, i64 24
  store ptr %1, ptr %i.ih, align 8, !tbaa !229
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i.i76, i64 32
  store ptr %.sroa.06.0.copyload, ptr %i.ii, align 8, !tbaa !229
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i.i.i76, i64 40
  store ptr %.sroa.0.0.copyload.i73135147, ptr %i.ij, align 8, !tbaa !229
  %i.ik = ptrtoint ptr %.0.i.i.i76 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.thread150, %_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb.exit
  %.sroa.094.2 = phi i64 [ %i.ik, %_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb.exit ], [ undef, %.thread150 ]
  %.sroa.695.3 = phi i8 [ 1, %_ZN6hermes6ESTree26OptionalCallExpressionNodeC2EPNS0_4NodeES3_ON4llvh12simple_ilistIS2_JEEEb.exit ], [ 0, %.thread150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.ac, %bb.ab, %.thread141, %bb.r, %bb.ai, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit67, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit71, %bb.p, %bb.l
  %.sroa.094.3 = phi i64 [ %.sroa.094.1, %bb.l ], [ %i.fe, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit67 ], [ %i.fr, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit71 ], [ undef, %bb.r ], [ undef, %bb.p ], [ %.sroa.094.2, %bb.ai ], [ undef, %bb.ab ], [ undef, %.thread141 ], [ undef, %bb.ac ], [ undef, %bb.ae ]
  %.sroa.695.6 = phi i8 [ %.sroa.695.1, %bb.l ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit67 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit71 ], [ 0, %bb.r ], [ 0, %bb.p ], [ %.sroa.695.3, %bb.ai ], [ 0, %bb.ab ], [ 0, %.thread141 ], [ 0, %bb.ac ], [ 0, %bb.ae ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.094.3, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.695.6, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl14parseArgumentsERN4llvh12simple_ilistINS_6ESTree4NodeEJEEERNS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.d, align 8, !tbaa !229
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17 ; 4 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !85
  %i.g = load i32, ptr %i.f, align 8, !tbaa !235  ; 2 uses
  %i.h = icmp eq i32 %i.g, 54
  br i1 %i.h, label %.sink.split, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.preheader

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.preheader: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13: ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.preheader, %bb.e
  %i.j = phi i32 [ %i.g, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.preheader ], [ %.fr, %bb.e ]
  %i.k = phi ptr [ %i.f, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.preheader ], [ %i.be, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !229 ; 2 uses
  %i.m = icmp eq i32 %i.j, 59
  br i1 %i.m, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit: ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13
  %i.n = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17
  store ptr %i.n, ptr %i.b, align 8, !tbaa !85
  %i.o = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 1, i32 noundef 1, ptr noundef null) ; 2 uses
  %i.p = extractvalue { i64, i8 } %i.o, 0
  %i.q = extractvalue { i64, i8 } %i.o, 1
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.b, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.thread17

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread: ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13
  %i.s = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 1, i32 noundef 1, ptr noundef null) ; 2 uses
  %i.t = extractvalue { i64, i8 } %i.s, 1
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.thread, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.thread17

bb.b:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit
  %.sroa.0.0.copyload.i.i12 = load ptr, ptr %i.i, align 8, !tbaa !229
  %i.v = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !240  ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !241
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !247
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !248
  %i.ad = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !250 ; 2 uses
  %i.ag = add i64 %i.ad, 7
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 7
  %.neg25 = add i64 %i.af, 7
  %i.aj = sub i64 %.neg25, %i.ai                  ; 3 uses
  store i64 %i.aj, ptr %i.ae, align 8, !tbaa !250
  %i.ak = add i64 %i.aj, 56                       ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 262144
  br i1 %i.al, label %.critedge.i.i.i, label %bb.c, !prof !251

.critedge.i.i.i:                                  ; preds = %bb.b
  %i.am = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.v, i64 noundef 56, i64 noundef 8) #17
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.c:                                             ; preds = %bb.b
  %i.an = add i64 %i.aj, %i.ad
  %i.ao = inttoptr i64 %i.an to ptr
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !250
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.am, %.critedge.i.i.i ], [ %i.ao, %bb.c ] ; 8 uses
  %i.ap = inttoptr i64 %i.p to ptr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 45, ptr %i.aq, align 8, !tbaa !252
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !515
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.at, align 8, !tbaa !229
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i12, ptr %i.au, align 8, !tbaa !229
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.av, align 8, !tbaa !229
  br label %bb.d

.thread:                                          ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread
  %i.aw = extractvalue { i64, i8 } %i.s, 0
  %i.ax = inttoptr i64 %i.aw to ptr
  br label %bb.d

bb.d:                                             ; preds = %.thread, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %.sink40 = phi ptr [ %i.ax, %.thread ], [ %.0.i.i.i, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ] ; 4 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !231   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sink40, i64 8
  store ptr %1, ptr %i.az, align 8, !tbaa !234
  store ptr %i.ay, ptr %.sink40, align 8, !tbaa !231
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.sink40, ptr %i.ba, align 8, !tbaa !234
  store ptr %.sink40, ptr %1, align 8, !tbaa !231
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !235 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 61
  br i1 %i.bd, label %bb.e, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.thread21

bb.e:                                             ; preds = %bb.d
  %i.be = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 0) #17 ; 4 uses
  store ptr %i.be, ptr %i.b, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !235
  %.fr = freeze i32 %i.bf                         ; 2 uses
  %i.bg = icmp eq i32 %.fr, 54
  br i1 %i.bg, label %.sink.split, label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.thread21: ; preds = %bb.d
  %i.bh = icmp eq i32 %i.bc, 54
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.0.0.copyload.i14 = load ptr, ptr %i.bi, align 8, !tbaa !229
  store ptr %.sroa.0.0.copyload.i14, ptr %2, align 8, !tbaa !229
  br i1 %i.bh, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.thread21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 54, ptr %i.a, align 4, !tbaa !264
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull readonly align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.137, ptr %.sroa.0.0.copyload.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.thread17

.sink.split:                                      ; preds = %bb.e, %bb.a
  %.lcssa34.sink = phi ptr [ %i.f, %bb.a ], [ %i.be, %bb.e ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa34.sink, i64 16
  %.sroa.0.0.copyload.i1430 = load ptr, ptr %i.bj, align 8, !tbaa !229
  store ptr %.sroa.0.0.copyload.i1430, ptr %2, align 8, !tbaa !229
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.thread21
  %i.bk = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.e, i32 noundef 1) #17
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !85
  br label %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.thread17

_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit13.thread17: ; preds = %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread, %bb.g, %bb.f
  %.sroa.2.2 = phi i8 [ 1, %bb.g ], [ 0, %bb.f ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit.thread ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE.exit ]
  %.fca.1.insert = insertvalue { i64, i8 } { i64 ptrtoint (ptr @.str.106 to i64), i8 poison }, i8 %.sroa.2.2, 1
  ret { i64, i8 } %.fca.1.insert
}

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseTypeArgsFlowEv(ptr noundef nonnull align 8 dereferenceable(2824)) local_unnamed_addr #1

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseTSTypeArgumentsEv(ptr noundef nonnull align 8 dereferenceable(2824)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseCallExpressionEN4llvh5SMLocEPNS_6ESTree4NodeES7_bb(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvh::simple_ilist", align 8 ; 18 uses
  %7 = alloca %"class.llvh::SMLoc", align 8       ; 6 uses
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 6 uses
  %i.r = zext i1 %5 to i8
  br label %.outer

.outer:                                           ; preds = %.thread, %bb.a
  %.063.ph = phi ptr [ %i.et, %.thread ], [ %2, %bb.a ]
  %.sroa.019.0.ph = phi ptr [ %.sroa.0.0.copyload.i38, %.thread ], [ %1, %bb.a ]
  %.027.ph = phi i8 [ %spec.select, %.thread ], [ %i.a, %bb.a ] ; 2 uses
  %.0.ph = phi ptr [ %.2, %.thread ], [ %3, %bb.a ]
  %i.s = trunc nuw i8 %.027.ph to i1
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.063 = phi ptr [ %.063.ph, %.outer ], [ %.063.be, %.backedge ] ; 5 uses
  %.0 = phi ptr [ %.0.ph, %.outer ], [ %.0.be, %.backedge ] ; 4 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !239, !nonnull !75, !align !76 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 188
  %i.v = load i32, ptr %i.u, align 4, !tbaa !284  ; 2 uses
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.y = load i8, ptr %i.x, align 8, !tbaa !285, !range !81, !noundef !75
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = icmp eq ptr %.0, null
  %or.cond.not = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.not, label %bb.e, label %bb.r

bb.d:                                             ; preds = %bb.b
  %.old3.not = icmp eq ptr %.0, null
  br i1 %.old3.not, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !235
  %i.ad = icmp eq i32 %i.ac, 74
  br i1 %i.ad, label %_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit, label %bb.r

_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit:  ; preds = %bb.e
  %i.ae = load i32, ptr %i.c, align 8, !tbaa !235 ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !324
  %i.ah = load <2 x ptr>, ptr %i.f, align 8, !tbaa !229
  %.sroa.0.0.copyload.i4.i = load ptr, ptr %i.g, align 8, !tbaa !229
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !552
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !553
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !554
  %i.ao = load ptr, ptr %i.k, align 8, !tbaa !555
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !270, !nonnull !75, !align !76 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 336 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8
  store i32 2, ptr %i.at, align 8, !tbaa !556
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 340
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !283
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit
  %i.av = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseTypeArgsFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17
  br label %_ZN6hermes6parser6detail12JSParserImpl18parseTypeArgumentsEv.exit

bb.g:                                             ; preds = %_ZN6hermes6parser7JSLexer9SavePointC2EPS1_.exit
  %i.aw = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseTSTypeArgumentsEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #17
  br label %_ZN6hermes6parser6detail12JSParserImpl18parseTypeArgumentsEv.exit

_ZN6hermes6parser6detail12JSParserImpl18parseTypeArgumentsEv.exit: ; preds = %bb.f, %bb.g
  %.pn.i = phi { i64, i8 } [ %i.av, %bb.f ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ax = extractvalue { i64, i8 } %.pn.i, 0
  %i.ay = extractvalue { i64, i8 } %.pn.i, 1
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN6hermes6parser6detail12JSParserImpl18parseTypeArgumentsEv.exit
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !235
  %i.bc = icmp eq i32 %i.bb, 53
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = inttoptr i64 %i.ax to ptr
  br label %_ZN6hermes6parser7JSLexer9SavePoint7restoreEv.exit

bb.j:                                             ; preds = %bb.h, %_ZN6hermes6parser6detail12JSParserImpl18parseTypeArgumentsEv.exit
  switch i32 %i.ae, label %bb.m [
    i32 1, label %bb.k
    i32 38, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.c, align 8, !tbaa !235
  store ptr %i.af, ptr %i.d, align 8, !tbaa !279
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !214
  store i32 38, ptr %i.c, align 8, !tbaa !235
  store ptr %i.be, ptr %i.d, align 8, !tbaa !279
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  store i32 %i.ae, ptr %i.c, align 8, !tbaa !235
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  store <2 x ptr> %i.ah, ptr %i.f, align 8, !tbaa !229
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !324
  %i.bf = ptrtoint ptr %.sroa.0.0.copyload.i4.i to i64
  store i64 %i.bf, ptr %i.g, align 8, !tbaa !229
  %i.bg = load i8, ptr %i.n, align 1, !tbaa !558, !range !81, !noundef !75
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.o, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !553 ; 2 uses
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !552 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = icmp ult i64 %i.am, %i.bm
  br i1 %i.bn, label %bb.p, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 %i.am ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, %i.bi
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i: ; preds = %bb.p
  store ptr %i.bo, ptr %i.i, align 8, !tbaa !553
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i, %bb.p, %bb.o, %bb.n
  %i.bp = load i8, ptr %i.o, align 2, !tbaa !559, !range !81, !noundef !75
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.q, label %_ZN6hermes6parser7JSLexer9SavePoint7restoreEv.exit, !prof !251
end_hunk_1
