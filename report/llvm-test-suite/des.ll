inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:bb.a
  %i.fh = phi ptr [ %i.ar, %.thread ], [ %i.dk, %bb.b ]
  %i.fi = phi ptr [ %i.aq, %.thread ], [ %i.dj, %bb.b ]
  %i.fj = phi ptr [ %i.ap, %.thread ], [ %i.di, %bb.b ]
  %i.fk = phi ptr [ %i.ao, %.thread ], [ %i.dh, %bb.b ]
  %i.fl = phi ptr [ %i.an, %.thread ], [ %i.dg, %bb.b ]
  %i.fm = phi ptr [ %i.am, %.thread ], [ %i.df, %bb.b ]
  %i.fn = phi ptr [ %i.al, %.thread ], [ %i.de, %bb.b ]
  %i.fo = phi ptr [ %i.ak, %.thread ], [ %i.dd, %bb.b ]
  %i.fp = phi ptr [ %i.aj, %.thread ], [ %i.dc, %bb.b ]
  %i.fq = phi ptr [ %i.ai, %.thread ], [ %i.db, %bb.b ]
  %i.fr = phi ptr [ %i.ah, %.thread ], [ %i.da, %bb.b ]
  %i.fs = phi ptr [ %i.ag, %.thread ], [ %i.cz, %bb.b ]
  %i.ft = phi ptr [ %i.af, %.thread ], [ %i.cy, %bb.b ]
  %i.fu = phi ptr [ %i.ae, %.thread ], [ %i.cx, %bb.b ]
  %i.fv = phi ptr [ %i.ad, %.thread ], [ %i.cw, %bb.b ]
  %i.fw = phi ptr [ %i.ac, %.thread ], [ %i.cv, %bb.b ]
  %i.fx = phi ptr [ %i.ab, %.thread ], [ %i.cu, %bb.b ]
  %i.fy = phi ptr [ %i.aa, %.thread ], [ %i.ct, %bb.b ]
  %i.fz = phi ptr [ %i.z, %.thread ], [ %i.cs, %bb.b ]
  %i.ga = phi ptr [ %i.y, %.thread ], [ %i.cr, %bb.b ]
  %i.gb = phi ptr [ %i.x, %.thread ], [ %i.cq, %bb.b ]
  %i.gc = phi ptr [ %i.w, %.thread ], [ %i.cp, %bb.b ]
  %i.gd = phi ptr [ %i.v, %.thread ], [ %i.co, %bb.b ]
  %i.ge = phi ptr [ %i.u, %.thread ], [ %i.cn, %bb.b ]
  %i.gf = phi ptr [ %i.t, %.thread ], [ %i.cm, %bb.b ]
  %i.gg = phi ptr [ %i.s, %.thread ], [ %i.cl, %bb.b ]
  %i.gh = phi ptr [ %i.r, %.thread ], [ %i.ck, %bb.b ]
  %i.gi = phi ptr [ %i.q, %.thread ], [ %i.cj, %bb.b ]
  %i.gj = phi ptr [ %i.p, %.thread ], [ %i.ci, %bb.b ]
  %i.gk = phi ptr [ %i.o, %.thread ], [ %i.ch, %bb.b ]
  %i.gl = phi ptr [ %i.n, %.thread ], [ %i.cg, %bb.b ]
  %i.gm = phi ptr [ %i.m, %.thread ], [ %i.cf, %bb.b ]
  %i.gn = phi ptr [ %i.l, %.thread ], [ %i.ce, %bb.b ]
  %i.go = phi ptr [ %i.k, %.thread ], [ %i.cd, %bb.b ]
  %i.gp = phi ptr [ %i.j, %.thread ], [ %i.cc, %bb.b ]
  %i.gq = phi ptr [ %i.i, %.thread ], [ %i.cb, %bb.b ]
  %i.gr = phi ptr [ %i.h, %.thread ], [ %i.ca, %bb.b ]
  %i.gs = phi ptr [ %i.g, %.thread ], [ %i.bz, %bb.b ]
  %i.gt = phi ptr [ %i.f, %.thread ], [ %i.by, %bb.b ] ; 2 uses
  %i.gu = phi ptr [ %i.e, %.thread ], [ %i.bx, %bb.b ]
  %i.gv = phi ptr [ %i.d, %.thread ], [ %i.bw, %bb.b ] ; 2 uses
  %i.gw = phi ptr [ %i.c, %.thread ], [ %i.bv, %bb.b ]
  %.077 = phi i32 [ 100, %.thread ], [ %i.bt, %bb.b ]
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 768
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 752
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 1264
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 1272
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 1280
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 736
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 784
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 1248
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 1256
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 1296
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 720
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 800
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 1232
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 1240
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 1312
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 704
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 816
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 1216
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 1224
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 1328
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 688
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 832
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 1200
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 1208
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 328
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 1344
  %i.il = getelementptr inbounds nuw i8, ptr %3, i64 672
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 848
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 1184
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 336
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 1192
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 344
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 1360
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 656
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 864
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 1168
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 352
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 1176
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 360
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 1376
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 640
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 880
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 1152
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 1160
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 1392
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 624
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 896
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 1136
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 384
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 1144
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 1408
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 608
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 912
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 1120
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 400
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 1128
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 408
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 1424
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 592
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 928
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 1104
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 416
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 1112
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 1440
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 576
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 944
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 1088
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 1096
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 1456
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 560
  %i.kq = getelementptr inbounds nuw i8, ptr %3, i64 960
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 1072
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 448
  %i.kt = getelementptr inbounds nuw i8, ptr %3, i64 1080
  %i.ku = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.kw = getelementptr inbounds nuw i8, ptr %3, i64 1472
  %i.kx = getelementptr inbounds nuw i8, ptr %3, i64 544
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 976
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.la = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 1064
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 472
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 1488
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 528
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 992
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 1040
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 480
  %i.lj = getelementptr inbounds nuw i8, ptr %3, i64 1048
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 1504
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 1008
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 496
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 1032
  %i.ls = getelementptr inbounds nuw i8, ptr %3, i64 504
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 1520
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 768
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 768
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 768
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 768
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 776
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 1288
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.split57.us.us
  %.not37.us = phi i1 [ false, %.split57.us.us ], [ true, %.split.us.preheader ] ; 4 uses
  %i.ma = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %str.str.1 = select i1 %.not37.us, ptr @str, ptr @str.1
  %puts.us = call i32 @puts(ptr nonnull dereferenceable(1) %str.str.1) ; 0 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us.us ], [ 0, %.split.us ] ; 5 uses
  %indvars73 = trunc nuw nsw i64 %indvars.iv to i32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.mb = shl nuw nsw i32 %indvars73, 6
  %i.mc = add nuw nsw i32 %i.mb, 64
  %i.md = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.me = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.md, i32 noundef %i.mc) ; 0 uses
  %i.mf = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.mg = call i32 @fflush(ptr noundef %i.mf)     ; 0 uses
  %i.mh = icmp eq i64 %indvars.iv, 0
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr @DES3_dec_test, i64 %indvars.iv
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr @DES3_enc_test, i64 %indvars.iv
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.us.us
  %.02545.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %4, %bb.g ]
  store i64 8367815003007840078, ptr %i.a, align 8
  switch i32 %indvars73, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.d
    i32 2, label %des3_set_2keys.exit.us.us.loopexit89
  ]

des3_set_2keys.exit.us.us.loopexit89:             ; preds = %bb.c
  %i.mk = call i32 @des_main_ks(ptr noundef nonnull %3, ptr noundef nonnull @DES3_keys) ; 0 uses
  %i.ml = call i32 @des_main_ks(ptr noundef nonnull %i.gv, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @DES3_keys, i64 8)) ; 0 uses
  %i.mm = call i32 @des_main_ks(ptr noundef nonnull %i.gu, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @DES3_keys, i64 16)) ; 0 uses
  %i.mn = load <2 x i64>, ptr %i.gy, align 16, !tbaa !9
  store <2 x i64> %i.mn, ptr %i.gx, align 16, !tbaa !9
  %i.mo = load i64, ptr %i.gz, align 16, !tbaa !9
  store i64 %i.mo, ptr %i.ha, align 16, !tbaa !9
  %i.mp = load i64, ptr %i.hb, align 8, !tbaa !9
  store i64 %i.mp, ptr %i.hc, align 8, !tbaa !9
  %i.mq = load <2 x i64>, ptr %i.hd, align 16, !tbaa !9
  store <2 x i64> %i.mq, ptr %i.he, align 16, !tbaa !9
  %i.mr = load <2 x i64>, ptr %i.hf, align 16, !tbaa !9
  store <2 x i64> %i.mr, ptr %i.hg, align 16, !tbaa !9
  %i.ms = load i64, ptr %i.hh, align 16, !tbaa !9
  store i64 %i.ms, ptr %i.hi, align 16, !tbaa !9
  %i.mt = load i64, ptr %i.hj, align 8, !tbaa !9
  store i64 %i.mt, ptr %i.hk, align 8, !tbaa !9
  %i.mu = load <2 x i64>, ptr %i.hl, align 16, !tbaa !9
  store <2 x i64> %i.mu, ptr %i.hm, align 16, !tbaa !9
  %i.mv = load <2 x i64>, ptr %i.hn, align 16, !tbaa !9
  store <2 x i64> %i.mv, ptr %i.ho, align 16, !tbaa !9
  %i.mw = load i64, ptr %i.hp, align 16, !tbaa !9
  store i64 %i.mw, ptr %i.hq, align 16, !tbaa !9
  %i.mx = load i64, ptr %i.hr, align 8, !tbaa !9
  store i64 %i.mx, ptr %i.hs, align 8, !tbaa !9
  %i.my = load <2 x i64>, ptr %i.ht, align 16, !tbaa !9
  store <2 x i64> %i.my, ptr %i.hu, align 16, !tbaa !9
  %i.mz = load <2 x i64>, ptr %i.hv, align 16, !tbaa !9
  store <2 x i64> %i.mz, ptr %i.hw, align 16, !tbaa !9
  %i.na = load i64, ptr %i.hx, align 16, !tbaa !9
  store i64 %i.na, ptr %i.hy, align 16, !tbaa !9
  %i.nb = load i64, ptr %i.hz, align 8, !tbaa !9
  store i64 %i.nb, ptr %i.ia, align 8, !tbaa !9
  %i.nc = load <2 x i64>, ptr %i.ib, align 16, !tbaa !9
  store <2 x i64> %i.nc, ptr %i.ic, align 16, !tbaa !9
  %i.nd = load <2 x i64>, ptr %i.id, align 16, !tbaa !9
  store <2 x i64> %i.nd, ptr %i.ie, align 16, !tbaa !9
  %i.ne = load i64, ptr %i.if, align 16, !tbaa !9
  store i64 %i.ne, ptr %i.ig, align 16, !tbaa !9
  %i.nf = load i64, ptr %i.ih, align 8, !tbaa !9
  store i64 %i.nf, ptr %i.ii, align 8, !tbaa !9
  %i.ng = load <2 x i64>, ptr %i.ij, align 16, !tbaa !9
  store <2 x i64> %i.ng, ptr %i.ik, align 16, !tbaa !9
  %i.nh = load <2 x i64>, ptr %i.il, align 16, !tbaa !9
  store <2 x i64> %i.nh, ptr %i.im, align 16, !tbaa !9
  %i.ni = load i64, ptr %i.in, align 16, !tbaa !9
  store i64 %i.ni, ptr %i.io, align 16, !tbaa !9
  %i.nj = load i64, ptr %i.ip, align 8, !tbaa !9
  store i64 %i.nj, ptr %i.iq, align 8, !tbaa !9
  %i.nk = load <2 x i64>, ptr %i.ir, align 16, !tbaa !9
  store <2 x i64> %i.nk, ptr %i.is, align 16, !tbaa !9
  %i.nl = load <2 x i64>, ptr %i.it, align 16, !tbaa !9
  store <2 x i64> %i.nl, ptr %i.iu, align 16, !tbaa !9
  %i.nm = load i64, ptr %i.iv, align 16, !tbaa !9
  store i64 %i.nm, ptr %i.iw, align 16, !tbaa !9
  %i.nn = load i64, ptr %i.ix, align 8, !tbaa !9
  store i64 %i.nn, ptr %i.iy, align 8, !tbaa !9
  %i.no = load <2 x i64>, ptr %i.iz, align 16, !tbaa !9
  store <2 x i64> %i.no, ptr %i.ja, align 16, !tbaa !9
  %i.np = load <2 x i64>, ptr %i.jb, align 16, !tbaa !9
  store <2 x i64> %i.np, ptr %i.jc, align 16, !tbaa !9
  %i.nq = load i64, ptr %i.jd, align 16, !tbaa !9
  store i64 %i.nq, ptr %i.je, align 16, !tbaa !9
  %i.nr = load i64, ptr %i.jf, align 8, !tbaa !9
  store i64 %i.nr, ptr %i.jg, align 8, !tbaa !9
  %i.ns = load <2 x i64>, ptr %i.jh, align 16, !tbaa !9
  store <2 x i64> %i.ns, ptr %i.ji, align 16, !tbaa !9
  %i.nt = load <2 x i64>, ptr %i.jj, align 16, !tbaa !9
  store <2 x i64> %i.nt, ptr %i.jk, align 16, !tbaa !9
  %i.nu = load i64, ptr %i.jl, align 16, !tbaa !9
  store i64 %i.nu, ptr %i.jm, align 16, !tbaa !9
  %i.nv = load i64, ptr %i.jn, align 8, !tbaa !9
  store i64 %i.nv, ptr %i.jo, align 8, !tbaa !9
  %i.nw = load <2 x i64>, ptr %i.jp, align 16, !tbaa !9
  store <2 x i64> %i.nw, ptr %i.jq, align 16, !tbaa !9
  %i.nx = load <2 x i64>, ptr %i.jr, align 16, !tbaa !9
  store <2 x i64> %i.nx, ptr %i.js, align 16, !tbaa !9
  %i.ny = load i64, ptr %i.jt, align 16, !tbaa !9
  store i64 %i.ny, ptr %i.ju, align 16, !tbaa !9
  %i.nz = load i64, ptr %i.jv, align 8, !tbaa !9
  store i64 %i.nz, ptr %i.jw, align 8, !tbaa !9
  %i.oa = load <2 x i64>, ptr %i.jx, align 16, !tbaa !9
  store <2 x i64> %i.oa, ptr %i.jy, align 16, !tbaa !9
  %i.ob = load <2 x i64>, ptr %i.jz, align 16, !tbaa !9
  store <2 x i64> %i.ob, ptr %i.ka, align 16, !tbaa !9
  %i.oc = load i64, ptr %i.kb, align 16, !tbaa !9
  store i64 %i.oc, ptr %i.kc, align 16, !tbaa !9
  %i.od = load i64, ptr %i.kd, align 8, !tbaa !9
  store i64 %i.od, ptr %i.ke, align 8, !tbaa !9
  %i.oe = load <2 x i64>, ptr %i.kf, align 16, !tbaa !9
  store <2 x i64> %i.oe, ptr %i.kg, align 16, !tbaa !9
  %i.of = load <2 x i64>, ptr %i.kh, align 16, !tbaa !9
  store <2 x i64> %i.of, ptr %i.ki, align 16, !tbaa !9
  %i.og = load i64, ptr %i.kj, align 16, !tbaa !9
  store i64 %i.og, ptr %i.kk, align 16, !tbaa !9
  %i.oh = load i64, ptr %i.kl, align 8, !tbaa !9
  store i64 %i.oh, ptr %i.km, align 8, !tbaa !9
  %i.oi = load <2 x i64>, ptr %i.kn, align 16, !tbaa !9
  store <2 x i64> %i.oi, ptr %i.ko, align 16, !tbaa !9
  %i.oj = load <2 x i64>, ptr %i.kp, align 16, !tbaa !9
  store <2 x i64> %i.oj, ptr %i.kq, align 16, !tbaa !9
  %i.ok = load i64, ptr %i.kr, align 16, !tbaa !9
  store i64 %i.ok, ptr %i.ks, align 16, !tbaa !9
  %i.ol = load i64, ptr %i.kt, align 8, !tbaa !9
  store i64 %i.ol, ptr %i.ku, align 8, !tbaa !9
  %i.om = load <2 x i64>, ptr %i.kv, align 16, !tbaa !9
  store <2 x i64> %i.om, ptr %i.kw, align 16, !tbaa !9
  %i.on = load <2 x i64>, ptr %i.kx, align 16, !tbaa !9
  store <2 x i64> %i.on, ptr %i.ky, align 16, !tbaa !9
  %i.oo = load i64, ptr %i.kz, align 16, !tbaa !9
  store i64 %i.oo, ptr %i.la, align 16, !tbaa !9
  %i.op = load i64, ptr %i.lb, align 8, !tbaa !9
  store i64 %i.op, ptr %i.lc, align 8, !tbaa !9
  %i.oq = load <2 x i64>, ptr %i.ld, align 16, !tbaa !9
  store <2 x i64> %i.oq, ptr %i.le, align 16, !tbaa !9
  %i.or = load <2 x i64>, ptr %i.lf, align 16, !tbaa !9
  store <2 x i64> %i.or, ptr %i.lg, align 16, !tbaa !9
  %i.os = load i64, ptr %i.lh, align 16, !tbaa !9
  store i64 %i.os, ptr %i.li, align 16, !tbaa !9
  %i.ot = load i64, ptr %i.lj, align 8, !tbaa !9
  store i64 %i.ot, ptr %i.lk, align 8, !tbaa !9
  %i.ou = load <2 x i64>, ptr %i.ll, align 16, !tbaa !9
  store <2 x i64> %i.ou, ptr %i.lm, align 16, !tbaa !9
  %i.ov = load <2 x i64>, ptr %i.ln, align 16, !tbaa !9
  store <2 x i64> %i.ov, ptr %i.lo, align 16, !tbaa !9
  %i.ow = load i64, ptr %i.lp, align 16, !tbaa !9
  store i64 %i.ow, ptr %i.lq, align 16, !tbaa !9
  %i.ox = load i64, ptr %i.lr, align 8, !tbaa !9
  store i64 %i.ox, ptr %i.ls, align 8, !tbaa !9
  %i.oy = load <2 x i64>, ptr %3, align 16, !tbaa !9
  store <2 x i64> %i.oy, ptr %i.lt, align 16, !tbaa !9
  br label %des3_set_2keys.exit.us.us

bb.d:                                             ; preds = %bb.c
  %i.oz = call i32 @des_main_ks(ptr noundef nonnull %3, ptr noundef nonnull @DES3_keys) ; 0 uses
  %i.pa = call i32 @des_main_ks(ptr noundef nonnull %i.gv, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @DES3_keys, i64 8)) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i.us.us = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.us.us, %bb.e ] ; 11 uses
  %i.pb = sub nuw nsw i64 30, %indvars.iv.i.us.us
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.pb
  %i.pd = load i64, ptr %i.pc, align 16, !tbaa !9 ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.i.us.us
  store i64 %i.pd, ptr %i.pe, align 16, !tbaa !9
  %i.pf = sub nuw nsw i64 31, %indvars.iv.i.us.us
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.pf
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !9  ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.i.us.us
  store i64 %i.ph, ptr %i.pi, align 8, !tbaa !9
  %i.pj = sub nuw nsw i64 62, %indvars.iv.i.us.us
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.pj
  %i.pl = load i64, ptr %i.pk, align 16, !tbaa !9
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.us.us ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 256
  store i64 %i.pl, ptr %i.pn, align 16, !tbaa !9
  %i.po = sub nuw nsw i64 63, %indvars.iv.i.us.us
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.po
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !9
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 264
  store i64 %i.pq, ptr %i.pr, align 8, !tbaa !9
  %i.ps = or disjoint i64 %indvars.iv.i.us.us, 64 ; 2 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ps
  %i.pu = load <2 x i64>, ptr %i.pm, align 16, !tbaa !9
  store <2 x i64> %i.pu, ptr %i.pt, align 16, !tbaa !9
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.ps
  store i64 %i.pd, ptr %i.pv, align 16, !tbaa !9
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv.i.us.us
  store i64 %i.ph, ptr %i.pw, align 8, !tbaa !9
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 2
  %i.px = icmp samesign ult i64 %indvars.iv.i.us.us, 30
  br i1 %i.px, label %bb.e, label %des3_set_2keys.exit.us.us, !llvm.loop !13

bb.f:                                             ; preds = %bb.c
  %i.py = call i32 @des_main_ks(ptr noundef nonnull %2, ptr noundef nonnull @DES3_keys) ; 0 uses
  %i.pz = load i64, ptr %i.gs, align 8, !tbaa !9
  store i64 %i.pz, ptr %i.gt, align 8, !tbaa !9
  %i.qa = load i64, ptr %i.gr, align 8, !tbaa !9
  store i64 %i.qa, ptr %i.gq, align 8, !tbaa !9
  %i.qb = load i64, ptr %i.gp, align 8, !tbaa !9
  store i64 %i.qb, ptr %i.go, align 8, !tbaa !9
  %i.qc = load i64, ptr %i.gn, align 8, !tbaa !9
  store i64 %i.qc, ptr %i.gm, align 8, !tbaa !9
  %i.qd = load i64, ptr %i.gl, align 8, !tbaa !9
  store i64 %i.qd, ptr %i.gk, align 8, !tbaa !9
  %i.qe = load i64, ptr %i.gj, align 8, !tbaa !9
  store i64 %i.qe, ptr %i.gi, align 8, !tbaa !9
  %i.qf = load i64, ptr %i.gh, align 8, !tbaa !9
  store i64 %i.qf, ptr %i.gg, align 8, !tbaa !9
  %i.qg = load i64, ptr %i.gf, align 8, !tbaa !9
  store i64 %i.qg, ptr %i.ge, align 8, !tbaa !9
  %i.qh = load i64, ptr %i.gd, align 8, !tbaa !9
  store i64 %i.qh, ptr %i.gc, align 8, !tbaa !9
  %i.qi = load i64, ptr %i.gb, align 8, !tbaa !9
  store i64 %i.qi, ptr %i.ga, align 8, !tbaa !9
  %i.qj = load i64, ptr %i.fz, align 8, !tbaa !9
  store i64 %i.qj, ptr %i.fy, align 8, !tbaa !9
  %i.qk = load i64, ptr %i.fx, align 8, !tbaa !9
  store i64 %i.qk, ptr %i.fw, align 8, !tbaa !9
  %i.ql = load i64, ptr %i.fv, align 8, !tbaa !9
  store i64 %i.ql, ptr %i.fu, align 8, !tbaa !9
  %i.qm = load i64, ptr %i.ft, align 8, !tbaa !9
  store i64 %i.qm, ptr %i.fs, align 8, !tbaa !9
  %i.qn = load i64, ptr %i.fr, align 8, !tbaa !9
  store i64 %i.qn, ptr %i.fq, align 8, !tbaa !9
  %i.qo = load i64, ptr %i.fp, align 8, !tbaa !9
  store i64 %i.qo, ptr %i.fo, align 8, !tbaa !9
  %i.qp = load i64, ptr %i.fn, align 8, !tbaa !9
  store i64 %i.qp, ptr %i.fm, align 8, !tbaa !9
  %i.qq = load i64, ptr %i.fl, align 8, !tbaa !9
  store i64 %i.qq, ptr %i.fk, align 8, !tbaa !9
  %i.qr = load i64, ptr %i.fj, align 8, !tbaa !9
  store i64 %i.qr, ptr %i.fi, align 8, !tbaa !9
  %i.qs = load i64, ptr %i.fh, align 8, !tbaa !9
  store i64 %i.qs, ptr %i.fg, align 8, !tbaa !9
  %i.qt = load i64, ptr %i.ff, align 8, !tbaa !9
  store i64 %i.qt, ptr %i.fe, align 8, !tbaa !9
  %i.qu = load i64, ptr %i.fd, align 8, !tbaa !9
  store i64 %i.qu, ptr %i.fc, align 8, !tbaa !9
  %i.qv = load i64, ptr %i.fb, align 8, !tbaa !9
  store i64 %i.qv, ptr %i.fa, align 8, !tbaa !9
  %i.qw = load i64, ptr %i.ez, align 8, !tbaa !9
  store i64 %i.qw, ptr %i.ey, align 8, !tbaa !9
  %i.qx = load i64, ptr %i.ex, align 8, !tbaa !9
  store i64 %i.qx, ptr %i.ew, align 8, !tbaa !9
  %i.qy = load i64, ptr %i.ev, align 8, !tbaa !9
  store i64 %i.qy, ptr %i.eu, align 8, !tbaa !9
  %i.qz = load i64, ptr %i.et, align 8, !tbaa !9
  store i64 %i.qz, ptr %i.es, align 8, !tbaa !9
  %i.ra = load i64, ptr %i.er, align 8, !tbaa !9
  store i64 %i.ra, ptr %i.eq, align 8, !tbaa !9
  %i.rb = load i64, ptr %i.ep, align 8, !tbaa !9
  store i64 %i.rb, ptr %i.eo, align 8, !tbaa !9
  %i.rc = load i64, ptr %i.en, align 8, !tbaa !9
  store i64 %i.rc, ptr %i.em, align 8, !tbaa !9
  %i.rd = load i64, ptr %2, align 8, !tbaa !9
  store i64 %i.rd, ptr %i.el, align 8, !tbaa !9
  %i.re = load i64, ptr %i.ek, align 8, !tbaa !9
  store i64 %i.re, ptr %i.ej, align 8, !tbaa !9
  br label %des3_set_2keys.exit.us.us

des3_set_2keys.exit.us.us:                        ; preds = %bb.e, %des3_set_2keys.exit.us.us.loopexit89, %bb.f
  br i1 %i.mh, label %des3_set_2keys.exit.split.us.us.us, label %des3_set_2keys.exit.split.us50.us

.loopexit.a:                                      ; preds = %des3_set_2keys.exit.split.split.us.us.us, %des3_set_2keys.exit.split.us.split.us.us.us
  %lhsv84 = load i64, ptr %i.a, align 8
  %rhsv85 = load i64, ptr %i.mj, align 8
  %.not86.a = icmp eq i64 %lhsv84, %rhsv85
  br i1 %.not86.a, label %bb.g, label %.split59.us

.critedge41.us.us.a:                              ; preds = %.critedge39.us.us, %.critedge.us.us.us
  %lhsv.a = load i64, ptr %i.a, align 8
  %rhsv.a = load i64, ptr %i.mi, align 8
  %.not.a = icmp eq i64 %lhsv.a, %rhsv.a
  br i1 %.not.a, label %bb.g, label %.split59.us

bb.g:                                             ; preds = %.loopexit.a, %.critedge41.us.us.a
  %4 = add nuw nsw i32 %.02545.us.us, 1           ; 2 uses
  %exitcond72.not.a = icmp eq i32 %4, %.077
  br i1 %exitcond72.not.a, label %._crit_edge.us.us, label %bb.c, !llvm.loop !20

.critedge39.us.us:                                ; preds = %des3_set_2keys.exit.split.us50.us, %.critedge39.us.us
  %.02643.us49.us = phi i32 [ %i.rf, %.critedge39.us.us ], [ 0, %des3_set_2keys.exit.split.us50.us ]
  call void @des3_crypt(ptr noundef nonnull %i.gw, ptr noundef nonnull readonly %i.a, ptr noundef nonnull %i.a)
  %i.rf = add nuw nsw i32 %.02643.us49.us, 1      ; 2 uses
  %exitcond70.not = icmp eq i32 %i.rf, 10000
  br i1 %exitcond70.not, label %.critedge41.us.us.a, label %.critedge39.us.us, !llvm.loop !21

default.unreachable:                              ; preds = %bb.c
  unreachable

des3_set_2keys.exit.split.us50.us:                ; preds = %des3_set_2keys.exit.us.us
  br i1 %.not37.us, label %des3_set_2keys.exit.split.split.us.us.us, label %.critedge39.us.us

des3_set_2keys.exit.split.us.us.us:               ; preds = %des3_set_2keys.exit.us.us
  br i1 %.not37.us, label %des3_set_2keys.exit.split.us.split.us.us.us, label %.critedge.us.us.us

.critedge.us.us.us:                               ; preds = %des3_set_2keys.exit.split.us.us.us, %.critedge.us.us.us
  %.02643.us.us51.us = phi i32 [ %i.rg, %.critedge.us.us.us ], [ 0, %des3_set_2keys.exit.split.us.us.us ]
  call void @des_crypt(ptr noundef nonnull readonly %i.gt, ptr noundef nonnull readonly %i.a, ptr noundef nonnull %i.a)
  %i.rg = add nuw nsw i32 %.02643.us.us51.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.rg, 10000
  br i1 %exitcond.not, label %.critedge41.us.us.a, label %.critedge.us.us.us, !llvm.loop !21

des3_set_2keys.exit.split.split.us.us.us:         ; preds = %des3_set_2keys.exit.split.us50.us, %des3_set_2keys.exit.split.split.us.us.us
  %.02643.us44.us.us = phi i32 [ %i.rh, %des3_set_2keys.exit.split.split.us.us.us ], [ 0, %des3_set_2keys.exit.split.us50.us ]
  call void @des3_crypt(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.a, ptr noundef nonnull %i.a)
  %i.rh = add nuw nsw i32 %.02643.us44.us.us, 1   ; 2 uses
  %exitcond71.not = icmp eq i32 %i.rh, 10000
  br i1 %exitcond71.not, label %.loopexit.a, label %des3_set_2keys.exit.split.split.us.us.us, !llvm.loop !21

des3_set_2keys.exit.split.us.split.us.us.us:      ; preds = %des3_set_2keys.exit.split.us.us.us, %des3_set_2keys.exit.split.us.split.us.us.us
  %.02643.us.us.us.us = phi i32 [ %i.ri, %des3_set_2keys.exit.split.us.split.us.us.us ], [ 0, %des3_set_2keys.exit.split.us.us.us ]
  call void @des_crypt(ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %i.a, ptr noundef nonnull %i.a)
  %i.ri = add nuw nsw i32 %.02643.us.us.us.us, 1  ; 2 uses
  %exitcond69.not = icmp eq i32 %i.ri, 10000
  br i1 %exitcond69.not, label %.loopexit.a, label %des3_set_2keys.exit.split.us.split.us.us.us, !llvm.loop !21

._crit_edge.us.us:                                ; preds = %bb.g
  %puts31.us.us = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond74.not, label %.split57.us.us, label %.lr.ph.us.us, !llvm.loop !22

.split57.us.us:                                   ; preds = %._crit_edge.us.us
  br i1 %.not37.us, label %.split.us, label %.split62.us, !llvm.loop !23

.split47.1:                                       ; preds = %bb.b
  %i.rj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.rk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 1, i32 noundef 64) ; 0 uses
  %i.rl = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.rm = tail call i32 @fflush(ptr noundef %i.rl) ; 0 uses
  %puts31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.rn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 2, i32 noundef 128) ; 0 uses
  %i.ro = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.rp = tail call i32 @fflush(ptr noundef %i.ro) ; 0 uses
  %puts31.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.rq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 3, i32 noundef 192) ; 0 uses
  %i.rr = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.rs = tail call i32 @fflush(ptr noundef %i.rr) ; 0 uses
  %puts31.2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.rt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %puts30.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.ru = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 1, i32 noundef 64) ; 0 uses
  %i.rv = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.rw = tail call i32 @fflush(ptr noundef %i.rv) ; 0 uses
  %puts31.168 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.rx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 2, i32 noundef 128) ; 0 uses
  %i.ry = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.rz = tail call i32 @fflush(ptr noundef %i.ry) ; 0 uses
  %puts31.1.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.sa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 3, i32 noundef 192) ; 0 uses
  %i.sb = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.sc = tail call i32 @fflush(ptr noundef %i.sb) ; 0 uses
  %puts31.2.1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.split62.us

.split59.us:                                      ; preds = %.critedge41.us.us.a, %.loopexit.a
  %puts34 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.h

.split62.us:                                      ; preds = %.split57.us.us, %.split47.1
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.split62.us, %.split59.us
  %.029 = phi i32 [ 1, %.split59.us ], [ 0, %.split62.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.029
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = distinct !{null}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
end_hunk_0
