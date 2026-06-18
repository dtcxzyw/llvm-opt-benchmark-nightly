inline.NumInlined: 682
inline.NumDeleted: 253
begin_hunk_0_@_ZN6hermes6parser6detail12JSParserImpl15parseJSXElementEN4llvh5SMLocE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.0.0.copyload.i24 = load ptr, ptr %i.ct, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.2.0.copyload.i26 = load ptr, ptr %.sroa.2.0..sroa_idx.i25, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.cv, align 1, !tbaa !92
  store ptr @.str.2, ptr %5, align 8, !tbaa !95
  store i8 3, ptr %i.cu, align 8, !tbaa !96
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !97, !nonnull !62, !align !63
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cx, i32 noundef 0, ptr %.sroa.0.0.copyload.i24, ptr %.sroa.2.0.copyload.i26, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !97, !nonnull !62, !align !63
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.0.0.copyload.i29 = load ptr, ptr %i.cz, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.db, align 1, !tbaa !92
  store ptr @.str.1, ptr %6, align 8, !tbaa !95
  store i8 3, ptr %i.da, align 8, !tbaa !96
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.cy, i32 noundef 3, ptr %.sroa.0.0.copyload.i29, ptr noundef nonnull align 8 dereferenceable(18) %6, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.o

bb.o:                                             ; preds = %_ZN6hermes6parser6detailL13tagNamesMatchEPNS_6ESTree21JSXOpeningElementNodeEPNS2_21JSXClosingElementNodeE.exit, %_ZN6hermes6parser6detailL13tagNamesMatchEPNS_6ESTree21JSXOpeningElementNodeEPNS2_21JSXClosingElementNodeE.exit.thread, %bb.n
  %i.dc = load ptr, ptr %0, align 8, !tbaa !61, !nonnull !62, !align !63 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !64 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !72
  %i.dg = zext i32 %i.df to i64
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !78
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !79
  %i.dk = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 3 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !81 ; 2 uses
  %i.dn = add i64 %i.dk, 7
  %i.do = add i64 %i.dn, %i.dm
  %i.dp = and i64 %i.do, 7
  %.neg55 = add i64 %i.dm, 7
  %i.dq = sub i64 %.neg55, %i.dp                  ; 3 uses
  store i64 %i.dq, ptr %i.dl, align 8, !tbaa !81
  %i.dr = add i64 %i.dq, 80                       ; 2 uses
  %i.ds = icmp ugt i64 %i.dr, 262144
  br i1 %i.ds, label %.critedge.i.i.i35, label %bb.p, !prof !82

.critedge.i.i.i35:                                ; preds = %bb.o
  %i.dt = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.dc, i64 noundef 80, i64 noundef 8) #8
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit36

bb.p:                                             ; preds = %bb.o
  %i.du = add i64 %i.dq, %i.dk
  %i.dv = inttoptr i64 %i.du to ptr
  store i64 %i.dr, ptr %i.dl, align 8, !tbaa !81
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit36

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit36:  ; preds = %.critedge.i.i.i35, %bb.p
  %.0.i.i.i34 = phi ptr [ %i.dt, %.critedge.i.i.i35 ], [ %i.dv, %bb.p ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i34, i8 0, i64 16, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 16
  store i32 129, ptr %i.dw, align 8, !tbaa !83
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dx, i8 0, i64 28, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 48
  store ptr %i.h, ptr %i.dy, align 8, !tbaa !109
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 56 ; 7 uses
  store ptr %i.dz, ptr %i.dz, align 8, !tbaa !90
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 64 ; 2 uses
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !91
  %i.eb = load ptr, ptr %i.aq, align 8, !tbaa !91 ; 4 uses
  %i.ec = icmp eq ptr %i.dz, %2
  %i.ed = icmp eq ptr %i.eb, %2
  %or.cond.i.i.i.i.i.i37 = or i1 %i.ec, %i.ed
  br i1 %or.cond.i.i.i.i.i.i37, label %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit38, label %bb.q

bb.q:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit36
  %i.ee = load ptr, ptr %2, align 8, !tbaa !90    ; 2 uses
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !90
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %2, ptr %i.eg, align 8, !tbaa !91
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.dz, ptr %i.eh, align 8, !tbaa !91
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !90
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !91
  store ptr %i.ee, ptr %i.dz, align 8, !tbaa !90
  br label %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit38

_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit38: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit36, %bb.q
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 72
  store ptr %i.av, ptr %i.ei, align 8, !tbaa !111
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 24
  store ptr %1, ptr %i.ej, align 8, !tbaa !58
  %i.ek = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.0.0.copyload.i.i.i39 = load ptr, ptr %i.ek, align 8, !tbaa !58
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i39, ptr %i.el, align 8, !tbaa !58
  %i.em = getelementptr inbounds nuw i8, ptr %.0.i.i.i34, i64 40
  store ptr %1, ptr %i.em, align 8, !tbaa !58
  %i.en = ptrtoint ptr %.0.i.i.i34 to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit38
  %.sroa.050.0 = phi i64 [ %i.en, %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit38 ], [ undef, %bb.e ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit38 ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r, %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit
  %.sroa.050.1 = phi i64 [ %i.ap, %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit ], [ %.sroa.050.0, %bb.r ], [ undef, %bb.a ]
  %.sroa.3.1 = phi i8 [ 1, %_ZN6hermes6ESTree14JSXElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEES3_.exit ], [ %.sroa.3.0, %bb.r ], [ 0, %bb.a ]
  store i32 %i.b, ptr %i.a, align 8, !tbaa !3
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.050.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.1, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl22parseJSXOpeningElementEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::simple_ilist", align 8 ; 13 uses
  %i.a = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl19parseJSXElementNameENS2_24AllowJSXMemberExpressionE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 1) ; 2 uses
  %i.b = extractvalue { i64, i8 } %i.a, 1
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i8 } %i.a, 0
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = load i32, ptr %i.g, align 8, !tbaa !59
  %i.i = icmp eq i32 %i.h, 74
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseTypeArgsFlowEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) #8 ; 2 uses
  %i.k = extractvalue { i64, i8 } %i.j, 1
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.c
  %i.m = extractvalue { i64, i8 } %i.j, 0
  %i.n = inttoptr i64 %i.m to ptr
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b
  %.115 = phi ptr [ %i.n, %.thread ], [ null, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store ptr %2, ptr %2, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %2, ptr %i.o, align 8, !tbaa !91
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.q = load i32, ptr %i.p, align 8, !tbaa !59
  switch i32 %i.q, label %bb.g [
    i32 75, label %bb.h
    i32 68, label %bb.h
    i32 49, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl23parseJSXSpreadAttributeEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.s = extractvalue { i64, i8 } %i.r, 1
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.backedge, label %.thread29

.backedge:                                        ; preds = %bb.f, %bb.g
  %.sink = phi { i64, i8 } [ %i.z, %bb.g ], [ %i.r, %bb.f ]
  %i.u = extractvalue { i64, i8 } %.sink, 0
  %i.v = inttoptr i64 %i.u to ptr                 ; 4 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !90     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %2, ptr %i.x, align 8, !tbaa !91
  store ptr %i.w, ptr %i.v, align 8, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.y, align 8, !tbaa !91
  store ptr %i.v, ptr %2, align 8, !tbaa !90
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.z = call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl17parseJSXAttributeEv(ptr noundef nonnull align 8 dereferenceable(2824) %0) ; 2 uses
  %i.aa = extractvalue { i64, i8 } %i.z, 1
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.backedge, label %.thread29

bb.h:                                             ; preds = %bb.e, %bb.e
  %i.ac = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl11checkAndEatENS0_9TokenKindENS0_7JSLexer14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 68, i32 noundef 0) #8 ; 2 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.af = call noundef zeroext i1 @_ZN6hermes6parser6detail12JSParserImpl4needENS0_9TokenKindEPKcS5_N4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, i32 noundef 75, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr %1) #8
  br i1 %i.af, label %3, label %.thread29

3:                                                ; preds = %bb.h
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %3
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !60
  %i.ai = icmp ult i32 %i.ah, 2
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %4, i32 noundef 0) #8
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !7
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = call noundef ptr @_ZN6hermes6parser7JSLexer17advanceInJSXChildEv(ptr noundef nonnull align 8 dereferenceable(1160) %5) #8 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = load ptr, ptr %0, align 8, !tbaa !61, !nonnull !62, !align !63 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !72
  %i.ap = zext i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !78
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !79
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !81 ; 2 uses
  %i.aw = add i64 %i.at, 7
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = and i64 %i.ax, 7
  %.neg34 = add i64 %i.av, 7
  %i.az = sub i64 %.neg34, %i.ay                  ; 3 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !81
  %i.ba = add i64 %i.az, 88                       ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, 262144
  br i1 %i.bb, label %.critedge.i.i.i, label %bb.m, !prof !82

.critedge.i.i.i:                                  ; preds = %bb.l
  %i.bc = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %i.al, i64 noundef 88, i64 noundef 8) #8
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

bb.m:                                             ; preds = %bb.l
  %i.bd = add i64 %i.az, %i.at
  %i.be = inttoptr i64 %i.bd to ptr
  store i64 %i.ba, ptr %i.au, align 8, !tbaa !81
  br label %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit

_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit:    ; preds = %.critedge.i.i.i, %bb.m
  %.0.i.i.i = phi ptr [ %i.bc, %.critedge.i.i.i ], [ %i.be, %bb.m ] ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i32 123, ptr %i.bf, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bg, i8 0, i64 28, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store ptr %i.e, ptr %i.bh, align 8, !tbaa !120
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 7 uses
  store ptr %i.bi, ptr %i.bi, align 8, !tbaa !90
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !91
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !91  ; 4 uses
  %i.bl = icmp eq ptr %i.bi, %2
  %i.bm = icmp eq ptr %i.bk, %2
  %or.cond.i.i.i.i.i.i = or i1 %i.bl, %i.bm
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN6hermes6ESTree21JSXOpeningElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEEbS3_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit
  %i.bn = load ptr, ptr %2, align 8, !tbaa !90    ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !90
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %2, ptr %i.bp, align 8, !tbaa !91
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bi, ptr %i.bq, align 8, !tbaa !91
  store ptr %i.bi, ptr %i.bk, align 8, !tbaa !90
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !91
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !90
  br label %_ZN6hermes6ESTree21JSXOpeningElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEEbS3_.exit

_ZN6hermes6ESTree21JSXOpeningElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEEbS3_.exit: ; preds = %_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm.exit, %bb.n
  %i.br = zext i1 %i.ac to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 72
  store i8 %i.br, ptr %i.bs, align 8, !tbaa !106
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80
  store ptr %.115, ptr %i.bt, align 8, !tbaa !121
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %1, ptr %i.bu, align 8, !tbaa !58
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store ptr %.sroa.0.0.copyload.i, ptr %i.bv, align 8, !tbaa !58
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  store ptr %1, ptr %i.bw, align 8, !tbaa !58
  %i.bx = ptrtoint ptr %.0.i.i.i to i64
  br label %.thread29

.thread29:                                        ; preds = %bb.g, %bb.f, %bb.h, %_ZN6hermes6ESTree21JSXOpeningElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEEbS3_.exit
  %.sroa.027.0 = phi i64 [ %i.bx, %_ZN6hermes6ESTree21JSXOpeningElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEEbS3_.exit ], [ undef, %bb.h ], [ undef, %bb.f ], [ undef, %bb.g ]
  %.sroa.2.5 = phi i8 [ 1, %_ZN6hermes6ESTree21JSXOpeningElementNodeC2EPNS0_4NodeEON4llvh12simple_ilistIS2_JEEEbS3_.exit ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.a, %.thread29
  %.sroa.027.1 = phi i64 [ %.sroa.027.0, %.thread29 ], [ undef, %bb.a ], [ undef, %bb.c ]
  %.sroa.2.6 = phi i8 [ %.sroa.2.5, %.thread29 ], [ 0, %bb.a ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.027.1, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.6, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes6ESTree4NodenwEmRNS_7ContextEm(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(656) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !72
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %1, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !79
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !81
  %i.k = add i64 %2, -1
  %i.l = add i64 %i.k, %i.h
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = urem i64 %i.m, %2
  %i.o = add i64 %i.n, %i.h
  %i.p = sub i64 %i.m, %i.o                       ; 3 uses
  store i64 %i.p, ptr %i.i, align 8, !tbaa !81
  %i.q = icmp ugt i64 %0, 262144
  br i1 %i.q, label %.critedge.i.i, label %bb.b, !prof !82

bb.b:                                             ; preds = %bb.a
  %i.r = add i64 %i.p, %0                         ; 2 uses
  %i.s = icmp ugt i64 %i.r, 262144
  br i1 %i.s, label %.critedge.i.i, label %bb.c, !prof !82

.critedge.i.i:                                    ; preds = %bb.b, %bb.a
  %i.t = tail call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(656) %1, i64 noundef %0, i64 noundef %2) #8
  br label %_ZN6hermes7Context12allocateNodeEmm.exit

bb.c:                                             ; preds = %bb.b
  %i.u = add i64 %i.p, %i.h
  %i.v = inttoptr i64 %i.u to ptr
  store i64 %i.r, ptr %i.i, align 8, !tbaa !81
  br label %_ZN6hermes7Context12allocateNodeEmm.exit

_ZN6hermes7Context12allocateNodeEmm.exit:         ; preds = %.critedge.i.i, %bb.c
  %.0.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.v, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl16parseJSXChildrenERN4llvh12simple_ilistINS_6ESTree4NodeEJEEE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !59
  switch i32 %i.d, label %bb.p [
    i32 74, label %bb.c
    i32 49, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !tbaa !58 ; 3 uses
  %i.f = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.b, i32 noundef 2) #8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !7
  %i.g = load i32, ptr %i.f, align 8, !tbaa !59
  switch i32 %i.g, label %bb.f [
    i32 68, label %bb.d
    i32 75, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseJSXClosingEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i.i) ; 2 uses
  %i.i = extractvalue { i64, i8 } %i.h, 0
  %i.j = extractvalue { i64, i8 } %i.h, 1         ; 2 uses
  %i.k = trunc nuw i8 %i.j to i1
  %spec.select = select i1 %i.k, i64 %i.i, i64 undef
  %spec.select46 = and i8 %i.j, 1
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.l = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl16parseJSXFragmentEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i.i)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.m = tail call { i64, i8 } @_ZN6hermes6parser6detail12JSParserImpl15parseJSXElementEN4llvh5SMLocE(ptr noundef nonnull align 8 dereferenceable(2824) %0, ptr %.sroa.0.0.copyload.i.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { i64, i8 } [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 2 uses
  %.sroa.536.0 = extractvalue { i64, i8 } %.pn, 1
  %i.n = trunc nuw i8 %.sroa.536.0 to i1
  br i1 %i.n, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %.sroa.035.0 = extractvalue { i64, i8 } %.pn, 0
  %i.o = inttoptr i64 %.sroa.035.0 to ptr         ; 4 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %1, ptr %i.q, align 8, !tbaa !91
  store ptr %i.p, ptr %i.o, align 8, !tbaa !90
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.r, align 8, !tbaa !91
  store ptr %i.o, ptr %1, align 8, !tbaa !90
  br label %.backedge
end_hunk_0
