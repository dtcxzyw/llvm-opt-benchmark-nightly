inline.NumInlined: 40
inline.NumDeleted: 16
begin_hunk_0_@parse_charstrings:bb.a
    i8 91, label %bb.k
    i8 93, label %bb.k
    i8 123, label %bb.k
    i8 125, label %bb.k
    i8 37, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !97
  switch i8 %i.bc, label %.thread [
    i8 100, label %bb.l
    i8 101, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !97
  %i.bf = icmp eq i8 %i.be, 101
  br i1 %i.bf, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !97
  %i.bi = icmp eq i8 %i.bh, 102
  %i.bj = icmp ne i32 %.0191322, 0
  %or.cond = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond, label %.thread271.thread, label %.thread

bb.n:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !97
  %i.bm = icmp eq i8 %i.bl, 110
  br i1 %i.bm, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !97
  %i.bp = icmp eq i8 %i.bo, 100
  br i1 %i.bp, label %.thread271, label %.thread

.thread:                                          ; preds = %bb.k, %bb.l, %bb.m, %bb.j, %bb.n, %bb.o, %bb.i
  %i.bq = load ptr, ptr %i.aq, align 8, !tbaa !98
  call void %i.bq(ptr noundef nonnull %1) #17
  %i.br = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %.not209 = icmp ult ptr %i.br, %i.l
  br i1 %.not209, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.thread
  %i.bs = load i32, ptr %i.z, align 8, !tbaa !100
  %.not210 = icmp eq i32 %i.bs, 0
  br i1 %.not210, label %bb.q, label %.thread281

bb.q:                                             ; preds = %bb.p
  %i.bt = load i8, ptr %i.ay, align 1, !tbaa !97
  %i.bu = icmp eq i8 %i.bt, 47
  br i1 %i.bu, label %bb.r, label %.backedge

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %.not211 = icmp ult ptr %i.bv, %i.l
  br i1 %.not211, label %bb.s, label %.loopexit.loopexit.sink.split

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !134
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 104
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !135
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !93  ; 2 uses
  %i.cf = load ptr, ptr %i.an, align 8, !tbaa !101
  call void %i.cf(ptr noundef nonnull %1) #17, !inline_history !482
  %i.cg = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %i.ce
  br i1 %i.ch, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !97
  %i.cj = add i8 %i.ci, -48
  %i.ck = icmp ult i8 %i.cj, 10
  br i1 %i.ck, label %bb.u, label %.thread.i

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %i.m, align 8, !tbaa !483
  %i.cm = call i64 %i.cl(ptr noundef nonnull %1) #17, !inline_history !482 ; 9 uses
  %i.cn = load ptr, ptr %i.aq, align 8, !tbaa !98
  call void %i.cn(ptr noundef nonnull %1) #17, !inline_history !482
  %i.co = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 3 uses
  %i.cq = icmp sgt i64 %i.cm, -1
  %i.cr = ptrtoint ptr %i.ce to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = icmp slt i64 %i.cm, %i.ct
  %or.cond.i = select i1 %i.cq, i1 %i.cu, i1 false
  br i1 %or.cond.i, label %read_binary_data.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.u, %bb.t, %bb.s
  %.not305.le = icmp eq ptr %i.cd, null
  br i1 %.not305.le, label %bb.v, label %.thread281

bb.v:                                             ; preds = %.thread.i
  store i32 3, ptr %i.z, align 8, !tbaa !100
  br label %.thread281

read_binary_data.exit:                            ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store ptr %i.cw, ptr %1, align 8, !tbaa !92
  %i.cx = load i32, ptr %i.z, align 8, !tbaa !100
  %.not.i.not = icmp eq i32 %i.cx, 0
  br i1 %.not.i.not, label %bb.w, label %.thread281

bb.w:                                             ; preds = %read_binary_data.exit
  %i.cy = load i32, ptr %i.ab, align 8, !tbaa !121
  %.not213 = icmp eq i32 %i.cy, 0
  br i1 %.not213, label %bb.x, label %.backedge

bb.x:                                             ; preds = %bb.w
  %i.cz = load ptr, ptr %i.as, align 8, !tbaa !501
  %i.da = add i32 %i.ca, 1
  %i.db = call i32 %i.cz(ptr noundef nonnull %i.d, i32 noundef %.0191322, ptr noundef nonnull %i.bw, i32 noundef %i.da) #17 ; 2 uses
  store i32 %i.db, ptr %i.a, align 4, !tbaa !3
  %.not214 = icmp eq i32 %i.db, 0
  br i1 %.not214, label %bb.y, label %.loopexit.loopexit

bb.y:                                             ; preds = %bb.x
  %i.dc = load ptr, ptr %i.at, align 8, !tbaa !503
  %i.dd = sext i32 %.0191322 to i64               ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !152
  %i.dg = and i64 %i.bz, 4294967295
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  store i8 0, ptr %i.dh, align 1, !tbaa !97
  %i.di = load i8, ptr %i.bw, align 1, !tbaa !97
  %i.dj = icmp eq i8 %i.di, 46
  br i1 %i.dj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dk = load ptr, ptr %i.at, align 8, !tbaa !503
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dd
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !152
  %i.dn = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.20, ptr noundef nonnull dereferenceable(1) %i.dm) #18
  %i.do = icmp eq i32 %i.dn, 0                    ; 2 uses
  %spec.select236 = select i1 %i.do, i32 %.0191322, i32 %.0185323
  %spec.select237 = select i1 %i.do, i8 1, i8 %.0181324
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1186 = phi i32 [ %.0185323, %bb.y ], [ %spec.select236, %bb.z ]
  %.1182 = phi i8 [ %.0181324, %bb.y ], [ %spec.select237, %bb.z ]
  %i.dp = load i32, ptr %i.au, align 4, !tbaa !506 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  %i.dr = icmp slt i32 %.0191322, %i.av
  %or.cond239 = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %or.cond239, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ds = zext nneg i32 %i.dp to i64
  %.not215 = icmp samesign ugt i64 %i.cm, %i.ds
  br i1 %.not215, label %bb.ac, label %.loopexit.loopexit.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.dt = call ptr @ft_mem_qalloc(ptr noundef %i.g, i64 noundef %i.cm, ptr noundef nonnull %i.a) #17 ; 4 uses
  %i.du = load i32, ptr %i.a, align 4, !tbaa !3
  %.not216 = icmp eq i32 %i.du, 0
  br i1 %.not216, label %bb.ad, label %.loopexit.loopexit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr nonnull align 1 %i.cp, i64 %i.cm, i1 false)
  %i.dv = load ptr, ptr %i.ax, align 8, !tbaa !108
  call void %i.dv(ptr noundef %i.dt, i64 noundef %i.cm, i16 noundef zeroext 4330) #17
  %i.dw = load i32, ptr %i.au, align 4, !tbaa !506 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = load ptr, ptr %i.aw, align 8, !tbaa !501
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 %i.dx
  %i.ea = trunc i64 %i.cm to i32
  %i.eb = sub i32 %i.ea, %i.dw
  %i.ec = call i32 %i.dy(ptr noundef nonnull %i.c, i32 noundef %.0191322, ptr noundef %i.dz, i32 noundef %i.eb) #17
  store i32 %i.ec, ptr %i.a, align 4, !tbaa !3
  call void @ft_mem_free(ptr noundef %i.g, ptr noundef %i.dt) #17
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.ed = load ptr, ptr %i.aw, align 8, !tbaa !501
  %i.ee = trunc i64 %i.cm to i32
  %i.ef = call i32 %i.ed(ptr noundef nonnull %i.c, i32 noundef %.0191322, ptr noundef nonnull %i.cp, i32 noundef %i.ee) #17 ; 2 uses
  store i32 %i.ef, ptr %i.a, align 4, !tbaa !3
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.eg = phi i32 [ %.pre, %bb.ad ], [ %i.ef, %bb.ae ]
  %.not217 = icmp eq i32 %i.eg, 0                 ; 2 uses
  %i.eh = zext i1 %.not217 to i32
  %spec.select241 = add nsw i32 %.0191322, %i.eh
  br i1 %.not217, label %.backedge, label %.loopexit.loopexit

.backedge:                                        ; preds = %bb.q, %bb.w, %bb.af
  %.3194 = phi i32 [ %.0191322, %bb.q ], [ %.0191322, %bb.w ], [ %spec.select241, %bb.af ] ; 2 uses
  %.4189 = phi i32 [ %.0185323, %bb.q ], [ %.0185323, %bb.w ], [ %.1186, %bb.af ] ; 2 uses
  %.4 = phi i8 [ %.0181324, %bb.q ], [ %.0181324, %bb.w ], [ %.1182, %bb.af ] ; 2 uses
  %i.ei = load ptr, ptr %i.an, align 8, !tbaa !101
  call void %i.ei(ptr noundef nonnull %1) #17
  %i.ej = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %.not208 = icmp ult ptr %i.ej, %i.l
  br i1 %.not208, label %bb.i, label %.thread271

.thread271:                                       ; preds = %.backedge, %bb.o
  %.0191.lcssa = phi i32 [ %.0191322, %bb.o ], [ %.3194, %.backedge ] ; 2 uses
  %.0185.lcssa = phi i32 [ %.0185323, %bb.o ], [ %.4189, %.backedge ]
  %.0181.lcssa = phi i8 [ %.0181324, %bb.o ], [ %.4, %.backedge ]
  %.not218 = icmp eq i32 %.0191.lcssa, 0
  br i1 %.not218, label %.loopexit, label %.thread271.thread

.thread271.thread:                                ; preds = %bb.m, %.thread271
  %.0191320 = phi i32 [ %.0191.lcssa, %.thread271 ], [ %.0191322, %bb.m ] ; 3 uses
  %.0185315 = phi i32 [ %.0185.lcssa, %.thread271 ], [ %.0185323, %bb.m ] ; 3 uses
  %.0181310 = phi i8 [ %.0181.lcssa, %.thread271 ], [ %.0181324, %bb.m ]
  store i32 %.0191320, ptr %i.ab, align 8, !tbaa !121
  %cond244 = icmp eq i8 %.0181310, 0
  br i1 %cond244, label %bb.ap, label %bb.ag

bb.ag:                                            ; preds = %.thread271.thread
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !503
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !152 ; 2 uses
  %i.en = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.20, ptr noundef nonnull dereferenceable(1) %i.em) #18
  %.not220 = icmp eq i32 %i.en, 0
  br i1 %.not220, label %.thread281, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !501
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !507
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = call i32 %i.ep(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull %i.em, i32 noundef %i.es) #17 ; 3 uses
  store i32 %i.et, ptr %i.a, align 4, !tbaa !3
  %.not228 = icmp eq i32 %i.et, 0
  br i1 %.not228, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !501
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !503
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !152
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !507
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = call i32 %i.eu(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef %i.ex, i32 noundef %i.fa) #17 ; 3 uses
  store i32 %i.fb, ptr %i.a, align 4, !tbaa !3
  %.not229 = icmp eq i32 %i.fb, 0
  br i1 %.not229, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.fc = load ptr, ptr %i.eo, align 8, !tbaa !501
  %i.fd = load ptr, ptr %i.ek, align 8, !tbaa !503
  %i.fe = sext i32 %.0185315 to i64               ; 4 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !152
  %i.fh = load ptr, ptr %i.eq, align 8, !tbaa !507
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fe
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = call i32 %i.fc(ptr noundef nonnull %i.e, i32 noundef 2, ptr noundef %i.fg, i32 noundef %i.fj) #17 ; 3 uses
  store i32 %i.fk, ptr %i.a, align 4, !tbaa !3
  %.not230 = icmp eq i32 %i.fk, 0
  br i1 %.not230, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.fl = load ptr, ptr %i.eo, align 8, !tbaa !501
  %i.fm = load ptr, ptr %i.ev, align 8, !tbaa !503
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.fe
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !152
  %i.fp = load ptr, ptr %i.ey, align 8, !tbaa !507
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.fe
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3
  %i.fs = call i32 %i.fl(ptr noundef nonnull %i.e, i32 noundef 3, ptr noundef %i.fo, i32 noundef %i.fr) #17 ; 3 uses
  store i32 %i.fs, ptr %i.a, align 4, !tbaa !3
  %.not231 = icmp eq i32 %i.fs, 0
  br i1 %.not231, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !501
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 4 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !503
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !152
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 4 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !507
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3
  %i.gb = call i32 %i.fu(ptr noundef nonnull %i.d, i32 noundef %.0185315, ptr noundef %i.fx, i32 noundef %i.ga) #17 ; 3 uses
  store i32 %i.gb, ptr %i.a, align 4, !tbaa !3
  %.not232 = icmp eq i32 %i.gb, 0
  br i1 %.not232, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !501
  %i.ge = load ptr, ptr %i.fv, align 8, !tbaa !503
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !152
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !507
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = call i32 %i.gd(ptr noundef nonnull %i.c, i32 noundef %.0185315, ptr noundef %i.gg, i32 noundef %i.gj) #17 ; 3 uses
  store i32 %i.gk, ptr %i.a, align 4, !tbaa !3
  %.not233 = icmp eq i32 %i.gk, 0
  br i1 %.not233, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.gl = load ptr, ptr %i.ft, align 8, !tbaa !501
  %i.gm = load ptr, ptr %i.fv, align 8, !tbaa !503
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !152
  %i.gp = load ptr, ptr %i.fy, align 8, !tbaa !507
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !3
  %i.gs = call i32 %i.gl(ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef %i.go, i32 noundef %i.gr) #17 ; 3 uses
  store i32 %i.gs, ptr %i.a, align 4, !tbaa !3
  %.not234 = icmp eq i32 %i.gs, 0
  br i1 %.not234, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.gt = load ptr, ptr %i.gc, align 8, !tbaa !501
  %i.gu = load ptr, ptr %i.fv, align 8, !tbaa !503
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !152
  %i.gx = load ptr, ptr %i.fy, align 8, !tbaa !507
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3
  %i.ha = call i32 %i.gt(ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef %i.gw, i32 noundef %i.gz) #17 ; 2 uses
  %.not235 = icmp eq i32 %i.ha, 0
  br i1 %.not235, label %.thread281, label %.loopexit

bb.ap:                                            ; preds = %.thread271.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.b, ptr noundef nonnull align 1 dereferenceable(5) @__const.parse_charstrings.notdef_glyph, i64 5, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !501
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !503
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !152
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !507
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hj = call i32 %i.hc(ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef %i.hf, i32 noundef %i.hi) #17 ; 3 uses
  store i32 %i.hj, ptr %i.a, align 4, !tbaa !3
  %.not222 = icmp eq i32 %i.hj, 0
  br i1 %.not222, label %bb.aq, label %.thread296

bb.aq:                                            ; preds = %bb.ap
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !501
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !503
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !152
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !507
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !3
  %i.hr = call i32 %i.hk(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef %i.hn, i32 noundef %i.hq) #17 ; 3 uses
  store i32 %i.hr, ptr %i.a, align 4, !tbaa !3
  %.not223 = icmp eq i32 %i.hr, 0
  br i1 %.not223, label %bb.ar, label %.thread296

bb.ar:                                            ; preds = %bb.aq
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !501
  %i.hu = call i32 %i.ht(ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef 8) #17 ; 3 uses
  store i32 %i.hu, ptr %i.a, align 4, !tbaa !3
  %.not224 = icmp eq i32 %i.hu, 0
  br i1 %.not224, label %bb.as, label %.thread296

bb.as:                                            ; preds = %bb.ar
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !501
  %i.hx = call i32 %i.hw(ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 5) #17 ; 3 uses
  store i32 %i.hx, ptr %i.a, align 4, !tbaa !3
  %.not225 = icmp eq i32 %i.hx, 0
  br i1 %.not225, label %bb.at, label %.thread296

bb.at:                                            ; preds = %bb.as
  %i.hy = load ptr, ptr %i.hs, align 8, !tbaa !501
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !503
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !152
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !507
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !3
  %i.if = call i32 %i.hy(ptr noundef nonnull %i.d, i32 noundef %.0191320, ptr noundef %i.ib, i32 noundef %i.ie) #17 ; 3 uses
  store i32 %i.if, ptr %i.a, align 4, !tbaa !3
  %.not226 = icmp eq i32 %i.if, 0
  br i1 %.not226, label %bb.au, label %.thread296

bb.au:                                            ; preds = %bb.at
  %i.ig = load ptr, ptr %i.hv, align 8, !tbaa !501
  %i.ih = load ptr, ptr %i.hz, align 8, !tbaa !503
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !152
  %i.ik = load ptr, ptr %i.ic, align 8, !tbaa !507
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = call i32 %i.ig(ptr noundef nonnull %i.c, i32 noundef %.0191320, ptr noundef %i.ij, i32 noundef %i.im) #17 ; 2 uses
  %.not227 = icmp eq i32 %i.in, 0
  br i1 %.not227, label %bb.av, label %.thread296

.thread296:                                       ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au
  %i.io = phi i32 [ %i.hj, %bb.ap ], [ %i.hr, %bb.aq ], [ %i.hu, %bb.ar ], [ %i.hx, %bb.as ], [ %i.if, %bb.at ], [ %i.in, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.loopexit

bb.av:                                            ; preds = %bb.au
  %i.ip = load i32, ptr %i.ab, align 8, !tbaa !121
  %i.iq = add nsw i32 %i.ip, 1
  store i32 %i.iq, ptr %i.ab, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.thread281

.loopexit.loopexit.sink.split:                    ; preds = %bb.ab, %bb.r
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.x, %bb.ac, %bb.af, %.loopexit.loopexit.sink.split
  %.pre343 = load i32, ptr %i.a, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %.thread271, %bb.h, %bb.a, %.loopexit.loopexit, %.thread296, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.g, %bb.f, %bb.e
  %i.ir = phi i32 [ %.pre343, %.loopexit.loopexit ], [ %i.io, %.thread296 ], [ 3, %bb.a ], [ %i.ha, %bb.ao ], [ %i.gs, %bb.an ], [ %i.gk, %bb.am ], [ %i.gb, %bb.al ], [ %i.fs, %bb.ak ], [ %i.fk, %bb.aj ], [ %i.fb, %bb.ai ], [ %i.et, %bb.ah ], [ %i.am, %bb.g ], [ %i.aj, %bb.f ], [ %i.ag, %bb.e ], [ 3, %.thread271 ], [ 3, %bb.h ], [ 3, %.thread ]
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.ir, ptr %i.is, align 8, !tbaa !100
  br label %.thread281

.thread281:                                       ; preds = %bb.p, %read_binary_data.exit, %bb.v, %.thread.i, %bb.av, %bb.ag, %bb.ao, %bb.b, %bb.c, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @parse_private(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 708 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !481
  %i.c = or i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !481
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_blend_design_positions(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %2 = alloca [16 x %struct.T1_TokenRec_], align 16 ; 4 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 10 uses
  %i.c = alloca [16 x ptr], align 16              ; 13 uses
  %3 = alloca [4 x %struct.T1_TokenRec_], align 16 ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !265  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store ptr null, ptr %i.c, align 16, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !508
  call void %i.h(ptr noundef %1, ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull %i.a) #17
  %i.i = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 162, ptr %i.b, align 4, !tbaa !3
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.i, -17
  %or.cond = icmp ult i32 %i.k, -16
  br i1 %or.cond, label %bb.d, label %.lr.ph77

bb.d:                                             ; preds = %bb.c
  store i32 3, ptr %i.b, align 4, !tbaa !3
  br label %.loopexit

.lr.ph77:                                         ; preds = %bb.c
  %i.l = load ptr, ptr %1, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph77, %._crit_edge
  %i.p = phi ptr [ null, %.lr.ph77 ], [ %i.bb, %._crit_edge ] ; 3 uses
  %indvars.iv86 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next87, %._crit_edge ] ; 4 uses
  %.05975 = phi i32 [ 0, %.lr.ph77 ], [ %.1, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv86 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !509
  store ptr %i.r, ptr %1, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !511
  store ptr %i.t, ptr %i.m, align 8, !tbaa !93
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !508
  call void %i.u(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull %i.d) #17
  %i.v = icmp eq i64 %indvars.iv86, 0
  %i.w = load i32, ptr %i.d, align 4, !tbaa !3    ; 7 uses
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = add i32 %i.w, -5
  %or.cond3 = icmp ult i32 %i.x, -4
  br i1 %or.cond3, label %.critedge.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.a, align 4, !tbaa !3
  %i.z = call fastcc i32 @t1_allocate_blend(ptr noundef %0, i32 noundef %i.y, i32 noundef %i.w) ; 2 uses
  store i32 %i.z, ptr %i.b, align 4, !tbaa !3
  %.not68 = icmp eq i32 %i.z, 0
  br i1 %.not68, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ab = mul nsw i32 %i.aa, %i.w
  %i.ac = sext i32 %i.ab to i64
  %i.ad = call ptr @ft_mem_qrealloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef %i.ac, ptr noundef null, ptr noundef nonnull %i.b) #17 ; 8 uses
  store ptr %i.ad, ptr %i.c, align 16, !tbaa !116
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !3
  %.not69 = icmp eq i32 %i.ae, 0
  br i1 %.not69, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.h
  %i.af = load i32, ptr %i.a, align 4, !tbaa !3   ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %.lr.ph.preheader, label %.loopexit70thread-pre-split

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ah = zext nneg i32 %i.w to i64               ; 5 uses
  %wide.trip.count = zext nneg i32 %i.af to i64
  %i.ai = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.aj = add nsw i32 %i.af, -2
  %i.ak = icmp ult i32 %i.aj, 3
  br i1 %i.ak, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ai, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.al = mul nuw nsw i64 %indvars.iv, %i.ah
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.am, ptr %i.an, align 8, !tbaa !116
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = mul nuw nsw i64 %indvars.iv.next, %i.ah
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !116
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ar = mul nuw nsw i64 %indvars.iv.next.1, %i.ah
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.1
  store ptr %i.as, ptr %i.at, align 8, !tbaa !116
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.au = mul nuw nsw i64 %indvars.iv.next.2, %i.ah
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.2
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !116
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit70thread-pre-split.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !512

bb.i:                                             ; preds = %bb.e
  %.not67 = icmp eq i32 %i.w, %.05975
  br i1 %.not67, label %.loopexit70, label %.critedge.sink.split

.loopexit70thread-pre-split.loopexit.unr-lcssa:   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit70thread-pre-split, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit70thread-pre-split.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit70thread-pre-split.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.ax = mul nuw nsw i64 %indvars.iv.epil, %i.ah
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ax
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.epil
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !116
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit70thread-pre-split, label %.lr.ph.epil, !llvm.loop !513

.loopexit70thread-pre-split:                      ; preds = %.loopexit70thread-pre-split.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.pr = load i32, ptr %i.d, align 4, !tbaa !3
  br label %.loopexit70

.loopexit70:                                      ; preds = %.loopexit70thread-pre-split, %bb.i
  %i.ba = phi i32 [ %.pr, %.loopexit70thread-pre-split ], [ %i.w, %bb.i ]
  %i.bb = phi ptr [ %i.ad, %.loopexit70thread-pre-split ], [ %i.p, %bb.i ] ; 2 uses
  %.1 = phi i32 [ %i.w, %.loopexit70thread-pre-split ], [ %.05975, %bb.i ]
  %i.bc = icmp sgt i32 %i.ba, 0
  br i1 %i.bc, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %.loopexit70
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv86
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph73, %bb.j
  %indvars.iv83 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next84, %bb.j ] ; 3 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv83 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !509
  store ptr %i.bf, ptr %1, align 8, !tbaa !92
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !511
  store ptr %i.bh, ptr %i.m, align 8, !tbaa !93
  %i.bi = load ptr, ptr %i.o, align 8, !tbaa !514
  %i.bj = call i64 %i.bi(ptr noundef nonnull %1, i32 noundef 0) #17
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !116
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv83
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !107
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.bm = load i32, ptr %i.d, align 4, !tbaa !3
  %i.bn = sext i32 %i.bm to i64
end_hunk_0
