inline.NumInlined: 2703
inline.NumDeleted: 1134
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_112ScalarEqualsERKNS_6ScalarES3_RKNS_12EqualOptionsEb:bb.a
  %.val107.i = load ptr, ptr %i.ck, align 8, !tbaa !140, !noalias !89 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !140, !noalias !152 ; 3 uses
  %i.cn = icmp eq ptr %.val107.i, %i.cm
  br i1 %i.cn, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i31 = icmp eq ptr %.val107.i, null
  %.not.i7.i.i32 = icmp eq ptr %i.cm, null
  %or.cond.i.i33 = or i1 %.not.i.i.i31, %.not.i7.i.i32
  br i1 %or.cond.i.i33, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = tail call noundef zeroext i1 @_ZNK5arrow6Buffer6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.val107.i, ptr noundef nonnull align 8 dereferenceable(80) %i.cm), !noalias !152
  %i.cp = zext i1 %i.co to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.ae:                                            ; preds = %bb.f
  %i.cq = getelementptr i8, ptr %0, i64 48
  %.val108.i = load ptr, ptr %i.cq, align 8, !tbaa !140, !noalias !89 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !140, !noalias !155 ; 3 uses
  %i.ct = icmp eq ptr %.val108.i, %i.cs
  br i1 %i.ct, label %_ZN5arrow6StatusD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i27 = icmp eq ptr %.val108.i, null
  %.not.i7.i.i28 = icmp eq ptr %i.cs, null
  %or.cond.i.i29 = or i1 %.not.i.i.i27, %.not.i7.i.i28
  br i1 %or.cond.i.i29, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = tail call noundef zeroext i1 @_ZNK5arrow6Buffer6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.val108.i, ptr noundef nonnull align 8 dereferenceable(80) %i.cs), !noalias !155
  %i.cv = zext i1 %i.cu to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.ah:                                            ; preds = %bb.f
  %i.cw = getelementptr i8, ptr %0, i64 48
  %.val109.i = load ptr, ptr %i.cw, align 8, !tbaa !140, !noalias !89 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !140, !noalias !158 ; 3 uses
  %i.cz = icmp eq ptr %.val109.i, %i.cy
  br i1 %i.cz, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i.i23 = icmp eq ptr %.val109.i, null
  %.not.i7.i.i24 = icmp eq ptr %i.cy, null
  %or.cond.i.i25 = or i1 %.not.i.i.i23, %.not.i7.i.i24
  br i1 %or.cond.i.i25, label %_ZN5arrow6StatusD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = tail call noundef zeroext i1 @_ZNK5arrow6Buffer6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.val109.i, ptr noundef nonnull align 8 dereferenceable(80) %i.cy), !noalias !158
  %i.db = zext i1 %i.da to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.ak:                                            ; preds = %bb.f
  %i.dc = getelementptr i8, ptr %0, i64 48
  %.val110.i = load ptr, ptr %i.dc, align 8, !tbaa !140, !noalias !89 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !140, !noalias !161 ; 3 uses
  %i.df = icmp eq ptr %.val110.i, %i.de
  br i1 %i.df, label %_ZN5arrow6StatusD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i.i.i = icmp eq ptr %.val110.i, null
  %.not.i7.i.i = icmp eq ptr %i.de, null
  %or.cond.i.i = or i1 %.not.i.i.i, %.not.i7.i.i
  br i1 %or.cond.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = tail call noundef zeroext i1 @_ZNK5arrow6Buffer6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.val110.i, ptr noundef nonnull align 8 dereferenceable(80) %i.de), !noalias !161
  %i.dh = zext i1 %i.dg to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.an:                                            ; preds = %bb.f
  %i.di = getelementptr i8, ptr %0, i64 48
  %.val111.i = load i64, ptr %i.di, align 8, !tbaa !164, !noalias !89
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !164, !noalias !166
  %i.dl = icmp eq i64 %i.dk, %.val111.i
  %i.dm = zext i1 %i.dl to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.ao:                                            ; preds = %bb.f
  %i.dn = getelementptr i8, ptr %0, i64 44
  %.val112.i = load i32, ptr %i.dn, align 4, !tbaa !169, !noalias !89
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !169, !noalias !171
  %i.dq = icmp eq i32 %i.dp, %.val112.i
  %i.dr = zext i1 %i.dq to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.ap:                                            ; preds = %bb.f
  %i.ds = getelementptr i8, ptr %0, i64 48
  %.val113.i = load i64, ptr %i.ds, align 8, !tbaa !174, !noalias !89
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !174, !noalias !176
  %i.dv = icmp eq i64 %i.du, %.val113.i
  %i.dw = zext i1 %i.dv to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.aq:                                            ; preds = %bb.f
  %i.dx = getelementptr i8, ptr %0, i64 48
  %.val114.i = load i64, ptr %i.dx, align 8, !tbaa !179, !noalias !89
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !179, !noalias !181
  %i.ea = icmp eq i64 %i.dz, %.val114.i
  %i.eb = zext i1 %i.ea to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.ar:                                            ; preds = %bb.f
  %i.ec = getelementptr i8, ptr %0, i64 44
  %.val115.i = load i32, ptr %i.ec, align 4, !tbaa !184, !noalias !89
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !184, !noalias !186
  %i.ef = icmp eq i32 %i.ee, %.val115.i
  %i.eg = zext i1 %i.ef to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.as:                                            ; preds = %bb.f
  %i.eh = getelementptr i8, ptr %0, i64 48
  %.val116.i = load i64, ptr %i.eh, align 8, !tbaa !189, !noalias !89
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !189, !noalias !191
  %i.ek = icmp eq i64 %i.ej, %.val116.i
  %i.el = zext i1 %i.ek to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.at:                                            ; preds = %bb.f
  %i.em = getelementptr i8, ptr %0, i64 48
  %.val117.i = load i64, ptr %i.em, align 8, !noalias !89 ; 2 uses
  %i.en = getelementptr i8, ptr %0, i64 56
  %.val118.i = load i64, ptr %i.en, align 8, !tbaa !194, !noalias !89
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.extract.trunc.i.i20 = trunc i64 %.val117.i to i32
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !195, !noalias !197
  %i.eq = icmp eq i32 %i.ep, %.sroa.0.0.extract.trunc.i.i20
  br i1 %i.eq, label %bb.au, label %_ZN5arrow6StatusD2Ev.exit

bb.au:                                            ; preds = %bb.at
  %.sroa.2.0.extract.shift.i.i21 = lshr i64 %.val117.i, 32
  %.sroa.2.0.extract.trunc.i.i22 = trunc nuw i64 %.sroa.2.0.extract.shift.i.i21 to i32
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.es = load i32, ptr %i.er, align 4, !tbaa !200, !noalias !197
  %i.et = icmp eq i32 %i.es, %.sroa.2.0.extract.trunc.i.i22
  br i1 %i.et, label %bb.av, label %_ZN5arrow6StatusD2Ev.exit

bb.av:                                            ; preds = %bb.au
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !201, !noalias !197
  %i.ew = icmp eq i64 %i.ev, %.val118.i
  %i.ex = zext i1 %i.ew to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.aw:                                            ; preds = %bb.f
  %i.ey = getelementptr i8, ptr %0, i64 44
  %.val119.i = load i32, ptr %i.ey, align 4, !tbaa !202, !noalias !89
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !202, !noalias !204
  %i.fb = icmp eq i32 %i.fa, %.val119.i
  %i.fc = zext i1 %i.fb to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.ax:                                            ; preds = %bb.f
  %i.fd = getelementptr i8, ptr %0, i64 44
  %.val120.i = load i64, ptr %i.fd, align 4, !noalias !89 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.val120.i to i32
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !207, !noalias !209
  %i.fg = icmp eq i32 %i.ff, %.sroa.0.0.extract.trunc.i.i
  %.sroa.2.0.extract.shift.i.i = lshr i64 %.val120.i, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fi = load i32, ptr %i.fh, align 8, !noalias !209
  %i.fj = icmp eq i32 %i.fi, %.sroa.2.0.extract.trunc.i.i
  %i.fk = select i1 %i.fg, i1 %i.fj, i1 false
  %i.fl = zext i1 %i.fk to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.ay:                                            ; preds = %bb.f
  %i.fm = getelementptr i8, ptr %0, i64 44
  %.val121.i = load i32, ptr %i.fm, align 4, !tbaa !212, !noalias !89
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !212, !noalias !214
  %i.fp = icmp eq i32 %.val121.i, %i.fo
  %i.fq = zext i1 %i.fp to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.az:                                            ; preds = %bb.f
  %i.fr = getelementptr i8, ptr %0, i64 48
  %.val122.i = load i64, ptr %i.fr, align 8, !tbaa !217, !noalias !89
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !217, !noalias !219
  %i.fu = icmp eq i64 %.val122.i, %i.ft
  %i.fv = zext i1 %i.fu to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.ba:                                            ; preds = %bb.f
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fy = load i128, ptr %i.fw, align 8
  %i.fz = load i128, ptr %i.fx, align 8
  %i.ga = icmp ne i128 %i.fy, %i.fz
  %i.gb = zext i1 %i.ga to i32
  %.not9.i.i.i.i.i.i.i19 = icmp eq i32 %i.gb, 0
  %i.gc = zext i1 %.not9.i.i.i.i.i.i.i19 to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.bb:                                            ; preds = %bb.f
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.gf = load i128, ptr %i.gd, align 8
  %i.gg = load i128, ptr %i.ge, align 8
  %i.gh = xor i128 %i.gf, %i.gg
  %i.gi = getelementptr i8, ptr %i.gd, i64 16
  %i.gj = getelementptr i8, ptr %i.ge, i64 16
  %i.gk = load i128, ptr %i.gi, align 8
  %i.gl = load i128, ptr %i.gj, align 8
  %i.gm = xor i128 %i.gk, %i.gl
  %i.gn = or i128 %i.gh, %i.gm
  %i.go = icmp ne i128 %i.gn, 0
  %i.gp = zext i1 %i.go to i32
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %i.gp, 0
  %i.gq = zext i1 %.not9.i.i.i.i.i.i.i to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.bc:                                            ; preds = %bb.f
  %i.gr = getelementptr i8, ptr %0, i64 48
  %.val123.i = load ptr, ptr %i.gr, align 8, !tbaa !222, !noalias !89
  call fastcc void @_ZN5arrow12_GLOBAL__N_119ScalarEqualsVisitor5VisitERKNS_10ListScalarE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr %.val123.i), !inline_history !139
  br label %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit

bb.bd:                                            ; preds = %bb.f
  %i.gs = getelementptr i8, ptr %0, i64 48
  %.val124.i = load ptr, ptr %i.gs, align 8, !tbaa !222, !noalias !89
  call fastcc void @_ZN5arrow12_GLOBAL__N_119ScalarEqualsVisitor5VisitERKNS_15LargeListScalarE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr %.val124.i), !inline_history !139
  br label %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit

bb.be:                                            ; preds = %bb.f
  %i.gt = getelementptr i8, ptr %0, i64 48
  %.val125.i = load ptr, ptr %i.gt, align 8, !tbaa !222, !noalias !89
  call fastcc void @_ZN5arrow12_GLOBAL__N_119ScalarEqualsVisitor5VisitERKNS_14ListViewScalarE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr %.val125.i), !inline_history !139
  br label %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit

bb.bf:                                            ; preds = %bb.f
  %i.gu = getelementptr i8, ptr %0, i64 48
  %.val126.i = load ptr, ptr %i.gu, align 8, !tbaa !222, !noalias !89
  call fastcc void @_ZN5arrow12_GLOBAL__N_119ScalarEqualsVisitor5VisitERKNS_19LargeListViewScalarE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr %.val126.i), !inline_history !139
  br label %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit

bb.bg:                                            ; preds = %bb.f
  %i.gv = getelementptr i8, ptr %0, i64 48
  %.val127.i = load ptr, ptr %i.gv, align 8, !tbaa !222, !noalias !89
  call fastcc void @_ZN5arrow12_GLOBAL__N_119ScalarEqualsVisitor5VisitERKNS_9MapScalarE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr %.val127.i), !inline_history !139
  br label %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit

bb.bh:                                            ; preds = %bb.f
  %i.gw = getelementptr i8, ptr %0, i64 48
  %.val128.i = load ptr, ptr %i.gw, align 8, !tbaa !222, !noalias !89
  call fastcc void @_ZN5arrow12_GLOBAL__N_119ScalarEqualsVisitor5VisitERKNS_19FixedSizeListScalarE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr %.val128.i), !inline_history !139
  br label %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit

bb.bi:                                            ; preds = %bb.f
  call fastcc void @_ZN5arrow12_GLOBAL__N_119ScalarEqualsVisitor5VisitERKNS_12StructScalarE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(72) %0), !inline_history !139
  br label %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit

bb.bj:                                            ; preds = %bb.f
  call fastcc void @_ZN5arrow12_GLOBAL__N_119ScalarEqualsVisitor5VisitERKNS_17SparseUnionScalarE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(92) %0), !inline_history !139
  br label %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit

bb.bk:                                            ; preds = %bb.f
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !225, !noalias !227
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !225, !noalias !227
  %i.hb = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_112ScalarEqualsERKNS_6ScalarES3_RKNS_12EqualOptionsEb(ptr noundef nonnull align 8 dereferenceable(41) %i.gy, ptr noundef nonnull align 8 dereferenceable(41) %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i1 noundef zeroext %3), !noalias !227, !inline_history !230
  %i.hc = zext i1 %i.hb to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.bl:                                            ; preds = %bb.f
  call fastcc void @_ZN5arrow12_GLOBAL__N_119ScalarEqualsVisitor5VisitERKNS_16DictionaryScalarE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(80) %0), !inline_history !139
  br label %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit

bb.bm:                                            ; preds = %bb.f
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !225, !noalias !231
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !225, !noalias !231
  %i.hh = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_112ScalarEqualsERKNS_6ScalarES3_RKNS_12EqualOptionsEb(ptr noundef nonnull align 8 dereferenceable(41) %i.he, ptr noundef nonnull align 8 dereferenceable(41) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i1 noundef zeroext %3), !noalias !231, !inline_history !234
  %i.hi = zext i1 %i.hh to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.bn:                                            ; preds = %bb.f
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !225, !noalias !235
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !225, !noalias !235
  %i.hn = call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_112ScalarEqualsERKNS_6ScalarES3_RKNS_12EqualOptionsEb(ptr noundef nonnull align 8 dereferenceable(41) %i.hk, ptr noundef nonnull align 8 dereferenceable(41) %i.hm, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i1 noundef zeroext %3), !noalias !235, !inline_history !238
  %i.ho = zext i1 %i.hn to i8
  br label %_ZN5arrow6StatusD2Ev.exit

bb.bo:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !89
  %i.hp = load ptr, ptr %i.t, align 8, !tbaa !239, !noalias !89
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !89
  call void %i.hr(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i1 noundef zeroext false), !noalias !89, !inline_history !139
  invoke void @_ZN5arrow6Status14NotImplementedIJRA41_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 1 dereferenceable(41) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bp unwind label %bb.bq, !inline_history !139

bb.bp:                                            ; preds = %bb.bo
  %i.hs = load ptr, ptr %4, align 8, !tbaa !241   ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.bp
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !245
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !89
  br label %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.hx = landingpad { ptr, i32 }
          cleanup
  %i.hy = load ptr, ptr %4, align 8, !tbaa !241   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ia = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bq
  %i.ib = load i64, ptr %i.hz, align 8, !tbaa !245
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ic) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !89
  resume { ptr, i32 } %i.hx

_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit: ; preds = %bb.p, %bb.q, %bb.r, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pr = load ptr, ptr %6, align 8, !tbaa !70
  %.val14 = load i8, ptr %i.s, align 1, !tbaa !88, !range !58, !noundef !59 ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.br, !prof !246

bb.br:                                            ; preds = %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f, %bb.av, %bb.au, %bb.at, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.bn, %bb.bm, %bb.bk, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit, %bb.br
  %.in = phi i8 [ %.val14, %bb.br ], [ %.val14, %_ZN5arrow17VisitScalarInlineINS_12_GLOBAL__N_119ScalarEqualsVisitorEJEEENS_6StatusERKNS_6ScalarEPT_DpOT0_.exit ], [ %i.ex, %bb.av ], [ %i.aa, %bb.g ], [ %i.af, %bb.h ], [ %i.ak, %bb.i ], [ %i.ap, %bb.j ], [ %i.au, %bb.k ], [ %i.az, %bb.l ], [ %i.be, %bb.m ], [ %i.bj, %bb.n ], [ %i.bo, %bb.o ], [ %i.ho, %bb.bn ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.af ], [ 0, %bb.ai ], [ %i.dm, %bb.an ], [ %i.dr, %bb.ao ], [ %i.dw, %bb.ap ], [ %i.eb, %bb.aq ], [ %i.eg, %bb.ar ], [ %i.el, %bb.as ], [ 0, %bb.al ], [ %i.fc, %bb.aw ], [ %i.fl, %bb.ax ], [ %i.fq, %bb.ay ], [ %i.fv, %bb.az ], [ %i.gc, %bb.ba ], [ %i.gq, %bb.bb ], [ %i.hc, %bb.bk ], [ %i.hi, %bb.bm ], [ %i.bx, %bb.u ], [ 1, %bb.s ], [ %i.cd, %bb.x ], [ 1, %bb.v ], [ %i.cj, %bb.aa ], [ 1, %bb.y ], [ %i.cp, %bb.ad ], [ 1, %bb.ab ], [ %i.cv, %bb.ag ], [ 1, %bb.ae ], [ %i.db, %bb.aj ], [ 1, %bb.ah ], [ %i.dh, %bb.am ], [ 1, %bb.ak ], [ 0, %bb.au ], [ 0, %bb.at ], [ 1, %bb.f ]
  %i.id = trunc nuw i8 %.in to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN5arrow12_GLOBAL__N_123IdentityImpliesEqualityERKNS_8DataTypeERKNS_12EqualOptionsE.exit.thread

_ZN5arrow12_GLOBAL__N_123IdentityImpliesEqualityERKNS_8DataTypeERKNS_12EqualOptionsE.exit.thread: ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %_ZN5arrow12_GLOBAL__N_123IdentityImpliesEqualityERKNS_8DataTypeERKNS_12EqualOptionsE.exit, %_ZN5arrow6StatusD2Ev.exit
  %.0 = phi i1 [ true, %_ZN5arrow12_GLOBAL__N_123IdentityImpliesEqualityERKNS_8DataTypeERKNS_12EqualOptionsE.exit ], [ false, %bb.c ], [ %i.id, %_ZN5arrow6StatusD2Ev.exit ], [ false, %bb.d ], [ true, %bb.e ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5arrow18ScalarApproxEqualsERKNS_6ScalarES2_RKNS_12EqualOptionsE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN5arrow12_GLOBAL__N_112ScalarEqualsERKNS_6ScalarES3_RKNS_12EqualOptionsEb(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5arrow12TensorEqualsERKNS_6TensorES2_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.0", align 8 ; 7 uses
  %i.a = tail call noundef i32 @_ZNK5arrow6Tensor7type_idEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.b = tail call noundef i32 @_ZNK5arrow6Tensor7type_idEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.b, label %_ZN5arrow12_GLOBAL__N_119IntegerTensorEqualsERKNS_6TensorES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN5arrow12_GLOBAL__N_119IntegerTensorEqualsERKNS_6TensorES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !247  ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !250  ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !247
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !250  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp eq i64 %i.n, %i.t
  br i1 %i.u, label %bb.e, label %_ZN5arrow12_GLOBAL__N_119IntegerTensorEqualsERKNS_6TensorES3_.exit

bb.e:                                             ; preds = %bb.d
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.not.i.i.i.i.i.i, label %_ZStneIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread19, label %_ZStneIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit

_ZStneIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit:        ; preds = %bb.e
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.k, ptr %i.q, i64 %i.n)
  %.not9.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.not, label %_ZStneIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread19, label %_ZN5arrow12_GLOBAL__N_119IntegerTensorEqualsERKNS_6TensorES3_.exit
end_hunk_0
