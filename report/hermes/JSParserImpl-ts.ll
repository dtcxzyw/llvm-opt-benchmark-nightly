inline.NumInlined: 1400
inline.NumDeleted: 333
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl23parseTSObjectTypeMemberEv:bb.a
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.thread, label %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit.thread

.thread:                                          ; preds = %bb.g
  %i.z = extractvalue { i64, i8 } %i.w, 0
  %i.aa = inttoptr i64 %i.z to ptr
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.f
  %.149 = phi ptr [ %i.aa, %.thread ], [ null, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ab, align 8, !tbaa !61
  %i.ac = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !78
  %i.ag = zext i32 %i.af to i64
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !84
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !87 ; 2 uses
  %i.an = add i64 %i.ak, 7
  %i.ao = add i64 %i.an, %i.am
  %i.ap = and i64 %i.ao, 7
  %.neg138 = add i64 %i.am, 7
  %i.aq = sub i64 %.neg138, %i.ap                 ; 3 uses
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !87
  %i.ar = add i64 %i.aq, 72                       ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 262144
  br i1 %i.as, label %.critedge.i.i.i, label %bb.i, !prof !88

.critedge.i.i.i:                                  ; preds = %bb.h
  %i.at = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ac, i64 noundef 72, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.i:                                             ; preds = %bb.h
  %i.au = add i64 %i.aq, %i.ak
  %i.av = inttoptr i64 %i.au to ptr
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.i
  %.0.i.i.i = phi ptr [ %i.at, %.critedge.i.i.i ], [ %i.av, %bb.i ] ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 268, ptr %i.aw, align 8, !tbaa !90
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ax, i8 0, i64 28, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 7 uses
  store ptr %i.ay, ptr %i.ay, align 8, !tbaa !120
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !121
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !121 ; 4 uses
  %i.bb = icmp eq ptr %i.ay, %1
  %i.bc = icmp eq ptr %i.ba, %1
  %or.cond.i.i.i.i.i.i = or i1 %i.bb, %i.bc
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !120
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %1, ptr %i.bf, align 8, !tbaa !121
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.ay, ptr %i.bg, align 8, !tbaa !121
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !120
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !121
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !120
  br label %_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit

_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store ptr %.149, ptr %i.bh, align 8, !tbaa !193
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.bi, align 8, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bj, align 8, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.bk, align 8, !tbaa !61
  %i.bl = ptrtoint ptr %.0.i.i.i to i64
  br label %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit.thread

_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit.thread: ; preds = %bb.d, %bb.g, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit, %_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit
  %.sroa.0120.0 = phi i64 [ %i.bl, %_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit ], [ undef, %bb.g ], [ undef, %bb.d ]
  %.sroa.6121.1 = phi i8 [ 1, %_ZN6hermes6ESTree30TSCallSignatureDeclarationNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEEPS4_.exit ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit ], [ 0, %bb.g ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %.critedge61

bb.k:                                             ; preds = %bb.a
  %i.bm = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 55, i32 noundef 3) #4 ; 4 uses
  br i1 %i.bm, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !62
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb1EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %i.bq, i64 0) #4
  %i.bs = and i64 %i.br, 8589934591
  %or.cond = icmp eq i64 %i.bs, 4294967388
  br i1 %or.cond, label %.critedge, label %bb.n

.critedge:                                        ; preds = %bb.m
  %i.bt = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTSIndexSignatureEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i) ; 2 uses
  %i.bu = extractvalue { i64, i8 } %i.bt, 0
  %i.bv = extractvalue { i64, i8 } %i.bt, 1
  br label %.critedge61

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bw = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #4 ; 2 uses
  %i.bx = extractvalue { i64, i8 } %i.bw, 1
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.o, label %.critedge61

bb.o:                                             ; preds = %bb.n
  %i.bz = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 56, i32 noundef 3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr %.sroa.0.0.copyload.i) #4
  br i1 %i.bz, label %bb.p, label %.critedge61

bb.p:                                             ; preds = %bb.o
  %i.ca = extractvalue { i64, i8 } %i.bw, 0
  %i.cb = inttoptr i64 %i.ca to ptr
  br label %bb.t

bb.q:                                             ; preds = %bb.k
  %i.cc = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl4needENS0_9TokenKindEPKcS5_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, ptr %.sroa.0.0.copyload.i) #4
  br i1 %i.cc, label %bb.r, label %.critedge61

bb.r:                                             ; preds = %bb.q
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.ce = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !70 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !78
  %i.ci = zext i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !84
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85
  %i.cm = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !87 ; 2 uses
  %i.cp = add i64 %i.cm, 7
  %i.cq = add i64 %i.cp, %i.co
  %i.cr = and i64 %i.cq, 7
  %.neg129 = add i64 %i.co, 7
  %i.cs = sub i64 %.neg129, %i.cr                 ; 3 uses
  store i64 %i.cs, ptr %i.cn, align 8, !tbaa !87
  %i.ct = add i64 %i.cs, 72                       ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 262144
  br i1 %i.cu, label %.critedge.i.i.i64, label %bb.s, !prof !88

.critedge.i.i.i64:                                ; preds = %bb.r
  %i.cv = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.ce, i64 noundef 72, i64 noundef 8) #4
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit65

bb.s:                                             ; preds = %bb.r
  %i.cw = add i64 %i.cs, %i.cm
  %i.cx = inttoptr i64 %i.cw to ptr
  store i64 %i.ct, ptr %i.cn, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit65

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit65:  ; preds = %.critedge.i.i.i64, %bb.s
  %i.cy = phi ptr [ %.pre, %.critedge.i.i.i64 ], [ %i.cd, %bb.s ]
  %.0.i.i.i63 = phi ptr [ %i.cv, %.critedge.i.i.i64 ], [ %i.cx, %bb.s ] ; 10 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i63, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i63, i64 16
  store i32 66, ptr %i.db, align 8, !tbaa !90
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i63, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dc, i8 0, i64 28, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i.i.i63, i64 48
  store ptr %i.da, ptr %i.dd, align 8, !tbaa !97
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i63, i64 56
  store ptr null, ptr %i.de, align 8, !tbaa !100
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i63, i64 64
  store i8 0, ptr %i.df, align 8, !tbaa !101
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.dg, align 8, !tbaa !61
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i63, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.dh, align 8, !tbaa !61
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.di, align 8, !tbaa !61
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i63, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.dj, align 8, !tbaa !61
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.dg, align 8, !tbaa !61
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i.i63, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.dk, align 8, !tbaa !61
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.dl, i32 noundef 3) #4
  store ptr %i.dm, ptr %i.a, align 8, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit65, %bb.p
  %.157 = phi ptr [ %i.cb, %bb.p ], [ %.0.i.i.i63, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit65 ] ; 3 uses
  %i.dn = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 91, i32 noundef 3) #4
  %.252 = zext i1 %i.dn to i8                     ; 2 uses
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !62
  switch i32 %i.dp, label %bb.ae [
    i32 92, label %bb.u
    i32 53, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.0.0.copyload.i.i67 = load ptr, ptr %i.dq, align 8, !tbaa !61
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.dr, i32 noundef 3) #4
  store ptr %i.ds, ptr %i.a, align 8, !tbaa !11
  %i.dt = ptrtoint ptr %.sroa.0.0.copyload.i.i67 to i64
  %i.du = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTypeAnnotationTSEN4llvh8OptionalINS3_5SMLocEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %i.dt, i8 1) ; 2 uses
  %i.dv = extractvalue { i64, i8 } %i.du, 0
  %i.dw = extractvalue { i64, i8 } %i.du, 1
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.v, label %.critedge61

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i72 = load ptr, ptr %i.dy, align 8, !tbaa !61
  %i.dz = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !70 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !78
  %i.ed = zext i32 %i.ec to i64
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !84
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !85
  %i.eh = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !87 ; 2 uses
  %i.ek = add i64 %i.eh, 7
  %i.el = add i64 %i.ek, %i.ej
  %i.em = and i64 %i.el, 7
  %.neg132 = add i64 %i.ej, 7
  %i.en = sub i64 %.neg132, %i.em                 ; 3 uses
  store i64 %i.en, ptr %i.ei, align 8, !tbaa !87
  %i.eo = add i64 %i.en, 80                       ; 2 uses
  %i.ep = icmp ugt i64 %i.eo, 262144
  br i1 %i.ep, label %.critedge.i.i.i74, label %bb.w, !prof !88

.critedge.i.i.i74:                                ; preds = %bb.v
  %i.eq = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.dz, i64 noundef 80, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit75

bb.w:                                             ; preds = %bb.v
  %i.er = add i64 %i.en, %i.eh
  %i.es = inttoptr i64 %i.er to ptr
  store i64 %i.eo, ptr %i.ei, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit75

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit75:  ; preds = %.critedge.i.i.i74, %bb.w
  %.0.i.i.i73 = phi ptr [ %i.eq, %.critedge.i.i.i74 ], [ %i.es, %bb.w ] ; 15 uses
  %i.et = inttoptr i64 %i.dv to ptr
  %i.eu = zext i1 %i.bm to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(77) %.0.i.i.i73, i8 0, i64 16, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 16
  store i32 265, ptr %i.ev, align 8, !tbaa !90
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 20
  store i32 0, ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 48
  store ptr %.157, ptr %i.ex, align 8, !tbaa !195
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 56
  store ptr %i.et, ptr %i.ey, align 8, !tbaa !197
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 64
  store ptr null, ptr %i.ez, align 8, !tbaa !198
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 72
  store i8 %.252, ptr %i.fa, align 8, !tbaa !199
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 73
  store i8 %i.eu, ptr %i.fb, align 1, !tbaa !200
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 74
  store i8 0, ptr %i.fc, align 2, !tbaa !201
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 75
  store i8 0, ptr %i.fd, align 1, !tbaa !202
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 76
  store i8 0, ptr %i.fe, align 4, !tbaa !203
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ff, align 8, !tbaa !61
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 32
  store ptr %.sroa.0.0.copyload.i.i72, ptr %i.fg, align 8, !tbaa !61
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i.i.i73, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.fh, align 8, !tbaa !61
  %i.fi = ptrtoint ptr %.0.i.i.i73 to i64
  br label %.critedge61

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  store ptr %2, ptr %2, align 8, !tbaa !120
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %2, ptr %i.fj, align 8, !tbaa !121
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fl = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.fk, i32 noundef 3) #4
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !11
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !62
  %i.fo = icmp eq i32 %i.fn, 54
  br i1 %i.fo, label %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl24parseTSFunctionTypeParamEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.fq = extractvalue { i64, i8 } %i.fp, 1
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.aa, label %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78.thread

bb.aa:                                            ; preds = %bb.z
  %i.fs = extractvalue { i64, i8 } %i.fp, 0
  %i.ft = inttoptr i64 %i.fs to ptr               ; 4 uses
  %i.fu = load ptr, ptr %2, align 8, !tbaa !120   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %2, ptr %i.fv, align 8, !tbaa !121
  store ptr %i.fu, ptr %i.ft, align 8, !tbaa !120
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.ft, ptr %i.fw, align 8, !tbaa !121
  store ptr %i.ft, ptr %2, align 8, !tbaa !120
  %i.fx = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 61, i32 noundef 3) #4
  br i1 %i.fx, label %bb.y, label %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78

_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78: ; preds = %bb.y, %bb.aa
  %i.fy = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 54, i32 noundef 3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr %.sroa.0.0.copyload.i) #4
  br i1 %i.fy, label %bb.ab, label %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78.thread

bb.ab:                                            ; preds = %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !62
  %i.gb = icmp eq i32 %i.ga, 92
  br i1 %i.gb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.0.0.copyload.i.i79 = load ptr, ptr %i.gc, align 8, !tbaa !61
  %i.gd = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.fk, i32 noundef 3) #4
  store ptr %i.gd, ptr %i.a, align 8, !tbaa !11
  %i.ge = ptrtoint ptr %.sroa.0.0.copyload.i.i79 to i64
  %i.gf = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl21parseTypeAnnotationTSEN4llvh8OptionalINS3_5SMLocEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i64 %i.ge, i8 1) ; 2 uses
  %i.gg = extractvalue { i64, i8 } %i.gf, 1
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %.thread125, label %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78.thread

.thread125:                                       ; preds = %bb.ac
  %i.gi = extractvalue { i64, i8 } %i.gf, 0
  %i.gj = inttoptr i64 %i.gi to ptr
  br label %bb.ad

bb.ad:                                            ; preds = %.thread125, %bb.ab
  %.159 = phi ptr [ %i.gj, %.thread125 ], [ null, %bb.ab ]
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i84 = load ptr, ptr %i.gk, align 8, !tbaa !61
  %i.gl = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69
  %i.gm = call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 88, ptr noundef nonnull align 8 dereferenceable(656) %i.gl, i64 noundef 8) ; 5 uses
  call void @_ZN6hermes6ESTree21TSMethodSignatureNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_b(ptr noundef nonnull align 8 dereferenceable(81) %i.gm, ptr noundef %.157, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %.159, i1 noundef zeroext %i.bm)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.gn, align 8, !tbaa !61
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store ptr %.sroa.0.0.copyload.i.i84, ptr %i.go, align 8, !tbaa !61
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.gp, align 8, !tbaa !61
  %i.gq = ptrtoint ptr %i.gm to i64
  br label %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78.thread

_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78.thread: ; preds = %bb.z, %bb.ac, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78, %bb.ad
  %.sroa.0120.2 = phi i64 [ %i.gq, %bb.ad ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78 ], [ undef, %bb.ac ], [ undef, %bb.z ]
  %.sroa.6121.4 = phi i8 [ 1, %bb.ad ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78 ], [ 0, %bb.ac ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %.critedge61

bb.ae:                                            ; preds = %bb.t
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i90 = load ptr, ptr %i.gr, align 8, !tbaa !61
  %i.gs = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !70 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !78
  %i.gw = zext i32 %i.gv to i64
  %i.gx = load ptr, ptr %i.gs, align 8, !tbaa !84
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !85
  %i.ha = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 3 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !87 ; 2 uses
  %i.hd = add i64 %i.ha, 7
  %i.he = add i64 %i.hd, %i.hc
  %i.hf = and i64 %i.he, 7
  %.neg135 = add i64 %i.hc, 7
  %i.hg = sub i64 %.neg135, %i.hf                 ; 3 uses
  store i64 %i.hg, ptr %i.hb, align 8, !tbaa !87
  %i.hh = add i64 %i.hg, 80                       ; 2 uses
  %i.hi = icmp ugt i64 %i.hh, 262144
  br i1 %i.hi, label %.critedge.i.i.i92, label %bb.af, !prof !88

.critedge.i.i.i92:                                ; preds = %bb.ae
  %i.hj = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.gs, i64 noundef 80, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit93

bb.af:                                            ; preds = %bb.ae
  %i.hk = add i64 %i.hg, %i.ha
  %i.hl = inttoptr i64 %i.hk to ptr
  store i64 %i.hh, ptr %i.hb, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit93

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit93:  ; preds = %.critedge.i.i.i92, %bb.af
  %.0.i.i.i91 = phi ptr [ %i.hj, %.critedge.i.i.i92 ], [ %i.hl, %bb.af ] ; 14 uses
  %i.hm = zext i1 %i.bm to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(77) %.0.i.i.i91, i8 0, i64 16, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 16
  store i32 265, ptr %i.hn, align 8, !tbaa !90
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 20
  store i32 0, ptr %i.ho, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 48
  store ptr %.157, ptr %i.hp, align 8, !tbaa !195
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 56
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i8 0, i64 16, i1 false)
  store i8 %.252, ptr %i.hr, align 8, !tbaa !199
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 73
  store i8 %i.hm, ptr %i.hs, align 1, !tbaa !200
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 74
  store i8 0, ptr %i.ht, align 2, !tbaa !201
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 75
  store i8 0, ptr %i.hu, align 1, !tbaa !202
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 76
  store i8 0, ptr %i.hv, align 4, !tbaa !203
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.hw, align 8, !tbaa !61
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 32
  store ptr %.sroa.0.0.copyload.i.i90, ptr %i.hx, align 8, !tbaa !61
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i.i.i91, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.hy, align 8, !tbaa !61
  %i.hz = ptrtoint ptr %.0.i.i.i91 to i64
  br label %.critedge61

.critedge61:                                      ; preds = %bb.n, %bb.o, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit75, %bb.u, %bb.q, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78.thread, %.critedge, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit93, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit.thread
  %.sroa.0120.3 = phi i64 [ %.sroa.0120.0, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit.thread ], [ %i.bu, %.critedge ], [ undef, %bb.q ], [ %.sroa.0120.2, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78.thread ], [ %i.hz, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit93 ], [ undef, %bb.u ], [ %i.fi, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit75 ], [ undef, %bb.o ], [ undef, %bb.n ]
  %.sroa.6121.7 = phi i8 [ %.sroa.6121.1, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit.thread ], [ %i.bv, %.critedge ], [ 0, %bb.q ], [ %.sroa.6121.4, %_ZN6hermes6parser6detail12JSParserImpl25parseTSFunctionTypeParamsEN4llvh5SMLocERNS3_12simple_ilistINS_6ESTree4NodeEJEEE.exit78.thread ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit93 ], [ 0, %bb.u ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit75 ], [ 0, %bb.o ], [ 0, %bb.n ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0120.3, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.6121.7, 1
  ret { i64, i8 } %.fca.1.insert
}

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseBindingIdentifierENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824), i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseTSEnumMemberEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !61 ; 3 uses
  %i.e = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseBindingIdentifierENS1_5ParamE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 0) #4 ; 2 uses
  %i.f = extractvalue { i64, i8 } %i.e, 1
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 1, ptr %i.a, align 4, !tbaa !174
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.a, i64 1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr %.sroa.0.0.copyload.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, i8 } %i.e, 0
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 93, i32 noundef 0) #4
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #4 ; 2 uses
  %i.l = extractvalue { i64, i8 } %i.k, 1
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.d
  %i.n = extractvalue { i64, i8 } %i.k, 0
  %i.o = inttoptr i64 %i.n to ptr
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c
  %.1 = phi ptr [ %i.o, %.thread ], [ null, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.q = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !78
  %i.u = zext i32 %i.t to i64
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !84
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !85
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !87  ; 2 uses
  %i.ab = add i64 %i.y, 7
  %i.ac = add i64 %i.ab, %i.aa
  %i.ad = and i64 %i.ac, 7
  %.neg15 = add i64 %i.aa, 7
  %i.ae = sub i64 %.neg15, %i.ad                  ; 3 uses
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !87
  %i.af = add i64 %i.ae, 64                       ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 262144
  br i1 %i.ag, label %.critedge.i.i.i, label %bb.f, !prof !88

.critedge.i.i.i:                                  ; preds = %bb.e
  %i.ah = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.q, i64 noundef 64, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = add i64 %i.ae, %i.y
  %i.aj = inttoptr i64 %i.ai to ptr
  store i64 %i.af, ptr %i.z, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.f
  %.0.i.i.i = phi ptr [ %i.ah, %.critedge.i.i.i ], [ %i.aj, %bb.f ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 253, ptr %i.ak, align 8, !tbaa !90
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.i, ptr %i.am, align 8, !tbaa !204
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr %.1, ptr %i.an, align 8, !tbaa !206
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ao, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.ap, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.aq, align 8, !tbaa !61
  %i.ar = ptrtoint ptr %.0.i.i.i to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.b
  %.sroa.012.0 = phi i64 [ %i.ar, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ undef, %bb.b ], [ undef, %bb.d ]
  %.sroa.2.1 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.012.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.1, 1
  ret { i64, i8 } %.fca.1.insert
}

declare { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl25parseAssignmentExpressionENS1_5ParamENS2_23AllowTypedArrowFunctionENS2_20CoverTypedParametersEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(2824), i32, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseTSQualifiedNameEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.e = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !78
  %i.i = zext i32 %i.h to i64
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !87   ; 2 uses
  %i.p = add i64 %i.m, 7
  %i.q = add i64 %i.p, %i.o
  %i.r = and i64 %i.q, 7
  %.neg27 = add i64 %i.o, 7
  %i.s = sub i64 %.neg27, %i.r                    ; 3 uses
  store i64 %i.s, ptr %i.n, align 8, !tbaa !87
  %i.t = add i64 %i.s, 72                         ; 2 uses
  %i.u = icmp ugt i64 %i.t, 262144
  br i1 %i.u, label %.critedge.i.i.i, label %bb.b, !prof !88

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.v = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.e, i64 noundef 72, i64 noundef 8) #4
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.b:                                             ; preds = %bb.a
  %i.w = add i64 %i.s, %i.m
  %i.x = inttoptr i64 %i.w to ptr
  store i64 %i.t, ptr %i.n, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.b
  %i.y = phi ptr [ %.pre, %.critedge.i.i.i ], [ %i.c, %bb.b ]
  %.0.i.i.i = phi ptr [ %i.v, %.critedge.i.i.i ], [ %i.x, %bb.b ] ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 66, ptr %i.ab, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !97
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  store ptr null, ptr %i.ae, align 8, !tbaa !100
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store i8 0, ptr %i.af, align 8, !tbaa !101
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.ag, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.0.0.copyload.i.i9.i = load ptr, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i9.i, ptr %i.ai, align 8, !tbaa !61
  %.sroa.0.0.copyload.i.i10.i = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i10.i, ptr %i.aj, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.ak, i32 noundef 3) #4
  store ptr %i.al, ptr %i.b, align 8, !tbaa !11
  %i.am = tail call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 57, i32 noundef 3) #4
  br i1 %i.am, label %.lr.ph, label %._crit_edge
end_hunk_0
begin_hunk_1_@_ZN6hermes6parser6detail12JSParserImpl18parseTSPrimaryTypeEv:bb.a
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !165
  %i.dy = icmp eq ptr %i.cd, %i.dx
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.sroa.2.0..sroa_idx.i.i110 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i.i111 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i110, align 8, !tbaa !61
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.dz, i32 noundef 3) #4
  store ptr %i.ea, ptr %i.f, align 8, !tbaa !11
  %i.eb = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69
  %i.ec = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.eb, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, i8 0, i64 16, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i32 226, ptr %i.ed, align 8, !tbaa !90
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  store i32 0, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ef, align 8, !tbaa !61
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  store ptr %.sroa.2.0.copyload.i.i111, ptr %i.eg, align 8, !tbaa !61
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.eh, align 8, !tbaa !61
  %i.ei = ptrtoint ptr %i.ec to i64
  br label %bb.ay

bb.r:                                             ; preds = %bb.p
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !166
  %i.el = icmp eq ptr %i.cd, %i.ek
  br i1 %i.el, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.2.0..sroa_idx.i.i115 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i.i116 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i115, align 8, !tbaa !61
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.en = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.em, i32 noundef 3) #4
  store ptr %i.en, ptr %i.f, align 8, !tbaa !11
  %i.eo = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69
  %i.ep = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.eo, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ep, i8 0, i64 16, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i32 229, ptr %i.eq, align 8, !tbaa !90
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  store i32 0, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.es, align 8, !tbaa !61
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  store ptr %.sroa.2.0.copyload.i.i116, ptr %i.et, align 8, !tbaa !61
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.eu, align 8, !tbaa !61
  %i.ev = ptrtoint ptr %i.ep to i64
  br label %bb.ay

bb.t:                                             ; preds = %bb.r
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !167
  %i.ey = icmp eq ptr %i.cd, %i.ex
  br i1 %i.ey, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.sroa.2.0..sroa_idx.i.i120 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i.i121 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i120, align 8, !tbaa !61
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.ez, i32 noundef 3) #4
  store ptr %i.fa, ptr %i.f, align 8, !tbaa !11
  %i.fb = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69
  %i.fc = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.fb, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fc, i8 0, i64 16, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i32 228, ptr %i.fd, align 8, !tbaa !90
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 20
  store i32 0, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ff, align 8, !tbaa !61
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store ptr %.sroa.2.0.copyload.i.i121, ptr %i.fg, align 8, !tbaa !61
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.fh, align 8, !tbaa !61
  %i.fi = ptrtoint ptr %i.fc to i64
  br label %bb.ay

bb.v:                                             ; preds = %bb.t
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !215
  %i.fl = icmp eq ptr %i.cd, %i.fk
  br i1 %i.fl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.2.0..sroa_idx.i.i125 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i.i126 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i125, align 8, !tbaa !61
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fn = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.fm, i32 noundef 3) #4
  store ptr %i.fn, ptr %i.f, align 8, !tbaa !11
  %i.fo = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69
  %i.fp = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.fo, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fp, i8 0, i64 16, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i32 234, ptr %i.fq, align 8, !tbaa !90
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  store i32 0, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.fs, align 8, !tbaa !61
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store ptr %.sroa.2.0.copyload.i.i126, ptr %i.ft, align 8, !tbaa !61
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.fu, align 8, !tbaa !61
  %i.fv = ptrtoint ptr %i.fp to i64
  br label %bb.ay

bb.x:                                             ; preds = %bb.v
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !216
  %i.fy = icmp eq ptr %i.cd, %i.fx
  br i1 %i.fy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.sroa.2.0..sroa_idx.i.i130 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i.i131 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i130, align 8, !tbaa !61
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.fz, i32 noundef 3) #4
  store ptr %i.ga, ptr %i.f, align 8, !tbaa !11
  %i.gb = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69
  %i.gc = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.gb, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gc, i8 0, i64 16, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store i32 233, ptr %i.gd, align 8, !tbaa !90
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  store i32 0, ptr %i.ge, align 4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.gf, align 8, !tbaa !61
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  store ptr %.sroa.2.0.copyload.i.i131, ptr %i.gg, align 8, !tbaa !61
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.gh, align 8, !tbaa !61
  %i.gi = ptrtoint ptr %i.gc to i64
  br label %bb.ay

bb.z:                                             ; preds = %bb.x
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !217
  %i.gl = icmp eq ptr %i.cd, %i.gk
  br i1 %i.gl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.2.0..sroa_idx.i.i135 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i.i136 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i135, align 8, !tbaa !61
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gn = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.gm, i32 noundef 3) #4
  store ptr %i.gn, ptr %i.f, align 8, !tbaa !11
  %i.go = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69
  %i.gp = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.go, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gp, i8 0, i64 16, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i32 231, ptr %i.gq, align 8, !tbaa !90
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  store i32 0, ptr %i.gr, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.gs, align 8, !tbaa !61
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store ptr %.sroa.2.0.copyload.i.i136, ptr %i.gt, align 8, !tbaa !61
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.gu, align 8, !tbaa !61
  %i.gv = ptrtoint ptr %i.gp to i64
  br label %bb.ay

bb.ab:                                            ; preds = %bb.z
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !218
  %i.gy = icmp eq ptr %i.cd, %i.gx
  br i1 %i.gy, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.sroa.2.0..sroa_idx.i.i140 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i.i141 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i140, align 8, !tbaa !61
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ha = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.gz, i32 noundef 3) #4
  store ptr %i.ha, ptr %i.f, align 8, !tbaa !11
  %i.hb = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69
  %i.hc = tail call noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(656) %i.hb, i64 noundef 8) ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hc, i8 0, i64 16, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store i32 232, ptr %i.hd, align 8, !tbaa !90
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  store i32 0, ptr %i.he, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.hf, align 8, !tbaa !61
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store ptr %.sroa.2.0.copyload.i.i141, ptr %i.hg, align 8, !tbaa !61
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.hh, align 8, !tbaa !61
  %i.hi = ptrtoint ptr %i.hc to i64
  br label %bb.ay

bb.ad:                                            ; preds = %bb.ab
  %i.hj = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseTSTypeReferenceEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.hk = extractvalue { i64, i8 } %i.hj, 0
  %i.hl = extractvalue { i64, i8 } %i.hj, 1       ; 2 uses
  %i.hm = trunc nuw i8 %i.hl to i1
  %spec.select = select i1 %i.hm, i64 %i.hk, i64 undef
  br label %bb.ay

bb.ae:                                            ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit.thread
  %.sroa.2.0..sroa_idx.i.i145 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i.i146 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i145, align 8, !tbaa !61 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ho = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.hn, i32 noundef 3) #4
  store ptr %i.ho, ptr %i.f, align 8, !tbaa !11
  %i.hp = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !70 ; 3 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !78
  %i.ht = zext i32 %i.hs to i64
  %i.hu = load ptr, ptr %i.hp, align 8, !tbaa !84
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.ht
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !85
  %i.hx = ptrtoint ptr %i.hw to i64               ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !87 ; 2 uses
  %i.ia = add i64 %i.hx, 7                        ; 2 uses
  %i.ib = add i64 %i.ia, %i.hz
  %i.ic = and i64 %i.ib, 7
  %.neg263 = add i64 %i.hz, 7
  %i.id = sub i64 %.neg263, %i.ic                 ; 3 uses
  store i64 %i.id, ptr %i.hy, align 8, !tbaa !87
  %i.ie = add i64 %i.id, 56                       ; 3 uses
  %i.if = icmp ugt i64 %i.ie, 262144
  br i1 %i.if, label %.critedge.i.i.i150, label %bb.af, !prof !88

.critedge.i.i.i150:                               ; preds = %bb.ae
  %i.ig = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.hp, i64 noundef 56, i64 noundef 8) #4
  %.pre314 = load ptr, ptr %0, align 8, !tbaa !68 ; 3 uses
  %.phi.trans.insert315 = getelementptr inbounds nuw i8, ptr %.pre314, i64 24
  %.pre316 = load ptr, ptr %.phi.trans.insert315, align 8, !tbaa !70 ; 3 uses
  %.pre317 = load i32, ptr %.pre316, align 8, !tbaa !78
  %.pre318 = load ptr, ptr %.pre314, align 8, !tbaa !84
  %.phi.trans.insert319 = zext i32 %.pre317 to i64
  %.phi.trans.insert320 = getelementptr inbounds nuw [8 x i8], ptr %.pre318, i64 %.phi.trans.insert319
  %.pre321 = load ptr, ptr %.phi.trans.insert320, align 8, !tbaa !85
  %.phi.trans.insert322 = getelementptr inbounds nuw i8, ptr %.pre316, i64 8
  %.pre323 = load i64, ptr %.phi.trans.insert322, align 8, !tbaa !87
  %.pre324 = ptrtoint ptr %.pre321 to i64         ; 2 uses
  %.pre326 = add i64 %.pre324, 7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit151

bb.af:                                            ; preds = %bb.ae
  %i.ih = add i64 %i.id, %i.hx
  %i.ii = inttoptr i64 %i.ih to ptr
  store i64 %i.ie, ptr %i.hy, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit151

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit151: ; preds = %.critedge.i.i.i150, %bb.af
  %.pre-phi327 = phi i64 [ %.pre326, %.critedge.i.i.i150 ], [ %i.ia, %bb.af ]
  %.pre-phi325 = phi i64 [ %.pre324, %.critedge.i.i.i150 ], [ %i.hx, %bb.af ]
  %i.ij = phi i64 [ %.pre323, %.critedge.i.i.i150 ], [ %i.ie, %bb.af ] ; 2 uses
  %i.ik = phi ptr [ %.pre316, %.critedge.i.i.i150 ], [ %i.hr, %bb.af ]
  %i.il = phi ptr [ %.pre314, %.critedge.i.i.i150 ], [ %i.hp, %bb.af ]
  %.0.i.i.i149 = phi ptr [ %i.ig, %.critedge.i.i.i150 ], [ %i.ii, %bb.af ] ; 8 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  %i.in = add i64 %.pre-phi327, %i.ij
  %i.io = and i64 %i.in, 7
  %.neg266 = add i64 %i.ij, 7
  %i.ip = sub i64 %.neg266, %i.io                 ; 3 uses
  store i64 %i.ip, ptr %i.im, align 8, !tbaa !87
  %i.iq = add i64 %i.ip, 48                       ; 2 uses
  %i.ir = icmp ugt i64 %i.iq, 262144
  br i1 %i.ir, label %.critedge.i.i.i153, label %bb.ag, !prof !88

.critedge.i.i.i153:                               ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit151
  %i.is = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.il, i64 noundef 48, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit154

bb.ag:                                            ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit151
  %i.it = add i64 %i.ip, %.pre-phi325
  %i.iu = inttoptr i64 %i.it to ptr
  store i64 %i.iq, ptr %i.im, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit154

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit154: ; preds = %.critedge.i.i.i153, %bb.ag
  %.0.i.i.i152 = phi ptr [ %i.is, %.critedge.i.i.i153 ], [ %i.iu, %bb.ag ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i152, i8 0, i64 16, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %.0.i.i.i152, i64 16
  store i32 34, ptr %i.iv, align 8, !tbaa !90
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.i.i.i152, i64 20
  store i32 0, ptr %i.iw, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i.i.i152, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.ix, align 8, !tbaa !61
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i.i.i152, i64 32
  store ptr %.sroa.2.0.copyload.i.i146, ptr %i.iy, align 8, !tbaa !61
  %i.iz = getelementptr inbounds nuw i8, ptr %.0.i.i.i152, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.iz, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i149, i8 0, i64 16, i1 false)
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.i.i.i149, i64 16
  store i32 236, ptr %i.ja, align 8, !tbaa !90
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i.i.i149, i64 20
  store i32 0, ptr %i.jb, align 4
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.i.i.i149, i64 48
  store ptr %.0.i.i.i152, ptr %i.jc, align 8, !tbaa !219
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i.i.i149, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.jd, align 8, !tbaa !61
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i.i.i149, i64 32
  store ptr %.sroa.2.0.copyload.i.i146, ptr %i.je, align 8, !tbaa !61
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.i.i.i149, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.jf, align 8, !tbaa !61
  %i.jg = ptrtoint ptr %.0.i.i.i149 to i64
  br label %bb.ay

bb.ah:                                            ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit.thread
  %.sroa.2.0..sroa_idx.i.i156 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i.i157 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i156, align 8, !tbaa !61
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ji = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.jh, i32 noundef 3) #4
  store ptr %i.ji, ptr %i.f, align 8, !tbaa !11
  %i.jj = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !70 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !78
  %i.jn = zext i32 %i.jm to i64
  %i.jo = load ptr, ptr %i.jj, align 8, !tbaa !84
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jn
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !85
  %i.jr = ptrtoint ptr %i.jq to i64               ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 3 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !87 ; 2 uses
  %i.ju = add i64 %i.jr, 7
  %i.jv = add i64 %i.ju, %i.jt
  %i.jw = and i64 %i.jv, 7
  %.neg260 = add i64 %i.jt, 7
  %i.jx = sub i64 %.neg260, %i.jw                 ; 3 uses
  store i64 %i.jx, ptr %i.js, align 8, !tbaa !87
  %i.jy = add i64 %i.jx, 48                       ; 2 uses
  %i.jz = icmp ugt i64 %i.jy, 262144
  br i1 %i.jz, label %.critedge.i.i.i161, label %bb.ai, !prof !88

.critedge.i.i.i161:                               ; preds = %bb.ah
  %i.ka = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.jj, i64 noundef 48, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit162

bb.ai:                                            ; preds = %bb.ah
  %i.kb = add i64 %i.jx, %i.jr
  %i.kc = inttoptr i64 %i.kb to ptr
  store i64 %i.jy, ptr %i.js, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit162

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit162: ; preds = %.critedge.i.i.i161, %bb.ai
  %.0.i.i.i160 = phi ptr [ %i.ka, %.critedge.i.i.i161 ], [ %i.kc, %bb.ai ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i160, i8 0, i64 16, i1 false)
  %i.kd = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 16
  store i32 230, ptr %i.kd, align 8, !tbaa !90
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 20
  store i32 0, ptr %i.ke, align 4
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.kf, align 8, !tbaa !61
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 32
  store ptr %.sroa.2.0.copyload.i.i157, ptr %i.kg, align 8, !tbaa !61
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i.i.i160, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.kh, align 8, !tbaa !61
  %i.ki = ptrtoint ptr %.0.i.i.i160 to i64
  br label %bb.ay

bb.aj:                                            ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit.thread
  %i.kj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !221
  %.sroa.2.0..sroa_idx.i.i164 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i.i165 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i164, align 8, !tbaa !61 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.km = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.kl, i32 noundef 3) #4
  store ptr %i.km, ptr %i.f, align 8, !tbaa !11
  %i.kn = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !70 ; 3 uses
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !78
  %i.kr = zext i32 %i.kq to i64
  %i.ks = load ptr, ptr %i.kn, align 8, !tbaa !84
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kr
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !85
  %i.kv = ptrtoint ptr %i.ku to i64               ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 3 uses
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !87 ; 2 uses
  %i.ky = add i64 %i.kv, 7                        ; 2 uses
  %i.kz = add i64 %i.ky, %i.kx
  %i.la = and i64 %i.kz, 7
  %.neg254 = add i64 %i.kx, 7
  %i.lb = sub i64 %.neg254, %i.la                 ; 3 uses
  store i64 %i.lb, ptr %i.kw, align 8, !tbaa !87
  %i.lc = add i64 %i.lb, 56                       ; 3 uses
  %i.ld = icmp ugt i64 %i.lc, 262144
  br i1 %i.ld, label %.critedge.i.i.i169, label %bb.ak, !prof !88

.critedge.i.i.i169:                               ; preds = %bb.aj
  %i.le = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.kn, i64 noundef 56, i64 noundef 8) #4
  %.pre304 = load ptr, ptr %0, align 8, !tbaa !68 ; 3 uses
  %.phi.trans.insert305 = getelementptr inbounds nuw i8, ptr %.pre304, i64 24
  %.pre306 = load ptr, ptr %.phi.trans.insert305, align 8, !tbaa !70 ; 3 uses
  %.pre307 = load i32, ptr %.pre306, align 8, !tbaa !78
  %.pre308 = load ptr, ptr %.pre304, align 8, !tbaa !84
  %.phi.trans.insert309 = zext i32 %.pre307 to i64
  %.phi.trans.insert310 = getelementptr inbounds nuw [8 x i8], ptr %.pre308, i64 %.phi.trans.insert309
  %.pre311 = load ptr, ptr %.phi.trans.insert310, align 8, !tbaa !85
  %.phi.trans.insert312 = getelementptr inbounds nuw i8, ptr %.pre306, i64 8
end_hunk_1
begin_hunk_2_@_ZN6hermes6parser6detail12JSParserImpl18parseTSPrimaryTypeEv:bb.a
.critedge.i.i.i191:                               ; preds = %bb.ap
  %i.oy = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.oh, i64 noundef 56, i64 noundef 8) #4
  %.pre284 = load ptr, ptr %0, align 8, !tbaa !68 ; 3 uses
  %.phi.trans.insert285 = getelementptr inbounds nuw i8, ptr %.pre284, i64 24
  %.pre286 = load ptr, ptr %.phi.trans.insert285, align 8, !tbaa !70 ; 3 uses
  %.pre287 = load i32, ptr %.pre286, align 8, !tbaa !78
  %.pre288 = load ptr, ptr %.pre284, align 8, !tbaa !84
  %.phi.trans.insert289 = zext i32 %.pre287 to i64
  %.phi.trans.insert290 = getelementptr inbounds nuw [8 x i8], ptr %.pre288, i64 %.phi.trans.insert289
  %.pre291 = load ptr, ptr %.phi.trans.insert290, align 8, !tbaa !85
  %.phi.trans.insert292 = getelementptr inbounds nuw i8, ptr %.pre286, i64 8
  %.pre293 = load i64, ptr %.phi.trans.insert292, align 8, !tbaa !87
  %.pre339 = ptrtoint ptr %.pre291 to i64         ; 2 uses
  %.pre341 = add i64 %.pre339, 7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit192

bb.aq:                                            ; preds = %bb.ap
  %i.oz = add i64 %i.ov, %i.op
  %i.pa = inttoptr i64 %i.oz to ptr
  store i64 %i.ow, ptr %i.oq, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit192

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit192: ; preds = %.critedge.i.i.i191, %bb.aq
  %.pre-phi342 = phi i64 [ %.pre341, %.critedge.i.i.i191 ], [ %i.os, %bb.aq ]
  %.pre-phi340 = phi i64 [ %.pre339, %.critedge.i.i.i191 ], [ %i.op, %bb.aq ]
  %i.pb = phi i64 [ %.pre293, %.critedge.i.i.i191 ], [ %i.ow, %bb.aq ] ; 2 uses
  %i.pc = phi ptr [ %.pre286, %.critedge.i.i.i191 ], [ %i.oj, %bb.aq ]
  %i.pd = phi ptr [ %.pre284, %.critedge.i.i.i191 ], [ %i.oh, %bb.aq ]
  %.0.i.i.i190 = phi ptr [ %i.oy, %.critedge.i.i.i191 ], [ %i.pa, %bb.aq ] ; 8 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 2 uses
  %i.pf = add i64 %.pre-phi342, %i.pb
  %i.pg = and i64 %i.pf, 7
  %.neg245 = add i64 %i.pb, 7
  %i.ph = sub i64 %.neg245, %i.pg                 ; 3 uses
  store i64 %i.ph, ptr %i.pe, align 8, !tbaa !87
  %i.pi = add i64 %i.ph, 56                       ; 2 uses
  %i.pj = icmp ugt i64 %i.pi, 262144
  br i1 %i.pj, label %.critedge.i.i.i194, label %bb.ar, !prof !88

.critedge.i.i.i194:                               ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit192
  %i.pk = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.pd, i64 noundef 56, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit195

bb.ar:                                            ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit192
  %i.pl = add i64 %i.ph, %.pre-phi340
  %i.pm = inttoptr i64 %i.pl to ptr
  store i64 %i.pi, ptr %i.pe, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit195

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit195: ; preds = %.critedge.i.i.i194, %bb.ar
  %.0.i.i.i193 = phi ptr [ %i.pk, %.critedge.i.i.i194 ], [ %i.pm, %bb.ar ] ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i193, i8 0, i64 16, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i.i.i193, i64 16
  store i32 39, ptr %i.pn, align 8, !tbaa !90
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i.i.i193, i64 20
  store i32 0, ptr %i.po, align 4
  %i.pp = getelementptr inbounds nuw i8, ptr %.0.i.i.i193, i64 48
  store ptr %i.oe, ptr %i.pp, align 8, !tbaa !228
  %i.pq = getelementptr inbounds nuw i8, ptr %.0.i.i.i193, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.pq, align 8, !tbaa !61
  %i.pr = getelementptr inbounds nuw i8, ptr %.0.i.i.i193, i64 32
  store ptr %.sroa.2.0.copyload.i.i187, ptr %i.pr, align 8, !tbaa !61
  %i.ps = getelementptr inbounds nuw i8, ptr %.0.i.i.i193, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.ps, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i190, i8 0, i64 16, i1 false)
  %i.pt = getelementptr inbounds nuw i8, ptr %.0.i.i.i190, i64 16
  store i32 236, ptr %i.pt, align 8, !tbaa !90
  %i.pu = getelementptr inbounds nuw i8, ptr %.0.i.i.i190, i64 20
  store i32 0, ptr %i.pu, align 4
  %i.pv = getelementptr inbounds nuw i8, ptr %.0.i.i.i190, i64 48
  store ptr %.0.i.i.i193, ptr %i.pv, align 8, !tbaa !219
  %i.pw = getelementptr inbounds nuw i8, ptr %.0.i.i.i190, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.pw, align 8, !tbaa !61
  %i.px = getelementptr inbounds nuw i8, ptr %.0.i.i.i190, i64 32
  store ptr %.sroa.2.0.copyload.i.i187, ptr %i.px, align 8, !tbaa !61
  %i.py = getelementptr inbounds nuw i8, ptr %.0.i.i.i190, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.py, align 8, !tbaa !61
  %i.pz = ptrtoint ptr %.0.i.i.i190 to i64
  br label %bb.ay

bb.as:                                            ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit.thread, %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit.thread
  %i.qa = icmp eq i32 %i.i, 14
  %.sroa.2.0..sroa_idx.i.i197 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.2.0.copyload.i.i198 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i197, align 8, !tbaa !61 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qc = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.qb, i32 noundef 3) #4
  store ptr %i.qc, ptr %i.f, align 8, !tbaa !11
  %i.qd = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 4 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !70 ; 3 uses
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !78
  %i.qh = zext i32 %i.qg to i64
  %i.qi = load ptr, ptr %i.qd, align 8, !tbaa !84
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.qh
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !85
  %i.ql = ptrtoint ptr %i.qk to i64               ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 3 uses
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !87 ; 2 uses
  %i.qo = add i64 %i.ql, 7                        ; 2 uses
  %i.qp = add i64 %i.qo, %i.qn
  %i.qq = and i64 %i.qp, 7
  %.neg236 = add i64 %i.qn, 7
  %i.qr = sub i64 %.neg236, %i.qq                 ; 3 uses
  store i64 %i.qr, ptr %i.qm, align 8, !tbaa !87
  %i.qs = add i64 %i.qr, 56                       ; 3 uses
  %i.qt = icmp ugt i64 %i.qs, 262144
  br i1 %i.qt, label %.critedge.i.i.i202, label %bb.at, !prof !88

.critedge.i.i.i202:                               ; preds = %bb.as
  %i.qu = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.qd, i64 noundef 56, i64 noundef 8) #4
  %.pre = load ptr, ptr %0, align 8, !tbaa !68    ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre276 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !70 ; 3 uses
  %.pre277 = load i32, ptr %.pre276, align 8, !tbaa !78
  %.pre278 = load ptr, ptr %.pre, align 8, !tbaa !84
  %.phi.trans.insert279 = zext i32 %.pre277 to i64
  %.phi.trans.insert280 = getelementptr inbounds nuw [8 x i8], ptr %.pre278, i64 %.phi.trans.insert279
  %.pre281 = load ptr, ptr %.phi.trans.insert280, align 8, !tbaa !85
  %.phi.trans.insert282 = getelementptr inbounds nuw i8, ptr %.pre276, i64 8
  %.pre283 = load i64, ptr %.phi.trans.insert282, align 8, !tbaa !87
  %.pre344 = ptrtoint ptr %.pre281 to i64         ; 2 uses
  %.pre346 = add i64 %.pre344, 7
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit203

bb.at:                                            ; preds = %bb.as
  %i.qv = add i64 %i.qr, %i.ql
  %i.qw = inttoptr i64 %i.qv to ptr
  store i64 %i.qs, ptr %i.qm, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit203

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit203: ; preds = %.critedge.i.i.i202, %bb.at
  %.pre-phi347 = phi i64 [ %.pre346, %.critedge.i.i.i202 ], [ %i.qo, %bb.at ]
  %.pre-phi345 = phi i64 [ %.pre344, %.critedge.i.i.i202 ], [ %i.ql, %bb.at ]
  %i.qx = phi i64 [ %.pre283, %.critedge.i.i.i202 ], [ %i.qs, %bb.at ] ; 2 uses
  %i.qy = phi ptr [ %.pre276, %.critedge.i.i.i202 ], [ %i.qf, %bb.at ]
  %i.qz = phi ptr [ %.pre, %.critedge.i.i.i202 ], [ %i.qd, %bb.at ]
  %.0.i.i.i201 = phi ptr [ %i.qu, %.critedge.i.i.i202 ], [ %i.qw, %bb.at ] ; 8 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 8 ; 2 uses
  %i.rb = add i64 %.pre-phi347, %i.qx
  %i.rc = and i64 %i.rb, 7
  %.neg239 = add i64 %i.qx, 7
  %i.rd = sub i64 %.neg239, %i.rc                 ; 3 uses
  store i64 %i.rd, ptr %i.ra, align 8, !tbaa !87
  %i.re = add i64 %i.rd, 56                       ; 2 uses
  %i.rf = icmp ugt i64 %i.re, 262144
  br i1 %i.rf, label %.critedge.i.i.i205, label %bb.au, !prof !88

.critedge.i.i.i205:                               ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit203
  %i.rg = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.qz, i64 noundef 56, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit206

bb.au:                                            ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit203
  %i.rh = add i64 %i.rd, %.pre-phi345
  %i.ri = inttoptr i64 %i.rh to ptr
  store i64 %i.re, ptr %i.ra, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit206

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit206: ; preds = %.critedge.i.i.i205, %bb.au
  %.0.i.i.i204 = phi ptr [ %i.rg, %.critedge.i.i.i205 ], [ %i.ri, %bb.au ] ; 8 uses
  %i.rj = zext i1 %i.qa to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.0.i.i.i204, i8 0, i64 16, i1 false)
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.i.i.i204, i64 16
  store i32 35, ptr %i.rk, align 8, !tbaa !90
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.i.i.i204, i64 20
  store i32 0, ptr %i.rl, align 4
  %i.rm = getelementptr inbounds nuw i8, ptr %.0.i.i.i204, i64 48
  store i8 %i.rj, ptr %i.rm, align 8, !tbaa !230
  %i.rn = getelementptr inbounds nuw i8, ptr %.0.i.i.i204, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.rn, align 8, !tbaa !61
  %i.ro = getelementptr inbounds nuw i8, ptr %.0.i.i.i204, i64 32
  store ptr %.sroa.2.0.copyload.i.i198, ptr %i.ro, align 8, !tbaa !61
  %i.rp = getelementptr inbounds nuw i8, ptr %.0.i.i.i204, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.rp, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.0.i.i.i201, i8 0, i64 16, i1 false)
  %i.rq = getelementptr inbounds nuw i8, ptr %.0.i.i.i201, i64 16
  store i32 236, ptr %i.rq, align 8, !tbaa !90
  %i.rr = getelementptr inbounds nuw i8, ptr %.0.i.i.i201, i64 20
  store i32 0, ptr %i.rr, align 4
  %i.rs = getelementptr inbounds nuw i8, ptr %.0.i.i.i201, i64 48
  store ptr %.0.i.i.i204, ptr %i.rs, align 8, !tbaa !219
  %i.rt = getelementptr inbounds nuw i8, ptr %.0.i.i.i201, i64 24
  store ptr %.sroa.0.0.copyload.i, ptr %i.rt, align 8, !tbaa !61
  %i.ru = getelementptr inbounds nuw i8, ptr %.0.i.i.i201, i64 32
  store ptr %.sroa.2.0.copyload.i.i198, ptr %i.ru, align 8, !tbaa !61
  %i.rv = getelementptr inbounds nuw i8, ptr %.0.i.i.i201, i64 40
  store ptr %.sroa.0.0.copyload.i, ptr %i.rv, align 8, !tbaa !61
  %i.rw = ptrtoint ptr %.0.i.i.i201 to i64
  br label %bb.ay

bb.av:                                            ; preds = %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit.thread
  %i.rx = add i32 %i.i, -4
  %spec.select.i = icmp ult i32 %i.rx, 44
  br i1 %spec.select.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ry = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl20parseTSTypeReferenceEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.rz = extractvalue { i64, i8 } %i.ry, 0
  %i.sa = extractvalue { i64, i8 } %i.ry, 1       ; 2 uses
  %i.sb = trunc nuw i8 %i.sa to i1
  %spec.select233 = select i1 %i.sb, i64 %i.rz, i64 undef
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.sd, align 1, !tbaa !125
  store ptr @.str.26, ptr %1, align 8, !tbaa !128
  store i8 3, ptr %i.sc, align 8, !tbaa !129
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !130, !nonnull !10, !align !69
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.sf, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef 2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ad, %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit95, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit103, %bb.o, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ac, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit154, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit162, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit173, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit184, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit195, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit206, %bb.ax
  %.sroa.0230.2 = phi i64 [ %i.rw, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit206 ], [ %spec.select, %bb.ad ], [ undef, %bb.ax ], [ %i.ak, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ %i.am, %bb.d ], [ %i.ap, %bb.e ], [ %i.as, %bb.f ], [ %i.av, %bb.g ], [ %i.ay, %bb.h ], [ %i.cb, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit95 ], [ %i.di, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit103 ], [ %i.dv, %bb.o ], [ %i.ei, %bb.q ], [ %i.ev, %bb.s ], [ %i.fi, %bb.u ], [ %i.fv, %bb.w ], [ %i.gi, %bb.y ], [ %i.gv, %bb.aa ], [ %i.hi, %bb.ac ], [ undef, %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit ], [ %i.jg, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit154 ], [ %i.ki, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit162 ], [ %i.mf, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit173 ], [ %i.oc, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit184 ], [ %i.pz, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit195 ], [ %spec.select233, %bb.aw ]
  %.sroa.25.2 = phi i8 [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit206 ], [ %i.hl, %bb.ad ], [ 0, %bb.ax ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit ], [ %i.an, %bb.d ], [ %i.aq, %bb.e ], [ %i.at, %bb.f ], [ %i.aw, %bb.g ], [ %i.az, %bb.h ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit95 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit103 ], [ 1, %bb.o ], [ 1, %bb.q ], [ 1, %bb.s ], [ 1, %bb.u ], [ 1, %bb.w ], [ 1, %bb.y ], [ 1, %bb.aa ], [ 1, %bb.ac ], [ 0, %_ZN6hermes6parser6detail12JSParserImpl19recursionDepthCheckEv.exit ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit154 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit162 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit173 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit184 ], [ 1, %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit195 ], [ %i.sa, %bb.aw ]
  %i.sg = load i32, ptr %i.a, align 8, !tbaa !103
  %i.sh = add i32 %i.sg, -1
  store i32 %i.sh, ptr %i.a, align 8, !tbaa !103
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0230.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.25.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseTSObjectTypeEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !tbaa !61 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 3) #4 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  store ptr %1, ptr %1, align 8, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %1, ptr %i.f, align 8, !tbaa !121
  %i.g = load i32, ptr %i.e, align 8, !tbaa !62
  %i.h = icmp eq i32 %i.g, 51
  br i1 %i.h, label %.thread16, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.i = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseTSObjectTypeMemberEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.j = extractvalue { i64, i8 } %i.i, 1
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %i.l = extractvalue { i64, i8 } %i.i, 0
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !120    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !121
  store ptr %i.n, ptr %i.m, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.p, align 8, !tbaa !121
  store ptr %i.m, ptr %1, align 8, !tbaa !120
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.r = load i32, ptr %i.q, align 8, !tbaa !62
  %i.s = and i32 %i.r, -2
  %i.t = icmp eq i32 %i.s, 60
  br i1 %i.t, label %bb.c, label %.thread16

bb.c:                                             ; preds = %bb.b
  %i.u = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 3) #4 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !11
  %i.v = load i32, ptr %i.u, align 8, !tbaa !62
  %i.w = icmp eq i32 %i.v, 51
  br i1 %i.w, label %.thread16, label %.lr.ph

.thread16:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.x = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl3eatENS0_9TokenKindENS0_7JSLexer14GrammarContextEPKcS7_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 51, i32 noundef 3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr %.sroa.0.0.copyload.i.i) #4
  br i1 %i.x, label %bb.d, label %.thread

bb.d:                                             ; preds = %.thread16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.0.0.copyload.i.i12 = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.z = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !78
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !85
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !87 ; 2 uses
  %i.ak = add i64 %i.ah, 7
  %i.al = add i64 %i.ak, %i.aj
  %i.am = and i64 %i.al, 7
  %.neg20 = add i64 %i.aj, 7
  %i.an = sub i64 %.neg20, %i.am                  ; 3 uses
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !87
  %i.ao = add i64 %i.an, 64                       ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 262144
  br i1 %i.ap, label %.critedge.i.i.i, label %bb.e, !prof !88

.critedge.i.i.i:                                  ; preds = %bb.d
  %i.aq = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.z, i64 noundef 64, i64 noundef 8) #4
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ar = add i64 %i.an, %i.ah
  %i.as = inttoptr i64 %i.ar to ptr
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.e
  %.0.i.i.i = phi ptr [ %i.aq, %.critedge.i.i.i ], [ %i.as, %bb.e ] ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 264, ptr %i.at, align 8, !tbaa !90
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.au, i8 0, i64 28, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48 ; 7 uses
  store ptr %i.av, ptr %i.av, align 8, !tbaa !120
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !121
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !121 ; 4 uses
  %i.ay = icmp eq ptr %i.av, %1
  %i.az = icmp eq ptr %i.ax, %1
  %or.cond.i.i.i.i.i.i = or i1 %i.ay, %i.az
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.ba = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !120
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %1, ptr %i.bc, align 8, !tbaa !121
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.av, ptr %i.bd, align 8, !tbaa !121
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !120
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !121
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !120
  br label %_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit

_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.be, align 8, !tbaa !61
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i.i12, ptr %i.bf, align 8, !tbaa !61
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.bg, align 8, !tbaa !61
  %i.bh = ptrtoint ptr %.0.i.i.i to i64
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.thread16, %_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit
  %.sroa.013.0 = phi i64 [ %i.bh, %_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ undef, %.thread16 ], [ undef, %.lr.ph ]
  %.sroa.2.2 = phi i8 [ 1, %_ZN6hermes6ESTree17TSTypeLiteralNodeC2EON4llvh12simple_ilistINS0_4NodeEJEEE.exit ], [ 0, %.thread16 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl16parseTSTypeQueryEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !tbaa !61 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.f, i32 noundef 3) #4 ; 5 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !11
  %i.h = load i32, ptr %i.g, align 8, !tbaa !62   ; 2 uses
  %i.i = add i32 %i.h, -4
  %spec.select.i = icmp ult i32 %i.i, 44
  %i.j = icmp eq i32 %i.h, 1
  %or.cond = or i1 %i.j, %spec.select.i
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.b, align 4, !tbaa !174
  call void @_ZN6hermes6parser6detail12JSParserImpl13errorExpectedEN4llvh8ArrayRefINS0_9TokenKindEEEPKcS8_NS3_5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr nonnull %i.b, i64 1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr %.sroa.0.0.copyload.i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !10, !align !69 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70   ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !78
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !85
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !87   ; 2 uses
  %i.v = add i64 %i.s, 7
  %i.w = add i64 %i.v, %i.u
  %i.x = and i64 %i.w, 7
  %.neg43 = add i64 %i.u, 7
  %i.y = sub i64 %.neg43, %i.x                    ; 3 uses
  store i64 %i.y, ptr %i.t, align 8, !tbaa !87
  %i.z = add i64 %i.y, 72                         ; 2 uses
  %i.aa = icmp ugt i64 %i.z, 262144
  br i1 %i.aa, label %.critedge.i.i.i, label %bb.d, !prof !88

.critedge.i.i.i:                                  ; preds = %bb.c
  %i.ab = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.k, i64 noundef 72, i64 noundef 8) #4
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !11
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = add i64 %i.y, %i.s
  %i.ad = inttoptr i64 %i.ac to ptr
  store i64 %i.z, ptr %i.t, align 8, !tbaa !87
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
end_hunk_2
