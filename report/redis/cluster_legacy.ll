inline.NumInlined: 443
inline.NumDeleted: 38
begin_hunk_0_@clusterLoadConfig:bb.a
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !58
  %i.nj = zext i8 %i.ni to i64
  br label %sdslen.exit372.2

bb.dw:                                            ; preds = %bb.dr
  %i.nk = lshr i8 %.val.i370.2, 3
  %i.nl = zext nneg i8 %i.nk to i64
  br label %sdslen.exit372.2

sdslen.exit372.2:                                 ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr
  %.0.i371.2 = phi i64 [ %i.na, %bb.ds ], [ %i.nl, %bb.dw ], [ %i.nj, %bb.dv ], [ %i.ng, %bb.du ], [ %i.nd, %bb.dt ], [ 0, %bb.dr ]
  %i.nm = trunc i64 %.0.i371.2 to i32
  %i.nn = call i32 %i.mv(ptr noundef %.0256, ptr noundef nonnull %i.mw, i32 noundef %i.nm) #30
  %.not319.2 = icmp eq i32 %i.nn, 0
  br i1 %.not319.2, label %sdslen.exit372.2._crit_edge, label %bb.eq

sdslen.exit372.2._crit_edge:                      ; preds = %sdslen.exit372.2
  %.pre649 = load ptr, ptr %i.gg, align 8, !tbaa !77 ; 2 uses
  %.phi.trans.insert650 = getelementptr i8, ptr %.pre649, i64 -1
  %.val.i364.3.pre = load i8, ptr %.phi.trans.insert650, align 1, !tbaa !58
  br label %bb.dx

bb.dx:                                            ; preds = %sdslen.exit372.2._crit_edge, %sdslen.exit369.2, %sdslen.exit366.2
  %.val.i364.3 = phi i8 [ %.val.i364.2, %sdslen.exit366.2 ], [ %.val.i364.2, %sdslen.exit369.2 ], [ %.val.i364.3.pre, %sdslen.exit372.2._crit_edge ] ; 3 uses
  %i.no = phi ptr [ %i.lr, %sdslen.exit366.2 ], [ %i.lr, %sdslen.exit369.2 ], [ %.pre649, %sdslen.exit372.2._crit_edge ] ; 9 uses
  %.2283.2 = phi i32 [ %.0281537, %sdslen.exit366.2 ], [ %.0281537, %sdslen.exit369.2 ], [ 1, %sdslen.exit372.2._crit_edge ] ; 2 uses
  %.1264.2 = phi i32 [ %.1264.1, %sdslen.exit366.2 ], [ %.1264.1, %sdslen.exit369.2 ], [ 1, %sdslen.exit372.2._crit_edge ]
  %i.np = and i8 %.val.i364.3, 7                  ; 2 uses
  switch i8 %i.np, label %sdslen.exit366.3 [
    i8 0, label %bb.ec
    i8 1, label %bb.eb
    i8 2, label %bb.ea
    i8 3, label %bb.dz
    i8 4, label %bb.dy
  ]

bb.dy:                                            ; preds = %bb.dx
  %i.nq = getelementptr inbounds i8, ptr %i.no, i64 -17
  %i.nr = load i64, ptr %i.nq, align 1, !tbaa !61
  br label %sdslen.exit366.3

bb.dz:                                            ; preds = %bb.dx
  %i.ns = getelementptr inbounds i8, ptr %i.no, i64 -9
  %i.nt = load i32, ptr %i.ns, align 1, !tbaa !9
  %i.nu = zext i32 %i.nt to i64
  br label %sdslen.exit366.3

bb.ea:                                            ; preds = %bb.dx
  %i.nv = getelementptr inbounds i8, ptr %i.no, i64 -5
  %i.nw = load i16, ptr %i.nv, align 1, !tbaa !59
  %i.nx = zext i16 %i.nw to i64
  br label %sdslen.exit366.3

bb.eb:                                            ; preds = %bb.dx
  %i.ny = getelementptr inbounds i8, ptr %i.no, i64 -3
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !58
  %i.oa = zext i8 %i.nz to i64
  br label %sdslen.exit366.3

bb.ec:                                            ; preds = %bb.dx
  %i.ob = lshr i8 %.val.i364.3, 3
  %i.oc = zext nneg i8 %i.ob to i64
  br label %sdslen.exit366.3

sdslen.exit366.3:                                 ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx
  %.0.i365.3 = phi i64 [ %i.nr, %bb.dy ], [ %i.oc, %bb.ec ], [ %i.oa, %bb.eb ], [ %i.nx, %bb.ea ], [ %i.nu, %bb.dz ], [ 0, %bb.dx ]
  %i.od = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 96), align 16, !tbaa !83 ; 2 uses
  %i.oe = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.od) #31
  %.not317.3 = icmp eq i64 %.0.i365.3, %i.oe
  br i1 %.not317.3, label %bb.ed, label %bb.ep

bb.ed:                                            ; preds = %sdslen.exit366.3
  switch i8 %i.np, label %sdslen.exit369.3 [
    i8 0, label %bb.ei
    i8 1, label %bb.eh
    i8 2, label %bb.eg
    i8 3, label %bb.ef
    i8 4, label %bb.ee
  ]

bb.ee:                                            ; preds = %bb.ed
  %i.of = getelementptr inbounds i8, ptr %i.no, i64 -17
  %i.og = load i64, ptr %i.of, align 1, !tbaa !61
  br label %sdslen.exit369.3

bb.ef:                                            ; preds = %bb.ed
  %i.oh = getelementptr inbounds i8, ptr %i.no, i64 -9
  %i.oi = load i32, ptr %i.oh, align 1, !tbaa !9
  %i.oj = zext i32 %i.oi to i64
  br label %sdslen.exit369.3

bb.eg:                                            ; preds = %bb.ed
  %i.ok = getelementptr inbounds i8, ptr %i.no, i64 -5
  %i.ol = load i16, ptr %i.ok, align 1, !tbaa !59
  %i.om = zext i16 %i.ol to i64
  br label %sdslen.exit369.3

bb.eh:                                            ; preds = %bb.ed
  %i.on = getelementptr inbounds i8, ptr %i.no, i64 -3
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !58
  %i.op = zext i8 %i.oo to i64
  br label %sdslen.exit369.3

bb.ei:                                            ; preds = %bb.ed
  %i.oq = lshr i8 %.val.i364.3, 3
  %i.or = zext nneg i8 %i.oq to i64
  br label %sdslen.exit369.3

sdslen.exit369.3:                                 ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed
  %.0.i368.3 = phi i64 [ %i.og, %bb.ee ], [ %i.or, %bb.ei ], [ %i.op, %bb.eh ], [ %i.om, %bb.eg ], [ %i.oj, %bb.ef ], [ 0, %bb.ed ]
  %bcmp.3 = call i32 @bcmp(ptr nonnull %i.no, ptr nonnull %i.od, i64 %.0.i368.3)
  %.not318.3 = icmp eq i32 %bcmp.3, 0
  br i1 %.not318.3, label %bb.ej, label %bb.ep

bb.ej:                                            ; preds = %sdslen.exit369.3
  %i.os = load ptr, ptr getelementptr inbounds nuw (i8, ptr @auxFieldHandlers, i64 104), align 8, !tbaa !85
  %i.ot = load ptr, ptr %i.gn, align 8, !tbaa !77 ; 6 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 -1
  %.val.i370.3 = load i8, ptr %i.ou, align 1, !tbaa !58 ; 2 uses
  %i.ov = and i8 %.val.i370.3, 7
  switch i8 %i.ov, label %sdslen.exit372.3 [
    i8 0, label %bb.eo
    i8 1, label %bb.en
    i8 2, label %bb.em
    i8 3, label %bb.el
    i8 4, label %bb.ek
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.ow = getelementptr inbounds i8, ptr %i.ot, i64 -17
  %i.ox = load i64, ptr %i.ow, align 1, !tbaa !61
  br label %sdslen.exit372.3

bb.el:                                            ; preds = %bb.ej
  %i.oy = getelementptr inbounds i8, ptr %i.ot, i64 -9
  %i.oz = load i32, ptr %i.oy, align 1, !tbaa !9
  %i.pa = zext i32 %i.oz to i64
  br label %sdslen.exit372.3

bb.em:                                            ; preds = %bb.ej
  %i.pb = getelementptr inbounds i8, ptr %i.ot, i64 -5
  %i.pc = load i16, ptr %i.pb, align 1, !tbaa !59
  %i.pd = zext i16 %i.pc to i64
  br label %sdslen.exit372.3

bb.en:                                            ; preds = %bb.ej
  %i.pe = getelementptr inbounds i8, ptr %i.ot, i64 -3
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !58
  %i.pg = zext i8 %i.pf to i64
  br label %sdslen.exit372.3

bb.eo:                                            ; preds = %bb.ej
  %i.ph = lshr i8 %.val.i370.3, 3
  %i.pi = zext nneg i8 %i.ph to i64
  br label %sdslen.exit372.3

sdslen.exit372.3:                                 ; preds = %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej
  %.0.i371.3 = phi i64 [ %i.ox, %bb.ek ], [ %i.pi, %bb.eo ], [ %i.pg, %bb.en ], [ %i.pd, %bb.em ], [ %i.pa, %bb.el ], [ 0, %bb.ej ]
  %i.pj = trunc i64 %.0.i371.3 to i32
  %i.pk = call i32 %i.os(ptr noundef %.0256, ptr noundef nonnull %i.ot, i32 noundef %i.pj) #30
  %.not319.3 = icmp eq i32 %i.pk, 0
  br i1 %.not319.3, label %.thread681, label %bb.eq

bb.ep:                                            ; preds = %sdslen.exit369.3, %sdslen.exit366.3
  %i.pl = icmp eq i32 %.1264.2, 0
  br i1 %i.pl, label %bb.er, label %.thread681

bb.eq:                                            ; preds = %sdslen.exit372.3, %sdslen.exit372.2, %sdslen.exit372.1, %sdslen.exit372
  %i.pm = load i32, ptr %i.c, align 4, !tbaa !9
  br label %.sink.split845

bb.er:                                            ; preds = %bb.ep
  %i.pn = load i32, ptr %i.c, align 4, !tbaa !9
  br label %.sink.split845

.thread681:                                       ; preds = %sdslen.exit372.3, %bb.ep
  %.2277.3684 = phi i32 [ %.0275538, %bb.ep ], [ 1, %sdslen.exit372.3 ] ; 2 uses
  %i.po = load i32, ptr %i.c, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.gg, i32 noundef %i.po) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pp = load i32, ptr %i.b, align 4, !tbaa !9   ; 2 uses
  %i.pq = sext i32 %i.pp to i64
  %i.pr = icmp slt i64 %indvars.iv.next, %i.pq
  br i1 %i.pr, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !86

.sink.split845:                                   ; preds = %bb.bl, %bb.eq, %bb.er, %.thread
  %.sink = phi i32 [ %i.pm, %bb.eq ], [ %i.hy, %.thread ], [ %i.pn, %bb.er ], [ %i.gi, %bb.bl ]
  call void @sdsfreesplitres(ptr noundef nonnull %i.gg, i32 noundef %.sink) #30
  br label %bb.es

bb.es:                                            ; preds = %.sink.split845, %bb.bl
  %i.ps = load i32, ptr %i.b, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.dx, i32 noundef %i.ps) #30
  %i.pt = load i32, ptr %i.a, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.aa, i32 noundef %i.pt) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %.thread442

._crit_edge.loopexit:                             ; preds = %.thread681
  %4 = icmp ne i32 %.2283.2, 0
  %5 = icmp ne i32 %.2277.3684, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %sdslen.exit357.thread
  %i.pu = phi i32 [ %i.fn, %sdslen.exit357.thread ], [ %i.pp, %._crit_edge.loopexit ]
  %.0281.lcssa = phi i1 [ false, %sdslen.exit357.thread ], [ %4, %._crit_edge.loopexit ] ; 2 uses
  %.0275.lcssa = phi i1 [ false, %sdslen.exit357.thread ], [ %5, %._crit_edge.loopexit ] ; 2 uses
  %.0269.lcssa = phi i32 [ 0, %sdslen.exit357.thread ], [ %.2271, %._crit_edge.loopexit ] ; 2 uses
  %i.pv = load ptr, ptr %i.dx, align 8, !tbaa !77
  %i.pw = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.pv, i32 noundef 58) #31 ; 3 uses
  %i.px = icmp eq ptr %i.pw, null
  br i1 %i.px, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %._crit_edge
  call void @sdsfreesplitres(ptr noundef nonnull %i.dx, i32 noundef %i.pu) #30
  %i.py = load i32, ptr %i.a, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.aa, i32 noundef %i.py) #30
  br label %.thread442

bb.eu:                                            ; preds = %._crit_edge
  store i8 0, ptr %i.pw, align 1, !tbaa !58
  %i.pz = getelementptr inbounds nuw i8, ptr %.0256, i64 2264
  %i.qa = load ptr, ptr %i.dx, align 8, !tbaa !77 ; 2 uses
  %i.qb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qa) #31
  %i.qc = add i64 %i.qb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.pz, ptr nonnull align 1 %i.qa, i64 %i.qc, i1 false)
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pw, i64 1 ; 4 uses
  %i.qe = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.qd, i32 noundef 64) #31 ; 3 uses
  %.not321 = icmp eq ptr %i.qe, null
  br i1 %.not321, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  store i8 0, ptr %i.qe, align 1, !tbaa !58
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 1
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.0260 = phi ptr [ %i.qf, %bb.ev ], [ null, %bb.eu ] ; 2 uses
  %or.cond6 = select i1 %.0281.lcssa, i1 true, i1 %.0275.lcssa
  br i1 %or.cond6, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.qg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8, !tbaa !13
  %.not322 = icmp eq i32 %i.qg, 0
  %i.qh = call i64 @__isoc23_strtol(ptr noundef nonnull %i.qd, ptr noundef null, i32 noundef 10) #30
  %i.qi = trunc i64 %i.qh to i32                  ; 2 uses
  br i1 %.not322, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.qj = getelementptr inbounds nuw i8, ptr %.0256, i64 2332
  store i32 %i.qi, ptr %i.qj, align 4, !tbaa !64
  br label %bb.fe

bb.ez:                                            ; preds = %bb.ex
  %i.qk = getelementptr inbounds nuw i8, ptr %.0256, i64 2328
  store i32 %i.qi, ptr %i.qk, align 8, !tbaa !63
  br label %bb.fe

bb.fa:                                            ; preds = %bb.ew
  br i1 %.0281.lcssa, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ql = call i64 @__isoc23_strtol(ptr noundef nonnull %i.qd, ptr noundef null, i32 noundef 10) #30, !inline_history !62
  %i.qm = trunc i64 %i.ql to i32
  %i.qn = getelementptr inbounds nuw i8, ptr %.0256, i64 2328
  store i32 %i.qm, ptr %i.qn, align 8, !tbaa !63
  br label %bb.fe

bb.fc:                                            ; preds = %bb.fa
  br i1 %.0275.lcssa, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.qo = call i64 @__isoc23_strtol(ptr noundef nonnull %i.qd, ptr noundef null, i32 noundef 10) #30, !inline_history !62
  %i.qp = trunc i64 %i.qo to i32
  %i.qq = getelementptr inbounds nuw i8, ptr %.0256, i64 2332
  store i32 %i.qp, ptr %i.qq, align 4, !tbaa !64
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fb, %bb.fd, %bb.fc, %bb.ey, %bb.ez
  %.not323 = icmp eq ptr %.0260, null
  br i1 %.not323, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.qr = call i64 @__isoc23_strtol(ptr noundef nonnull %.0260, ptr noundef null, i32 noundef 10) #30, !inline_history !62
  %i.qs = trunc i64 %i.qr to i32
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fe
  %i.qt = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8, !tbaa !13
  %.not.i373 = icmp eq i32 %i.qt, 0
  %.in.v.i = select i1 %.not.i373, i64 2328, i64 2332
  %.in.i = getelementptr inbounds nuw i8, ptr %.0256, i64 %.in.v.i
  %i.qu = load i32, ptr %.in.i, align 4, !tbaa !9
  %i.qv = add nsw i32 %i.qu, 10000
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %i.qw = phi i32 [ %i.qs, %bb.ff ], [ %i.qv, %bb.fg ]
  %i.qx = getelementptr inbounds nuw i8, ptr %.0256, i64 2336
  store i32 %i.qw, ptr %i.qx, align 8, !tbaa !87
  %i.qy = load i32, ptr %i.b, align 4, !tbaa !9
  call void @sdsfreesplitres(ptr noundef nonnull %i.dx, i32 noundef %i.qy) #30
  %i.qz = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !77 ; 2 uses
  %.not324543 = icmp eq ptr %i.ra, null
  br i1 %.not324543, label %._crit_edge547, label %.lr.ph546

.lr.ph546:                                        ; preds = %bb.fh
  %i.rb = getelementptr inbounds nuw i8, ptr %.0256, i64 88 ; 16 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.0256, i64 2224
  br label %bb.fi

bb.fi:                                            ; preds = %.lr.ph546, %bb.ge
  %.0287544 = phi ptr [ %i.ra, %.lr.ph546 ], [ %i.sh, %bb.ge ] ; 10 uses
  %i.rd = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0287544, i32 noundef 44) #31 ; 3 uses
  %.not335 = icmp eq ptr %i.rd, null              ; 2 uses
  br i1 %.not335, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  store i8 0, ptr %i.rd, align 1, !tbaa !58
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %i.re = call i32 @strcasecmp(ptr noundef nonnull %.0287544, ptr noundef nonnull @.str.16) #31
  %.not336 = icmp eq i32 %i.re, 0
  br i1 %.not336, label %bb.fl, label %bb.fo

bb.fl:                                            ; preds = %bb.fk
  %i.rf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !88
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %bb.fn, label %bb.fm, !prof !71

bb.fm:                                            ; preds = %bb.fl
  call void @_serverAssert(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 524) #30
  call void @abort() #32
  unreachable

bb.fn:                                            ; preds = %bb.fl
  store ptr %.0256, ptr %i.rf, align 8, !tbaa !88
  store ptr %.0256, ptr @myself, align 8, !tbaa !54
  %i.ri = load i32, ptr %i.rb, align 8, !tbaa !89
  %i.rj = or i32 %i.ri, 16
  store i32 %i.rj, ptr %i.rb, align 8, !tbaa !89
  br label %bb.ge

bb.fo:                                            ; preds = %bb.fk
  %i.rk = call i32 @strcasecmp(ptr noundef nonnull %.0287544, ptr noundef nonnull @.str.19) #31
  %.not337 = icmp eq i32 %i.rk, 0
  br i1 %.not337, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.rl = load i32, ptr %i.rb, align 8, !tbaa !89
  %i.rm = or i32 %i.rl, 1
  store i32 %i.rm, ptr %i.rb, align 8, !tbaa !89
  br label %bb.ge

bb.fq:                                            ; preds = %bb.fo
  %i.rn = call i32 @strcasecmp(ptr noundef nonnull %.0287544, ptr noundef nonnull @.str.20) #31
  %.not338 = icmp eq i32 %i.rn, 0
  br i1 %.not338, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.ro = load i32, ptr %i.rb, align 8, !tbaa !89
  %i.rp = or i32 %i.ro, 2
  store i32 %i.rp, ptr %i.rb, align 8, !tbaa !89
  br label %bb.ge

bb.fs:                                            ; preds = %bb.fq
  %i.rq = call i32 @strcasecmp(ptr noundef nonnull %.0287544, ptr noundef nonnull @.str.21) #31
  %.not339 = icmp eq i32 %i.rq, 0
  br i1 %.not339, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.rr = load i32, ptr %i.rb, align 8, !tbaa !89
  %i.rs = or i32 %i.rr, 4
  store i32 %i.rs, ptr %i.rb, align 8, !tbaa !89
  br label %bb.ge

bb.fu:                                            ; preds = %bb.fs
  %i.rt = call i32 @strcasecmp(ptr noundef nonnull %.0287544, ptr noundef nonnull @.str.22) #31
  %.not340 = icmp eq i32 %i.rt, 0
  br i1 %.not340, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.ru = load i32, ptr %i.rb, align 8, !tbaa !89
  %i.rv = or i32 %i.ru, 8
  store i32 %i.rv, ptr %i.rb, align 8, !tbaa !89
  %i.rw = call i64 @mstime() #30
  store i64 %i.rw, ptr %i.rc, align 8, !tbaa !90
  br label %bb.ge

bb.fw:                                            ; preds = %bb.fu
  %i.rx = call i32 @strcasecmp(ptr noundef nonnull %.0287544, ptr noundef nonnull @.str.23) #31
  %.not341 = icmp eq i32 %i.rx, 0
  br i1 %.not341, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.ry = load i32, ptr %i.rb, align 8, !tbaa !89
  %i.rz = or i32 %i.ry, 32
  store i32 %i.rz, ptr %i.rb, align 8, !tbaa !89
end_hunk_0
begin_hunk_1_@clusterProcessPingExtensions:bb.a
  br label %clusterLookupNode.exit

clusterLookupNode.exit:                           ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.l = phi ptr [ %i.b, %bb.a ], [ null, %bb.b ], [ %i.k, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2214
  %i.n = load i16, ptr %i.m, align 2, !tbaa !227  ; 2 uses
  %.not5669 = icmp eq i16 %i.n, 0
  br i1 %.not5669, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %clusterLookupNode.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.q = load i16, ptr %i.p, align 2, !tbaa !203
  %rev.i61 = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.r = zext i16 %rev.i61 to i64
  %i.s = getelementptr inbounds nuw [104 x i8], ptr %i.o, i64 %i.r
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %clusterLookupNode.exit65.thread
  %.in = phi i16 [ %i.t, %clusterLookupNode.exit65.thread ], [ %rev.i, %.lr.ph.preheader ]
  %.073 = phi ptr [ %.1, %clusterLookupNode.exit65.thread ], [ null, %.lr.ph.preheader ] ; 12 uses
  %.04572 = phi ptr [ %.146, %clusterLookupNode.exit65.thread ], [ null, %.lr.ph.preheader ] ; 12 uses
  %.04771 = phi ptr [ %.148, %clusterLookupNode.exit65.thread ], [ null, %.lr.ph.preheader ] ; 12 uses
  %.05070 = phi ptr [ %i.bo, %clusterLookupNode.exit65.thread ], [ %i.s, %.lr.ph.preheader ] ; 9 uses
  %i.t = add i16 %.in, -1                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05070, i64 4
  %i.v = load i16, ptr %i.u, align 4, !tbaa !59
  %rev.i62 = tail call noundef i16 @llvm.bswap.i16(i16 %i.v) ; 2 uses
  %i.w = zext i16 %rev.i62 to i32
  switch i16 %rev.i62, label %bb.r [
    i16 0, label %bb.e
    i16 1, label %bb.f
    i16 2, label %bb.g
    i16 3, label %bb.o
    i16 4, label %bb.p
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.05070, i64 8
  br label %clusterLookupNode.exit65.thread

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.05070, i64 8
  br label %clusterLookupNode.exit65.thread

bb.g:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.05070, i64 8 ; 3 uses
  %i.aa = tail call i32 @verifyClusterNodeId(ptr noundef nonnull %i.z, i32 noundef 40) #30
  %.not.i63 = icmp eq i32 %i.aa, 0
  br i1 %.not.i63, label %bb.h, label %clusterLookupNode.exit65.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call ptr @sdsnewlen(ptr noundef nonnull %i.z, i64 noundef 40) #30 ; 2 uses
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81
  %i.af = tail call ptr @dictFind(ptr noundef %i.ae, ptr noundef %i.ab) #30 ; 2 uses
  tail call void @sdsfree(ptr noundef %i.ab) #30
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %clusterLookupNode.exit65.thread, label %clusterLookupNode.exit65

clusterLookupNode.exit65:                         ; preds = %bb.h
  %i.ah = tail call ptr @dictGetVal(ptr noundef nonnull %i.af) #30 ; 4 uses
  %.not57 = icmp eq ptr %i.ah, null
  br i1 %.not57, label %clusterLookupNode.exit65.thread, label %bb.i

bb.i:                                             ; preds = %clusterLookupNode.exit65
  %i.ai = load ptr, ptr @myself, align 8, !tbaa !54 ; 3 uses
  %.not58 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not58, label %clusterLookupNode.exit65.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !89
  %i.al = and i32 %i.ak, 2
  %.not59 = icmp eq i32 %i.al, 0
  br i1 %.not59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 2184
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ao = icmp eq ptr %i.an, %i.ah
  br i1 %i.ao, label %clusterLookupNode.exit65.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = tail call ptr @sdsnewlen(ptr noundef nonnull %i.z, i64 noundef 40) #30 ; 3 uses
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !122
  %i.at = tail call ptr @dictAddOrFind(ptr noundef %i.as, ptr noundef %i.ap) #30 ; 2 uses
  %i.au = tail call ptr @dictGetKey(ptr noundef %i.at) #30
  %.not60 = icmp eq ptr %i.au, %i.ap
  br i1 %.not60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @sdsfree(ptr noundef %i.ap) #30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !196
  %i.aw = getelementptr inbounds nuw i8, ptr %.05070, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !225
  %i.ay = tail call i64 @llvm.bswap.i64(i64 %i.ax)
  %i.az = add i64 %i.ay, %i.av
  tail call void @dictSetUnsignedIntegerVal(ptr noundef %i.at, i64 noundef %i.az) #30
  tail call void @clusterDelNode(ptr noundef nonnull %i.ah)
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 393384 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !67
  %i.bd = or i32 %i.bc, 6
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !67
  br label %clusterLookupNode.exit65.thread

bb.o:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.05070, i64 8
  br label %clusterLookupNode.exit65.thread

bb.p:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %.05070, i64 8 ; 2 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 393264 ; 2 uses
  %i.bi = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(40) %i.bh, ptr noundef nonnull dereferenceable(40) %i.bf, i64 noundef 40) #31
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %clusterLookupNode.exit65.thread

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 1 dereferenceable(40) %i.bf, i64 40, i1 false)
  br label %clusterLookupNode.exit65.thread

bb.r:                                             ; preds = %.lr.ph
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %clusterLookupNode.exit65.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.89, i32 noundef %i.w) #30
  br label %clusterLookupNode.exit65.thread

clusterLookupNode.exit65.thread:                  ; preds = %bb.h, %bb.g, %bb.p, %bb.q, %clusterLookupNode.exit65, %bb.i, %bb.k, %bb.n, %bb.f, %bb.o, %bb.s, %bb.r, %bb.e
  %.148 = phi ptr [ %.04771, %bb.e ], [ %.04771, %bb.f ], [ %.04771, %bb.s ], [ %i.be, %bb.o ], [ %.04771, %clusterLookupNode.exit65 ], [ %.04771, %bb.r ], [ %.04771, %bb.n ], [ %.04771, %bb.k ], [ %.04771, %bb.i ], [ %.04771, %bb.q ], [ %.04771, %bb.p ], [ %.04771, %bb.g ], [ %.04771, %bb.h ] ; 2 uses
  %.146 = phi ptr [ %.04572, %bb.e ], [ %i.y, %bb.f ], [ %.04572, %bb.s ], [ %.04572, %bb.o ], [ %.04572, %clusterLookupNode.exit65 ], [ %.04572, %bb.r ], [ %.04572, %bb.n ], [ %.04572, %bb.k ], [ %.04572, %bb.i ], [ %.04572, %bb.q ], [ %.04572, %bb.p ], [ %.04572, %bb.g ], [ %.04572, %bb.h ] ; 2 uses
  %.1 = phi ptr [ %i.x, %bb.e ], [ %.073, %bb.f ], [ %.073, %bb.s ], [ %.073, %bb.o ], [ %.073, %clusterLookupNode.exit65 ], [ %.073, %bb.r ], [ %.073, %bb.n ], [ %.073, %bb.k ], [ %.073, %bb.i ], [ %.073, %bb.q ], [ %.073, %bb.p ], [ %.073, %bb.g ], [ %.073, %bb.h ] ; 2 uses
  %.val.i = load i32, ptr %.05070, align 8, !tbaa !9
  %i.bm = tail call noundef i32 @llvm.bswap.i32(i32 %.val.i)
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.05070, i64 %i.bn
  %.not56 = icmp eq i16 %i.t, 0
  br i1 %.not56, label %._crit_edge, label %.lr.ph, !llvm.loop !228

._crit_edge:                                      ; preds = %clusterLookupNode.exit65.thread, %clusterLookupNode.exit
  %.047.lcssa = phi ptr [ null, %clusterLookupNode.exit ], [ %.148, %clusterLookupNode.exit65.thread ] ; 2 uses
  %.045.lcssa = phi ptr [ null, %clusterLookupNode.exit ], [ %.146, %clusterLookupNode.exit65.thread ]
  %.0.lcssa = phi ptr [ null, %clusterLookupNode.exit ], [ %.1, %clusterLookupNode.exit65.thread ]
  tail call fastcc void @updateAnnouncedHostname(ptr noundef %i.l, ptr noundef %.0.lcssa)
  tail call fastcc void @updateAnnouncedHumanNodename(ptr noundef %i.l, ptr noundef %.045.lcssa)
  %i.bp = icmp eq ptr %.047.lcssa, null
  br i1 %i.bp, label %.preheader, label %bb.t

.preheader:                                       ; preds = %._crit_edge, %.preheader
  %.0.i = phi ptr [ %i.br, %.preheader ], [ %i.l, %._crit_edge ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i, i64 2184
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !65 ; 2 uses
  %.not.i66 = icmp eq ptr %i.br, null
  br i1 %.not.i66, label %clusterNodeGetMaster.exit, label %.preheader, !llvm.loop !229

clusterNodeGetMaster.exit:                        ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  br label %bb.t

bb.t:                                             ; preds = %clusterNodeGetMaster.exit, %._crit_edge
  %.2 = phi ptr [ %i.bs, %clusterNodeGetMaster.exit ], [ %.047.lcssa, %._crit_edge ]
  tail call fastcc void @updateShardId(ptr noundef %i.l, ptr noundef nonnull %.2)
  ret void
}

declare ptr @dictAddOrFind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @clusterNodeGetMaster(ptr noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #22 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 2184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !229

bb.c:                                             ; preds = %bb.b
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @clusterProcessPacket(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [46 x i8], align 16               ; 5 uses
  %i.b = alloca [46 x i8], align 16               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 44 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !230
  %i.g = tail call noundef i32 @llvm.bswap.i32(i32 %i.f) ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.i = load i16, ptr %i.h, align 4, !tbaa !231  ; 7 uses
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.i) ; 11 uses
  %i.j = tail call i64 @mstime() #30              ; 7 uses
  %i.k = zext i16 %rev.i to i32                   ; 4 uses
  %i.l = icmp ult i16 %rev.i, 11
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 393480
  %i.o = zext nneg i16 %rev.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !232
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !232
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult i16 %rev.i, 11
  br i1 %i.u, label %switch.lookup, label %clusterGetMessageTypeString.exit

switch.lookup:                                    ; preds = %bb.d
  %i.v = zext nneg i16 %rev.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.clusterGetMessageTypeString, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %clusterGetMessageTypeString.exit

clusterGetMessageTypeString.exit:                 ; preds = %bb.d, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.193, %bb.d ]
  %i.w = zext i32 %i.g to i64
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 0, ptr noundef nonnull @.str.90, ptr noundef nonnull %.0.i, i64 noundef %i.w) #30
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %clusterGetMessageTypeString.exit
  %i.x = icmp ult i32 %i.g, 16
  br i1 %i.x, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %i.g to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !171
  %i.ab = icmp ult i64 %i.aa, %i.y
  br i1 %i.ab, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !233
  %.not = icmp eq i16 %i.ad, 256
  br i1 %.not, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8320), align 8, !tbaa !234
  %i.af = icmp eq i32 %i.ae, %i.k
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ah = icmp sgt i32 %i.ag, 3
  br i1 %i.ah, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.91) #30
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 2250
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !235
  %rev.i490 = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 2214
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !227 ; 2 uses
  %rev.i491 = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.am = icmp eq i16 %i.i, 0
  %i.an = icmp eq i16 %i.i, 256
  %i.ao = icmp eq i16 %i.i, 512                   ; 2 uses
  %or.cond9 = icmp ult i16 %rev.i, 3              ; 2 uses
  br i1 %or.cond9, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !203
  %rev.i492 = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq) ; 2 uses
  %i.ar = zext i16 %rev.i492 to i32
  %i.as = mul nuw nsw i32 %i.ar, 104
  %i.at = add nuw nsw i32 %i.as, 2256             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 2253
  %i.av = load i8, ptr %i.au, align 1, !tbaa !58
  %i.aw = and i8 %i.av, 4
  %.not431 = icmp eq i8 %i.aw, 0
  %.not432544 = icmp eq i16 %i.al, 0
  %or.cond591 = select i1 %.not431, i1 true, i1 %.not432544
  br i1 %or.cond591, label %.thread504, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 2256
  %i.ay = zext i16 %rev.i492 to i64
  %i.az = getelementptr inbounds nuw [104 x i8], ptr %i.ax, i64 %i.ay
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.in = phi i16 [ %i.ba, %bb.p ], [ %rev.i491, %.lr.ph.preheader ]
  %.0393546 = phi i32 [ %i.bm, %bb.p ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  %.0399545 = phi ptr [ %i.bo, %bb.p ], [ %i.az, %.lr.ph.preheader ] ; 2 uses
  %i.ba = add i16 %.in, -1                        ; 2 uses
  %.0399.val = load i32, ptr %.0399545, align 8, !tbaa !9
  %i.bb = tail call noundef i32 @llvm.bswap.i32(i32 %.0399.val) ; 3 uses
  %i.bc = and i32 %i.bb, 65535                    ; 3 uses
  %i.bd = and i32 %i.bb, 7
  %.not433 = icmp eq i32 %i.bd, 0
  br i1 %.not433, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.bf = icmp sgt i32 %i.be, 3
  br i1 %i.bf, label %.critedge, label %switch.lookup597

switch.lookup597:                                 ; preds = %bb.m
  %i.bg = zext nneg i16 %rev.i to i64
  %switch.gep598 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.clusterProcessPacket.17, i64 %i.bg
  %switch.load599 = load ptr, ptr %switch.gep598, align 8
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.92, ptr noundef nonnull %switch.load599, i32 noundef %i.bc) #30
  br label %.critedge

bb.n:                                             ; preds = %.lr.ph
  %i.bh = sub i32 %i.g, %.0393546
  %i.bi = icmp ult i32 %i.bh, %i.bc
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.bk = icmp sgt i32 %i.bj, 3
  br i1 %i.bk, label %.critedge, label %switch.lookup600

switch.lookup600:                                 ; preds = %bb.o
  %i.bl = zext nneg i16 %rev.i to i64
  %switch.gep601 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.clusterProcessPacket.17, i64 %i.bl
  %switch.load602 = load ptr, ptr %switch.gep601, align 8
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.93, ptr noundef nonnull %switch.load602, i64 noundef %i.y) #30
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.bm = add i32 %i.bc, %.0393546                ; 2 uses
  %i.bn = zext i32 %i.bb to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.0399545, i64 %i.bn
  %.not432 = icmp eq i16 %i.ba, 0
  br i1 %.not432, label %.thread504, label %.lr.ph, !llvm.loop !236

bb.q:                                             ; preds = %bb.k
  switch i16 %rev.i, label %.thread505 [
    i16 3, label %.thread504
    i16 10, label %bb.r
    i16 4, label %bb.r
    i16 8, label %.fold.split
    i16 6, label %.fold.split
    i16 5, label %.fold.split
    i16 7, label %bb.s
    i16 9, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 2256
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !58
  %i.br = tail call noundef i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 2260
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !58
  %i.bu = tail call noundef i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = add i32 %i.br, 2264
  %i.bw = add i32 %i.bv, %i.bu
  br label %.thread504

bb.s:                                             ; preds = %bb.q
  br label %.thread504

bb.t:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 2264
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !58
  %i.bz = tail call noundef i32 @llvm.bswap.i32(i32 %i.by)
  %i.ca = add i32 %i.bz, 2269
  br label %.thread504

.fold.split:                                      ; preds = %bb.q, %bb.q, %bb.q
  br label %.thread504

.thread504:                                       ; preds = %bb.p, %bb.q, %.fold.split, %bb.l, %bb.t, %bb.s, %bb.r
  %.5398 = phi i32 [ 2256, %.fold.split ], [ %i.at, %bb.l ], [ %i.bw, %bb.r ], [ 2296, %bb.q ], [ 4352, %bb.s ], [ %i.ca, %bb.t ], [ %i.bm, %bb.p ] ; 2 uses
  %.not434 = icmp eq i32 %i.g, %.5398
  br i1 %.not434, label %.thread505, label %bb.u

bb.u:                                             ; preds = %.thread504
  %i.cb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.cc = icmp sgt i32 %i.cb, 3
  br i1 %i.cc, label %.critedge, label %bb.v
end_hunk_1
begin_hunk_2_@clusterProcessPacket:bb.a
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 88 ; 2 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !89 ; 2 uses
  %i.ip = and i32 %i.io, -513
  %i.iq = or disjoint i32 %i.ip, %i.im
  store i32 %i.iq, ptr %i.in, align 8, !tbaa !89
  br i1 %i.am, label %bb.bv, label %.critedge481

bb.bv:                                            ; preds = %bb.bu
  %i.ir = and i32 %i.io, 32
  %.not456 = icmp eq i32 %i.ir, 0
  br i1 %.not456, label %bb.bw, label %.thread526

bb.bw:                                            ; preds = %bb.bv
  %i.is = call i32 @nodeUpdateAddressIfNeeded(ptr noundef nonnull %.0.i497510, ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  %.not457 = icmp eq i32 %i.is, 0
  br i1 %.not457, label %.thread526, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 393384 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !67
  %i.iw = or i32 %i.iv, 6
  store i32 %i.iw, ptr %i.iu, align 8, !tbaa !67
  br label %.thread526

.critedge481:                                     ; preds = %.thread524, %bb.bt, %bb.bu
  %i.ix = phi i32 [ %.pre558, %.thread524 ], [ %i.gl, %bb.bt ], [ %i.gl, %bb.bu ]
  %i.iy = icmp eq i32 %i.ix, 0
  %or.cond47 = select i1 %i.iy, i1 %i.an, i1 false
  br i1 %or.cond47, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %.critedge481
  %i.iz = load ptr, ptr %i.cf, align 8, !tbaa !174 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 2208
  store i64 %i.j, ptr %i.ja, align 8, !tbaa !94
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 2200
  store i64 0, ptr %i.jb, align 8, !tbaa !93
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 88 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !89 ; 3 uses
  %i.je = and i32 %i.jd, 4
  %.not458 = icmp eq i32 %i.je, 0
  br i1 %.not458, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jf = and i32 %i.jd, -5
  store i32 %i.jf, ptr %i.jc, align 8, !tbaa !89
  %i.jg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 393384 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !67
  %i.jj = or i32 %i.ji, 6
  store i32 %i.jj, ptr %i.jh, align 8, !tbaa !67
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.jk = and i32 %i.jd, 8
  %.not459 = icmp eq i32 %i.jk, 0
  br i1 %.not459, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @clearNodeFailureIfNeeded(ptr noundef nonnull %i.iz)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %bb.cb, %bb.ca, %.critedge481
  br i1 %.not472511, label %.critedge, label %.thread526

.thread526:                                       ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.cc
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 2128 ; 2 uses
  %bcmp460 = call i32 @bcmp(ptr noundef nonnull dereferenceable(40) %i.jl, ptr noundef nonnull dereferenceable(40) @.str.103, i64 40)
  %.not461 = icmp eq i32 %bcmp460, 0
  br i1 %.not461, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.thread526
  call void @clusterSetNodeAsMaster(ptr noundef %.0.i497510)
  br label %bb.cu

bb.ce:                                            ; preds = %.thread526
  %i.jm = call ptr @clusterLookupNode(ptr noundef nonnull %i.jl, i32 noundef 40) ; 13 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 88 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !89
  %i.jp = and i32 %i.jo, 1
  %.not462 = icmp eq i32 %i.jp, 0
  br i1 %.not462, label %bb.cp, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.not463 = icmp eq ptr %i.jm, null              ; 2 uses
  br i1 %.not463, label %bb.cm, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 48 ; 3 uses
  %bcmp464 = call i32 @bcmp(ptr noundef nonnull dereferenceable(40) %i.jq, ptr noundef nonnull dereferenceable(40) %i.jr, i64 40)
  %.not465 = icmp eq i32 %bcmp464, 0
  br i1 %.not465, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.js = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 96
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !95 ; 2 uses
  %i.ju = icmp ugt i64 %i.jt, %.0392
  br i1 %i.ju, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.jv = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.jw = icmp sgt i32 %i.jv, 2
  br i1 %i.jw, label %.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jx = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 2320
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !57
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.104, ptr noundef nonnull %i.jx, ptr noundef %i.jz, ptr noundef nonnull %i.jr, i64 noundef %.0392, i64 noundef %i.jt) #30
  br label %.thread

bb.ck:                                            ; preds = %bb.ch
  %i.ka = call i32 @clusterMoveNodeSlots(ptr noundef nonnull %.0.i497510, ptr noundef nonnull %i.jm)
  call void @clusterSetNodeAsMaster(ptr noundef nonnull %i.jm)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jm, i64 96
  store i64 %.0392, ptr %i.kb, align 8, !tbaa !95
  %i.kc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.kd = icmp sgt i32 %i.kc, 2
  br i1 %i.kd, label %.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 2320
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !57
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jm, i64 2320
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !57
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.105, ptr noundef nonnull %i.jr, ptr noundef nonnull %i.ke, ptr noundef %i.kg, i32 noundef %i.ka, ptr noundef nonnull %i.kh, ptr noundef %i.kj, i64 noundef %.0392) #30
  br label %.thread

bb.cm:                                            ; preds = %bb.cg, %bb.cf
  %i.kk = call i32 @clusterDelNodeSlots(ptr noundef nonnull %.0.i497510)
  %i.kl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.km = icmp sgt i32 %i.kl, 2
  br i1 %i.km, label %.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 2320
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !57
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 48
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.106, ptr noundef nonnull %i.kn, ptr noundef %i.kp, ptr noundef nonnull %i.kq, i32 noundef %i.kk) #30
  %.pre559.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.kr = icmp sgt i32 %.pre559.a, 2
  %or.cond60 = select i1 %.not463, i1 true, i1 %i.kr
  br i1 %or.cond60, label %.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 2320
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !57
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.107, ptr noundef nonnull %i.ks, ptr noundef %i.ku, ptr noundef nonnull %i.kv) #30
  br label %.thread

.thread:                                          ; preds = %bb.cm, %bb.cn, %bb.co, %bb.cl, %bb.ck, %bb.ci, %bb.cj
  %i.kw = load i32, ptr %i.jn, align 8, !tbaa !89
  %i.kx = and i32 %i.kw, -260
  %i.ky = or disjoint i32 %i.kx, 2
  store i32 %i.ky, ptr %i.jn, align 8, !tbaa !89
  %i.kz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 393384 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !67
  %i.lc = or i32 %i.lb, 6
  store i32 %i.lc, ptr %i.la, align 8, !tbaa !67
  br label %bb.cp

bb.cp:                                            ; preds = %.thread, %bb.ce
  %.not466 = icmp eq ptr %i.jm, null
  br i1 %.not466, label %bb.cu, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 2184 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !65 ; 3 uses
  %.not467 = icmp eq ptr %i.le, %i.jm
  br i1 %.not467, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.not468 = icmp eq ptr %i.le, null
  br i1 %.not468, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lf = call i32 @clusterNodeRemoveSlave(ptr noundef nonnull %i.le, ptr noundef nonnull %.0.i497510) ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.lg = call i32 @clusterNodeAddSlave(ptr noundef nonnull %i.jm, ptr noundef nonnull %.0.i497510) ; 0 uses
  store ptr %i.jm, ptr %i.ld, align 8, !tbaa !65
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  call fastcc void @updateShardId(ptr noundef nonnull %.0.i497510, ptr noundef nonnull %i.lh)
  %i.li = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 393384 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !67
  %i.ll = or i32 %i.lk, 4
  store i32 %i.ll, ptr %i.lj, align 8, !tbaa !67
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cd, %bb.ct, %bb.cq, %bb.cp
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 88 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !89 ; 2 uses
  %i.lo = and i32 %i.ln, 1
  %.not469 = icmp eq i32 %i.lo, 0
  br i1 %.not469, label %bb.cv, label %.critedge483.a

bb.cv:                                            ; preds = %bb.cu
  %i.lp = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 2184
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !65 ; 2 uses
  %.not470 = icmp eq ptr %i.lq, null
  br i1 %.not470, label %.critedge485, label %.critedge483.a

.critedge483.a:                                   ; preds = %bb.cu, %bb.cv
  %1 = phi ptr [ %i.lq, %bb.cv ], [ %.0.i497510, %bb.cu ]
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ls = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  %bcmp471.a = call i32 @bcmp(ptr noundef nonnull dereferenceable(2048) %i.lr, ptr noundef nonnull dereferenceable(2048) %i.ls, i64 2048)
  %2 = icmp ne i32 %bcmp471.a, 0                  ; 2 uses
  %3 = trunc i32 %i.ln to i1
  %or.cond50 = select i1 %3, i1 %2, i1 false
  br i1 %or.cond50, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.critedge483.a
  call void @clusterUpdateSlotsConfigWith(ptr noundef nonnull %.0.i497510, i64 noundef %.0392, ptr noundef nonnull %i.ls)
  br label %.preheader

bb.cx:                                            ; preds = %.critedge483.a
  br i1 %2, label %.preheader, label %.critedge485

.preheader:                                       ; preds = %bb.cx, %bb.cw
  %i.lt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 262192
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 393584
  br label %bb.cy

bb.cy:                                            ; preds = %.preheader, %bb.df
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.df ] ; 5 uses
  %i.lw = trunc nuw nsw i64 %indvars.iv to i32
  %.zext = lshr i64 %indvars.iv, 3
  %i.lx = and i64 %.zext, 536870911               ; 2 uses
  %i.ly = and i32 %i.lw, 7
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lx
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !58
  %i.mb = zext i8 %i.ma to i32
  %i.mc = shl nuw nsw i32 1, %i.ly                ; 2 uses
  %i.md = and i32 %i.mc, %i.mb
  %.not473 = icmp eq i32 %i.md, 0
  br i1 %.not473, label %bb.df, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %indvars.iv
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !54 ; 5 uses
  %i.mg = icmp eq ptr %i.mf, %.0.i497510
  %i.mh = icmp eq ptr %i.mf, null
  %or.cond = or i1 %i.mg, %i.mh
  br i1 %or.cond, label %bb.df, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lx
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !58
  %i.mk = zext i8 %i.mj to i32
  %i.ml = and i32 %i.mc, %i.mk
  %.not474 = icmp eq i32 %i.ml, 0
  br i1 %.not474, label %bb.db, label %bb.df

bb.db:                                            ; preds = %bb.da
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 96
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !95
  %i.mo = icmp ugt i64 %i.mn, %.0392
  br i1 %i.mo, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.mp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.mq = icmp sgt i32 %i.mp, 1
  br i1 %i.mq, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mr = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  call void (i32, ptr, ...) @_serverLog(i32 noundef 1, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.mr, ptr noundef nonnull %i.ms) #30
  %.pre560 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %.phi.trans.insert561 = getelementptr inbounds nuw i8, ptr %.pre560, i64 262192
  %.phi.trans.insert562 = getelementptr inbounds nuw [8 x i8], ptr %.phi.trans.insert561, i64 %indvars.iv
  %.pre563 = load ptr, ptr %.phi.trans.insert562, align 8, !tbaa !54
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  %i.mt = phi ptr [ %i.mf, %bb.dc ], [ %.pre563, %bb.dd ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 2344
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !176
  call void @clusterSendUpdate(ptr noundef %i.mv, ptr noundef %i.mt)
  br label %.critedge485

bb.df:                                            ; preds = %bb.cy, %bb.db, %bb.cz, %bb.da
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16384
  br i1 %exitcond.not, label %.critedge485, label %bb.cy, !llvm.loop !245

.critedge485:                                     ; preds = %bb.df, %bb.cv, %bb.cx, %bb.de
  %i.mw = load ptr, ptr @myself, align 8, !tbaa !54 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 88
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !89
  %i.mz = and i32 %i.my, 1
  %.not475 = icmp eq i32 %i.mz, 0
  br i1 %.not475, label %.critedge487, label %bb.dg

bb.dg:                                            ; preds = %.critedge485
  %i.na = load i32, ptr %i.lm, align 8, !tbaa !89
  %i.nb = and i32 %i.na, 1
  %.not476 = icmp eq i32 %i.nb, 0
  br i1 %.not476, label %.critedge487, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 96
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !95
  %i.ne = icmp eq i64 %.0392, %i.nd
  br i1 %i.ne, label %bb.di, label %.critedge487

bb.di:                                            ; preds = %bb.dh
  call void @clusterHandleConfigEpochCollision(ptr noundef nonnull %.0.i497510)
  br label %.critedge487

.critedge487:                                     ; preds = %.critedge485, %bb.dg, %bb.dh, %bb.di
  call void @clusterProcessGossipSection(ptr noundef nonnull %i.d, ptr noundef %0)
  call void @clusterProcessPingExtensions(ptr noundef nonnull %i.d, ptr noundef %0)
  br label %.critedge

bb.dj:                                            ; preds = %bb.bc
  %i.nf = icmp eq i16 %i.i, 768
  br i1 %i.nf, label %bb.dk, label %bb.ds

bb.dk:                                            ; preds = %bb.dj
  br i1 %.not472511, label %bb.dq, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 2256 ; 2 uses
  %i.nh = tail call ptr @clusterLookupNode(ptr noundef nonnull %i.ng, i32 noundef 40) ; 4 uses
  %.not449 = icmp eq ptr %i.nh, null
  br i1 %.not449, label %.critedge, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 88 ; 3 uses
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !89 ; 2 uses
  %i.nk = and i32 %i.nj, 24
  %.not450 = icmp eq i32 %i.nk, 0
  br i1 %.not450, label %bb.dn, label %.critedge

bb.dn:                                            ; preds = %bb.dm
  %i.nl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.nm = icmp sgt i32 %i.nl, 2
  br i1 %i.nm, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nn = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 2320
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !57
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nh, i64 2320
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !57
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.109, ptr noundef nonnull %i.nn, ptr noundef %i.np, ptr noundef nonnull %i.ng, ptr noundef %i.nr) #30
  %.pre554 = load i32, ptr %i.ni, align 8, !tbaa !89
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %i.ns = phi i32 [ %i.nj, %bb.dn ], [ %.pre554, %bb.do ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nh, i64 2224
  store i64 %i.j, ptr %i.nt, align 8, !tbaa !90
  %i.nu = and i32 %i.ns, -13
  %i.nv = or disjoint i32 %i.nu, 8
  store i32 %i.nv, ptr %i.ni, align 8, !tbaa !89
  %i.nw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 393384 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !67
  %i.nz = or i32 %i.ny, 6
  store i32 %i.nz, ptr %i.nx, align 8, !tbaa !67
  br label %.critedge

bb.dq:                                            ; preds = %bb.dk
  %i.oa = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ob = icmp sgt i32 %i.oa, 2
  br i1 %i.ob, label %.critedge, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.oc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.od = getelementptr inbounds nuw i8, ptr %i.d, i64 2256
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.110, ptr noundef nonnull %i.oc, ptr noundef nonnull %i.od) #30
  br label %.critedge

bb.ds:                                            ; preds = %bb.dj
  %i.oe = icmp eq i16 %i.i, 1024
  %i.of = icmp eq i16 %i.i, 2560                  ; 2 uses
  switch i16 %rev.i, label %bb.et [
    i16 10, label %bb.dt
    i16 4, label %bb.dt
    i16 5, label %bb.dz
    i16 6, label %bb.eb
    i16 8, label %bb.eg
    i16 7, label %bb.el
    i16 9, label %bb.er
  ]

bb.dt:                                            ; preds = %bb.ds, %bb.ds
  br i1 %.not472511, label %.critedge, label %bb.du

bb.du:                                            ; preds = %bb.dt
  br i1 %i.oe, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.og = tail call i32 @serverPubsubSubscriptionCount() #30
  %i.oh = icmp sgt i32 %i.og, 0
  br i1 %i.oh, label %bb.dy, label %.critedge

bb.dw:                                            ; preds = %bb.du
  br i1 %i.of, label %bb.dx, label %.critedge

bb.dx:                                            ; preds = %bb.dw
  %i.oi = tail call i32 @serverPubsubShardSubscriptionCount() #30
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %bb.dy, label %.critedge

bb.dy:                                            ; preds = %bb.dx, %bb.dv
  %i.ok = getelementptr inbounds nuw i8, ptr %i.d, i64 2256
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !58
  %i.om = tail call noundef i32 @llvm.bswap.i32(i32 %i.ol)
  %i.on = getelementptr inbounds nuw i8, ptr %i.d, i64 2260
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !58
  %i.op = tail call noundef i32 @llvm.bswap.i32(i32 %i.oo)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.d, i64 2264 ; 2 uses
  %i.or = zext i32 %i.om to i64                   ; 2 uses
  %i.os = tail call ptr @createStringObject(ptr noundef nonnull %i.oq, i64 noundef %i.or) #30 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.or
  %i.ou = zext i32 %i.op to i64
  %i.ov = tail call ptr @createStringObject(ptr noundef nonnull %i.ot, i64 noundef %i.ou) #30 ; 2 uses
  %i.ow = zext i1 %i.of to i32
  %i.ox = tail call i32 @pubsubPublishMessage(ptr noundef %i.os, ptr noundef %i.ov, i32 noundef %i.ow) #30 ; 0 uses
  tail call void @decrRefCount(ptr noundef %i.os) #30
  tail call void @decrRefCount(ptr noundef %i.ov) #30
  br label %.critedge

bb.dz:                                            ; preds = %bb.ds
  br i1 %.not472511, label %.critedge, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @clusterSendFailoverAuthIfNeeded(ptr noundef %.0.i497510, ptr noundef nonnull %i.d)
  br label %.critedge

bb.eb:                                            ; preds = %bb.ds
  br i1 %.not472511, label %.critedge, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 88
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !89
  %i.pa = and i32 %i.oz, 1
  %.not447 = icmp eq i32 %i.pa, 0
  br i1 %.not447, label %.critedge, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.pb = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 2164
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !161
  %i.pd = icmp sgt i32 %i.pc, 0
  br i1 %i.pd, label %bb.ee, label %.critedge

bb.ee:                                            ; preds = %bb.ed
  %i.pe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 393328
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !126
  %.not448 = icmp ult i64 %.0391, %i.pg
  br i1 %.not448, label %.critedge, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 393312 ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !124
  %i.pj = add nsw i32 %i.pi, 1
  store i32 %i.pj, ptr %i.ph, align 8, !tbaa !124
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 393384 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !67
  %i.pm = or i32 %i.pl, 1
  store i32 %i.pm, ptr %i.pk, align 8, !tbaa !67
  br label %.critedge

bb.eg:                                            ; preds = %bb.ds
  br i1 %.not472511, label %.critedge, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i497510, i64 2184
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !65
  %i.pp = load ptr, ptr @myself, align 8, !tbaa !54
  %.not446 = icmp eq ptr %i.po, %i.pp
  br i1 %.not446, label %bb.ei, label %.critedge

bb.ei:                                            ; preds = %bb.eh
  %i.pq = tail call i32 @clusterAsmCancel(ptr noundef null, ptr noundef nonnull @.str.111) #30 ; 0 uses
  tail call void @resetManualFailover()
  %i.pr = add nsw i64 %i.j, 5000
  %i.ps = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8224), align 8, !tbaa !66 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 393344
  store i64 %i.pr, ptr %i.pt, align 8, !tbaa !243
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 393352
  store ptr %.0.i497510, ptr %i.pu, align 8, !tbaa !131
  %i.pv = add nsw i64 %i.j, 10000
end_hunk_2
