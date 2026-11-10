Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jidctint-12?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@jpeg12_idct_islow:bb.a
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !39
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.0264273, i64 96
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !39
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.0264273, i64 112
  %i.am = load i16, ptr %i.al, align 2, !tbaa !39
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.ao = load i16, ptr %.0264273, align 2, !tbaa !39
  %i.ap = sext i16 %i.ao to i32
  %i.aq = load i32, ptr %.0262274, align 4, !tbaa !40
  %.tr = mul nsw i32 %i.r, %i.ap
  %i.ar = mul i32 %.tr, %i.aq                     ; 8 uses
  store i32 %i.ar, ptr %.0260275, align 4, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %.0260275, i64 32
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %.0260275, i64 64
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %.0260275, i64 96
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !40
  %i.av = getelementptr inbounds nuw i8, ptr %.0260275, i64 128
  store i32 %i.ar, ptr %i.av, align 4, !tbaa !40
  %i.aw = getelementptr inbounds nuw i8, ptr %.0260275, i64 160
  store i32 %i.ar, ptr %i.aw, align 4, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %.0260275, i64 192
  store i32 %i.ar, ptr %i.ax, align 4, !tbaa !40
  br label %bb.k

._crit_edge:                                      ; preds = %bb.d, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ay = phi i16 [ %i.x, %bb.d ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.az = sext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %.0262274, i64 64
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !40
  %i.bc = mul nsw i32 %i.bb, %i.az
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i64 %i.n, %i.bd                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0264273, i64 96
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !39
  %i.bh = sext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0262274, i64 192
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !40
  %i.bk = mul nsw i32 %i.bj, %i.bh
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i64 %i.n, %i.bl                 ; 2 uses
  %i.bn = add nsw i64 %i.bm, %i.be
  %i.bo = mul nsw i64 %i.bn, 4433                 ; 2 uses
  %i.bp = mul nsw i64 %i.bm, -15137
  %i.bq = add nsw i64 %i.bo, %i.bp                ; 2 uses
  %i.br = mul nsw i64 %i.be, 6270
  %i.bs = add nsw i64 %i.bo, %i.br                ; 2 uses
  %i.bt = load i16, ptr %.0264273, align 2, !tbaa !39
  %i.bu = sext i16 %i.bt to i32
  %i.bv = load i32, ptr %.0262274, align 4, !tbaa !40
  %i.bw = mul nsw i32 %i.bv, %i.bu
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %i.n, %i.bx                 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0264273, i64 64
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !39
  %i.cb = sext i16 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0262274, i64 128
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !40
  %i.ce = mul nsw i32 %i.cd, %i.cb
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul nsw i64 %i.n, %i.cf                 ; 2 uses
  %i.ch = add nsw i64 %i.cg, %i.by
  %i.ci = shl nsw i64 %i.ch, 13                   ; 2 uses
  %i.cj = sub nsw i64 %i.by, %i.cg
  %i.ck = shl nsw i64 %i.cj, 13                   ; 2 uses
  %i.cl = add nsw i64 %i.ci, %i.bs
  %i.cm = sub nsw i64 %i.ci, %i.bs
  %i.cn = add nsw i64 %i.ck, %i.bq
  %i.co = sub nsw i64 %i.ck, %i.bq
  %i.cp = getelementptr inbounds nuw i8, ptr %.0264273, i64 112
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !39
  %i.cr = sext i16 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %.0262274, i64 224
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !40
  %i.cu = mul nsw i32 %i.ct, %i.cr
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul nsw i64 %i.n, %i.cv                 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0264273, i64 80
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !39
  %i.cz = sext i16 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.0262274, i64 160
  %i.db = load i32, ptr %i.da, align 4, !tbaa !40
  %i.dc = mul nsw i32 %i.db, %i.cz
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.n, %i.dd                 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0264273, i64 48
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !39
  %i.dh = sext i16 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %.0262274, i64 96
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !40
  %i.dk = mul nsw i32 %i.dj, %i.dh
  %i.dl = sext i32 %i.dk to i64
  %i.dm = mul nsw i64 %i.n, %i.dl                 ; 3 uses
  %i.dn = sext i16 %i.u to i32
  %i.do = getelementptr inbounds nuw i8, ptr %.0262274, i64 32
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !40
  %i.dq = mul nsw i32 %i.dp, %i.dn
  %i.dr = sext i32 %i.dq to i64
  %i.ds = mul nsw i64 %i.n, %i.dr                 ; 3 uses
  %i.dt = add nsw i64 %i.ds, %i.cw
  %i.du = add nsw i64 %i.dm, %i.de
  %i.dv = add nsw i64 %i.dm, %i.cw                ; 2 uses
  %i.dw = add nsw i64 %i.ds, %i.de                ; 2 uses
  %i.dx = add nsw i64 %i.dw, %i.dv
  %i.dy = mul nsw i64 %i.dx, 9633                 ; 2 uses
  %i.dz = mul nsw i64 %i.cw, 2446
  %i.ea = mul nsw i64 %i.de, 16819
  %i.eb = mul nsw i64 %i.dm, 25172
  %i.ec = mul nsw i64 %i.ds, 12299
  %i.ed = mul nsw i64 %i.dt, -7373                ; 2 uses
  %i.ee = mul nsw i64 %i.du, -20995               ; 2 uses
  %i.ef = mul nsw i64 %i.dv, -16069
  %i.eg = mul nsw i64 %i.dw, -3196
  %i.eh = add nsw i64 %i.dy, %i.ef                ; 2 uses
  %i.ei = add nsw i64 %i.dy, %i.eg                ; 2 uses
  %i.ej = add nsw i64 %i.ed, %i.dz
  %i.ek = add nsw i64 %i.ej, %i.eh                ; 2 uses
  %i.el = add nsw i64 %i.ee, %i.ea
  %i.em = add nsw i64 %i.el, %i.ei                ; 2 uses
  %i.en = add nsw i64 %i.ee, %i.eb
  %i.eo = add nsw i64 %i.en, %i.eh                ; 2 uses
  %i.ep = add nsw i64 %i.ed, %i.ec
  %i.eq = add nsw i64 %i.ep, %i.ei                ; 2 uses
  %i.er = add nsw i64 %i.cl, 2048                 ; 2 uses
  %i.es = add nsw i64 %i.er, %i.eq
  %i.et = lshr i64 %i.es, 12
  %i.eu = trunc i64 %i.et to i32
  store i32 %i.eu, ptr %.0260275, align 4, !tbaa !40
  %i.ev = sub nsw i64 %i.er, %i.eq
  %i.ew = lshr i64 %i.ev, 12
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %.0260275, i64 224
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !40
  %i.ez = add nsw i64 %i.cn, 2048                 ; 2 uses
  %i.fa = add nsw i64 %i.ez, %i.eo
  %i.fb = lshr i64 %i.fa, 12
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %.0260275, i64 32
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !40
  %i.fe = sub nsw i64 %i.ez, %i.eo
  %i.ff = lshr i64 %i.fe, 12
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %.0260275, i64 192
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !40
  %i.fi = add nsw i64 %i.co, 2048                 ; 2 uses
  %i.fj = add nsw i64 %i.fi, %i.em
  %i.fk = lshr i64 %i.fj, 12
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %.0260275, i64 64
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !40
  %i.fn = sub nsw i64 %i.fi, %i.em
  %i.fo = lshr i64 %i.fn, 12
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %.0260275, i64 160
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !40
  %i.fr = add nsw i64 %i.cm, 2048                 ; 2 uses
  %i.fs = add nsw i64 %i.fr, %i.ek
  %i.ft = lshr i64 %i.fs, 12
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %.0260275, i64 96
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !40
  %i.fw = sub nsw i64 %i.fr, %i.ek
  %i.fx = lshr i64 %i.fw, 12
  %i.fy = trunc i64 %i.fx to i32
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %.sink285 = phi i64 [ 128, %._crit_edge ], [ 224, %bb.j ]
  %.sink = phi i32 [ %i.fy, %._crit_edge ], [ %i.ar, %bb.j ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.0260275, i64 %.sink285
  store i32 %.sink, ptr %i.fz, align 4, !tbaa !40
  %.1261 = getelementptr inbounds nuw i8, ptr %.0260275, i64 4
  %.1263 = getelementptr inbounds nuw i8, ptr %.0262274, i64 4
  %.1265 = getelementptr inbounds nuw i8, ptr %.0264273, i64 2
  %i.ga = add nsw i32 %.0276, -1
  %i.gb = icmp samesign ugt i32 %.0276, 1
  br i1 %i.gb, label %bb.d, label %.preheader, !llvm.loop !44

bb.l:                                             ; preds = %.preheader, %bb.s
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.2277 = phi ptr [ %i.a, %.preheader ], [ %.3, %bb.s ] ; 15 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !43
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.s ; 12 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.2277, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !40 ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  %i.gi = getelementptr inbounds nuw i8, ptr %.2277, i64 8
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !40 ; 2 uses
  %i.gk = icmp eq i32 %i.gj, 0
  %or.cond286 = select i1 %i.gh, i1 %i.gk, i1 false
  br i1 %or.cond286, label %bb.m, label %._crit_edge280

bb.m:                                             ; preds = %bb.l
  %i.gl = getelementptr inbounds nuw i8, ptr %.2277, i64 12
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !40
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.n, label %._crit_edge280

bb.n:                                             ; preds = %bb.m
  %i.go = getelementptr inbounds nuw i8, ptr %.2277, i64 16
  %i.gp = load i32, ptr %i.go, align 16, !tbaa !40
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.o, label %._crit_edge280

bb.o:                                             ; preds = %bb.n
  %i.gr = getelementptr inbounds nuw i8, ptr %.2277, i64 20
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !40
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.p, label %._crit_edge280

bb.p:                                             ; preds = %bb.o
  %i.gu = getelementptr inbounds nuw i8, ptr %.2277, i64 24
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !40
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.q, label %._crit_edge280

bb.q:                                             ; preds = %bb.p
  %i.gx = getelementptr inbounds nuw i8, ptr %.2277, i64 28
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !40
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.r, label %._crit_edge280

bb.r:                                             ; preds = %bb.q
  %i.ha = load i32, ptr %.2277, align 16, !tbaa !40
  %i.hb = add i32 %i.ha, 8
  %i.hc = lshr i32 %i.hb, 4
  %i.hd = and i32 %i.hc, 16383
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.he
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !39 ; 5 uses
  %i.hh = insertelement <4 x i16> poison, i16 %i.hg, i64 0
  %i.hi = shufflevector <4 x i16> %i.hh, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.hi, ptr %i.ge, align 2, !tbaa !39
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  store i16 %i.hg, ptr %i.hj, align 2, !tbaa !39
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ge, i64 10
  store i16 %i.hg, ptr %i.hk, align 2, !tbaa !39
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i16 %i.hg, ptr %i.hl, align 2, !tbaa !39
  br label %bb.s

._crit_edge280:                                   ; preds = %bb.l, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %i.hm = phi i32 [ %i.gj, %bb.l ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ]
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.2277, i64 24
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !40
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
  %i.hr = add nuw nsw i64 %i.hq, %i.hn
  %i.hs = mul nuw nsw i64 %i.hr, 4433             ; 2 uses
  %i.ht = mul nsw i64 %i.hq, -15137
  %i.hu = add nsw i64 %i.hs, %i.ht                ; 2 uses
  %i.hv = mul nuw nsw i64 %i.hn, 6270
  %i.hw = add nuw nsw i64 %i.hs, %i.hv            ; 2 uses
  %i.hx = load i32, ptr %.2277, align 16, !tbaa !40
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.2277, i64 16
  %i.ia = load i32, ptr %i.hz, align 16, !tbaa !40
  %i.ib = sext i32 %i.ia to i64                   ; 2 uses
  %i.ic = add nsw i64 %i.ib, %i.hy
  %i.id = shl nsw i64 %i.ic, 13                   ; 2 uses
  %i.ie = sub nsw i64 %i.hy, %i.ib
  %i.if = shl nsw i64 %i.ie, 13                   ; 2 uses
  %i.ig = add nsw i64 %i.id, %i.hw
  %i.ih = sub nsw i64 %i.id, %i.hw
  %i.ii = add nsw i64 %i.if, %i.hu
  %i.ij = sub nsw i64 %i.if, %i.hu
  %i.ik = getelementptr inbounds nuw i8, ptr %.2277, i64 28
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !40
  %i.im = zext i32 %i.il to i64                   ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.2277, i64 20
  %i.io = load i32, ptr %i.in, align 4, !tbaa !40
  %i.ip = zext i32 %i.io to i64                   ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.2277, i64 12
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !40
  %i.is = zext i32 %i.ir to i64                   ; 3 uses
  %i.it = zext i32 %i.gg to i64                   ; 3 uses
  %i.iu = add nuw nsw i64 %i.im, %i.it
  %i.iv = add nuw nsw i64 %i.is, %i.ip
  %i.iw = add nuw nsw i64 %i.is, %i.im            ; 2 uses
  %i.ix = add nuw nsw i64 %i.ip, %i.it            ; 2 uses
  %i.iy = add nuw nsw i64 %i.iw, %i.ix
  %i.iz = mul nuw nsw i64 %i.iy, 9633             ; 2 uses
  %i.ja = mul nuw nsw i64 %i.im, 2446
  %i.jb = mul nuw nsw i64 %i.ip, 16819
  %i.jc = mul nuw nsw i64 %i.is, 25172
  %i.jd = mul nuw nsw i64 %i.it, 12299
  %i.je = mul nsw i64 %i.iu, -7373                ; 2 uses
  %i.jf = mul nsw i64 %i.iv, -20995               ; 2 uses
  %i.jg = mul nsw i64 %i.iw, -16069
  %i.jh = mul nsw i64 %i.ix, -3196
  %i.ji = add nsw i64 %i.iz, %i.jg                ; 2 uses
  %i.jj = add nsw i64 %i.iz, %i.jh                ; 2 uses
  %i.jk = add nsw i64 %i.je, %i.ja
  %i.jl = add nsw i64 %i.jk, %i.ji                ; 2 uses
  %i.jm = add nsw i64 %i.jf, %i.jb
  %i.jn = add nsw i64 %i.jm, %i.jj                ; 2 uses
  %i.jo = add nsw i64 %i.jf, %i.jc
  %i.jp = add nsw i64 %i.jo, %i.ji                ; 2 uses
  %i.jq = add nsw i64 %i.je, %i.jd
  %i.jr = add nsw i64 %i.jq, %i.jj                ; 2 uses
  %i.js = add nsw i64 %i.ig, 65536                ; 2 uses
  %i.jt = add nsw i64 %i.js, %i.jr
  %i.ju = lshr i64 %i.jt, 17
  %i.jv = and i64 %i.ju, 16383
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jv
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !39
  store i16 %i.jx, ptr %i.ge, align 2, !tbaa !39
  %i.jy = sub nsw i64 %i.js, %i.jr
  %i.jz = lshr i64 %i.jy, 17
  %i.ka = and i64 %i.jz, 16383
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !39
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ge, i64 14
  store i16 %i.kc, ptr %i.kd, align 2, !tbaa !39
  %i.ke = add nsw i64 %i.ii, 65536                ; 2 uses
  %i.kf = add nsw i64 %i.ke, %i.jp
  %i.kg = lshr i64 %i.kf, 17
  %i.kh = and i64 %i.kg, 16383
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.kh
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !39
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  store i16 %i.kj, ptr %i.kk, align 2, !tbaa !39
  %i.kl = sub nsw i64 %i.ke, %i.jp
  %i.km = lshr i64 %i.kl, 17
  %i.kn = and i64 %i.km, 16383
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.kn
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !39
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !39
  %i.kr = add nsw i64 %i.ij, 65536                ; 2 uses
  %i.ks = add nsw i64 %i.kr, %i.jn
  %i.kt = lshr i64 %i.ks, 17
  %i.ku = and i64 %i.kt, 16383
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !39
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !39
  %i.ky = sub nsw i64 %i.kr, %i.jn
  %i.kz = lshr i64 %i.ky, 17
  %i.la = and i64 %i.kz, 16383
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !39
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ge, i64 10
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !39
  %i.le = add nsw i64 %i.ih, 65536                ; 2 uses
  %i.lf = add nsw i64 %i.le, %i.jl
  %i.lg = lshr i64 %i.lf, 17
  %i.lh = and i64 %i.lg, 16383
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !39
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ge, i64 6
  store i16 %i.lj, ptr %i.lk, align 2, !tbaa !39
  %i.ll = sub nsw i64 %i.le, %i.jl
  %i.lm = lshr i64 %i.ll, 17
  %i.ln = and i64 %i.lm, 16383
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !39
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge280, %bb.r
  %.sink289 = phi i64 [ 8, %._crit_edge280 ], [ 14, %bb.r ]
  %.sink287 = phi i16 [ %i.lp, %._crit_edge280 ], [ %i.hg, %bb.r ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.sink289
  store i16 %.sink287, ptr %i.lq, align 2, !tbaa !39
  %.3 = getelementptr inbounds nuw i8, ptr %.2277, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.t, label %bb.l, !llvm.loop !45

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_7x7(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [49 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = shl nuw nsw i64 %i.n, 13
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.r = zext i32 %4 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.d
  %.0187 = phi i32 [ 0, %bb.c ], [ %i.eb, %bb.d ]
  %.0175186 = phi ptr [ %i.a, %bb.c ], [ %i.ee, %bb.d ] ; 8 uses
  %.0177185 = phi ptr [ %i.p, %bb.c ], [ %i.ed, %bb.d ] ; 8 uses
  %.0178184 = phi ptr [ %2, %bb.c ], [ %i.ec, %bb.d ] ; 8 uses
  %i.s = load i16, ptr %.0178184, align 2, !tbaa !39
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %.0177185, align 4, !tbaa !40
  %i.v = mul nsw i32 %i.u, %i.t
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.q, %i.w
  %i.y = or disjoint i64 %i.x, 2048               ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0178184, i64 32
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !39
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0177185, i64 64
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = mul nsw i32 %i.ad, %i.ab
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.n, %i.af                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0178184, i64 64
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !39
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0177185, i64 128
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an                 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0178184, i64 96
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.0177185, i64 192
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = mul nsw i32 %i.at, %i.ar
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.n, %i.av                 ; 3 uses
  %i.ax = sub nsw i64 %i.ao, %i.aw
  %i.ay = mul nsw i64 %i.ax, 7223                 ; 2 uses
  %i.az = sub nsw i64 %i.ag, %i.ao
  %i.ba = mul nsw i64 %i.az, 2578                 ; 2 uses
  %.neg181 = mul nsw i64 %i.ao, -15083
  %i.bb = add nsw i64 %.neg181, %i.y
  %i.bc = add nsw i64 %i.bb, %i.ba
  %i.bd = add nsw i64 %i.bc, %i.ay                ; 2 uses
end_hunk_0
begin_hunk_1_@jpeg12_idct_7x7:bb.a
  %i.gl = lshr i64 %i.gk, 17
  %i.gm = and i64 %i.gl, 16383
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !39
  store i16 %i.go, ptr %i.eh, align 2, !tbaa !39
  %i.gp = sub nsw i64 %i.fh, %i.gg
  %i.gq = lshr i64 %i.gp, 17
  %i.gr = and i64 %i.gq, 16383
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !39
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  store i16 %i.gt, ptr %i.gu, align 2, !tbaa !39
  %i.gv = add nsw i64 %i.gd, %i.fb
  %i.gw = lshr i64 %i.gv, 17
  %i.gx = and i64 %i.gw, 16383
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !39
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !39
  %i.hb = sub nsw i64 %i.fb, %i.gd
  %i.hc = lshr i64 %i.hb, 17
  %i.hd = and i64 %i.hc, 16383
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !39
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eh, i64 10
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !39
  %i.hh = add nsw i64 %i.gj, %i.fj
  %i.hi = lshr i64 %i.hh, 17
  %i.hj = and i64 %i.hi, 16383
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !39
  %i.hm = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !39
  %i.hn = sub nsw i64 %i.fj, %i.gj
  %i.ho = lshr i64 %i.hn, 17
  %i.hp = and i64 %i.ho, 16383
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !39
  %i.hs = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !39
  %i.ht = lshr i64 %i.fl, 17
  %i.hu = and i64 %i.ht, 16383
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !39
  %i.hx = getelementptr inbounds nuw i8, ptr %i.eh, i64 6
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !39
  %i.hy = getelementptr inbounds nuw i8, ptr %.1176188, i64 28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond191.not, label %bb.f, label %bb.e, !llvm.loop !47

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_6x6(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [36 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = shl nuw nsw i64 %i.n, 13
  %i.r = mul nuw nsw i64 %i.n, 10033
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.s = zext i32 %4 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.d
  %.0142 = phi i32 [ 0, %bb.c ], [ %i.da, %bb.d ]
  %.0128141 = phi ptr [ %i.a, %bb.c ], [ %i.dd, %bb.d ] ; 7 uses
  %.0130140 = phi ptr [ %i.p, %bb.c ], [ %i.dc, %bb.d ] ; 7 uses
  %.0131139 = phi ptr [ %2, %bb.c ], [ %i.db, %bb.d ] ; 7 uses
  %i.t = load i16, ptr %.0131139, align 2, !tbaa !39
  %i.u = sext i16 %i.t to i32
  %i.v = load i32, ptr %.0130140, align 4, !tbaa !40
  %i.w = mul nsw i32 %i.v, %i.u
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.q, %i.x
  %i.z = or disjoint i64 %i.y, 2048               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0131139, i64 64
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !39
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %.0130140, i64 128
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  %i.af = mul nsw i32 %i.ae, %i.ac
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.n, %i.ag                 ; 2 uses
  %i.ai = mul nsw i64 %i.ah, 5793
  %i.aj = add nsw i64 %i.ai, %i.z                 ; 2 uses
  %.neg132 = mul nsw i64 %i.ah, -11586
  %i.ak = add nsw i64 %.neg132, %i.z
  %i.al = ashr i64 %i.ak, 12                      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0131139, i64 32
  %i.an = load i16, ptr %i.am, align 2, !tbaa !39
  %i.ao = sext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0130140, i64 64
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !40
  %i.ar = mul nsw i32 %i.aq, %i.ao
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.r, %i.as                 ; 2 uses
  %i.au = add nsw i64 %i.aj, %i.at                ; 2 uses
  %i.av = sub nsw i64 %i.aj, %i.at                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0131139, i64 16
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !39
  %i.ay = sext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.0130140, i64 32
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !40
  %i.bb = mul nsw i32 %i.ba, %i.ay
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.n, %i.bc                 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0131139, i64 48
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !39
  %i.bg = sext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.0130140, i64 96
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !40
  %i.bj = mul nsw i32 %i.bi, %i.bg
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %i.n, %i.bk                 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0131139, i64 80
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !39
  %i.bo = sext i16 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %.0130140, i64 160
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !40
  %i.br = mul nsw i32 %i.bq, %i.bo
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul nsw i64 %i.n, %i.bs                 ; 3 uses
  %i.bu = add nsw i64 %i.bt, %i.bd
  %i.bv = mul nsw i64 %i.bu, 2998                 ; 2 uses
  %i.bw = add nsw i64 %i.bl, %i.bd
  %i.bx = shl nsw i64 %i.bw, 13
  %i.by = add nsw i64 %i.bv, %i.bx                ; 2 uses
  %i.bz = sub nsw i64 %i.bt, %i.bl
  %i.ca = shl nsw i64 %i.bz, 13
  %i.cb = add nsw i64 %i.bv, %i.ca                ; 2 uses
  %i.cc = add nsw i64 %i.bl, %i.bt
  %i.cd = sub nsw i64 %i.bd, %i.cc
  %i.ce = shl nsw i64 %i.cd, 1                    ; 2 uses
  %i.cf = add nsw i64 %i.by, %i.au
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = trunc i64 %i.cg to i32
  store i32 %i.ch, ptr %.0128141, align 4, !tbaa !40
  %i.ci = sub nsw i64 %i.au, %i.by
  %i.cj = lshr i64 %i.ci, 12
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %.0128141, i64 120
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !40
  %i.cm = add nsw i64 %i.ce, %i.al
  %i.cn = trunc i64 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %.0128141, i64 24
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !40
  %i.cp = sub nsw i64 %i.al, %i.ce
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.0128141, i64 96
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !40
  %i.cs = add nsw i64 %i.cb, %i.av
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %.0128141, i64 48
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !40
  %i.cw = sub nsw i64 %i.av, %i.cb
  %i.cx = lshr i64 %i.cw, 12
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %.0128141, i64 72
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !40
  %i.da = add nuw nsw i32 %.0142, 1               ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0131139, i64 2
  %i.dc = getelementptr inbounds nuw i8, ptr %.0130140, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.0128141, i64 4
  %exitcond.not = icmp eq i32 %i.da, 6
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !48

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1129143 = phi ptr [ %i.a, %.preheader ], [ %i.ga, %bb.e ] ; 7 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !43
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.s ; 6 uses
  %i.dh = load i32, ptr %.1129143, align 8, !tbaa !40
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 13
  %i.dk = add nsw i64 %i.dj, 65536                ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.1129143, i64 16
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !40
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = mul nuw nsw i64 %i.dn, 5793
  %i.dp = add nsw i64 %i.dk, %i.do                ; 2 uses
  %.neg = mul nsw i64 %i.dn, -11586
  %i.dq = add nsw i64 %.neg, %i.dk                ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1129143, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !40
  %i.dt = zext i32 %i.ds to i64
  %i.du = mul nuw nsw i64 %i.dt, 10033            ; 2 uses
  %i.dv = add nsw i64 %i.dp, %i.du                ; 2 uses
  %i.dw = sub nsw i64 %i.dp, %i.du                ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.1129143, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !40
  %i.dz = sext i32 %i.dy to i64                   ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.1129143, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !40
  %i.ec = sext i32 %i.eb to i64                   ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.1129143, i64 20
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !40
  %i.ef = sext i32 %i.ee to i64                   ; 3 uses
  %i.eg = add nsw i64 %i.ef, %i.dz
  %i.eh = mul nsw i64 %i.eg, 2998                 ; 2 uses
  %i.ei = add nsw i64 %i.ec, %i.dz
  %i.ej = shl nsw i64 %i.ei, 13
  %i.ek = add nsw i64 %i.eh, %i.ej                ; 2 uses
  %i.el = sub nsw i64 %i.ef, %i.ec
  %i.em = shl nsw i64 %i.el, 13
  %i.en = add nsw i64 %i.eh, %i.em                ; 2 uses
  %i.eo = add nsw i64 %i.ec, %i.ef
  %i.ep = sub nsw i64 %i.dz, %i.eo
  %i.eq = shl nsw i64 %i.ep, 13                   ; 2 uses
  %i.er = add nsw i64 %i.ek, %i.dv
  %i.es = lshr i64 %i.er, 17
  %i.et = and i64 %i.es, 16383
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !39
  store i16 %i.ev, ptr %i.dg, align 2, !tbaa !39
  %i.ew = sub nsw i64 %i.dv, %i.ek
  %i.ex = lshr i64 %i.ew, 17
  %i.ey = and i64 %i.ex, 16383
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !39
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dg, i64 10
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !39
  %i.fc = add nsw i64 %i.eq, %i.dq
  %i.fd = lshr i64 %i.fc, 17
  %i.fe = and i64 %i.fd, 16383
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !39
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !39
  %i.fi = sub nsw i64 %i.dq, %i.eq
  %i.fj = lshr i64 %i.fi, 17
  %i.fk = and i64 %i.fj, 16383
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !39
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !39
  %i.fo = add nsw i64 %i.en, %i.dw
  %i.fp = lshr i64 %i.fo, 17
  %i.fq = and i64 %i.fp, 16383
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !39
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !39
  %i.fu = sub nsw i64 %i.dw, %i.en
  %i.fv = lshr i64 %i.fu, 17
  %i.fw = and i64 %i.fv, 16383
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !39
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dg, i64 6
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !39
  %i.ga = getelementptr inbounds nuw i8, ptr %.1129143, i64 24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond146.not, label %bb.f, label %bb.e, !llvm.loop !49

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_5x5(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp eq i32 %i.f, 8
  br i1 %i.g, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = load i32, ptr %i.h, align 8, !tbaa !36
  %i.j = icmp eq i32 %i.i, 12
  %i.k = select i1 %i.j, i64 16, i64 1
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.l = phi i64 [ 1, %bb.a ], [ %i.k, %bb.b ]    ; 21 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4096 ; 25 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 25 uses
  %i.p = shl nuw nsw i64 %i.l, 13                 ; 5 uses
  %i.q = load i16, ptr %2, align 2, !tbaa !39
  %i.r = sext i16 %i.q to i32
  %i.s = load i32, ptr %i.o, align 4, !tbaa !40
  %i.t = mul nsw i32 %i.s, %i.r
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.p, %i.u
  %i.w = or disjoint i64 %i.v, 2048               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load i16, ptr %i.x, align 2, !tbaa !39
  %i.z = sext i16 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  %i.ac = mul nsw i32 %i.ab, %i.z
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul nsw i64 %i.l, %i.ad                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !39
  %i.ah = sext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = mul nsw i32 %i.aj, %i.ah
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.l, %i.al                 ; 2 uses
  %i.an = add nsw i64 %i.am, %i.ae
  %i.ao = mul nsw i64 %i.an, 6476                 ; 2 uses
  %i.ap = sub nsw i64 %i.ae, %i.am                ; 2 uses
  %i.aq = mul nsw i64 %i.ap, 2896
  %i.ar = add nsw i64 %i.aq, %i.w                 ; 2 uses
  %i.as = add nsw i64 %i.ar, %i.ao                ; 2 uses
  %i.at = sub nsw i64 %i.ar, %i.ao                ; 2 uses
  %.neg112 = mul i64 %i.ap, 17592186032832
  %i.au = add i64 %.neg112, %i.w
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !39
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !40
  %i.ba = mul nsw i32 %i.az, %i.ax
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.l, %i.bb                 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !39
  %i.bf = sext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !40
  %i.bi = mul nsw i32 %i.bh, %i.bf
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.l, %i.bj                 ; 2 uses
  %i.bl = add nsw i64 %i.bk, %i.bc
  %i.bm = mul nsw i64 %i.bl, 6810                 ; 2 uses
  %i.bn = mul nsw i64 %i.bc, 4209
  %i.bo = add nsw i64 %i.bm, %i.bn                ; 2 uses
  %.neg113 = mul nsw i64 %i.bk, -17828
  %i.bp = add nsw i64 %i.bm, %.neg113             ; 2 uses
  %i.bq = add nsw i64 %i.bo, %i.as
  %i.br = sub nsw i64 %i.as, %i.bo
  %i.bs = add nsw i64 %i.bp, %i.at
  %i.bt = sub nsw i64 %i.at, %i.bp
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bw = load i16, ptr %i.bu, align 2, !tbaa !39
  %i.bx = sext i16 %i.bw to i32
  %i.by = load i32, ptr %i.bv, align 4, !tbaa !40
  %i.bz = mul nsw i32 %i.by, %i.bx
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.p, %i.ca
  %i.cc = or disjoint i64 %i.cb, 2048             ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !39
  %i.cf = sext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !40
  %i.ci = mul nsw i32 %i.ch, %i.cf
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul nsw i64 %i.l, %i.cj                 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 66
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !39
  %i.cn = sext i16 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 132
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !40
  %i.cq = mul nsw i32 %i.cp, %i.cn
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i64 %i.l, %i.cr                 ; 2 uses
  %i.ct = add nsw i64 %i.cs, %i.ck
  %i.cu = mul nsw i64 %i.ct, 6476                 ; 2 uses
  %i.cv = sub nsw i64 %i.ck, %i.cs                ; 2 uses
  %i.cw = mul nsw i64 %i.cv, 2896
  %i.cx = add nsw i64 %i.cw, %i.cc                ; 2 uses
  %i.cy = add nsw i64 %i.cx, %i.cu                ; 2 uses
  %i.cz = sub nsw i64 %i.cx, %i.cu                ; 2 uses
  %.neg112.1 = mul i64 %i.cv, 17592186032832
  %i.da = add i64 %.neg112.1, %i.cc
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !39
  %i.dd = sext i16 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.df = load i32, ptr %i.de, align 4, !tbaa !40
  %i.dg = mul nsw i32 %i.df, %i.dd
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %i.l, %i.dh                 ; 2 uses
end_hunk_1
begin_hunk_2_@jpeg12_idct_3x3:bb.a
  %i.gm = and i64 %i.gl, 16383
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !39
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_9x9(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = shl nuw nsw i64 %i.n, 13
  %i.r = mul nsw i64 %i.n, -10033
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.s = zext i32 %4 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.d
  %.0221 = phi i32 [ 0, %bb.c ], [ %i.es, %bb.d ]
  %.0201220 = phi ptr [ %i.a, %bb.c ], [ %i.ev, %bb.d ] ; 10 uses
  %.0203219 = phi ptr [ %i.p, %bb.c ], [ %i.eu, %bb.d ] ; 9 uses
  %.0204218 = phi ptr [ %2, %bb.c ], [ %i.et, %bb.d ] ; 9 uses
  %i.t = load i16, ptr %.0204218, align 2, !tbaa !39
  %i.u = sext i16 %i.t to i32
  %i.v = load i32, ptr %.0203219, align 4, !tbaa !40
  %i.w = mul nsw i32 %i.v, %i.u
  %i.x = sext i32 %i.w to i64
  %i.y = mul nsw i64 %i.q, %i.x
  %i.z = or disjoint i64 %i.y, 2048               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0204218, i64 32
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !39
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %.0203219, i64 64
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  %i.af = mul nsw i32 %i.ae, %i.ac
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %i.n, %i.ag                 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0204218, i64 64
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !39
  %i.ak = sext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.0203219, i64 128
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.n, %i.ao                 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0204218, i64 96
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !39
  %i.as = sext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %.0203219, i64 192
  %i.au = load i32, ptr %i.at, align 4, !tbaa !40
  %i.av = mul nsw i32 %i.au, %i.as
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %i.n, %i.aw                 ; 2 uses
  %i.ay = mul nsw i64 %i.ax, 5793
  %i.az = add nsw i64 %i.ay, %i.z                 ; 3 uses
  %.neg206 = mul nsw i64 %i.ax, -11586
  %i.ba = add nsw i64 %.neg206, %i.z              ; 2 uses
  %i.bb = sub nsw i64 %i.ah, %i.ap                ; 2 uses
  %i.bc = mul nsw i64 %i.bb, 5793
  %i.bd = add nsw i64 %i.ba, %i.bc                ; 2 uses
  %.neg207 = mul i64 %i.bb, 17592186032830
  %i.be = add i64 %i.ba, %.neg207
  %i.bf = add nsw i64 %i.ap, %i.ah
  %i.bg = mul nsw i64 %i.bf, 10887                ; 2 uses
  %i.bh = mul nsw i64 %i.ah, 8875                 ; 2 uses
  %i.bi = mul nsw i64 %i.ap, 2012                 ; 2 uses
  %i.bj = sub nsw i64 %i.bg, %i.bi
  %i.bk = add nsw i64 %i.bj, %i.az                ; 2 uses
  %i.bl = sub nsw i64 %i.az, %i.bg
  %i.bm = add nsw i64 %i.bl, %i.bh                ; 2 uses
  %i.bn = sub nsw i64 %i.az, %i.bh
  %i.bo = add nsw i64 %i.bn, %i.bi                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0204218, i64 16
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !39
  %i.br = sext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %.0203219, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !40
  %i.bu = mul nsw i32 %i.bt, %i.br
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul nsw i64 %i.n, %i.bv                 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0204218, i64 48
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !39
  %i.bz = sext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.0203219, i64 96
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !40
  %i.cc = mul nsw i32 %i.cb, %i.bz
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.0204218, i64 80
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !39
  %i.cg = sext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %.0203219, i64 160
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !40
  %i.cj = mul nsw i32 %i.ci, %i.cg
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.n, %i.ck                 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0204218, i64 112
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !39
  %i.co = sext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %.0203219, i64 224
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !40
  %i.cr = mul nsw i32 %i.cq, %i.co
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul nsw i64 %i.n, %i.cs                 ; 3 uses
  %i.cu = mul nsw i64 %i.r, %i.cd                 ; 3 uses
  %i.cv = add nsw i64 %i.cl, %i.bw
  %i.cw = mul nsw i64 %i.cv, 7447                 ; 2 uses
  %i.cx = add nsw i64 %i.ct, %i.bw
  %i.cy = mul nsw i64 %i.cx, 3962                 ; 2 uses
  %i.cz = sub nsw i64 %i.cw, %i.cu
  %i.da = add nsw i64 %i.cz, %i.cy                ; 2 uses
  %i.db = sub nsw i64 %i.cl, %i.ct
  %i.dc = mul nsw i64 %i.db, 11409                ; 2 uses
  %i.dd = sub nsw i64 %i.cu, %i.dc
  %i.de = add nsw i64 %i.dd, %i.cw                ; 2 uses
  %i.df = add nsw i64 %i.dc, %i.cu
  %i.dg = add nsw i64 %i.df, %i.cy                ; 2 uses
  %i.dh = add nsw i64 %i.cl, %i.ct
  %i.di = sub nsw i64 %i.bw, %i.dh
  %i.dj = mul nsw i64 %i.di, 10033                ; 2 uses
  %i.dk = add nsw i64 %i.da, %i.bk
  %i.dl = lshr i64 %i.dk, 12
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %.0201220, align 4, !tbaa !40
  %i.dn = sub nsw i64 %i.bk, %i.da
  %i.do = lshr i64 %i.dn, 12
  %i.dp = trunc i64 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %.0201220, i64 256
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !40
  %i.dr = add nsw i64 %i.dj, %i.bd
  %i.ds = lshr i64 %i.dr, 12
  %i.dt = trunc i64 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %.0201220, i64 32
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !40
  %i.dv = sub nsw i64 %i.bd, %i.dj
  %i.dw = lshr i64 %i.dv, 12
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %.0201220, i64 224
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !40
  %i.dz = add nsw i64 %i.de, %i.bm
  %i.ea = lshr i64 %i.dz, 12
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %.0201220, i64 64
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !40
  %i.ed = sub nsw i64 %i.bm, %i.de
  %i.ee = lshr i64 %i.ed, 12
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %.0201220, i64 192
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !40
  %i.eh = add nsw i64 %i.dg, %i.bo
  %i.ei = lshr i64 %i.eh, 12
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %.0201220, i64 96
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !40
  %i.el = sub nsw i64 %i.bo, %i.dg
  %i.em = lshr i64 %i.el, 12
  %i.en = trunc i64 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %.0201220, i64 160
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !40
  %i.ep = lshr i64 %i.be, 12
  %i.eq = trunc i64 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %.0201220, i64 128
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !40
  %i.es = add nuw nsw i32 %.0221, 1               ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0204218, i64 2
  %i.eu = getelementptr inbounds nuw i8, ptr %.0203219, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.0201220, i64 4
  %exitcond.not = icmp eq i32 %i.es, 8
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !50

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1202222 = phi ptr [ %i.a, %.preheader ], [ %i.jf, %bb.e ] ; 9 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !43
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ex, i64 %i.s ; 9 uses
  %i.ez = load i32, ptr %.1202222, align 16, !tbaa !40
  %i.fa = sext i32 %i.ez to i64
  %i.fb = shl nsw i64 %i.fa, 13
  %i.fc = add nsw i64 %i.fb, 65536                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.1202222, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !40
  %i.ff = zext i32 %i.fe to i64                   ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.1202222, i64 16
  %i.fh = load i32, ptr %i.fg, align 16, !tbaa !40
  %i.fi = zext i32 %i.fh to i64                   ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.1202222, i64 24
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !40
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = mul nuw nsw i64 %i.fl, 5793
  %i.fn = add nsw i64 %i.fm, %i.fc                ; 3 uses
  %.neg = mul nsw i64 %i.fl, -11586
  %i.fo = add nsw i64 %.neg, %i.fc                ; 2 uses
  %i.fp = sub nsw i64 %i.ff, %i.fi                ; 2 uses
  %i.fq = mul nsw i64 %i.fp, 5793
  %i.fr = add nsw i64 %i.fo, %i.fq                ; 2 uses
  %.neg205 = mul nsw i64 %i.fp, 2147472062
  %i.fs = add i64 %i.fo, %.neg205
  %i.ft = add nuw nsw i64 %i.fi, %i.ff
  %i.fu = mul nuw nsw i64 %i.ft, 10887            ; 2 uses
  %i.fv = mul nuw nsw i64 %i.ff, 8875             ; 2 uses
  %i.fw = mul nuw nsw i64 %i.fi, 2012             ; 2 uses
  %i.fx = sub nsw i64 %i.fu, %i.fw
  %i.fy = add nsw i64 %i.fx, %i.fn                ; 2 uses
  %i.fz = sub nsw i64 %i.fn, %i.fu
  %i.ga = add nsw i64 %i.fz, %i.fv                ; 2 uses
  %i.gb = sub nsw i64 %i.fn, %i.fv
  %i.gc = add nsw i64 %i.gb, %i.fw                ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1202222, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !40
  %i.gf = zext i32 %i.ge to i64                   ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.1202222, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !40
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %.1202222, i64 20
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !40
  %i.gl = zext i32 %i.gk to i64                   ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.1202222, i64 28
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !40
  %i.go = zext i32 %i.gn to i64                   ; 3 uses
  %i.gp = mul nsw i64 %i.gi, -10033               ; 3 uses
  %i.gq = add nuw nsw i64 %i.gl, %i.gf
  %i.gr = mul nuw nsw i64 %i.gq, 7447             ; 2 uses
  %i.gs = add nuw nsw i64 %i.go, %i.gf
  %i.gt = mul nuw nsw i64 %i.gs, 3962             ; 2 uses
  %i.gu = sub nsw i64 %i.gr, %i.gp
  %i.gv = add nuw nsw i64 %i.gu, %i.gt            ; 2 uses
  %i.gw = sub nsw i64 %i.gl, %i.go
  %i.gx = mul nsw i64 %i.gw, 11409                ; 2 uses
  %i.gy = sub nsw i64 %i.gp, %i.gx
  %i.gz = add nsw i64 %i.gy, %i.gr                ; 2 uses
  %i.ha = add nsw i64 %i.gx, %i.gp
  %i.hb = add nsw i64 %i.ha, %i.gt                ; 2 uses
  %i.hc = add nuw nsw i64 %i.gl, %i.go
  %i.hd = sub nsw i64 %i.gf, %i.hc
  %i.he = mul nsw i64 %i.hd, 10033                ; 2 uses
  %i.hf = add nsw i64 %i.gv, %i.fy
  %i.hg = lshr i64 %i.hf, 17
  %i.hh = and i64 %i.hg, 16383
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hh
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !39
  store i16 %i.hj, ptr %i.ey, align 2, !tbaa !39
  %i.hk = sub nsw i64 %i.fy, %i.gv
  %i.hl = lshr i64 %i.hk, 17
  %i.hm = and i64 %i.hl, 16383
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hm
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !39
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i16 %i.ho, ptr %i.hp, align 2, !tbaa !39
  %i.hq = add nsw i64 %i.he, %i.fr
  %i.hr = lshr i64 %i.hq, 17
  %i.hs = and i64 %i.hr, 16383
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hs
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !39
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !39
  %i.hw = sub nsw i64 %i.fr, %i.he
  %i.hx = lshr i64 %i.hw, 17
  %i.hy = and i64 %i.hx, 16383
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !39
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ey, i64 14
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !39
  %i.ic = add nsw i64 %i.gz, %i.ga
  %i.id = lshr i64 %i.ic, 17
  %i.ie = and i64 %i.id, 16383
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ie
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !39
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store i16 %i.ig, ptr %i.ih, align 2, !tbaa !39
  %i.ii = sub nsw i64 %i.ga, %i.gz
  %i.ij = lshr i64 %i.ii, 17
  %i.ik = and i64 %i.ij, 16383
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ik
  %i.im = load i16, ptr %i.il, align 2, !tbaa !39
  %i.in = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i16 %i.im, ptr %i.in, align 2, !tbaa !39
  %i.io = add nsw i64 %i.hb, %i.gc
  %i.ip = lshr i64 %i.io, 17
  %i.iq = and i64 %i.ip, 16383
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !39
  %i.it = getelementptr inbounds nuw i8, ptr %i.ey, i64 6
  store i16 %i.is, ptr %i.it, align 2, !tbaa !39
  %i.iu = sub nsw i64 %i.gc, %i.hb
  %i.iv = lshr i64 %i.iu, 17
  %i.iw = and i64 %i.iv, 16383
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !39
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ey, i64 10
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !39
  %i.ja = lshr i64 %i.fs, 17
  %i.jb = and i64 %i.ja, 16383
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jb
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !39
  %i.je = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i16 %i.jd, ptr %i.je, align 2, !tbaa !39
  %i.jf = getelementptr inbounds nuw i8, ptr %.1202222, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond225.not, label %bb.f, label %bb.e, !llvm.loop !51

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_10x10(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = shl nuw nsw i64 %i.n, 13
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.r = zext i32 %4 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.d
  %.0248 = phi i32 [ 0, %bb.c ], [ %i.ez, %bb.d ]
  %.0222247 = phi ptr [ %i.a, %bb.c ], [ %i.fc, %bb.d ] ; 11 uses
  %.0224246 = phi ptr [ %i.p, %bb.c ], [ %i.fb, %bb.d ] ; 9 uses
  %.0225245 = phi ptr [ %2, %bb.c ], [ %i.fa, %bb.d ] ; 9 uses
  %i.s = load i16, ptr %.0225245, align 2, !tbaa !39
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %.0224246, align 4, !tbaa !40
  %i.v = mul nsw i32 %i.u, %i.t
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.q, %i.w
  %i.y = or disjoint i64 %i.x, 2048               ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0225245, i64 64
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !39
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0224246, i64 128
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = mul nsw i32 %i.ad, %i.ab
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.n, %i.af                 ; 3 uses
  %i.ah = mul nsw i64 %i.ag, 9373
  %.neg229 = mul nsw i64 %i.ag, -3580
  %i.ai = add nsw i64 %i.ah, %i.y                 ; 2 uses
  %i.aj = add nsw i64 %.neg229, %i.y              ; 2 uses
  %.neg230 = mul nsw i64 %i.ag, -11586
  %i.ak = add nsw i64 %.neg230, %i.y
  %i.al = ashr i64 %i.ak, 12                      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0225245, i64 32
  %i.an = load i16, ptr %i.am, align 2, !tbaa !39
  %i.ao = sext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %.0224246, i64 64
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !40
  %i.ar = mul nsw i32 %i.aq, %i.ao
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.n, %i.as                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0225245, i64 96
  %i.av = load i16, ptr %i.au, align 2, !tbaa !39
  %i.aw = sext i16 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %.0224246, i64 192
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !40
  %i.az = mul nsw i32 %i.ay, %i.aw
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul nsw i64 %i.n, %i.ba                 ; 2 uses
  %i.bc = add nsw i64 %i.bb, %i.at
  %i.bd = mul nsw i64 %i.bc, 6810                 ; 2 uses
  %i.be = mul nsw i64 %i.at, 4209
  %i.bf = add nsw i64 %i.bd, %i.be                ; 2 uses
  %.neg231 = mul nsw i64 %i.bb, -17828
  %i.bg = add nsw i64 %i.bd, %.neg231             ; 2 uses
  %i.bh = add nsw i64 %i.bf, %i.ai                ; 2 uses
  %i.bi = sub nsw i64 %i.ai, %i.bf                ; 2 uses
  %i.bj = add nsw i64 %i.bg, %i.aj                ; 2 uses
  %i.bk = sub nsw i64 %i.aj, %i.bg                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0225245, i64 16
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !39
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %.0224246, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !40
  %i.bq = mul nsw i32 %i.bp, %i.bn
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul nsw i64 %i.n, %i.br                 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0225245, i64 48
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !39
  %i.bv = sext i16 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0224246, i64 96
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !40
  %i.by = mul nsw i32 %i.bx, %i.bv
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %i.n, %i.bz                 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0225245, i64 80
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !39
  %i.cd = sext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %.0224246, i64 160
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !40
  %i.cg = mul nsw i32 %i.cf, %i.cd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.n, %i.ch                 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0225245, i64 112
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !39
  %i.cl = sext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.0224246, i64 224
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !40
  %i.co = mul nsw i32 %i.cn, %i.cl
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.n, %i.cp                 ; 2 uses
  %i.cr = add nsw i64 %i.cq, %i.ca                ; 2 uses
  %i.cs = sub nsw i64 %i.ca, %i.cq                ; 3 uses
  %i.ct = mul nsw i64 %i.cs, 2531
  %i.cu = shl nsw i64 %i.ci, 13                   ; 2 uses
  %i.cv = mul nsw i64 %i.cr, 7791                 ; 2 uses
  %i.cw = add nsw i64 %i.ct, %i.cu                ; 2 uses
  %i.cx = mul nsw i64 %i.bs, 11443
  %i.cy = add nsw i64 %i.cv, %i.cx
  %i.cz = add nsw i64 %i.cy, %i.cw                ; 2 uses
  %i.da = mul nsw i64 %i.bs, 1812
  %i.db = sub nsw i64 %i.da, %i.cv
  %i.dc = add nsw i64 %i.db, %i.cw                ; 2 uses
  %i.dd = mul nsw i64 %i.cr, 4815                 ; 2 uses
  %.neg232 = mul nsw i64 %i.cs, -6627
  %i.de = add nsw i64 %.neg232, %i.cu             ; 2 uses
  %i.df = add nsw i64 %i.ci, %i.cs
  %i.dg = sub nsw i64 %i.bs, %i.df
  %i.dh = shl nsw i64 %i.dg, 1                    ; 2 uses
  %i.di = mul nsw i64 %i.bs, 10323
  %i.dj = add nsw i64 %i.dd, %i.de
  %i.dk = sub nsw i64 %i.di, %i.dj                ; 2 uses
  %i.dl = mul nsw i64 %i.bs, 5260
  %i.dm = sub nsw i64 %i.dl, %i.dd
  %i.dn = add nsw i64 %i.dm, %i.de                ; 2 uses
  %i.do = add nsw i64 %i.cz, %i.bh
  %i.dp = lshr i64 %i.do, 12
  %i.dq = trunc i64 %i.dp to i32
  store i32 %i.dq, ptr %.0222247, align 4, !tbaa !40
  %i.dr = sub nsw i64 %i.bh, %i.cz
  %i.ds = lshr i64 %i.dr, 12
  %i.dt = trunc i64 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %.0222247, i64 288
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !40
  %i.dv = add nsw i64 %i.dk, %i.bj
  %i.dw = lshr i64 %i.dv, 12
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %.0222247, i64 32
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !40
  %i.dz = sub nsw i64 %i.bj, %i.dk
  %i.ea = lshr i64 %i.dz, 12
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = getelementptr inbounds nuw i8, ptr %.0222247, i64 256
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !40
  %i.ed = add nsw i64 %i.dh, %i.al
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %.0222247, i64 64
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !40
  %i.eg = sub nsw i64 %i.al, %i.dh
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %.0222247, i64 224
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !40
  %i.ej = add nsw i64 %i.dn, %i.bk
  %i.ek = lshr i64 %i.ej, 12
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %.0222247, i64 96
  store i32 %i.el, ptr %i.em, align 4, !tbaa !40
  %i.en = sub nsw i64 %i.bk, %i.dn
  %i.eo = lshr i64 %i.en, 12
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %.0222247, i64 192
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !40
  %i.er = add nsw i64 %i.dc, %i.bi
  %i.es = lshr i64 %i.er, 12
  %i.et = trunc i64 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %.0222247, i64 128
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !40
  %i.ev = sub nsw i64 %i.bi, %i.dc
  %i.ew = lshr i64 %i.ev, 12
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %.0222247, i64 160
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !40
  %i.ez = add nuw nsw i32 %.0248, 1               ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0225245, i64 2
  %i.fb = getelementptr inbounds nuw i8, ptr %.0224246, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.0222247, i64 4
  %exitcond.not = icmp eq i32 %i.ez, 8
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !52

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1223249 = phi ptr [ %i.a, %.preheader ], [ %i.jw, %bb.e ] ; 9 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !43
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.r ; 10 uses
  %i.fg = load i32, ptr %.1223249, align 16, !tbaa !40
  %i.fh = sext i32 %i.fg to i64
  %i.fi = shl nsw i64 %i.fh, 13
  %i.fj = add nsw i64 %i.fi, 65536                ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.1223249, i64 16
  %i.fl = load i32, ptr %i.fk, align 16, !tbaa !40
  %i.fm = zext i32 %i.fl to i64                   ; 3 uses
  %i.fn = mul nuw nsw i64 %i.fm, 9373
  %.neg = mul nsw i64 %i.fm, -3580
  %i.fo = add nsw i64 %i.fj, %i.fn                ; 2 uses
  %i.fp = add nsw i64 %.neg, %i.fj                ; 2 uses
  %.neg226 = mul nsw i64 %i.fm, -11586
  %i.fq = add nsw i64 %.neg226, %i.fj             ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.1223249, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !40
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.1223249, i64 24
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !40
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = add nuw nsw i64 %i.fw, %i.ft
  %i.fy = mul nuw nsw i64 %i.fx, 6810             ; 2 uses
  %i.fz = mul nuw nsw i64 %i.ft, 4209
  %i.ga = add nuw nsw i64 %i.fy, %i.fz            ; 2 uses
  %.neg227 = mul nsw i64 %i.fw, -17828
  %i.gb = add nsw i64 %i.fy, %.neg227             ; 2 uses
  %i.gc = add nsw i64 %i.ga, %i.fo                ; 2 uses
  %i.gd = sub nsw i64 %i.fo, %i.ga                ; 2 uses
  %i.ge = add nsw i64 %i.gb, %i.fp                ; 2 uses
  %i.gf = sub nsw i64 %i.fp, %i.gb                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.1223249, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !40
  %i.gi = sext i32 %i.gh to i64                   ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.1223249, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !40
  %i.gl = sext i32 %i.gk to i64                   ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.1223249, i64 20
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !40
  %i.go = sext i32 %i.gn to i64                   ; 2 uses
  %i.gp = shl nsw i64 %i.go, 13                   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.1223249, i64 28
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !40
  %i.gs = sext i32 %i.gr to i64                   ; 2 uses
  %i.gt = add nsw i64 %i.gs, %i.gl                ; 2 uses
  %i.gu = sub nsw i64 %i.gl, %i.gs                ; 3 uses
  %i.gv = mul nsw i64 %i.gu, 2531
  %i.gw = mul nsw i64 %i.gt, 7791                 ; 2 uses
  %i.gx = add nsw i64 %i.gv, %i.gp                ; 2 uses
  %i.gy = mul nsw i64 %i.gi, 11443
  %i.gz = add nsw i64 %i.gw, %i.gy
  %i.ha = add nsw i64 %i.gz, %i.gx                ; 2 uses
  %i.hb = mul nsw i64 %i.gi, 1812
  %i.hc = sub nsw i64 %i.hb, %i.gw
  %i.hd = add nsw i64 %i.hc, %i.gx                ; 2 uses
  %i.he = mul nsw i64 %i.gt, 4815                 ; 2 uses
  %.neg228 = mul nsw i64 %i.gu, -6627
  %i.hf = add nsw i64 %.neg228, %i.gp             ; 2 uses
  %i.hg = add nsw i64 %i.gu, %i.go
  %i.hh = sub nsw i64 %i.gi, %i.hg
  %i.hi = shl nsw i64 %i.hh, 13                   ; 2 uses
  %i.hj = mul nsw i64 %i.gi, 10323
  %i.hk = add nsw i64 %i.he, %i.hf
  %i.hl = sub nsw i64 %i.hj, %i.hk                ; 2 uses
  %i.hm = mul nsw i64 %i.gi, 5260
  %i.hn = sub nsw i64 %i.hm, %i.he
  %i.ho = add nsw i64 %i.hn, %i.hf                ; 2 uses
  %i.hp = add nsw i64 %i.ha, %i.gc
  %i.hq = lshr i64 %i.hp, 17
  %i.hr = and i64 %i.hq, 16383
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !39
  store i16 %i.ht, ptr %i.ff, align 2, !tbaa !39
  %i.hu = sub nsw i64 %i.gc, %i.ha
  %i.hv = lshr i64 %i.hu, 17
  %i.hw = and i64 %i.hv, 16383
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !39
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ff, i64 18
  store i16 %i.hy, ptr %i.hz, align 2, !tbaa !39
  %i.ia = add nsw i64 %i.hl, %i.ge
  %i.ib = lshr i64 %i.ia, 17
  %i.ic = and i64 %i.ib, 16383
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !39
  %i.if = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i16 %i.ie, ptr %i.if, align 2, !tbaa !39
  %i.ig = sub nsw i64 %i.ge, %i.hl
  %i.ih = lshr i64 %i.ig, 17
  %i.ii = and i64 %i.ih, 16383
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !39
  %i.il = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !39
  %i.im = add nsw i64 %i.hi, %i.fq
  %i.in = lshr i64 %i.im, 17
  %i.io = and i64 %i.in, 16383
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !39
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !39
  %i.is = sub nsw i64 %i.fq, %i.hi
  %i.it = lshr i64 %i.is, 17
  %i.iu = and i64 %i.it, 16383
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !39
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ff, i64 14
  store i16 %i.iw, ptr %i.ix, align 2, !tbaa !39
  %i.iy = add nsw i64 %i.ho, %i.gf
  %i.iz = lshr i64 %i.iy, 17
  %i.ja = and i64 %i.iz, 16383
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !39
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  store i16 %i.jc, ptr %i.jd, align 2, !tbaa !39
  %i.je = sub nsw i64 %i.gf, %i.ho
  %i.jf = lshr i64 %i.je, 17
  %i.jg = and i64 %i.jf, 16383
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !39
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !39
  %i.jk = add nsw i64 %i.hd, %i.gd
  %i.jl = lshr i64 %i.jk, 17
  %i.jm = and i64 %i.jl, 16383
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jm
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !39
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i16 %i.jo, ptr %i.jp, align 2, !tbaa !39
  %i.jq = sub nsw i64 %i.gd, %i.hd
  %i.jr = lshr i64 %i.jq, 17
  %i.js = and i64 %i.jr, 16383
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.js
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !39
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ff, i64 10
  store i16 %i.ju, ptr %i.jv, align 2, !tbaa !39
  %i.jw = getelementptr inbounds nuw i8, ptr %.1223249, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond252.not, label %bb.f, label %bb.e, !llvm.loop !53

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_11x11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [88 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = shl nuw nsw i64 %i.n, 13
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.r = zext i32 %4 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.d
  %.0279 = phi i32 [ 0, %bb.c ], [ %i.fu, %bb.d ]
  %.0255278 = phi ptr [ %i.a, %bb.c ], [ %i.fx, %bb.d ] ; 12 uses
  %.0257277 = phi ptr [ %i.p, %bb.c ], [ %i.fw, %bb.d ] ; 9 uses
  %.0258276 = phi ptr [ %2, %bb.c ], [ %i.fv, %bb.d ] ; 9 uses
  %i.s = load i16, ptr %.0258276, align 2, !tbaa !39
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %.0257277, align 4, !tbaa !40
  %i.v = mul nsw i32 %i.u, %i.t
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.q, %i.w
  %i.y = or disjoint i64 %i.x, 2048               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0258276, i64 32
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !39
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0257277, i64 64
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = mul nsw i32 %i.ad, %i.ab
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.n, %i.af                 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0258276, i64 64
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !39
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0257277, i64 128
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an                 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0258276, i64 96
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.0257277, i64 192
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = mul nsw i32 %i.at, %i.ar
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.n, %i.av                 ; 4 uses
  %i.ax = sub nsw i64 %i.ao, %i.aw
  %i.ay = mul nsw i64 %i.ax, 20862                ; 2 uses
  %i.az = sub nsw i64 %i.ao, %i.ag
  %i.ba = mul nsw i64 %i.az, 3529
  %i.bb = add nsw i64 %i.aw, %i.ag                ; 2 uses
  %i.bc = mul nsw i64 %i.bb, -9467
  %i.bd = sub nsw i64 %i.bb, %i.ao                ; 2 uses
  %i.be = mul nsw i64 %i.bd, 11116
  %i.bf = add nsw i64 %i.be, %i.y                 ; 3 uses
  %.neg267 = mul nsw i64 %i.ao, -14924
  %i.bg = add nsw i64 %i.bf, %i.ba                ; 2 uses
  %i.bh = add nsw i64 %i.bg, %.neg267
  %i.bi = add nsw i64 %i.bh, %i.ay                ; 2 uses
  %i.bj = mul nsw i64 %i.aw, 17333
  %i.bk = add nsw i64 %i.bf, %i.ay
  %i.bl = add nsw i64 %i.bk, %i.bj                ; 2 uses
  %.neg268 = mul nsw i64 %i.ag, -12399
  %i.bm = add nsw i64 %i.bg, %.neg268             ; 2 uses
  %i.bn = add nsw i64 %i.bf, %i.bc                ; 2 uses
  %.neg269 = mul nsw i64 %i.aw, -6461
  %i.bo = add nsw i64 %i.bn, %.neg269             ; 2 uses
  %i.bp = mul nsw i64 %i.ao, 15929
  %.neg270 = mul nsw i64 %i.ag, -11395
  %i.bq = add nsw i64 %i.bp, %.neg270
  %i.br = add nsw i64 %i.bq, %i.bn                ; 2 uses
  %.neg271 = mul i64 %i.bd, 17592186032831
  %i.bs = add i64 %.neg271, %i.y
  %i.bt = getelementptr inbounds nuw i8, ptr %.0258276, i64 16
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !39
  %i.bv = sext i16 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0257277, i64 32
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !40
  %i.by = mul nsw i32 %i.bx, %i.bv
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %i.n, %i.bz                 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0258276, i64 48
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !39
  %i.cd = sext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %.0257277, i64 96
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !40
  %i.cg = mul nsw i32 %i.cf, %i.cd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i64 %i.n, %i.ch                 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0258276, i64 80
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !39
  %i.cl = sext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %.0257277, i64 160
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !40
  %i.co = mul nsw i32 %i.cn, %i.cl
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.n, %i.cp                 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0258276, i64 112
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !39
  %i.ct = sext i16 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %.0257277, i64 224
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !40
  %i.cw = mul nsw i32 %i.cv, %i.ct
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul nsw i64 %i.n, %i.cx                 ; 5 uses
  %i.cz = add nsw i64 %i.ci, %i.ca                ; 2 uses
  %i.da = add nsw i64 %i.cq, %i.cz
  %i.db = add nsw i64 %i.da, %i.cy
  %i.dc = mul nsw i64 %i.db, 3264                 ; 3 uses
  %i.dd = mul nsw i64 %i.cz, 7274                 ; 2 uses
  %i.de = add nsw i64 %i.cq, %i.ca
  %i.df = mul nsw i64 %i.de, 5492                 ; 2 uses
  %i.dg = add nsw i64 %i.cy, %i.ca
  %i.dh = mul nsw i64 %i.dg, 3000
  %i.di = add nsw i64 %i.dc, %i.dh                ; 2 uses
  %.neg272 = mul nsw i64 %i.ca, -7562
  %i.dj = add nsw i64 %i.dd, %.neg272
  %i.dk = add nsw i64 %i.dj, %i.df
  %i.dl = add nsw i64 %i.dk, %i.di                ; 2 uses
  %i.dm = add nsw i64 %i.cq, %i.ci
  %.neg273 = mul nsw i64 %i.dm, -9527
  %i.dn = add nsw i64 %i.dc, %.neg273             ; 2 uses
  %i.do = mul nsw i64 %i.ci, 16984
  %.neg274 = mul nsw i64 %i.cq, -9766
  %i.dp = add nsw i64 %i.df, %.neg274
  %i.dq = add nsw i64 %i.dp, %i.dn                ; 2 uses
  %i.dr = add nsw i64 %i.cy, %i.ci
  %i.ds = mul nsw i64 %i.dr, -14731               ; 2 uses
  %i.dt = add nsw i64 %i.dd, %i.do
  %i.du = add nsw i64 %i.dt, %i.ds
  %i.dv = add nsw i64 %i.du, %i.dn                ; 2 uses
  %i.dw = mul nsw i64 %i.cy, 17223
  %i.dx = add nsw i64 %i.ds, %i.dw
  %i.dy = add nsw i64 %i.dx, %i.di                ; 2 uses
  %i.dz = mul nsw i64 %i.ci, -12019
  %i.ea = mul nsw i64 %i.cq, 8203
  %i.eb = add nsw i64 %i.ea, %i.dz
  %.neg275 = mul nsw i64 %i.cy, -13802
  %i.ec = add nsw i64 %i.eb, %.neg275
  %i.ed = add nsw i64 %i.ec, %i.dc                ; 2 uses
  %i.ee = add nsw i64 %i.dl, %i.bl
  %i.ef = lshr i64 %i.ee, 12
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %.0255278, align 4, !tbaa !40
  %i.eh = sub nsw i64 %i.bl, %i.dl
  %i.ei = lshr i64 %i.eh, 12
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %.0255278, i64 320
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !40
  %i.el = add nsw i64 %i.dv, %i.bi
  %i.em = lshr i64 %i.el, 12
  %i.en = trunc i64 %i.em to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %.0255278, i64 32
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !40
  %i.ep = sub nsw i64 %i.bi, %i.dv
  %i.eq = lshr i64 %i.ep, 12
  %i.er = trunc i64 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %.0255278, i64 288
  store i32 %i.er, ptr %i.es, align 4, !tbaa !40
  %i.et = add nsw i64 %i.dq, %i.bo
  %i.eu = lshr i64 %i.et, 12
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %.0255278, i64 64
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !40
  %i.ex = sub nsw i64 %i.bo, %i.dq
  %i.ey = lshr i64 %i.ex, 12
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %.0255278, i64 256
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !40
  %i.fb = add nsw i64 %i.dy, %i.bm
  %i.fc = lshr i64 %i.fb, 12
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %.0255278, i64 96
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !40
  %i.ff = sub nsw i64 %i.bm, %i.dy
  %i.fg = lshr i64 %i.ff, 12
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %.0255278, i64 224
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !40
  %i.fj = add nsw i64 %i.ed, %i.br
  %i.fk = lshr i64 %i.fj, 12
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %.0255278, i64 128
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !40
  %i.fn = sub nsw i64 %i.br, %i.ed
  %i.fo = lshr i64 %i.fn, 12
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %.0255278, i64 192
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !40
  %i.fr = lshr i64 %i.bs, 12
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %.0255278, i64 160
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !40
  %i.fu = add nuw nsw i32 %.0279, 1               ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0258276, i64 2
  %i.fw = getelementptr inbounds nuw i8, ptr %.0257277, i64 4
  %i.fx = getelementptr inbounds nuw i8, ptr %.0255278, i64 4
  %exitcond.not = icmp eq i32 %i.fu, 8
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !54

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1256280 = phi ptr [ %i.a, %.preheader ], [ %i.ln, %bb.e ] ; 9 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !43
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %i.r ; 11 uses
  %i.gb = load i32, ptr %.1256280, align 16, !tbaa !40
  %i.gc = sext i32 %i.gb to i64
  %i.gd = shl nsw i64 %i.gc, 13
  %i.ge = add nsw i64 %i.gd, 65536                ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1256280, i64 8
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !40
  %i.gh = zext i32 %i.gg to i64                   ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1256280, i64 16
  %i.gj = load i32, ptr %i.gi, align 16, !tbaa !40
  %i.gk = zext i32 %i.gj to i64                   ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.1256280, i64 24
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !40
  %i.gn = zext i32 %i.gm to i64                   ; 4 uses
  %i.go = sub nsw i64 %i.gk, %i.gn
  %i.gp = mul nsw i64 %i.go, 20862                ; 2 uses
  %i.gq = sub nsw i64 %i.gk, %i.gh
  %i.gr = mul nsw i64 %i.gq, 3529
  %i.gs = add nuw nsw i64 %i.gn, %i.gh            ; 2 uses
  %i.gt = mul nsw i64 %i.gs, -9467
  %i.gu = sub nsw i64 %i.gs, %i.gk                ; 2 uses
  %i.gv = mul nsw i64 %i.gu, 11116
  %i.gw = add nsw i64 %i.gv, %i.ge                ; 3 uses
  %.neg = mul nsw i64 %i.gk, -14924
  %i.gx = add nsw i64 %i.gw, %i.gr                ; 2 uses
  %i.gy = add nsw i64 %i.gx, %.neg
  %i.gz = add nsw i64 %i.gy, %i.gp                ; 2 uses
  %i.ha = mul nuw nsw i64 %i.gn, 17333
  %i.hb = add nsw i64 %i.gw, %i.gp
  %i.hc = add nsw i64 %i.hb, %i.ha                ; 2 uses
  %.neg259 = mul nsw i64 %i.gh, -12399
  %i.hd = add nsw i64 %i.gx, %.neg259             ; 2 uses
  %i.he = add nsw i64 %i.gw, %i.gt                ; 2 uses
  %.neg260 = mul nsw i64 %i.gn, -6461
  %i.hf = add nsw i64 %i.he, %.neg260             ; 2 uses
  %i.hg = mul nuw nsw i64 %i.gk, 15929
  %.neg261 = mul nsw i64 %i.gh, -11395
  %i.hh = add nsw i64 %i.hg, %.neg261
  %i.hi = add nsw i64 %i.hh, %i.he                ; 2 uses
  %.neg262 = mul i64 %i.gu, 2147472063
  %i.hj = add i64 %.neg262, %i.ge
  %i.hk = getelementptr inbounds nuw i8, ptr %.1256280, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !40
  %i.hm = zext i32 %i.hl to i64                   ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.1256280, i64 12
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !40
  %i.hp = zext i32 %i.ho to i64                   ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.1256280, i64 20
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !40
  %i.hs = zext i32 %i.hr to i64                   ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.1256280, i64 28
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !40
  %i.hv = zext i32 %i.hu to i64                   ; 5 uses
  %i.hw = add nuw nsw i64 %i.hp, %i.hm            ; 2 uses
  %i.hx = add nuw nsw i64 %i.hw, %i.hs
  %i.hy = add nuw nsw i64 %i.hx, %i.hv
  %i.hz = mul nuw nsw i64 %i.hy, 3264             ; 3 uses
  %i.ia = mul nuw nsw i64 %i.hw, 7274             ; 2 uses
  %i.ib = add nuw nsw i64 %i.hs, %i.hm
  %i.ic = mul nuw nsw i64 %i.ib, 5492             ; 2 uses
  %i.id = add nuw nsw i64 %i.hv, %i.hm
  %i.ie = mul nuw nsw i64 %i.id, 3000
  %i.if = add nuw nsw i64 %i.hz, %i.ie            ; 2 uses
  %.neg263 = mul nsw i64 %i.hm, -7562
  %i.ig = add nsw i64 %i.ia, %.neg263
  %i.ih = add nsw i64 %i.ig, %i.ic
  %i.ii = add nsw i64 %i.ih, %i.if                ; 2 uses
  %i.ij = add nuw nsw i64 %i.hs, %i.hp
  %.neg264 = mul nsw i64 %i.ij, -9527
  %i.ik = add nsw i64 %i.hz, %.neg264             ; 2 uses
  %i.il = mul nuw nsw i64 %i.hp, 16984
  %.neg265 = mul nsw i64 %i.hs, -9766
  %i.im = add nsw i64 %i.ic, %.neg265
  %i.in = add nsw i64 %i.im, %i.ik                ; 2 uses
  %i.io = add nuw nsw i64 %i.hv, %i.hp
  %i.ip = mul nsw i64 %i.io, -14731               ; 2 uses
  %i.iq = add nuw nsw i64 %i.ia, %i.il
  %i.ir = add nsw i64 %i.iq, %i.ip
  %i.is = add nsw i64 %i.ir, %i.ik                ; 2 uses
  %i.it = mul nuw nsw i64 %i.hv, 17223
  %i.iu = add nsw i64 %i.ip, %i.it
  %i.iv = add nsw i64 %i.iu, %i.if                ; 2 uses
  %i.iw = mul nsw i64 %i.hp, -12019
  %i.ix = mul nuw nsw i64 %i.hs, 8203
  %i.iy = add nsw i64 %i.ix, %i.iw
  %.neg266 = mul nsw i64 %i.hv, -13802
  %i.iz = add nsw i64 %i.iy, %.neg266
  %i.ja = add nsw i64 %i.iz, %i.hz                ; 2 uses
  %i.jb = add nsw i64 %i.ii, %i.hc
  %i.jc = lshr i64 %i.jb, 17
  %i.jd = and i64 %i.jc, 16383
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !39
  store i16 %i.jf, ptr %i.ga, align 2, !tbaa !39
  %i.jg = sub nsw i64 %i.hc, %i.ii
  %i.jh = lshr i64 %i.jg, 17
  %i.ji = and i64 %i.jh, 16383
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !39
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  store i16 %i.jk, ptr %i.jl, align 2, !tbaa !39
  %i.jm = add nsw i64 %i.is, %i.gz
  %i.jn = lshr i64 %i.jm, 17
  %i.jo = and i64 %i.jn, 16383
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jo
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !39
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  store i16 %i.jq, ptr %i.jr, align 2, !tbaa !39
  %i.js = sub nsw i64 %i.gz, %i.is
  %i.jt = lshr i64 %i.js, 17
  %i.ju = and i64 %i.jt, 16383
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !39
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ga, i64 18
  store i16 %i.jw, ptr %i.jx, align 2, !tbaa !39
  %i.jy = add nsw i64 %i.in, %i.hf
  %i.jz = lshr i64 %i.jy, 17
  %i.ka = and i64 %i.jz, 16383
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !39
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i16 %i.kc, ptr %i.kd, align 2, !tbaa !39
  %i.ke = sub nsw i64 %i.hf, %i.in
  %i.kf = lshr i64 %i.ke, 17
  %i.kg = and i64 %i.kf, 16383
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.kg
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !39
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store i16 %i.ki, ptr %i.kj, align 2, !tbaa !39
  %i.kk = add nsw i64 %i.iv, %i.hd
  %i.kl = lshr i64 %i.kk, 17
  %i.km = and i64 %i.kl, 16383
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !39
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ga, i64 6
  store i16 %i.ko, ptr %i.kp, align 2, !tbaa !39
  %i.kq = sub nsw i64 %i.hd, %i.iv
  %i.kr = lshr i64 %i.kq, 17
  %i.ks = and i64 %i.kr, 16383
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ks
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !39
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ga, i64 14
  store i16 %i.ku, ptr %i.kv, align 2, !tbaa !39
  %i.kw = add nsw i64 %i.ja, %i.hi
  %i.kx = lshr i64 %i.kw, 17
  %i.ky = and i64 %i.kx, 16383
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ky
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !39
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i16 %i.la, ptr %i.lb, align 2, !tbaa !39
  %i.lc = sub nsw i64 %i.hi, %i.ja
  %i.ld = lshr i64 %i.lc, 17
  %i.le = and i64 %i.ld, 16383
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.le
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !39
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store i16 %i.lg, ptr %i.lh, align 2, !tbaa !39
  %i.li = lshr i64 %i.hj, 17
  %i.lj = and i64 %i.li, 16383
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lj
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !39
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ga, i64 10
  store i16 %i.ll, ptr %i.lm, align 2, !tbaa !39
  %i.ln = getelementptr inbounds nuw i8, ptr %.1256280, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond283.not, label %bb.f, label %bb.e, !llvm.loop !55

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_12x12(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %vector.ph

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = mul nuw nsw i64 %i.n, 10033
  %i.r = shl nuw nsw i64 %i.n, 13
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert279 = insertelement <4 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat280 = shufflevector <4 x i64> %broadcast.splatinsert279, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert281 = insertelement <4 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat282 = shufflevector <4 x i64> %broadcast.splatinsert281, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.s ; 12 uses
  %next.gep283 = getelementptr i8, ptr %i.p, i64 %i.s ; 8 uses
  %i.t = shl i64 %index, 1
  %next.gep284 = getelementptr i8, ptr %2, i64 %i.t ; 8 uses
  %wide.load = load <4 x i16>, ptr %next.gep284, align 2, !tbaa !39
  %i.u = sext <4 x i16> %wide.load to <4 x i32>
  %wide.load285 = load <4 x i32>, ptr %next.gep283, align 4, !tbaa !40
  %i.v = mul nsw <4 x i32> %wide.load285, %i.u
  %i.w = sext <4 x i32> %i.v to <4 x i64>
  %i.x = mul nsw <4 x i64> %broadcast.splat280, %i.w
  %i.y = or disjoint <4 x i64> %i.x, splat (i64 2048) ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %next.gep284, i64 64
  %wide.load286 = load <4 x i16>, ptr %i.z, align 2, !tbaa !39
  %i.aa = sext <4 x i16> %wide.load286 to <4 x i32>
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep283, i64 128
  %wide.load287 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !40
  %i.ac = mul nsw <4 x i32> %wide.load287, %i.aa
  %i.ad = sext <4 x i32> %i.ac to <4 x i64>
  %i.ae = mul nsw <4 x i64> %broadcast.splat282, %i.ad ; 2 uses
  %i.af = add nsw <4 x i64> %i.ae, %i.y           ; 2 uses
  %i.ag = sub nsw <4 x i64> %i.y, %i.ae           ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %next.gep284, i64 32
  %wide.load288 = load <4 x i16>, ptr %i.ah, align 2, !tbaa !39
  %i.ai = sext <4 x i16> %wide.load288 to <4 x i32>
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep283, i64 64
  %wide.load289 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !40
  %i.ak = mul nsw <4 x i32> %wide.load289, %i.ai
  %i.al = sext <4 x i32> %i.ak to <4 x i64>
  %i.am = mul nsw <4 x i64> %broadcast.splat, %i.al ; 3 uses
  %i.an = mul nsw <4 x i64> %i.am, splat (i64 11190)
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep284, i64 96
  %wide.load290 = load <4 x i16>, ptr %i.ao, align 2, !tbaa !39
  %i.ap = sext <4 x i16> %wide.load290 to <4 x i32>
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep283, i64 192
  %wide.load291 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !40
  %i.ar = mul nsw <4 x i32> %wide.load291, %i.ap
  %i.as = sext <4 x i32> %i.ar to <4 x i64>
  %i.at = mul nsw <4 x i64> %broadcast.splat, %i.as ; 2 uses
  %i.au = shl nsw <4 x i64> %i.at, splat (i64 13) ; 2 uses
  %i.av = sub nsw <4 x i64> %i.am, %i.at
  %i.aw = shl nsw <4 x i64> %i.av, splat (i64 13) ; 2 uses
  %i.ax = add nsw <4 x i64> %i.aw, %i.y           ; 2 uses
  %i.ay = sub nsw <4 x i64> %i.y, %i.aw           ; 2 uses
  %i.az = add nsw <4 x i64> %i.au, %i.an          ; 2 uses
  %i.ba = add nsw <4 x i64> %i.az, %i.af          ; 2 uses
  %i.bb = sub nsw <4 x i64> %i.af, %i.az          ; 2 uses
  %i.bc = mul nsw <4 x i64> %i.am, splat (i64 2998)
  %i.bd = sub nsw <4 x i64> %i.bc, %i.au          ; 2 uses
  %i.be = add nsw <4 x i64> %i.bd, %i.ag          ; 2 uses
  %i.bf = sub nsw <4 x i64> %i.ag, %i.bd          ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %next.gep284, i64 16
  %wide.load292 = load <4 x i16>, ptr %i.bg, align 2, !tbaa !39
  %i.bh = sext <4 x i16> %wide.load292 to <4 x i32>
  %i.bi = getelementptr inbounds nuw i8, ptr %next.gep283, i64 32
  %wide.load293 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !40
  %i.bj = mul nsw <4 x i32> %wide.load293, %i.bh
  %i.bk = sext <4 x i32> %i.bj to <4 x i64>
  %i.bl = mul nsw <4 x i64> %broadcast.splat, %i.bk ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep284, i64 48
  %wide.load294 = load <4 x i16>, ptr %i.bm, align 2, !tbaa !39
  %i.bn = sext <4 x i16> %wide.load294 to <4 x i32>
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep283, i64 96
  %wide.load295 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !40
  %i.bp = mul nsw <4 x i32> %wide.load295, %i.bn
  %i.bq = sext <4 x i32> %i.bp to <4 x i64>
  %i.br = mul nsw <4 x i64> %broadcast.splat, %i.bq ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %next.gep284, i64 80
  %wide.load296 = load <4 x i16>, ptr %i.bs, align 2, !tbaa !39
  %i.bt = sext <4 x i16> %wide.load296 to <4 x i32>
  %i.bu = getelementptr inbounds nuw i8, ptr %next.gep283, i64 160
  %wide.load297 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !40
  %i.bv = mul nsw <4 x i32> %wide.load297, %i.bt
  %i.bw = sext <4 x i32> %i.bv to <4 x i64>
  %i.bx = mul nsw <4 x i64> %broadcast.splat, %i.bw ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %next.gep284, i64 112
  %wide.load298 = load <4 x i16>, ptr %i.by, align 2, !tbaa !39
  %i.bz = sext <4 x i16> %wide.load298 to <4 x i32>
  %i.ca = getelementptr inbounds nuw i8, ptr %next.gep283, i64 224
  %wide.load299 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !40
  %i.cb = mul nsw <4 x i32> %wide.load299, %i.bz
  %i.cc = sext <4 x i32> %i.cb to <4 x i64>
  %i.cd = mul nsw <4 x i64> %broadcast.splat, %i.cc ; 5 uses
  %i.ce = mul nsw <4 x i64> %i.br, splat (i64 10703) ; 2 uses
  %i.cf = mul nsw <4 x i64> %i.br, splat (i64 -4433) ; 2 uses
  %i.cg = add nsw <4 x i64> %i.bx, %i.bl          ; 2 uses
  %i.ch = add nsw <4 x i64> %i.cd, %i.cg
  %i.ci = mul nsw <4 x i64> %i.ch, splat (i64 7053) ; 3 uses
  %i.cj = mul nsw <4 x i64> %i.cg, splat (i64 2139)
  %i.ck = add nsw <4 x i64> %i.ci, %i.cj          ; 2 uses
  %i.cl = mul nsw <4 x i64> %i.bl, splat (i64 2295)
  %i.cm = add nsw <4 x i64> %i.ce, %i.cl
  %i.cn = add nsw <4 x i64> %i.cm, %i.ck          ; 2 uses
  %i.co = add nsw <4 x i64> %i.cd, %i.bx
  %i.cp = mul nsw <4 x i64> %i.co, splat (i64 -8565) ; 2 uses
  %i.cq = mul nsw <4 x i64> %i.bx, splat (i64 -12112)
  %i.cr = add nsw <4 x i64> %i.cq, %i.cf
  %i.cs = add nsw <4 x i64> %i.cr, %i.cp
  %i.ct = add nsw <4 x i64> %i.cs, %i.ck          ; 2 uses
  %i.cu = mul nsw <4 x i64> %i.cd, splat (i64 12998)
  %i.cv = sub nsw <4 x i64> %i.cu, %i.ce
  %i.cw = add nsw <4 x i64> %i.cv, %i.ci
  %i.cx = add nsw <4 x i64> %i.cw, %i.cp          ; 2 uses
  %i.cy = mul nsw <4 x i64> %i.bl, splat (i64 -5540)
  %i.cz = add nsw <4 x i64> %i.cf, %i.cy
  %i.da = mul nsw <4 x i64> %i.cd, splat (i64 -16244)
  %i.db = add nsw <4 x i64> %i.cz, %i.da
  %i.dc = add nsw <4 x i64> %i.db, %i.ci          ; 2 uses
  %i.dd = sub nsw <4 x i64> %i.bl, %i.cd          ; 2 uses
  %i.de = sub nsw <4 x i64> %i.br, %i.bx          ; 2 uses
  %i.df = add nsw <4 x i64> %i.dd, %i.de
  %i.dg = mul nsw <4 x i64> %i.df, splat (i64 4433) ; 2 uses
  %i.dh = mul nsw <4 x i64> %i.dd, splat (i64 6270)
  %i.di = add nsw <4 x i64> %i.dg, %i.dh          ; 2 uses
  %i.dj = mul nsw <4 x i64> %i.de, splat (i64 -15137)
  %i.dk = add nsw <4 x i64> %i.dg, %i.dj          ; 2 uses
  %i.dl = add nsw <4 x i64> %i.cn, %i.ba
  %i.dm = lshr <4 x i64> %i.dl, splat (i64 12)
  %i.dn = trunc <4 x i64> %i.dm to <4 x i32>
  store <4 x i32> %i.dn, ptr %next.gep, align 16, !tbaa !40
  %i.do = sub nsw <4 x i64> %i.ba, %i.cn
  %i.dp = lshr <4 x i64> %i.do, splat (i64 12)
  %i.dq = trunc <4 x i64> %i.dp to <4 x i32>
  %i.dr = getelementptr inbounds nuw i8, ptr %next.gep, i64 352
  store <4 x i32> %i.dq, ptr %i.dr, align 16, !tbaa !40
  %i.ds = add nsw <4 x i64> %i.di, %i.ax
  %i.dt = lshr <4 x i64> %i.ds, splat (i64 12)
  %i.du = trunc <4 x i64> %i.dt to <4 x i32>
  %i.dv = getelementptr inbounds nuw i8, ptr %next.gep, i64 32
  store <4 x i32> %i.du, ptr %i.dv, align 16, !tbaa !40
  %i.dw = sub nsw <4 x i64> %i.ax, %i.di
  %i.dx = lshr <4 x i64> %i.dw, splat (i64 12)
  %i.dy = trunc <4 x i64> %i.dx to <4 x i32>
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep, i64 320
  store <4 x i32> %i.dy, ptr %i.dz, align 16, !tbaa !40
  %i.ea = add nsw <4 x i64> %i.ct, %i.be
  %i.eb = lshr <4 x i64> %i.ea, splat (i64 12)
  %i.ec = trunc <4 x i64> %i.eb to <4 x i32>
  %i.ed = getelementptr inbounds nuw i8, ptr %next.gep, i64 64
  store <4 x i32> %i.ec, ptr %i.ed, align 16, !tbaa !40
  %i.ee = sub nsw <4 x i64> %i.be, %i.ct
  %i.ef = lshr <4 x i64> %i.ee, splat (i64 12)
  %i.eg = trunc <4 x i64> %i.ef to <4 x i32>
  %i.eh = getelementptr inbounds nuw i8, ptr %next.gep, i64 288
  store <4 x i32> %i.eg, ptr %i.eh, align 16, !tbaa !40
  %i.ei = add nsw <4 x i64> %i.cx, %i.bf
  %i.ej = lshr <4 x i64> %i.ei, splat (i64 12)
  %i.ek = trunc <4 x i64> %i.ej to <4 x i32>
  %i.el = getelementptr inbounds nuw i8, ptr %next.gep, i64 96
  store <4 x i32> %i.ek, ptr %i.el, align 16, !tbaa !40
  %i.em = sub nsw <4 x i64> %i.bf, %i.cx
  %i.en = lshr <4 x i64> %i.em, splat (i64 12)
  %i.eo = trunc <4 x i64> %i.en to <4 x i32>
  %i.ep = getelementptr inbounds nuw i8, ptr %next.gep, i64 256
  store <4 x i32> %i.eo, ptr %i.ep, align 16, !tbaa !40
  %i.eq = add nsw <4 x i64> %i.dk, %i.ay
  %i.er = lshr <4 x i64> %i.eq, splat (i64 12)
  %i.es = trunc <4 x i64> %i.er to <4 x i32>
  %i.et = getelementptr inbounds nuw i8, ptr %next.gep, i64 128
  store <4 x i32> %i.es, ptr %i.et, align 16, !tbaa !40
  %i.eu = sub nsw <4 x i64> %i.ay, %i.dk
  %i.ev = lshr <4 x i64> %i.eu, splat (i64 12)
  %i.ew = trunc <4 x i64> %i.ev to <4 x i32>
  %i.ex = getelementptr inbounds nuw i8, ptr %next.gep, i64 224
  store <4 x i32> %i.ew, ptr %i.ex, align 16, !tbaa !40
  %i.ey = add nsw <4 x i64> %i.dc, %i.bb
  %i.ez = lshr <4 x i64> %i.ey, splat (i64 12)
  %i.fa = trunc <4 x i64> %i.ez to <4 x i32>
  %i.fb = getelementptr inbounds nuw i8, ptr %next.gep, i64 160
  store <4 x i32> %i.fa, ptr %i.fb, align 16, !tbaa !40
  %i.fc = sub nsw <4 x i64> %i.bb, %i.dc
  %i.fd = lshr <4 x i64> %i.fc, splat (i64 12)
  %i.fe = trunc <4 x i64> %i.fd to <4 x i32>
  %i.ff = getelementptr inbounds nuw i8, ptr %next.gep, i64 192
  store <4 x i32> %i.fe, ptr %i.ff, align 16, !tbaa !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fg = icmp eq i64 %index.next, 8
  br i1 %i.fg, label %.preheader, label %vector.body, !llvm.loop !56

.preheader:                                       ; preds = %vector.body
  %i.fh = zext i32 %4 to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.1259275 = phi ptr [ %i.a, %.preheader ], [ %i.kw, %bb.c ] ; 9 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !43
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fj, i64 %i.fh ; 12 uses
  %i.fl = load i32, ptr %.1259275, align 16, !tbaa !40
  %i.fm = sext i32 %i.fl to i64
  %i.fn = shl nsw i64 %i.fm, 13
  %i.fo = add nsw i64 %i.fn, 65536                ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.1259275, i64 16
  %i.fq = load i32, ptr %i.fp, align 16, !tbaa !40
  %i.fr = zext i32 %i.fq to i64
  %i.fs = mul nuw nsw i64 %i.fr, 10033            ; 2 uses
  %i.ft = add nsw i64 %i.fo, %i.fs                ; 2 uses
  %i.fu = sub nsw i64 %i.fo, %i.fs                ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.1259275, i64 8
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !40
  %i.fx = sext i32 %i.fw to i64                   ; 3 uses
  %i.fy = mul nsw i64 %i.fx, 11190
  %i.fz = getelementptr inbounds nuw i8, ptr %.1259275, i64 24
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !40
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = shl nsw i64 %i.gb, 13                   ; 2 uses
  %i.gd = sub nsw i64 %i.fx, %i.gb
  %i.ge = shl nsw i64 %i.gd, 13                   ; 2 uses
  %i.gf = add nsw i64 %i.ge, %i.fo                ; 2 uses
  %i.gg = sub nsw i64 %i.fo, %i.ge                ; 2 uses
  %i.gh = add nsw i64 %i.gc, %i.fy                ; 2 uses
  %i.gi = add nsw i64 %i.gh, %i.ft                ; 2 uses
  %i.gj = sub nsw i64 %i.ft, %i.gh                ; 2 uses
  %i.gk = mul nsw i64 %i.fx, 2998
  %i.gl = sub nsw i64 %i.gk, %i.gc                ; 2 uses
  %i.gm = add nsw i64 %i.gl, %i.fu                ; 2 uses
  %i.gn = sub nsw i64 %i.fu, %i.gl                ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.1259275, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !40
  %i.gq = zext i32 %i.gp to i64                   ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.1259275, i64 12
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !40
  %i.gt = zext i32 %i.gs to i64                   ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.1259275, i64 20
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !40
  %i.gw = zext i32 %i.gv to i64                   ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.1259275, i64 28
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !40
  %i.gz = zext i32 %i.gy to i64                   ; 5 uses
  %i.ha = mul nuw nsw i64 %i.gt, 10703            ; 2 uses
  %i.hb = mul nsw i64 %i.gt, -4433                ; 2 uses
  %i.hc = add nuw nsw i64 %i.gw, %i.gq            ; 2 uses
  %i.hd = add nuw nsw i64 %i.hc, %i.gz
  %i.he = mul nuw nsw i64 %i.hd, 7053             ; 3 uses
  %i.hf = mul nuw nsw i64 %i.hc, 2139
  %i.hg = add nuw nsw i64 %i.he, %i.hf            ; 2 uses
  %i.hh = mul nuw nsw i64 %i.gq, 2295
  %i.hi = add nuw nsw i64 %i.ha, %i.hh
  %i.hj = add nuw nsw i64 %i.hi, %i.hg            ; 2 uses
  %i.hk = add nuw nsw i64 %i.gz, %i.gw
  %i.hl = mul nsw i64 %i.hk, -8565                ; 2 uses
  %.neg = mul nsw i64 %i.gw, -12112
  %i.hm = add nsw i64 %.neg, %i.hb
  %i.hn = add nsw i64 %i.hm, %i.hl
  %i.ho = add nsw i64 %i.hn, %i.hg                ; 2 uses
  %i.hp = mul nuw nsw i64 %i.gz, 12998
  %i.hq = sub nsw i64 %i.hp, %i.ha
  %i.hr = add nsw i64 %i.hq, %i.he
  %i.hs = add nsw i64 %i.hr, %i.hl                ; 2 uses
  %.neg262 = mul nsw i64 %i.gq, -5540
  %i.ht = add nsw i64 %i.hb, %.neg262
  %.neg263 = mul nsw i64 %i.gz, -16244
  %i.hu = add nsw i64 %i.ht, %.neg263
  %i.hv = add nsw i64 %i.hu, %i.he                ; 2 uses
  %i.hw = sub nsw i64 %i.gq, %i.gz                ; 2 uses
  %i.hx = sub nsw i64 %i.gt, %i.gw                ; 2 uses
  %i.hy = add nsw i64 %i.hw, %i.hx
  %i.hz = mul nsw i64 %i.hy, 4433                 ; 2 uses
  %i.ia = mul nsw i64 %i.hw, 6270
  %i.ib = add nsw i64 %i.hz, %i.ia                ; 2 uses
  %.neg264 = mul nsw i64 %i.hx, -15137
  %i.ic = add nsw i64 %i.hz, %.neg264             ; 2 uses
  %i.id = add nsw i64 %i.hj, %i.gi
  %i.ie = lshr i64 %i.id, 17
  %i.if = and i64 %i.ie, 16383
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !39
  store i16 %i.ih, ptr %i.fk, align 2, !tbaa !39
  %i.ii = sub nsw i64 %i.gi, %i.hj
  %i.ij = lshr i64 %i.ii, 17
  %i.ik = and i64 %i.ij, 16383
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ik
  %i.im = load i16, ptr %i.il, align 2, !tbaa !39
  %i.in = getelementptr inbounds nuw i8, ptr %i.fk, i64 22
  store i16 %i.im, ptr %i.in, align 2, !tbaa !39
  %i.io = add nsw i64 %i.ib, %i.gf
  %i.ip = lshr i64 %i.io, 17
  %i.iq = and i64 %i.ip, 16383
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !39
  %i.it = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  store i16 %i.is, ptr %i.it, align 2, !tbaa !39
  %i.iu = sub nsw i64 %i.gf, %i.ib
  %i.iv = lshr i64 %i.iu, 17
  %i.iw = and i64 %i.iv, 16383
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !39
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fk, i64 20
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !39
  %i.ja = add nsw i64 %i.ho, %i.gm
  %i.jb = lshr i64 %i.ja, 17
  %i.jc = and i64 %i.jb, 16383
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jc
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !39
  %i.jf = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !39
  %i.jg = sub nsw i64 %i.gm, %i.ho
  %i.jh = lshr i64 %i.jg, 17
  %i.ji = and i64 %i.jh, 16383
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !39
  %i.jl = getelementptr inbounds nuw i8, ptr %i.fk, i64 18
  store i16 %i.jk, ptr %i.jl, align 2, !tbaa !39
  %i.jm = add nsw i64 %i.hs, %i.gn
  %i.jn = lshr i64 %i.jm, 17
  %i.jo = and i64 %i.jn, 16383
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jo
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !39
  %i.jr = getelementptr inbounds nuw i8, ptr %i.fk, i64 6
  store i16 %i.jq, ptr %i.jr, align 2, !tbaa !39
  %i.js = sub nsw i64 %i.gn, %i.hs
  %i.jt = lshr i64 %i.js, 17
  %i.ju = and i64 %i.jt, 16383
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !39
  %i.jx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i16 %i.jw, ptr %i.jx, align 2, !tbaa !39
  %i.jy = add nsw i64 %i.ic, %i.gg
  %i.jz = lshr i64 %i.jy, 17
  %i.ka = and i64 %i.jz, 16383
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !39
  %i.kd = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i16 %i.kc, ptr %i.kd, align 2, !tbaa !39
  %i.ke = sub nsw i64 %i.gg, %i.ic
  %i.kf = lshr i64 %i.ke, 17
  %i.kg = and i64 %i.kf, 16383
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.kg
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !39
  %i.kj = getelementptr inbounds nuw i8, ptr %i.fk, i64 14
  store i16 %i.ki, ptr %i.kj, align 2, !tbaa !39
  %i.kk = add nsw i64 %i.hv, %i.gj
  %i.kl = lshr i64 %i.kk, 17
  %i.km = and i64 %i.kl, 16383
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !39
  %i.kp = getelementptr inbounds nuw i8, ptr %i.fk, i64 10
  store i16 %i.ko, ptr %i.kp, align 2, !tbaa !39
  %i.kq = sub nsw i64 %i.gj, %i.hv
  %i.kr = lshr i64 %i.kq, 17
  %i.ks = and i64 %i.kr, 16383
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ks
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !39
  %i.kv = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i16 %i.ku, ptr %i.kv, align 2, !tbaa !39
  %i.kw = getelementptr inbounds nuw i8, ptr %.1259275, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond278.not, label %bb.d, label %bb.c, !llvm.loop !57

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_13x13(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [104 x i32], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = shl nuw nsw i64 %i.n, 13
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %i.r = zext i32 %4 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.d
  %.0315 = phi i32 [ 0, %bb.c ], [ %i.go, %bb.d ]
  %.0295314 = phi ptr [ %i.a, %bb.c ], [ %i.gr, %bb.d ] ; 14 uses
  %.0297313 = phi ptr [ %i.p, %bb.c ], [ %i.gq, %bb.d ] ; 9 uses
  %.0298312 = phi ptr [ %2, %bb.c ], [ %i.gp, %bb.d ] ; 9 uses
  %i.s = load i16, ptr %.0298312, align 2, !tbaa !39
  %i.t = sext i16 %i.s to i32
  %i.u = load i32, ptr %.0297313, align 4, !tbaa !40
  %i.v = mul nsw i32 %i.u, %i.t
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.q, %i.w
  %i.y = or disjoint i64 %i.x, 2048               ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0298312, i64 32
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !39
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0297313, i64 64
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = mul nsw i32 %i.ad, %i.ab
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.n, %i.af                 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0298312, i64 64
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !39
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0297313, i64 128
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0298312, i64 96
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.0297313, i64 192
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = mul nsw i32 %i.at, %i.ar
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.n, %i.av                 ; 2 uses
  %i.ax = add nsw i64 %i.aw, %i.ao                ; 3 uses
  %i.ay = sub nsw i64 %i.ao, %i.aw                ; 4 uses
  %i.az = mul nsw i64 %i.ax, 9465                 ; 2 uses
  %i.ba = mul nsw i64 %i.ay, 793
  %i.bb = add nsw i64 %i.ba, %i.y                 ; 2 uses
  %i.bc = mul nsw i64 %i.ag, 11249
  %i.bd = add nsw i64 %i.az, %i.bc
  %i.be = add nsw i64 %i.bd, %i.bb                ; 2 uses
  %i.bf = mul nsw i64 %i.ag, 4108
  %i.bg = sub nsw i64 %i.bf, %i.az
  %i.bh = add nsw i64 %i.bg, %i.bb                ; 2 uses
  %i.bi = mul nsw i64 %i.ax, 2592                 ; 2 uses
  %i.bj = mul nsw i64 %i.ay, 3989
  %i.bk = add nsw i64 %i.bj, %i.y                 ; 2 uses
  %i.bl = mul nsw i64 %i.ag, 8672
  %i.bm = sub nsw i64 %i.bl, %i.bi
  %i.bn = add nsw i64 %i.bm, %i.bk                ; 2 uses
  %i.bo = mul nsw i64 %i.ag, -10258
  %i.bp = add nsw i64 %i.bi, %i.bo
  %i.bq = add nsw i64 %i.bp, %i.bk                ; 2 uses
  %i.br = mul nsw i64 %i.ax, 3570                 ; 2 uses
  %.neg319 = mul nsw i64 %i.ay, -7678
  %.neg318 = add nsw i64 %.neg319, %i.y           ; 2 uses
  %i.bs = mul nsw i64 %i.ag, -1396
  %.neg311 = sub nsw i64 %i.bs, %i.br
  %i.bt = add nsw i64 %.neg311, %.neg318          ; 2 uses
  %i.bu = mul nsw i64 %i.ag, -6581
  %i.bv = add nsw i64 %i.br, %i.bu
  %i.bw = add nsw i64 %i.bv, %.neg318             ; 2 uses
  %i.bx = sub nsw i64 %i.ay, %i.ag
  %i.by = mul nsw i64 %i.bx, 11585
  %i.bz = add nsw i64 %i.by, %i.y
  %i.ca = getelementptr inbounds nuw i8, ptr %.0298312, i64 16
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !39
  %i.cc = sext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %.0297313, i64 32
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !40
  %i.cf = mul nsw i32 %i.ce, %i.cc
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul nsw i64 %i.n, %i.cg                 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0298312, i64 48
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !39
  %i.ck = sext i16 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %.0297313, i64 96
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !40
  %i.cn = mul nsw i32 %i.cm, %i.ck
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %i.n, %i.co                 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0298312, i64 80
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !39
  %i.cs = sext i16 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %.0297313, i64 160
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !40
  %i.cv = mul nsw i32 %i.cu, %i.cs
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul nsw i64 %i.n, %i.cw                 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0298312, i64 112
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !39
  %i.da = sext i16 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %.0297313, i64 224
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !40
  %i.dd = mul nsw i32 %i.dc, %i.da
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %i.n, %i.de                 ; 5 uses
  %i.dg = add nsw i64 %i.cp, %i.ch
  %i.dh = mul nsw i64 %i.dg, 10832                ; 2 uses
  %i.di = add nsw i64 %i.cx, %i.ch
  %i.dj = mul nsw i64 %i.di, 9534                 ; 2 uses
  %i.dk = add nsw i64 %i.df, %i.ch                ; 2 uses
  %i.dl = mul nsw i64 %i.dk, 7682                 ; 2 uses
  %.neg302 = mul nsw i64 %i.ch, -16549
  %i.dm = add nsw i64 %i.dh, %.neg302
  %i.dn = add nsw i64 %i.dm, %i.dj
  %i.do = add nsw i64 %i.dn, %i.dl                ; 2 uses
  %i.dp = add nsw i64 %i.cx, %i.cp
  %i.dq = mul nsw i64 %i.dp, -2773                ; 2 uses
  %i.dr = mul nsw i64 %i.cp, 6859
  %.neg303 = mul nsw i64 %i.cx, -12879
  %i.ds = add nsw i64 %i.dq, %.neg303
  %i.dt = add nsw i64 %i.ds, %i.dj
  %i.du = add nsw i64 %i.df, %i.cp
  %i.dv = mul nsw i64 %i.du, -9534                ; 2 uses
  %i.dw = add nsw i64 %i.dh, %i.dr
  %i.dx = add nsw i64 %i.dw, %i.dq
  %i.dy = add nsw i64 %i.dx, %i.dv                ; 2 uses
  %i.dz = mul nsw i64 %i.df, 18068
  %i.ea = add nsw i64 %i.dv, %i.dz
  %i.eb = add nsw i64 %i.ea, %i.dl
  %i.ec = add nsw i64 %i.df, %i.cx
  %i.ed = mul nsw i64 %i.ec, -5384                ; 2 uses
  %i.ee = add nsw i64 %i.dt, %i.ed                ; 2 uses
  %i.ef = add nsw i64 %i.eb, %i.ed                ; 2 uses
  %i.eg = mul nsw i64 %i.dk, 2773
  %i.eh = mul nsw i64 %i.ch, 2611
  %.neg304 = mul nsw i64 %i.cp, -3818
  %i.ei = sub nsw i64 %i.cx, %i.cp
  %i.ej = mul nsw i64 %i.ei, 7682
  %i.ek = add nsw i64 %i.eg, %i.ej                ; 2 uses
  %i.el = add nsw i64 %i.ek, %i.eh
  %i.em = add nsw i64 %i.el, %.neg304             ; 2 uses
  %i.en = mul nsw i64 %i.cx, 3150
  %.neg305 = mul nsw i64 %i.df, -14273
  %i.eo = add nsw i64 %i.ek, %i.en
  %i.ep = add nsw i64 %i.eo, %.neg305             ; 2 uses
  %i.eq = add nsw i64 %i.do, %i.be
  %i.er = lshr i64 %i.eq, 12
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %.0295314, align 4, !tbaa !40
  %i.et = sub nsw i64 %i.be, %i.do
  %i.eu = lshr i64 %i.et, 12
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %.0295314, i64 384
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !40
  %i.ex = add nsw i64 %i.dy, %i.bn
  %i.ey = lshr i64 %i.ex, 12
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %.0295314, i64 32
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !40
  %i.fb = sub nsw i64 %i.bn, %i.dy
  %i.fc = lshr i64 %i.fb, 12
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %.0295314, i64 352
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !40
  %i.ff = add nsw i64 %i.ee, %i.bh
  %i.fg = lshr i64 %i.ff, 12
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %.0295314, i64 64
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !40
  %i.fj = sub nsw i64 %i.bh, %i.ee
  %i.fk = lshr i64 %i.fj, 12
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %.0295314, i64 320
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !40
  %i.fn = add nsw i64 %i.ef, %i.bt
  %i.fo = lshr i64 %i.fn, 12
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %.0295314, i64 96
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !40
  %i.fr = sub nsw i64 %i.bt, %i.ef
  %i.fs = lshr i64 %i.fr, 12
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %.0295314, i64 288
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !40
  %i.fv = add nsw i64 %i.em, %i.bw
  %i.fw = lshr i64 %i.fv, 12
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %.0295314, i64 128
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !40
  %i.fz = sub nsw i64 %i.bw, %i.em
  %i.ga = lshr i64 %i.fz, 12
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = getelementptr inbounds nuw i8, ptr %.0295314, i64 256
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !40
  %i.gd = add nsw i64 %i.ep, %i.bq
  %i.ge = lshr i64 %i.gd, 12
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %.0295314, i64 160
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !40
  %i.gh = sub nsw i64 %i.bq, %i.ep
  %i.gi = lshr i64 %i.gh, 12
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %.0295314, i64 224
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !40
  %i.gl = lshr i64 %i.bz, 12
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %.0295314, i64 192
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !40
  %i.go = add nuw nsw i32 %.0315, 1               ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0298312, i64 2
  %i.gq = getelementptr inbounds nuw i8, ptr %.0297313, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %.0295314, i64 4
  %exitcond.not = icmp eq i32 %i.go, 8
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !60

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1296316 = phi ptr [ %i.a, %.preheader ], [ %i.nf, %bb.e ] ; 9 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !43
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %i.r ; 13 uses
  %i.gv = load i32, ptr %.1296316, align 16, !tbaa !40
  %i.gw = sext i32 %i.gv to i64
  %i.gx = shl nsw i64 %i.gw, 13
  %i.gy = add nsw i64 %i.gx, 65536                ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.1296316, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !40
  %i.hb = zext i32 %i.ha to i64                   ; 7 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.1296316, i64 16
  %i.hd = load i32, ptr %i.hc, align 16, !tbaa !40
  %i.he = zext i32 %i.hd to i64                   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.1296316, i64 24
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !40
  %i.hh = zext i32 %i.hg to i64                   ; 2 uses
  %i.hi = add nuw nsw i64 %i.hh, %i.he            ; 3 uses
  %i.hj = sub nsw i64 %i.he, %i.hh                ; 4 uses
  %i.hk = mul nuw nsw i64 %i.hi, 9465             ; 2 uses
  %i.hl = mul nsw i64 %i.hj, 793
  %i.hm = add nsw i64 %i.hl, %i.gy                ; 2 uses
  %i.hn = mul nuw nsw i64 %i.hb, 11249
  %i.ho = add nuw nsw i64 %i.hk, %i.hn
  %i.hp = add nsw i64 %i.ho, %i.hm                ; 2 uses
  %i.hq = mul nuw nsw i64 %i.hb, 4108
  %i.hr = sub nsw i64 %i.hq, %i.hk
  %i.hs = add nsw i64 %i.hr, %i.hm                ; 2 uses
  %i.ht = mul nuw nsw i64 %i.hi, 2592             ; 2 uses
  %i.hu = mul nsw i64 %i.hj, 3989
  %i.hv = add nsw i64 %i.hu, %i.gy                ; 2 uses
  %i.hw = mul nuw nsw i64 %i.hb, 8672
  %i.hx = sub nsw i64 %i.hw, %i.ht
  %i.hy = add nsw i64 %i.hx, %i.hv                ; 2 uses
  %i.hz = mul nsw i64 %i.hb, -10258
  %i.ia = add nsw i64 %i.ht, %i.hz
  %i.ib = add nsw i64 %i.ia, %i.hv                ; 2 uses
  %i.ic = mul nuw nsw i64 %i.hi, 3570             ; 2 uses
  %.neg321 = mul nsw i64 %i.hj, -7678
  %.neg320 = add nsw i64 %.neg321, %i.gy          ; 2 uses
  %i.id = mul nsw i64 %i.hb, -1396
  %.neg308 = sub nsw i64 %i.id, %i.ic
  %i.ie = add nsw i64 %.neg308, %.neg320          ; 2 uses
  %i.if = mul nsw i64 %i.hb, -6581
  %i.ig = add nsw i64 %i.ic, %i.if
  %i.ih = add nsw i64 %i.ig, %.neg320             ; 2 uses
  %i.ii = sub nsw i64 %i.hj, %i.hb
  %i.ij = mul nsw i64 %i.ii, 11585
  %i.ik = add nsw i64 %i.ij, %i.gy
  %i.il = getelementptr inbounds nuw i8, ptr %.1296316, i64 4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !40
  %i.in = zext i32 %i.im to i64                   ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.1296316, i64 12
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !40
  %i.iq = zext i32 %i.ip to i64                   ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.1296316, i64 20
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !40
  %i.it = zext i32 %i.is to i64                   ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.1296316, i64 28
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !40
  %i.iw = zext i32 %i.iv to i64                   ; 5 uses
  %i.ix = add nuw nsw i64 %i.iq, %i.in
  %i.iy = mul nuw nsw i64 %i.ix, 10832            ; 2 uses
  %i.iz = add nuw nsw i64 %i.it, %i.in
  %i.ja = mul nuw nsw i64 %i.iz, 9534             ; 2 uses
  %i.jb = add nuw nsw i64 %i.iw, %i.in            ; 2 uses
  %i.jc = mul nuw nsw i64 %i.jb, 7682             ; 2 uses
  %.neg = mul nsw i64 %i.in, -16549
  %i.jd = add nsw i64 %i.iy, %.neg
  %i.je = add nsw i64 %i.jd, %i.ja
  %i.jf = add nsw i64 %i.je, %i.jc                ; 2 uses
  %i.jg = add nuw nsw i64 %i.it, %i.iq
  %i.jh = mul nsw i64 %i.jg, -2773                ; 2 uses
  %i.ji = mul nuw nsw i64 %i.iq, 6859
  %.neg299 = mul nsw i64 %i.it, -12879
  %i.jj = add nsw i64 %i.jh, %.neg299
  %i.jk = add nsw i64 %i.jj, %i.ja
  %i.jl = add nuw nsw i64 %i.iw, %i.iq
  %i.jm = mul nsw i64 %i.jl, -9534                ; 2 uses
  %i.jn = add nuw nsw i64 %i.iy, %i.ji
  %i.jo = add nsw i64 %i.jn, %i.jh
  %i.jp = add nsw i64 %i.jo, %i.jm                ; 2 uses
  %i.jq = mul nuw nsw i64 %i.iw, 18068
  %i.jr = add nsw i64 %i.jm, %i.jq
  %i.js = add nsw i64 %i.jr, %i.jc
  %i.jt = add nuw nsw i64 %i.iw, %i.it
  %i.ju = mul nsw i64 %i.jt, -5384                ; 2 uses
  %i.jv = add nsw i64 %i.jk, %i.ju                ; 2 uses
  %i.jw = add nsw i64 %i.js, %i.ju                ; 2 uses
  %i.jx = mul nuw nsw i64 %i.jb, 2773
  %i.jy = mul nuw nsw i64 %i.in, 2611
  %.neg300 = mul nsw i64 %i.iq, -3818
  %i.jz = sub nsw i64 %i.it, %i.iq
  %i.ka = mul nsw i64 %i.jz, 7682
  %i.kb = add nsw i64 %i.jx, %i.ka                ; 2 uses
  %i.kc = add nsw i64 %i.kb, %i.jy
  %i.kd = add nsw i64 %i.kc, %.neg300             ; 2 uses
  %i.ke = mul nuw nsw i64 %i.it, 3150
  %.neg301 = mul nsw i64 %i.iw, -14273
  %i.kf = add nsw i64 %i.kb, %i.ke
  %i.kg = add nsw i64 %i.kf, %.neg301             ; 2 uses
  %i.kh = add nsw i64 %i.jf, %i.hp
  %i.ki = lshr i64 %i.kh, 17
  %i.kj = and i64 %i.ki, 16383
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.kj
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !39
  store i16 %i.kl, ptr %i.gu, align 2, !tbaa !39
  %i.km = sub nsw i64 %i.hp, %i.jf
  %i.kn = lshr i64 %i.km, 17
  %i.ko = and i64 %i.kn, 16383
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ko
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !39
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !39
  %i.ks = add nsw i64 %i.jp, %i.hy
  %i.kt = lshr i64 %i.ks, 17
  %i.ku = and i64 %i.kt, 16383
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !39
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !39
  %i.ky = sub nsw i64 %i.hy, %i.jp
  %i.kz = lshr i64 %i.ky, 17
  %i.la = and i64 %i.kz, 16383
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !39
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gu, i64 22
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !39
  %i.le = add nsw i64 %i.jv, %i.hs
  %i.lf = lshr i64 %i.le, 17
  %i.lg = and i64 %i.lf, 16383
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !39
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !39
  %i.lk = sub nsw i64 %i.hs, %i.jv
  %i.ll = lshr i64 %i.lk, 17
  %i.lm = and i64 %i.ll, 16383
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !39
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  store i16 %i.lo, ptr %i.lp, align 2, !tbaa !39
  %i.lq = add nsw i64 %i.jw, %i.ie
  %i.lr = lshr i64 %i.lq, 17
  %i.ls = and i64 %i.lr, 16383
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ls
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !39
  %i.lv = getelementptr inbounds nuw i8, ptr %i.gu, i64 6
  store i16 %i.lu, ptr %i.lv, align 2, !tbaa !39
  %i.lw = sub nsw i64 %i.ie, %i.jw
  %i.lx = lshr i64 %i.lw, 17
  %i.ly = and i64 %i.lx, 16383
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !39
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gu, i64 18
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !39
  %i.mc = add nsw i64 %i.kd, %i.ih
  %i.md = lshr i64 %i.mc, 17
  %i.me = and i64 %i.md, 16383
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !39
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !39
  %i.mi = sub nsw i64 %i.ih, %i.kd
  %i.mj = lshr i64 %i.mi, 17
  %i.mk = and i64 %i.mj, 16383
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.mk
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !39
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store i16 %i.mm, ptr %i.mn, align 2, !tbaa !39
  %i.mo = add nsw i64 %i.kg, %i.ib
  %i.mp = lshr i64 %i.mo, 17
  %i.mq = and i64 %i.mp, 16383
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.mq
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !39
  %i.mt = getelementptr inbounds nuw i8, ptr %i.gu, i64 10
  store i16 %i.ms, ptr %i.mt, align 2, !tbaa !39
  %i.mu = sub nsw i64 %i.ib, %i.kg
  %i.mv = lshr i64 %i.mu, 17
  %i.mw = and i64 %i.mv, 16383
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.mw
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !39
  %i.mz = getelementptr inbounds nuw i8, ptr %i.gu, i64 14
  store i16 %i.my, ptr %i.mz, align 2, !tbaa !39
  %i.na = lshr i64 %i.ik, 17
  %i.nb = and i64 %i.na, 16383
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.nb
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !39
  %i.ne = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i16 %i.nd, ptr %i.ne, align 2, !tbaa !39
  %i.nf = getelementptr inbounds nuw i8, ptr %.1296316, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond323.not, label %bb.f, label %bb.e, !llvm.loop !61

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_14x14(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i32], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@jpeg12_idct_14x14:bb.a
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.q, %i.w
  %i.y = or disjoint i64 %i.x, 2048               ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0298318, i64 64
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !39
  %i.ab = sext i16 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0297319, i64 128
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40
  %i.ae = mul nsw i32 %i.ad, %i.ab
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.n, %i.af                 ; 4 uses
  %i.ah = mul nsw i64 %i.ag, 10438
  %i.ai = mul nsw i64 %i.ag, 2578
  %.neg307 = mul nsw i64 %i.ag, -7223
  %i.aj = add nsw i64 %i.ah, %i.y                 ; 2 uses
  %i.ak = add nsw i64 %i.ai, %i.y                 ; 2 uses
  %i.al = add nsw i64 %.neg307, %i.y              ; 2 uses
  %.neg308 = mul nsw i64 %i.ag, -11586
  %i.am = add nsw i64 %.neg308, %i.y
  %i.an = ashr i64 %i.am, 12                      ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0298318, i64 32
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !39
  %i.aq = sext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %.0297319, i64 64
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !40
  %i.at = mul nsw i32 %i.as, %i.aq
  %i.au = sext i32 %i.at to i64
  %i.av = mul nsw i64 %i.n, %i.au                 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0298318, i64 96
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !39
  %i.ay = sext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.0297319, i64 192
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !40
  %i.bb = mul nsw i32 %i.ba, %i.ay
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.n, %i.bc                 ; 3 uses
  %i.be = add nsw i64 %i.bd, %i.av
  %i.bf = mul nsw i64 %i.be, 9058                 ; 2 uses
  %i.bg = mul nsw i64 %i.av, 2237
  %i.bh = add nsw i64 %i.bf, %i.bg                ; 2 uses
  %.neg309 = mul nsw i64 %i.bd, -14084
  %i.bi = add nsw i64 %i.bf, %.neg309             ; 2 uses
  %i.bj = mul nsw i64 %i.av, 5027
  %.neg310 = mul nsw i64 %i.bd, -11295
  %i.bk = add nsw i64 %.neg310, %i.bj             ; 2 uses
  %i.bl = add nsw i64 %i.bh, %i.aj                ; 2 uses
  %i.bm = sub nsw i64 %i.aj, %i.bh                ; 2 uses
  %i.bn = add nsw i64 %i.bi, %i.ak                ; 2 uses
  %i.bo = sub nsw i64 %i.ak, %i.bi                ; 2 uses
  %i.bp = add nsw i64 %i.bk, %i.al                ; 2 uses
  %i.bq = sub nsw i64 %i.al, %i.bk                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0298318, i64 16
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !39
  %i.bt = sext i16 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.0297319, i64 32
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bw = mul nsw i32 %i.bv, %i.bt
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i64 %i.n, %i.bx                 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0298318, i64 48
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !39
  %i.cb = sext i16 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0297319, i64 96
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !40
  %i.ce = mul nsw i32 %i.cd, %i.cb
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul nsw i64 %i.n, %i.cf                 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0298318, i64 80
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !39
  %i.cj = sext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %.0297319, i64 160
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !40
  %i.cm = mul nsw i32 %i.cl, %i.cj
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i64 %i.n, %i.cn                 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0298318, i64 112
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !39
  %i.cr = sext i16 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %.0297319, i64 224
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !40
  %i.cu = mul nsw i32 %i.ct, %i.cr
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul nsw i64 %i.n, %i.cv                 ; 2 uses
  %i.cx = shl nsw i64 %i.cw, 13                   ; 4 uses
  %i.cy = add nsw i64 %i.co, %i.by                ; 2 uses
  %i.cz = add nsw i64 %i.cg, %i.by
  %i.da = mul nsw i64 %i.cz, 10935                ; 2 uses
  %i.db = mul nsw i64 %i.cy, 9810                 ; 2 uses
  %.neg311 = mul nsw i64 %i.by, -9232
  %i.dc = add nsw i64 %i.da, %.neg311
  %i.dd = add nsw i64 %i.dc, %i.db
  %i.de = add nsw i64 %i.dd, %i.cx                ; 2 uses
  %i.df = mul nsw i64 %i.cy, 6164                 ; 2 uses
  %.neg312 = mul nsw i64 %i.by, -8693
  %i.dg = add nsw i64 %i.df, %.neg312
  %i.dh = sub nsw i64 %i.by, %i.cg                ; 2 uses
  %i.di = mul nsw i64 %i.dh, 3826
  %i.dj = sub nsw i64 %i.di, %i.cx                ; 2 uses
  %i.dk = add nsw i64 %i.dg, %i.dj                ; 2 uses
  %i.dl = add nsw i64 %i.co, %i.cg
  %i.dm = mul nsw i64 %i.dl, -1297
  %i.dn = sub nsw i64 %i.dm, %i.cx                ; 2 uses
  %.neg313 = mul nsw i64 %i.cg, -3474
  %i.do = add nsw i64 %i.da, %.neg313
  %i.dp = add nsw i64 %i.do, %i.dn                ; 2 uses
  %.neg314 = mul nsw i64 %i.co, -19447
  %i.dq = add nsw i64 %i.db, %.neg314
  %i.dr = add nsw i64 %i.dq, %i.dn                ; 2 uses
  %i.ds = sub nsw i64 %i.co, %i.cg
  %i.dt = mul nsw i64 %i.ds, 11512                ; 2 uses
  %.neg315 = mul nsw i64 %i.co, -13850
  %i.du = add nsw i64 %i.dt, %.neg315
  %i.dv = add nsw i64 %i.du, %i.df
  %i.dw = add nsw i64 %i.dv, %i.cx                ; 2 uses
  %i.dx = mul nsw i64 %i.cg, 5529
  %i.dy = add nsw i64 %i.dt, %i.dx
  %i.dz = add nsw i64 %i.dy, %i.dj                ; 2 uses
  %i.ea = sub nsw i64 %i.dh, %i.co
  %i.eb = add nsw i64 %i.ea, %i.cw
  %i.ec = shl nsw i64 %i.eb, 1                    ; 2 uses
  %i.ed = add nsw i64 %i.de, %i.bl
  %i.ee = lshr i64 %i.ed, 12
  %i.ef = trunc i64 %i.ee to i32
  store i32 %i.ef, ptr %.0295320, align 4, !tbaa !40
  %i.eg = sub nsw i64 %i.bl, %i.de
  %i.eh = lshr i64 %i.eg, 12
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %.0295320, i64 416
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !40
  %i.ek = add nsw i64 %i.dp, %i.bn
  %i.el = lshr i64 %i.ek, 12
  %i.em = trunc i64 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %.0295320, i64 32
  store i32 %i.em, ptr %i.en, align 4, !tbaa !40
  %i.eo = sub nsw i64 %i.bn, %i.dp
  %i.ep = lshr i64 %i.eo, 12
  %i.eq = trunc i64 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %.0295320, i64 384
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !40
  %i.es = add nsw i64 %i.dr, %i.bp
  %i.et = lshr i64 %i.es, 12
  %i.eu = trunc i64 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %.0295320, i64 64
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !40
  %i.ew = sub nsw i64 %i.bp, %i.dr
  %i.ex = lshr i64 %i.ew, 12
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %.0295320, i64 352
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !40
  %i.fa = add nsw i64 %i.ec, %i.an
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %.0295320, i64 96
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !40
  %i.fd = sub nsw i64 %i.an, %i.ec
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %.0295320, i64 320
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !40
  %i.fg = add nsw i64 %i.dw, %i.bq
  %i.fh = lshr i64 %i.fg, 12
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %.0295320, i64 128
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !40
  %i.fk = sub nsw i64 %i.bq, %i.dw
  %i.fl = lshr i64 %i.fk, 12
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %.0295320, i64 288
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !40
  %i.fo = add nsw i64 %i.dz, %i.bo
  %i.fp = lshr i64 %i.fo, 12
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %.0295320, i64 160
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !40
  %i.fs = sub nsw i64 %i.bo, %i.dz
  %i.ft = lshr i64 %i.fs, 12
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %.0295320, i64 256
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !40
  %i.fw = add nsw i64 %i.dk, %i.bm
  %i.fx = lshr i64 %i.fw, 12
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = getelementptr inbounds nuw i8, ptr %.0295320, i64 192
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !40
  %i.ga = sub nsw i64 %i.bm, %i.dk
  %i.gb = lshr i64 %i.ga, 12
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = getelementptr inbounds nuw i8, ptr %.0295320, i64 224
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !40
  %i.ge = add nuw nsw i32 %.0321, 1               ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0298318, i64 2
  %i.gg = getelementptr inbounds nuw i8, ptr %.0297319, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %.0295320, i64 4
  %exitcond.not = icmp eq i32 %i.ge, 8
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !62

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1296322 = phi ptr [ %i.a, %.preheader ], [ %i.mo, %bb.e ] ; 9 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !43
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr %i.gj, i64 %i.r ; 14 uses
  %i.gl = load i32, ptr %.1296322, align 16, !tbaa !40
  %i.gm = sext i32 %i.gl to i64
  %i.gn = shl nsw i64 %i.gm, 13
  %i.go = add nsw i64 %i.gn, 65536                ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.1296322, i64 16
  %i.gq = load i32, ptr %i.gp, align 16, !tbaa !40
  %i.gr = zext i32 %i.gq to i64                   ; 4 uses
  %i.gs = mul nuw nsw i64 %i.gr, 10438
  %i.gt = mul nuw nsw i64 %i.gr, 2578
  %.neg = mul nsw i64 %i.gr, -7223
  %i.gu = add nsw i64 %i.go, %i.gs                ; 2 uses
  %i.gv = add nsw i64 %i.go, %i.gt                ; 2 uses
  %i.gw = add nsw i64 %.neg, %i.go                ; 2 uses
  %.neg299 = mul nsw i64 %i.gr, -11586
  %i.gx = add nsw i64 %.neg299, %i.go             ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.1296322, i64 8
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !40
  %i.ha = zext i32 %i.gz to i64                   ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.1296322, i64 24
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !40
  %i.hd = zext i32 %i.hc to i64                   ; 3 uses
  %i.he = add nuw nsw i64 %i.hd, %i.ha
  %i.hf = mul nuw nsw i64 %i.he, 9058             ; 2 uses
  %i.hg = mul nuw nsw i64 %i.ha, 2237
  %i.hh = add nuw nsw i64 %i.hf, %i.hg            ; 2 uses
  %.neg300 = mul nsw i64 %i.hd, -14084
  %i.hi = add nsw i64 %i.hf, %.neg300             ; 2 uses
  %i.hj = mul nuw nsw i64 %i.ha, 5027
  %.neg301 = mul nsw i64 %i.hd, -11295
  %i.hk = add nsw i64 %.neg301, %i.hj             ; 2 uses
  %i.hl = add nsw i64 %i.hh, %i.gu                ; 2 uses
  %i.hm = sub nsw i64 %i.gu, %i.hh                ; 2 uses
  %i.hn = add nsw i64 %i.hi, %i.gv                ; 2 uses
  %i.ho = sub nsw i64 %i.gv, %i.hi                ; 2 uses
  %i.hp = add nsw i64 %i.hk, %i.gw                ; 2 uses
  %i.hq = sub nsw i64 %i.gw, %i.hk                ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.1296322, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !40
  %i.ht = sext i32 %i.hs to i64                   ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1296322, i64 12
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !40
  %i.hw = sext i32 %i.hv to i64                   ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.1296322, i64 20
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !40
  %i.hz = sext i32 %i.hy to i64                   ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.1296322, i64 28
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !40
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = shl nsw i64 %i.ic, 13                   ; 4 uses
  %i.ie = add nsw i64 %i.hz, %i.ht                ; 2 uses
  %i.if = add nsw i64 %i.hw, %i.ht
  %i.ig = mul nsw i64 %i.if, 10935                ; 2 uses
  %i.ih = mul nsw i64 %i.ie, 9810                 ; 2 uses
  %.neg302 = mul nsw i64 %i.ht, -9232
  %i.ii = add nsw i64 %i.ig, %.neg302
  %i.ij = add nsw i64 %i.ii, %i.ih
  %i.ik = add nsw i64 %i.ij, %i.id                ; 2 uses
  %i.il = mul nsw i64 %i.ie, 6164                 ; 2 uses
  %.neg303 = mul nsw i64 %i.ht, -8693
  %i.im = add nsw i64 %i.il, %.neg303
  %i.in = sub nsw i64 %i.ht, %i.hw                ; 2 uses
  %i.io = mul nsw i64 %i.in, 3826
  %i.ip = sub nsw i64 %i.io, %i.id                ; 2 uses
  %i.iq = add nsw i64 %i.im, %i.ip                ; 2 uses
  %i.ir = add nsw i64 %i.hz, %i.hw
  %i.is = mul nsw i64 %i.ir, -1297
  %i.it = sub nsw i64 %i.is, %i.id                ; 2 uses
  %.neg304 = mul nsw i64 %i.hw, -3474
  %i.iu = add nsw i64 %i.ig, %.neg304
  %i.iv = add nsw i64 %i.iu, %i.it                ; 2 uses
  %.neg305 = mul nsw i64 %i.hz, -19447
  %i.iw = add nsw i64 %i.ih, %.neg305
  %i.ix = add nsw i64 %i.iw, %i.it                ; 2 uses
  %i.iy = sub nsw i64 %i.hz, %i.hw
  %i.iz = mul nsw i64 %i.iy, 11512                ; 2 uses
  %.neg306 = mul nsw i64 %i.hz, -13850
  %i.ja = add nsw i64 %i.id, %.neg306
  %i.jb = add nsw i64 %i.ja, %i.iz
  %i.jc = add nsw i64 %i.jb, %i.il                ; 2 uses
  %i.jd = mul nsw i64 %i.hw, 5529
  %i.je = add nsw i64 %i.iz, %i.jd
  %i.jf = add nsw i64 %i.je, %i.ip                ; 2 uses
  %i.jg = sub nsw i64 %i.in, %i.hz
  %i.jh = add nsw i64 %i.jg, %i.ic
  %i.ji = shl nsw i64 %i.jh, 13                   ; 2 uses
  %i.jj = add nsw i64 %i.ik, %i.hl
  %i.jk = lshr i64 %i.jj, 17
  %i.jl = and i64 %i.jk, 16383
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !39
  store i16 %i.jn, ptr %i.gk, align 2, !tbaa !39
  %i.jo = sub nsw i64 %i.hl, %i.ik
  %i.jp = lshr i64 %i.jo, 17
  %i.jq = and i64 %i.jp, 16383
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !39
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gk, i64 26
  store i16 %i.js, ptr %i.jt, align 2, !tbaa !39
  %i.ju = add nsw i64 %i.iv, %i.hn
  %i.jv = lshr i64 %i.ju, 17
  %i.jw = and i64 %i.jv, 16383
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jw
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !39
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !39
  %i.ka = sub nsw i64 %i.hn, %i.iv
  %i.kb = lshr i64 %i.ka, 17
  %i.kc = and i64 %i.kb, 16383
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !39
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !39
  %i.kg = add nsw i64 %i.ix, %i.hp
  %i.kh = lshr i64 %i.kg, 17
  %i.ki = and i64 %i.kh, 16383
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !39
  %i.kl = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store i16 %i.kk, ptr %i.kl, align 2, !tbaa !39
  %i.km = sub nsw i64 %i.hp, %i.ix
  %i.kn = lshr i64 %i.km, 17
  %i.ko = and i64 %i.kn, 16383
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ko
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !39
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gk, i64 22
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !39
  %i.ks = add nsw i64 %i.ji, %i.gx
  %i.kt = lshr i64 %i.ks, 17
  %i.ku = and i64 %i.kt, 16383
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !39
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gk, i64 6
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !39
  %i.ky = sub nsw i64 %i.gx, %i.ji
  %i.kz = lshr i64 %i.ky, 17
  %i.la = and i64 %i.kz, 16383
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !39
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gk, i64 20
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !39
  %i.le = add nsw i64 %i.jc, %i.hq
  %i.lf = lshr i64 %i.le, 17
  %i.lg = and i64 %i.lf, 16383
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !39
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !39
  %i.lk = sub nsw i64 %i.hq, %i.jc
  %i.ll = lshr i64 %i.lk, 17
  %i.lm = and i64 %i.ll, 16383
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !39
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gk, i64 18
  store i16 %i.lo, ptr %i.lp, align 2, !tbaa !39
  %i.lq = add nsw i64 %i.jf, %i.ho
  %i.lr = lshr i64 %i.lq, 17
  %i.ls = and i64 %i.lr, 16383
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ls
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !39
  %i.lv = getelementptr inbounds nuw i8, ptr %i.gk, i64 10
  store i16 %i.lu, ptr %i.lv, align 2, !tbaa !39
  %i.lw = sub nsw i64 %i.ho, %i.jf
  %i.lx = lshr i64 %i.lw, 17
  %i.ly = and i64 %i.lx, 16383
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !39
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !39
  %i.mc = add nsw i64 %i.iq, %i.hm
  %i.md = lshr i64 %i.mc, 17
  %i.me = and i64 %i.md, 16383
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !39
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !39
  %i.mi = sub nsw i64 %i.hm, %i.iq
  %i.mj = lshr i64 %i.mi, 17
  %i.mk = and i64 %i.mj, 16383
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.mk
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !39
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gk, i64 14
  store i16 %i.mm, ptr %i.mn, align 2, !tbaa !39
  %i.mo = getelementptr inbounds nuw i8, ptr %.1296322, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond325.not, label %bb.f, label %bb.e, !llvm.loop !63

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_15x15(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [120 x i32], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq i32 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = icmp eq i32 %i.k, 12
  %i.m = select i1 %i.l, i64 16, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ 1, %bb.a ], [ %i.m, %bb.b ]    ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = shl nuw nsw i64 %i.n, 13
  br label %bb.d
end_hunk_3
begin_hunk_4_@jpeg12_idct_15x15:bb.a
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %i.n, %i.af                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0316344, i64 64
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !39
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0315345, i64 128
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.am = mul nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i64 %i.n, %i.an                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0316344, i64 96
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %.0315345, i64 192
  %i.at = load i32, ptr %i.as, align 4, !tbaa !40
  %i.au = mul nsw i32 %i.at, %i.ar
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %i.n, %i.av                 ; 3 uses
  %.neg322 = mul nsw i64 %i.aw, -3580
  %i.ax = mul nsw i64 %i.aw, 9373
  %i.ay = add nsw i64 %.neg322, %i.y              ; 3 uses
  %i.az = add nsw i64 %i.ax, %i.y                 ; 3 uses
  %.neg323 = mul nsw i64 %i.aw, -11586
  %i.ba = add nsw i64 %.neg323, %i.y              ; 2 uses
  %i.bb = sub nsw i64 %i.ag, %i.ao                ; 5 uses
  %i.bc = add nsw i64 %i.ao, %i.ag                ; 3 uses
  %i.bd = mul nsw i64 %i.bc, 10958                ; 2 uses
  %i.be = mul nsw i64 %i.bb, 374                  ; 2 uses
  %i.bf = mul nsw i64 %i.ag, 11795                ; 2 uses
  %i.bg = add nsw i64 %i.be, %i.bd
  %i.bh = add nsw i64 %i.bg, %i.az                ; 2 uses
  %i.bi = sub nsw i64 %i.bf, %i.bd
  %i.bj = add nsw i64 %i.bi, %i.be
  %i.bk = add nsw i64 %i.bj, %i.ay                ; 2 uses
  %i.bl = mul nsw i64 %i.bc, 4482                 ; 2 uses
  %.neg338 = mul nsw i64 %i.bb, -3271             ; 2 uses
  %.neg339 = sub nsw i64 %.neg338, %i.bl
  %i.bm = add nsw i64 %.neg339, %i.az             ; 2 uses
  %.neg341 = sub nsw i64 %i.bl, %i.bf
  %i.bn = add nsw i64 %.neg341, %.neg338
  %i.bo = add nsw i64 %i.bn, %i.ay                ; 2 uses
  %i.bp = mul nsw i64 %i.bc, 6476                 ; 2 uses
  %i.bq = mul nsw i64 %i.bb, 2896                 ; 2 uses
  %i.br = add nsw i64 %i.bq, %i.bp
  %i.bs = add nsw i64 %i.br, %i.ay                ; 2 uses
  %i.bt = sub nsw i64 %i.az, %i.bp
  %i.bu = add nsw i64 %i.bt, %i.bq                ; 2 uses
  %i.bv = mul nsw i64 %i.bb, 5792
  %i.bw = add nsw i64 %i.ba, %i.bv                ; 2 uses
  %.neg324 = mul i64 %i.bb, 17592186032832
  %i.bx = add i64 %i.ba, %.neg324
  %i.by = getelementptr inbounds nuw i8, ptr %.0316344, i64 16
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !39
  %i.ca = sext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %.0315345, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !40
  %i.cd = mul nsw i32 %i.cc, %i.ca
  %i.ce = sext i32 %i.cd to i64
  %i.cf = mul nsw i64 %i.n, %i.ce                 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0316344, i64 48
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !39
  %i.ci = sext i16 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %.0315345, i64 96
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !40
  %i.cl = mul nsw i32 %i.ck, %i.ci
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i64 %i.n, %i.cm                 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0316344, i64 80
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !39
  %i.cq = sext i16 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.0315345, i64 160
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !40
  %i.ct = mul nsw i32 %i.cs, %i.cq
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.n, %i.cu                 ; 2 uses
  %i.cw = mul nsw i64 %i.cv, 10033                ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0316344, i64 112
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !39
  %i.cz = sext i16 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.0315345, i64 224
  %i.db = load i32, ptr %i.da, align 4, !tbaa !40
  %i.dc = mul nsw i32 %i.db, %i.cz
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %i.n, %i.dd                 ; 5 uses
  %i.df = sub nsw i64 %i.cn, %i.de                ; 2 uses
  %i.dg = add nsw i64 %i.df, %i.cf
  %i.dh = mul nsw i64 %i.dg, 6810                 ; 2 uses
  %i.di = mul nsw i64 %i.cf, 4209
  %i.dj = add nsw i64 %i.dh, %i.di                ; 2 uses
  %.neg325 = mul nsw i64 %i.df, -17828
  %i.dk = add nsw i64 %i.dh, %.neg325             ; 2 uses
  %i.dl = mul nsw i64 %i.cn, -6810                ; 2 uses
  %i.dm = mul nsw i64 %i.cn, -11018               ; 2 uses
  %i.dn = sub nsw i64 %i.cf, %i.de                ; 2 uses
  %i.do = mul nsw i64 %i.dn, 11522
  %i.dp = add nsw i64 %i.do, %i.cw                ; 2 uses
  %i.dq = mul nsw i64 %i.de, 20131
  %i.dr = sub nsw i64 %i.dq, %i.dm
  %i.ds = add nsw i64 %i.dr, %i.dp                ; 2 uses
  %.neg326 = mul nsw i64 %i.cf, -9113
  %i.dt = add nsw i64 %i.dl, %.neg326
  %i.du = add nsw i64 %i.dt, %i.dp                ; 2 uses
  %i.dv = sub nsw i64 %i.dn, %i.cv
  %i.dw = mul nsw i64 %i.dv, 10033                ; 2 uses
  %i.dx = add nsw i64 %i.de, %i.cf
  %i.dy = mul nsw i64 %i.dx, 4712                 ; 2 uses
  %i.dz = mul nsw i64 %i.cf, 3897
  %i.ea = add nsw i64 %i.dl, %i.dz
  %i.eb = sub nsw i64 %i.ea, %i.cw
  %i.ec = add nsw i64 %i.eb, %i.dy                ; 2 uses
  %.neg327 = mul nsw i64 %i.de, -7121
  %i.ed = add nsw i64 %i.cw, %i.dm
  %i.ee = add nsw i64 %i.ed, %.neg327
  %i.ef = add nsw i64 %i.ee, %i.dy                ; 2 uses
  %i.eg = add nsw i64 %i.ds, %i.bh
  %i.eh = lshr i64 %i.eg, 12
  %i.ei = trunc i64 %i.eh to i32
  store i32 %i.ei, ptr %.0313346, align 4, !tbaa !40
  %i.ej = sub nsw i64 %i.bh, %i.ds
  %i.ek = lshr i64 %i.ej, 12
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr inbounds nuw i8, ptr %.0313346, i64 448
  store i32 %i.el, ptr %i.em, align 4, !tbaa !40
  %i.en = add nsw i64 %i.dj, %i.bs
  %i.eo = lshr i64 %i.en, 12
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %.0313346, i64 32
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !40
  %i.er = sub nsw i64 %i.bs, %i.dj
  %i.es = lshr i64 %i.er, 12
  %i.et = trunc i64 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %.0313346, i64 416
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !40
  %i.ev = add nsw i64 %i.dw, %i.bw
  %i.ew = lshr i64 %i.ev, 12
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %.0313346, i64 64
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !40
  %i.ez = sub nsw i64 %i.bw, %i.dw
  %i.fa = lshr i64 %i.ez, 12
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %.0313346, i64 384
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !40
  %i.fd = add nsw i64 %i.ec, %i.bk
  %i.fe = lshr i64 %i.fd, 12
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = getelementptr inbounds nuw i8, ptr %.0313346, i64 96
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !40
  %i.fh = sub nsw i64 %i.bk, %i.ec
  %i.fi = lshr i64 %i.fh, 12
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %.0313346, i64 352
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !40
  %i.fl = add nsw i64 %i.dk, %i.bu
  %i.fm = lshr i64 %i.fl, 12
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = getelementptr inbounds nuw i8, ptr %.0313346, i64 128
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !40
  %i.fp = sub nsw i64 %i.bu, %i.dk
  %i.fq = lshr i64 %i.fp, 12
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %.0313346, i64 320
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !40
  %i.ft = add nsw i64 %i.ef, %i.bm
  %i.fu = lshr i64 %i.ft, 12
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = getelementptr inbounds nuw i8, ptr %.0313346, i64 160
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !40
  %i.fx = sub nsw i64 %i.bm, %i.ef
  %i.fy = lshr i64 %i.fx, 12
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %.0313346, i64 288
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !40
  %i.gb = add nsw i64 %i.du, %i.bo
  %i.gc = lshr i64 %i.gb, 12
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %.0313346, i64 192
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !40
  %i.gf = sub nsw i64 %i.bo, %i.du
  %i.gg = lshr i64 %i.gf, 12
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %.0313346, i64 256
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !40
  %i.gj = lshr i64 %i.bx, 12
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = getelementptr inbounds nuw i8, ptr %.0313346, i64 224
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !40
  %i.gm = add nuw nsw i32 %.0347, 1               ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0316344, i64 2
  %i.go = getelementptr inbounds nuw i8, ptr %.0315345, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.0313346, i64 4
  %exitcond.not = icmp eq i32 %i.gm, 8
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !64

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1314348 = phi ptr [ %i.a, %.preheader ], [ %i.nf, %bb.e ] ; 9 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !43
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gr, i64 %i.r ; 15 uses
  %i.gt = load i32, ptr %.1314348, align 16, !tbaa !40
  %i.gu = sext i32 %i.gt to i64
  %i.gv = shl nsw i64 %i.gu, 13
  %i.gw = add nsw i64 %i.gv, 65536                ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.1314348, i64 8
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !40
  %i.gz = zext i32 %i.gy to i64                   ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.1314348, i64 16
  %i.hb = load i32, ptr %i.ha, align 16, !tbaa !40
  %i.hc = zext i32 %i.hb to i64                   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.1314348, i64 24
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !40
  %i.hf = zext i32 %i.he to i64                   ; 3 uses
  %.neg = mul nsw i64 %i.hf, -3580
  %i.hg = mul nuw nsw i64 %i.hf, 9373
  %i.hh = add nsw i64 %.neg, %i.gw                ; 3 uses
  %i.hi = add nsw i64 %i.hg, %i.gw                ; 3 uses
  %.neg317 = mul nsw i64 %i.hf, -11586
  %i.hj = add nsw i64 %.neg317, %i.gw             ; 2 uses
  %i.hk = sub nsw i64 %i.gz, %i.hc                ; 5 uses
  %i.hl = add nuw nsw i64 %i.hc, %i.gz            ; 3 uses
  %i.hm = mul nuw nsw i64 %i.hl, 10958            ; 2 uses
  %i.hn = mul nsw i64 %i.hk, 374                  ; 2 uses
  %i.ho = mul nuw nsw i64 %i.gz, 11795            ; 2 uses
  %i.hp = add nsw i64 %i.hn, %i.hm
  %i.hq = add nsw i64 %i.hp, %i.hi                ; 2 uses
  %i.hr = sub nsw i64 %i.ho, %i.hm
  %i.hs = add nsw i64 %i.hr, %i.hn
  %i.ht = add nsw i64 %i.hs, %i.hh                ; 2 uses
  %i.hu = mul nuw nsw i64 %i.hl, 4482             ; 2 uses
  %.neg330 = mul nsw i64 %i.hk, -3271             ; 2 uses
  %.neg331 = sub nsw i64 %.neg330, %i.hu
  %i.hv = add nsw i64 %.neg331, %i.hi             ; 2 uses
  %.neg333 = sub nsw i64 %i.hu, %i.ho
  %i.hw = add nsw i64 %.neg333, %.neg330
  %i.hx = add nsw i64 %i.hw, %i.hh                ; 2 uses
  %i.hy = mul nuw nsw i64 %i.hl, 6476             ; 2 uses
  %i.hz = mul nsw i64 %i.hk, 2896                 ; 2 uses
  %i.ia = add nsw i64 %i.hz, %i.hy
  %i.ib = add nsw i64 %i.ia, %i.hh                ; 2 uses
  %i.ic = sub nsw i64 %i.hi, %i.hy
  %i.id = add nsw i64 %i.ic, %i.hz                ; 2 uses
  %i.ie = mul nsw i64 %i.hk, 5792
  %i.if = add nsw i64 %i.hj, %i.ie                ; 2 uses
  %.neg318 = mul nsw i64 %i.hk, 2147472064
  %i.ig = add i64 %i.hj, %.neg318
  %i.ih = getelementptr inbounds nuw i8, ptr %.1314348, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !40
  %i.ij = zext i32 %i.ii to i64                   ; 6 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.1314348, i64 12
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !40
  %i.im = zext i32 %i.il to i64                   ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.1314348, i64 20
  %i.io = load i32, ptr %i.in, align 4, !tbaa !40
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = mul nuw nsw i64 %i.ip, 10033            ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.1314348, i64 28
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !40
  %i.it = zext i32 %i.is to i64                   ; 5 uses
  %i.iu = sub nsw i64 %i.im, %i.it                ; 2 uses
  %i.iv = add nsw i64 %i.iu, %i.ij
  %i.iw = mul nsw i64 %i.iv, 6810                 ; 2 uses
  %i.ix = mul nuw nsw i64 %i.ij, 4209
  %i.iy = add nsw i64 %i.iw, %i.ix                ; 2 uses
  %.neg319 = mul nsw i64 %i.iu, -17828
  %i.iz = add nsw i64 %i.iw, %.neg319             ; 2 uses
  %i.ja = mul nsw i64 %i.im, -6810                ; 2 uses
  %i.jb = mul nsw i64 %i.im, -11018               ; 2 uses
  %i.jc = sub nsw i64 %i.ij, %i.it                ; 2 uses
  %i.jd = mul nsw i64 %i.jc, 11522
  %i.je = add nsw i64 %i.jd, %i.iq                ; 2 uses
  %i.jf = mul nuw nsw i64 %i.it, 20131
  %i.jg = sub nsw i64 %i.jf, %i.jb
  %i.jh = add nsw i64 %i.jg, %i.je                ; 2 uses
  %.neg320 = mul nsw i64 %i.ij, -9113
  %i.ji = add nsw i64 %i.ja, %.neg320
  %i.jj = add nsw i64 %i.ji, %i.je                ; 2 uses
  %i.jk = sub nsw i64 %i.jc, %i.ip
  %i.jl = mul nsw i64 %i.jk, 10033                ; 2 uses
  %i.jm = add nuw nsw i64 %i.it, %i.ij
  %i.jn = mul nuw nsw i64 %i.jm, 4712             ; 2 uses
  %i.jo = mul nuw nsw i64 %i.ij, 3897
  %i.jp = add nsw i64 %i.ja, %i.jo
  %i.jq = sub nsw i64 %i.jp, %i.iq
  %i.jr = add nsw i64 %i.jq, %i.jn                ; 2 uses
  %.neg321 = mul nsw i64 %i.it, -7121
  %i.js = add nsw i64 %i.iq, %i.jb
  %i.jt = add nsw i64 %i.js, %.neg321
  %i.ju = add nsw i64 %i.jt, %i.jn                ; 2 uses
  %i.jv = add nsw i64 %i.jh, %i.hq
  %i.jw = lshr i64 %i.jv, 17
  %i.jx = and i64 %i.jw, 16383
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.jx
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !39
  store i16 %i.jz, ptr %i.gs, align 2, !tbaa !39
  %i.ka = sub nsw i64 %i.hq, %i.jh
  %i.kb = lshr i64 %i.ka, 17
  %i.kc = and i64 %i.kb, 16383
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !39
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !39
  %i.kg = add nsw i64 %i.iy, %i.ib
  %i.kh = lshr i64 %i.kg, 17
  %i.ki = and i64 %i.kh, 16383
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !39
  %i.kl = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  store i16 %i.kk, ptr %i.kl, align 2, !tbaa !39
  %i.km = sub nsw i64 %i.ib, %i.iy
  %i.kn = lshr i64 %i.km, 17
  %i.ko = and i64 %i.kn, 16383
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ko
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !39
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gs, i64 26
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !39
  %i.ks = add nsw i64 %i.jl, %i.if
  %i.kt = lshr i64 %i.ks, 17
  %i.ku = and i64 %i.kt, 16383
  %i.kv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !39
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !39
  %i.ky = sub nsw i64 %i.if, %i.jl
  %i.kz = lshr i64 %i.ky, 17
  %i.la = and i64 %i.kz, 16383
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !39
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !39
  %i.le = add nsw i64 %i.jr, %i.ht
  %i.lf = lshr i64 %i.le, 17
  %i.lg = and i64 %i.lf, 16383
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !39
  %i.lj = getelementptr inbounds nuw i8, ptr %i.gs, i64 6
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !39
  %i.lk = sub nsw i64 %i.ht, %i.jr
  %i.ll = lshr i64 %i.lk, 17
  %i.lm = and i64 %i.ll, 16383
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !39
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gs, i64 22
  store i16 %i.lo, ptr %i.lp, align 2, !tbaa !39
  %i.lq = add nsw i64 %i.iz, %i.id
  %i.lr = lshr i64 %i.lq, 17
  %i.ls = and i64 %i.lr, 16383
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ls
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !39
  %i.lv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i16 %i.lu, ptr %i.lv, align 2, !tbaa !39
  %i.lw = sub nsw i64 %i.id, %i.iz
  %i.lx = lshr i64 %i.lw, 17
  %i.ly = and i64 %i.lx, 16383
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !39
  %i.mb = getelementptr inbounds nuw i8, ptr %i.gs, i64 20
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !39
  %i.mc = add nsw i64 %i.ju, %i.hv
  %i.md = lshr i64 %i.mc, 17
  %i.me = and i64 %i.md, 16383
  %i.mf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.me
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !39
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gs, i64 10
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !39
  %i.mi = sub nsw i64 %i.hv, %i.ju
  %i.mj = lshr i64 %i.mi, 17
  %i.mk = and i64 %i.mj, 16383
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.mk
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !39
  %i.mn = getelementptr inbounds nuw i8, ptr %i.gs, i64 18
  store i16 %i.mm, ptr %i.mn, align 2, !tbaa !39
  %i.mo = add nsw i64 %i.jj, %i.hx
  %i.mp = lshr i64 %i.mo, 17
  %i.mq = and i64 %i.mp, 16383
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.mq
  %i.ms = load i16, ptr %i.mr, align 2, !tbaa !39
  %i.mt = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i16 %i.ms, ptr %i.mt, align 2, !tbaa !39
  %i.mu = sub nsw i64 %i.hx, %i.jj
  %i.mv = lshr i64 %i.mu, 17
  %i.mw = and i64 %i.mv, 16383
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.mw
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !39
  %i.mz = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store i16 %i.my, ptr %i.mz, align 2, !tbaa !39
  %i.na = lshr i64 %i.ig, 17
  %i.nb = and i64 %i.na, 16383
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.nb
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !39
  %i.ne = getelementptr inbounds nuw i8, ptr %i.gs, i64 14
  store i16 %i.nd, ptr %i.ne, align 2, !tbaa !39
  %i.nf = getelementptr inbounds nuw i8, ptr %.1314348, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond351.not, label %bb.f, label %bb.e, !llvm.loop !65

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @jpeg12_idct_16x16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i32], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
end_hunk_4
begin_hunk_5_@jpeg12_idct_16x16:bb.a
  %i.ba = mul nsw i32 %i.az, %i.ax
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.n, %i.bb                 ; 3 uses
  %i.bd = sub nsw i64 %i.au, %i.bc                ; 2 uses
  %i.be = mul nsw i64 %i.bd, 2260                 ; 2 uses
  %i.bf = mul nsw i64 %i.bd, 11363                ; 2 uses
  %i.bg = mul nsw i64 %i.bc, 20995
  %i.bh = add nsw i64 %i.bf, %i.bg                ; 2 uses
  %i.bi = mul nsw i64 %i.au, 7373
  %i.bj = add nsw i64 %i.be, %i.bi                ; 2 uses
  %.neg371 = mul nsw i64 %i.au, -4926
  %i.bk = add nsw i64 %i.bf, %.neg371             ; 2 uses
  %.neg372 = mul nsw i64 %i.bc, -4176
  %i.bl = add nsw i64 %i.be, %.neg372             ; 2 uses
  %i.bm = add nsw i64 %i.bh, %i.aj                ; 2 uses
  %i.bn = sub nsw i64 %i.aj, %i.bh                ; 2 uses
  %i.bo = add nsw i64 %i.bj, %i.al                ; 2 uses
  %i.bp = sub nsw i64 %i.al, %i.bj                ; 2 uses
  %i.bq = add nsw i64 %i.bk, %i.am                ; 2 uses
  %i.br = sub nsw i64 %i.am, %i.bk                ; 2 uses
  %i.bs = add nsw i64 %i.bl, %i.ak                ; 2 uses
  %i.bt = sub nsw i64 %i.ak, %i.bl                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0365377, i64 16
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !39
  %i.bw = sext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %.0364378, i64 32
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !40
  %i.bz = mul nsw i32 %i.by, %i.bw
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul nsw i64 %i.n, %i.ca                 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0365377, i64 48
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !39
  %i.ce = sext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0364378, i64 96
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !40
  %i.ch = mul nsw i32 %i.cg, %i.ce
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul nsw i64 %i.n, %i.ci                 ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0365377, i64 80
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !39
  %i.cm = sext i16 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %.0364378, i64 160
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !40
  %i.cp = mul nsw i32 %i.co, %i.cm
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i64 %i.n, %i.cq                 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0365377, i64 112
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !39
  %i.cu = sext i16 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %.0364378, i64 224
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !40
  %i.cx = mul nsw i32 %i.cw, %i.cu
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul nsw i64 %i.n, %i.cy                 ; 7 uses
  %i.da = add nsw i64 %i.cr, %i.cb                ; 2 uses
  %i.db = add nsw i64 %i.cj, %i.cb
  %i.dc = mul nsw i64 %i.db, 11086                ; 2 uses
  %i.dd = mul nsw i64 %i.da, 10217                ; 2 uses
  %i.de = add nsw i64 %i.cz, %i.cb
  %i.df = mul nsw i64 %i.de, 8956                 ; 2 uses
  %i.dg = sub nsw i64 %i.cb, %i.cz
  %i.dh = mul nsw i64 %i.dg, 7350                 ; 2 uses
  %i.di = mul nsw i64 %i.da, 5461                 ; 2 uses
  %i.dj = sub nsw i64 %i.cb, %i.cj
  %i.dk = mul nsw i64 %i.dj, 3363                 ; 2 uses
  %.neg373 = mul nsw i64 %i.cb, -18730
  %i.dl = add nsw i64 %i.dc, %.neg373
  %i.dm = add nsw i64 %i.dl, %i.dd
  %i.dn = add nsw i64 %i.dm, %i.df                ; 2 uses
  %.neg374 = mul nsw i64 %i.cb, -15038
  %i.do = add nsw i64 %i.dk, %.neg374
  %i.dp = add nsw i64 %i.do, %i.di
  %i.dq = add nsw i64 %i.dp, %i.dh                ; 2 uses
  %i.dr = add nsw i64 %i.cr, %i.cj
  %i.ds = mul nsw i64 %i.dr, 1136                 ; 2 uses
  %i.dt = mul nsw i64 %i.cj, 589
  %.neg375 = mul nsw i64 %i.cr, -9222
  %i.du = add nsw i64 %i.ds, %.neg375
  %i.dv = add nsw i64 %i.du, %i.dd
  %i.dw = sub nsw i64 %i.cr, %i.cj
  %i.dx = mul nsw i64 %i.dw, 11529                ; 2 uses
  %.neg376 = mul nsw i64 %i.cr, -6278
  %i.dy = add nsw i64 %i.dx, %.neg376
  %i.dz = add nsw i64 %i.dy, %i.di
  %i.ea = mul nsw i64 %i.cj, 16154
  %i.eb = add nsw i64 %i.cz, %i.cj                ; 2 uses
  %i.ec = mul nsw i64 %i.eb, -5461                ; 2 uses
  %i.ed = add nsw i64 %i.dc, %i.dt
  %i.ee = add nsw i64 %i.ed, %i.ds
  %i.ef = add nsw i64 %i.ee, %i.ec                ; 2 uses
  %i.eg = mul nsw i64 %i.cz, 8728
  %i.eh = add nsw i64 %i.ec, %i.eg
  %i.ei = add nsw i64 %i.eh, %i.df
  %i.ej = mul nsw i64 %i.eb, -10217               ; 2 uses
  %i.ek = mul nsw i64 %i.cz, 25733
  %i.el = add nsw i64 %i.ej, %i.ek
  %i.em = add nsw i64 %i.el, %i.dh
  %i.en = add nsw i64 %i.dk, %i.ea
  %i.eo = add nsw i64 %i.en, %i.dx
  %i.ep = add nsw i64 %i.eo, %i.ej                ; 2 uses
  %i.eq = add nsw i64 %i.cz, %i.cr
  %i.er = mul nsw i64 %i.eq, -11086               ; 2 uses
  %i.es = add nsw i64 %i.dv, %i.er                ; 2 uses
  %i.et = add nsw i64 %i.ei, %i.er                ; 2 uses
  %i.eu = sub nsw i64 %i.cz, %i.cr
  %i.ev = mul nsw i64 %i.eu, 3363                 ; 2 uses
  %i.ew = add nsw i64 %i.em, %i.ev                ; 2 uses
  %i.ex = add nsw i64 %i.dz, %i.ev                ; 2 uses
  %i.ey = add nsw i64 %i.dn, %i.bm
  %i.ez = lshr i64 %i.ey, 12
  %i.fa = trunc i64 %i.ez to i32
  store i32 %i.fa, ptr %.0362379, align 4, !tbaa !40
  %i.fb = sub nsw i64 %i.bm, %i.dn
  %i.fc = lshr i64 %i.fb, 12
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %.0362379, i64 480
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !40
  %i.ff = add nsw i64 %i.ef, %i.bo
  %i.fg = lshr i64 %i.ff, 12
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = getelementptr inbounds nuw i8, ptr %.0362379, i64 32
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !40
  %i.fj = sub nsw i64 %i.bo, %i.ef
  %i.fk = lshr i64 %i.fj, 12
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %.0362379, i64 448
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !40
  %i.fn = add nsw i64 %i.es, %i.bq
  %i.fo = lshr i64 %i.fn, 12
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %.0362379, i64 64
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !40
  %i.fr = sub nsw i64 %i.bq, %i.es
  %i.fs = lshr i64 %i.fr, 12
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %.0362379, i64 416
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !40
  %i.fv = add nsw i64 %i.et, %i.bs
  %i.fw = lshr i64 %i.fv, 12
  %i.fx = trunc i64 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %.0362379, i64 96
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !40
  %i.fz = sub nsw i64 %i.bs, %i.et
  %i.ga = lshr i64 %i.fz, 12
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = getelementptr inbounds nuw i8, ptr %.0362379, i64 384
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !40
  %i.gd = add nsw i64 %i.ew, %i.bt
  %i.ge = lshr i64 %i.gd, 12
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %.0362379, i64 128
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !40
  %i.gh = sub nsw i64 %i.bt, %i.ew
  %i.gi = lshr i64 %i.gh, 12
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %.0362379, i64 352
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !40
  %i.gl = add nsw i64 %i.ex, %i.br
  %i.gm = lshr i64 %i.gl, 12
  %i.gn = trunc i64 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %.0362379, i64 160
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !40
  %i.gp = sub nsw i64 %i.br, %i.ex
  %i.gq = lshr i64 %i.gp, 12
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %.0362379, i64 320
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !40
  %i.gt = add nsw i64 %i.ep, %i.bp
  %i.gu = lshr i64 %i.gt, 12
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %.0362379, i64 192
  store i32 %i.gv, ptr %i.gw, align 4, !tbaa !40
  %i.gx = sub nsw i64 %i.bp, %i.ep
  %i.gy = lshr i64 %i.gx, 12
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = getelementptr inbounds nuw i8, ptr %.0362379, i64 288
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !40
  %i.hb = add nsw i64 %i.dq, %i.bn
  %i.hc = lshr i64 %i.hb, 12
  %i.hd = trunc i64 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %.0362379, i64 224
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !40
  %i.hf = sub nsw i64 %i.bn, %i.dq
  %i.hg = lshr i64 %i.hf, 12
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %.0362379, i64 256
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !40
  %i.hj = add nuw nsw i32 %.0380, 1               ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0365377, i64 2
  %i.hl = getelementptr inbounds nuw i8, ptr %.0364378, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %.0362379, i64 4
  %exitcond.not = icmp eq i32 %i.hj, 8
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !66

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1363381 = phi ptr [ %i.a, %.preheader ], [ %i.pb, %bb.e ] ; 9 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !43
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %i.r ; 16 uses
  %i.hq = load i32, ptr %.1363381, align 16, !tbaa !40
  %i.hr = sext i32 %i.hq to i64
  %i.hs = shl nsw i64 %i.hr, 13
  %i.ht = add nsw i64 %i.hs, 65536                ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.1363381, i64 16
  %i.hv = load i32, ptr %i.hu, align 16, !tbaa !40
  %i.hw = zext i32 %i.hv to i64                   ; 2 uses
  %i.hx = mul nuw nsw i64 %i.hw, 10703            ; 2 uses
  %i.hy = mul nuw nsw i64 %i.hw, 4433             ; 2 uses
  %i.hz = add nsw i64 %i.ht, %i.hx                ; 2 uses
  %i.ia = sub nsw i64 %i.ht, %i.hx                ; 2 uses
  %i.ib = add nsw i64 %i.ht, %i.hy                ; 2 uses
  %i.ic = sub nsw i64 %i.ht, %i.hy                ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.1363381, i64 8
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !40
  %i.if = zext i32 %i.ie to i64                   ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.1363381, i64 24
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !40
  %i.ii = zext i32 %i.ih to i64                   ; 3 uses
  %i.ij = sub nsw i64 %i.if, %i.ii                ; 2 uses
  %i.ik = mul nsw i64 %i.ij, 2260                 ; 2 uses
  %i.il = mul nsw i64 %i.ij, 11363                ; 2 uses
  %i.im = mul nuw nsw i64 %i.ii, 20995
  %i.in = add nsw i64 %i.il, %i.im                ; 2 uses
  %i.io = mul nuw nsw i64 %i.if, 7373
  %i.ip = add nsw i64 %i.ik, %i.io                ; 2 uses
  %.neg = mul nsw i64 %i.if, -4926
  %i.iq = add nsw i64 %i.il, %.neg                ; 2 uses
  %.neg366 = mul nsw i64 %i.ii, -4176
  %i.ir = add nsw i64 %i.ik, %.neg366             ; 2 uses
  %i.is = add nsw i64 %i.in, %i.hz                ; 2 uses
  %i.it = sub nsw i64 %i.hz, %i.in                ; 2 uses
  %i.iu = add nsw i64 %i.ip, %i.ib                ; 2 uses
  %i.iv = sub nsw i64 %i.ib, %i.ip                ; 2 uses
  %i.iw = add nsw i64 %i.iq, %i.ic                ; 2 uses
  %i.ix = sub nsw i64 %i.ic, %i.iq                ; 2 uses
  %i.iy = add nsw i64 %i.ir, %i.ia                ; 2 uses
  %i.iz = sub nsw i64 %i.ia, %i.ir                ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.1363381, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !40
  %i.jc = zext i32 %i.jb to i64                   ; 7 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.1363381, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !40
  %i.jf = zext i32 %i.je to i64                   ; 7 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.1363381, i64 20
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !40
  %i.ji = zext i32 %i.jh to i64                   ; 7 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.1363381, i64 28
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !40
  %i.jl = zext i32 %i.jk to i64                   ; 7 uses
  %i.jm = add nuw nsw i64 %i.ji, %i.jc            ; 2 uses
  %i.jn = add nuw nsw i64 %i.jf, %i.jc
  %i.jo = mul nuw nsw i64 %i.jn, 11086            ; 2 uses
  %i.jp = mul nuw nsw i64 %i.jm, 10217            ; 2 uses
  %i.jq = add nuw nsw i64 %i.jl, %i.jc
  %i.jr = mul nuw nsw i64 %i.jq, 8956             ; 2 uses
  %i.js = sub nsw i64 %i.jc, %i.jl
  %i.jt = mul nsw i64 %i.js, 7350                 ; 2 uses
  %i.ju = mul nuw nsw i64 %i.jm, 5461             ; 2 uses
  %i.jv = sub nsw i64 %i.jc, %i.jf
  %i.jw = mul nsw i64 %i.jv, 3363                 ; 2 uses
  %.neg367 = mul nsw i64 %i.jc, -18730
  %i.jx = add nsw i64 %i.jo, %.neg367
  %i.jy = add nsw i64 %i.jx, %i.jp
  %i.jz = add nsw i64 %i.jy, %i.jr                ; 2 uses
  %.neg368 = mul nsw i64 %i.jc, -15038
  %i.ka = add nsw i64 %i.jw, %.neg368
  %i.kb = add nsw i64 %i.ka, %i.ju
  %i.kc = add nsw i64 %i.kb, %i.jt                ; 2 uses
  %i.kd = add nuw nsw i64 %i.ji, %i.jf
  %i.ke = mul nuw nsw i64 %i.kd, 1136             ; 2 uses
  %i.kf = mul nuw nsw i64 %i.jf, 589
  %.neg369 = mul nsw i64 %i.ji, -9222
  %i.kg = add nsw i64 %i.ke, %.neg369
  %i.kh = add nsw i64 %i.kg, %i.jp
  %i.ki = sub nsw i64 %i.ji, %i.jf
  %i.kj = mul nsw i64 %i.ki, 11529                ; 2 uses
  %.neg370 = mul nsw i64 %i.ji, -6278
  %i.kk = add nsw i64 %i.kj, %.neg370
  %i.kl = add nsw i64 %i.kk, %i.ju
  %i.km = mul nuw nsw i64 %i.jf, 16154
  %i.kn = add nuw nsw i64 %i.jl, %i.jf            ; 2 uses
  %i.ko = mul nsw i64 %i.kn, -5461                ; 2 uses
  %i.kp = add nuw nsw i64 %i.jo, %i.kf
  %i.kq = add nuw nsw i64 %i.kp, %i.ke
  %i.kr = add nsw i64 %i.kq, %i.ko                ; 2 uses
  %i.ks = mul nuw nsw i64 %i.jl, 8728
  %i.kt = add nsw i64 %i.ko, %i.ks
  %i.ku = add nsw i64 %i.kt, %i.jr
  %i.kv = mul nsw i64 %i.kn, -10217               ; 2 uses
  %i.kw = mul nuw nsw i64 %i.jl, 25733
  %i.kx = add nsw i64 %i.kv, %i.kw
  %i.ky = add nsw i64 %i.kx, %i.jt
  %i.kz = add nsw i64 %i.jw, %i.km
  %i.la = add nsw i64 %i.kz, %i.kj
  %i.lb = add nsw i64 %i.la, %i.kv                ; 2 uses
  %i.lc = add nuw nsw i64 %i.jl, %i.ji
  %i.ld = mul nsw i64 %i.lc, -11086               ; 2 uses
  %i.le = add nsw i64 %i.kh, %i.ld                ; 2 uses
  %i.lf = add nsw i64 %i.ku, %i.ld                ; 2 uses
  %i.lg = sub nsw i64 %i.jl, %i.ji
  %i.lh = mul nsw i64 %i.lg, 3363                 ; 2 uses
  %i.li = add nsw i64 %i.ky, %i.lh                ; 2 uses
  %i.lj = add nsw i64 %i.kl, %i.lh                ; 2 uses
  %i.lk = add nsw i64 %i.jz, %i.is
  %i.ll = lshr i64 %i.lk, 17
  %i.lm = and i64 %i.ll, 16383
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !39
  store i16 %i.lo, ptr %i.hp, align 2, !tbaa !39
  %i.lp = sub nsw i64 %i.is, %i.jz
  %i.lq = lshr i64 %i.lp, 17
  %i.lr = and i64 %i.lq, 16383
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !39
  %i.lu = getelementptr inbounds nuw i8, ptr %i.hp, i64 30
  store i16 %i.lt, ptr %i.lu, align 2, !tbaa !39
  %i.lv = add nsw i64 %i.kr, %i.iu
  %i.lw = lshr i64 %i.lv, 17
  %i.lx = and i64 %i.lw, 16383
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.lx
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !39
  %i.ma = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  store i16 %i.lz, ptr %i.ma, align 2, !tbaa !39
  %i.mb = sub nsw i64 %i.iu, %i.kr
  %i.mc = lshr i64 %i.mb, 17
  %i.md = and i64 %i.mc, 16383
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.md
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !39
  %i.mg = getelementptr inbounds nuw i8, ptr %i.hp, i64 28
  store i16 %i.mf, ptr %i.mg, align 2, !tbaa !39
  %i.mh = add nsw i64 %i.le, %i.iw
  %i.mi = lshr i64 %i.mh, 17
  %i.mj = and i64 %i.mi, 16383
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.mj
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !39
  %i.mm = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  store i16 %i.ml, ptr %i.mm, align 2, !tbaa !39
  %i.mn = sub nsw i64 %i.iw, %i.le
  %i.mo = lshr i64 %i.mn, 17
  %i.mp = and i64 %i.mo, 16383
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.mp
  %i.mr = load i16, ptr %i.mq, align 2, !tbaa !39
  %i.ms = getelementptr inbounds nuw i8, ptr %i.hp, i64 26
  store i16 %i.mr, ptr %i.ms, align 2, !tbaa !39
  %i.mt = add nsw i64 %i.lf, %i.iy
  %i.mu = lshr i64 %i.mt, 17
  %i.mv = and i64 %i.mu, 16383
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.mv
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !39
  %i.my = getelementptr inbounds nuw i8, ptr %i.hp, i64 6
  store i16 %i.mx, ptr %i.my, align 2, !tbaa !39
  %i.mz = sub nsw i64 %i.iy, %i.lf
  %i.na = lshr i64 %i.mz, 17
  %i.nb = and i64 %i.na, 16383
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.nb
  %i.nd = load i16, ptr %i.nc, align 2, !tbaa !39
  %i.ne = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  store i16 %i.nd, ptr %i.ne, align 2, !tbaa !39
  %i.nf = add nsw i64 %i.li, %i.iz
  %i.ng = lshr i64 %i.nf, 17
  %i.nh = and i64 %i.ng, 16383
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.nh
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !39
  %i.nk = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i16 %i.nj, ptr %i.nk, align 2, !tbaa !39
  %i.nl = sub nsw i64 %i.iz, %i.li
  %i.nm = lshr i64 %i.nl, 17
  %i.nn = and i64 %i.nm, 16383
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.nn
  %i.np = load i16, ptr %i.no, align 2, !tbaa !39
  %i.nq = getelementptr inbounds nuw i8, ptr %i.hp, i64 22
  store i16 %i.np, ptr %i.nq, align 2, !tbaa !39
  %i.nr = add nsw i64 %i.lj, %i.ix
  %i.ns = lshr i64 %i.nr, 17
  %i.nt = and i64 %i.ns, 16383
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.nt
  %i.nv = load i16, ptr %i.nu, align 2, !tbaa !39
  %i.nw = getelementptr inbounds nuw i8, ptr %i.hp, i64 10
  store i16 %i.nv, ptr %i.nw, align 2, !tbaa !39
  %i.nx = sub nsw i64 %i.ix, %i.lj
  %i.ny = lshr i64 %i.nx, 17
  %i.nz = and i64 %i.ny, 16383
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.nz
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !39
  %i.oc = getelementptr inbounds nuw i8, ptr %i.hp, i64 20
  store i16 %i.ob, ptr %i.oc, align 2, !tbaa !39
  %i.od = add nsw i64 %i.lb, %i.iv
  %i.oe = lshr i64 %i.od, 17
  %i.of = and i64 %i.oe, 16383
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.of
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !39
  %i.oi = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  store i16 %i.oh, ptr %i.oi, align 2, !tbaa !39
  %i.oj = sub nsw i64 %i.iv, %i.lb
  %i.ok = lshr i64 %i.oj, 17
  %i.ol = and i64 %i.ok, 16383
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ol
  %i.on = load i16, ptr %i.om, align 2, !tbaa !39
  %i.oo = getelementptr inbounds nuw i8, ptr %i.hp, i64 18
  store i16 %i.on, ptr %i.oo, align 2, !tbaa !39
  %i.op = add nsw i64 %i.kc, %i.it
  %i.oq = lshr i64 %i.op, 17
  %i.or = and i64 %i.oq, 16383
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.or
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !39
  %i.ou = getelementptr inbounds nuw i8, ptr %i.hp, i64 14
  store i16 %i.ot, ptr %i.ou, align 2, !tbaa !39
  %i.ov = sub nsw i64 %i.it, %i.kc
  %i.ow = lshr i64 %i.ov, 17
  %i.ox = and i64 %i.ow, 16383
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ox
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !39
  %i.pa = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store i16 %i.oz, ptr %i.pa, align 2, !tbaa !39
  %i.pb = getelementptr inbounds nuw i8, ptr %.1363381, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next, 16
end_hunk_5
