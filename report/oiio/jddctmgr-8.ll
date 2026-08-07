loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@start_pass:bb.a
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !55 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.loopexit, label %bb.ai

bb.af:                                            ; preds = %bb.ab
  store i32 %.06276, ptr %i.ag, align 4, !tbaa !3
  switch i32 %.06276, label %default.unreachable102 [
    i32 0, label %.loopexit.loopexit
    i32 1, label %vector.ph
    i32 2, label %vector.body118
  ]

bb.ag:                                            ; preds = %bb.ac
  store i32 2, ptr %i.aj, align 4, !tbaa !3
  br label %vector.body118

bb.ah:                                            ; preds = %bb.ad
  store i32 1, ptr %i.am, align 4, !tbaa !3
  br label %vector.ph

bb.ai:                                            ; preds = %bb.ae
  store i32 0, ptr %i.ap, align 4, !tbaa !3
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.ai, %bb.af
  %i.be = phi ptr [ %i.bc, %bb.ai ], [ %i.at, %bb.af ] ; 16 uses
  %.165106 = phi ptr [ %.165.jt0, %bb.ai ], [ %.06475, %bb.af ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.06177, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47 ; 16 uses
  %i.bh = load <4 x i16>, ptr %i.be, align 2, !tbaa !56
  %i.bi = zext <4 x i16> %i.bh to <4 x i32>
  store <4 x i32> %i.bi, ptr %i.bg, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load <4 x i16>, ptr %i.bj, align 2, !tbaa !56
  %i.bm = zext <4 x i16> %i.bl to <4 x i32>
  store <4 x i32> %i.bm, ptr %i.bk, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bp = load <4 x i16>, ptr %i.bn, align 2, !tbaa !56
  %i.bq = zext <4 x i16> %i.bp to <4 x i32>
  store <4 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bt = load <4 x i16>, ptr %i.br, align 2, !tbaa !56
  %i.bu = zext <4 x i16> %i.bt to <4 x i32>
  store <4 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bx = load <4 x i16>, ptr %i.bv, align 2, !tbaa !56
  %i.by = zext <4 x i16> %i.bx to <4 x i32>
  store <4 x i32> %i.by, ptr %i.bw, align 4, !tbaa !3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.cb = load <4 x i16>, ptr %i.bz, align 2, !tbaa !56
  %i.cc = zext <4 x i16> %i.cb to <4 x i32>
  store <4 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.cf = load <4 x i16>, ptr %i.cd, align 2, !tbaa !56
  %i.cg = zext <4 x i16> %i.cf to <4 x i32>
  store <4 x i32> %i.cg, ptr %i.ce, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 112
  %i.cj = load <4 x i16>, ptr %i.ch, align 2, !tbaa !56
  %i.ck = zext <4 x i16> %i.cj to <4 x i32>
  store <4 x i32> %i.ck, ptr %i.ci, align 4, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.cn = load <4 x i16>, ptr %i.cl, align 2, !tbaa !56
  %i.co = zext <4 x i16> %i.cn to <4 x i32>
  store <4 x i32> %i.co, ptr %i.cm, align 4, !tbaa !3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.cr = load <4 x i16>, ptr %i.cp, align 2, !tbaa !56
  %i.cs = zext <4 x i16> %i.cr to <4 x i32>
  store <4 x i32> %i.cs, ptr %i.cq, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  %i.cv = load <4 x i16>, ptr %i.ct, align 2, !tbaa !56
  %i.cw = zext <4 x i16> %i.cv to <4 x i32>
  store <4 x i32> %i.cw, ptr %i.cu, align 4, !tbaa !3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bg, i64 176
  %i.cz = load <4 x i16>, ptr %i.cx, align 2, !tbaa !56
  %i.da = zext <4 x i16> %i.cz to <4 x i32>
  store <4 x i32> %i.da, ptr %i.cy, align 4, !tbaa !3
  %i.db = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  %i.dd = load <4 x i16>, ptr %i.db, align 2, !tbaa !56
  %i.de = zext <4 x i16> %i.dd to <4 x i32>
  store <4 x i32> %i.de, ptr %i.dc, align 4, !tbaa !3
  %i.df = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  %i.dh = load <4 x i16>, ptr %i.df, align 2, !tbaa !56
  %i.di = zext <4 x i16> %i.dh to <4 x i32>
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  %i.dl = load <4 x i16>, ptr %i.dj, align 2, !tbaa !56
  %i.dm = zext <4 x i16> %i.dl to <4 x i32>
  store <4 x i32> %i.dm, ptr %i.dk, align 4, !tbaa !3
  %i.dn = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  %i.do = getelementptr inbounds nuw i8, ptr %i.bg, i64 240
  %i.dp = load <4 x i16>, ptr %i.dn, align 2, !tbaa !56
  %i.dq = zext <4 x i16> %i.dp to <4 x i32>
  store <4 x i32> %i.dq, ptr %i.do, align 4, !tbaa !3
  br label %.loopexit

vector.ph:                                        ; preds = %bb.ah, %bb.af
  %i.dr = phi ptr [ %i.az, %bb.ah ], [ %i.at, %bb.af ]
  %.165105 = phi ptr [ @jpeg_idct_ifast, %bb.ah ], [ %.06475, %bb.af ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.06177, i64 88
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !47
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %index
  %wide.load = load <4 x i16>, ptr %i.du, align 2, !tbaa !56
  %i.dv = zext <4 x i16> %wide.load to <4 x i64>
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr @start_pass.aanscales, i64 %index
  %wide.load116 = load <4 x i16>, ptr %i.dw, align 8, !tbaa !56
  %i.dx = sext <4 x i16> %wide.load116 to <4 x i64>
  %i.dy = mul nsw <4 x i64> %i.dx, %i.dv
  %i.dz = add nsw <4 x i64> %i.dy, splat (i64 2048)
  %i.ea = lshr <4 x i64> %i.dz, splat (i64 12)
  %i.eb = trunc <4 x i64> %i.ea to <4 x i32>
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index
  store <4 x i32> %i.eb, ptr %i.ec, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ed = icmp eq i64 %index.next, 64
  br i1 %i.ed, label %.loopexit, label %vector.body, !llvm.loop !57

vector.body118:                                   ; preds = %bb.af, %bb.ag
  %i.ee = phi ptr [ %i.aw, %bb.ag ], [ %i.at, %bb.af ] ; 64 uses
  %.165104 = phi ptr [ @jpeg_idct_float, %bb.ag ], [ %.06475, %bb.af ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.06177, i64 88
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !47 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ei = load i16, ptr %i.ee, align 2, !tbaa !56
  %i.ej = load i16, ptr %i.eh, align 2, !tbaa !56
  %i.ek = insertelement <2 x i16> poison, i16 %i.ei, i64 0
  %i.el = insertelement <2 x i16> %i.ek, i16 %i.ej, i64 1
  %i.em = uitofp <2 x i16> %i.el to <2 x double>
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 18
  %i.ep = load i16, ptr %i.en, align 2, !tbaa !56
  %i.eq = load i16, ptr %i.eo, align 2, !tbaa !56
  %i.er = insertelement <2 x i16> poison, i16 %i.ep, i64 0
  %i.es = insertelement <2 x i16> %i.er, i16 %i.eq, i64 1
  %i.et = uitofp <2 x i16> %i.es to <2 x double>
  %i.eu = fmul nnan <2 x double> %i.et, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  %i.ex = load i16, ptr %i.ev, align 2, !tbaa !56
  %i.ey = load i16, ptr %i.ew, align 2, !tbaa !56
  %i.ez = insertelement <2 x i16> poison, i16 %i.ex, i64 0
  %i.fa = insertelement <2 x i16> %i.ez, i16 %i.ey, i64 1
  %i.fb = uitofp <2 x i16> %i.fa to <2 x double>
  %i.fc = fmul nnan <2 x double> %i.fb, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ee, i64 6
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ee, i64 22
  %i.ff = load i16, ptr %i.fd, align 2, !tbaa !56
  %i.fg = load i16, ptr %i.fe, align 2, !tbaa !56
  %i.fh = insertelement <2 x i16> poison, i16 %i.ff, i64 0
  %i.fi = insertelement <2 x i16> %i.fh, i16 %i.fg, i64 1
  %i.fj = uitofp <2 x i16> %i.fi to <2 x double>
  %i.fk = fmul nnan <2 x double> %i.fj, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.fn = load i16, ptr %i.fl, align 2, !tbaa !56
  %i.fo = load i16, ptr %i.fm, align 2, !tbaa !56
  %i.fp = insertelement <2 x i16> poison, i16 %i.fn, i64 0
  %i.fq = insertelement <2 x i16> %i.fp, i16 %i.fo, i64 1
  %i.fr = uitofp <2 x i16> %i.fq to <2 x double>
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ee, i64 10
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ee, i64 26
  %i.fu = load i16, ptr %i.fs, align 2, !tbaa !56
  %i.fv = load i16, ptr %i.ft, align 2, !tbaa !56
  %i.fw = insertelement <2 x i16> poison, i16 %i.fu, i64 0
  %i.fx = insertelement <2 x i16> %i.fw, i16 %i.fv, i64 1
  %i.fy = uitofp <2 x i16> %i.fx to <2 x double>
  %i.fz = fmul nnan <2 x double> %i.fy, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ee, i64 28
  %i.gc = load i16, ptr %i.ga, align 2, !tbaa !56
  %i.gd = load i16, ptr %i.gb, align 2, !tbaa !56
  %i.ge = insertelement <2 x i16> poison, i16 %i.gc, i64 0
  %i.gf = insertelement <2 x i16> %i.ge, i16 %i.gd, i64 1
  %i.gg = uitofp <2 x i16> %i.gf to <2 x double>
  %i.gh = fmul nnan <2 x double> %i.gg, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ee, i64 14
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ee, i64 30
  %i.gk = load i16, ptr %i.gi, align 2, !tbaa !56
  %i.gl = load i16, ptr %i.gj, align 2, !tbaa !56
  %i.gm = insertelement <2 x i16> poison, i16 %i.gk, i64 0
  %i.gn = insertelement <2 x i16> %i.gm, i16 %i.gl, i64 1
  %i.go = uitofp <2 x i16> %i.gn to <2 x double>
  %i.gp = fmul nnan <2 x double> %i.go, <double 1.000000e+00, double f0x3FF63150B14861EF>
  %i.gq = shufflevector <2 x double> <double 1.000000e+00, double f0x3FF63150B14861EF>, <2 x double> %i.eu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %1 = shufflevector <2 x double> %i.fc, <2 x double> %i.fk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %2 = shufflevector <4 x double> %i.gq, <4 x double> %1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gr = shufflevector <2 x double> %i.em, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %3 = shufflevector <4 x double> %i.gr, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = fmul <8 x double> %2, %3
  %i.gs = fptrunc <8 x double> %4 to <8 x float>
  %i.gt = shufflevector <2 x double> <double 1.000000e+00, double f0x3FF63150B14861EF>, <2 x double> %i.fz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <2 x double> %i.gh, <2 x double> %i.gp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = shufflevector <4 x double> %i.gt, <4 x double> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gu = shufflevector <2 x double> %i.fr, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %7 = shufflevector <4 x double> %i.gu, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = fmul <8 x double> %6, %7
  %i.gv = fptrunc <8 x double> %8 to <8 x float>
  %interleaved.vec = shufflevector <8 x float> %i.gs, <8 x float> %i.gv, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.eg, align 4, !tbaa !60
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.gy = load i16, ptr %i.gw, align 2, !tbaa !56
  %i.gz = load i16, ptr %i.gx, align 2, !tbaa !56
  %i.ha = insertelement <2 x i16> poison, i16 %i.gy, i64 0
  %i.hb = insertelement <2 x i16> %i.ha, i16 %i.gz, i64 1
  %i.hc = uitofp <2 x i16> %i.hb to <2 x double>
  %i.hd = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %i.ee, i64 34
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ee, i64 50
  %i.hg = load i16, ptr %i.he, align 2, !tbaa !56
  %i.hh = load i16, ptr %i.hf, align 2, !tbaa !56
  %i.hi = insertelement <2 x i16> poison, i16 %i.hg, i64 0
  %i.hj = insertelement <2 x i16> %i.hi, i16 %i.hh, i64 1
  %i.hk = uitofp <2 x i16> %i.hj to <2 x double>
  %i.hl = fmul nnan <2 x double> %i.hk, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ee, i64 36
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ee, i64 52
  %i.ho = load i16, ptr %i.hm, align 2, !tbaa !56
  %i.hp = load i16, ptr %i.hn, align 2, !tbaa !56
  %i.hq = insertelement <2 x i16> poison, i16 %i.ho, i64 0
  %i.hr = insertelement <2 x i16> %i.hq, i16 %i.hp, i64 1
  %i.hs = uitofp <2 x i16> %i.hr to <2 x double>
  %i.ht = fmul nnan <2 x double> %i.hs, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ee, i64 38
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ee, i64 54
  %i.hw = load i16, ptr %i.hu, align 2, !tbaa !56
  %i.hx = load i16, ptr %i.hv, align 2, !tbaa !56
  %i.hy = insertelement <2 x i16> poison, i16 %i.hw, i64 0
  %i.hz = insertelement <2 x i16> %i.hy, i16 %i.hx, i64 1
  %i.ia = uitofp <2 x i16> %i.hz to <2 x double>
  %i.ib = fmul nnan <2 x double> %i.ia, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.id = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  %i.ie = load i16, ptr %i.ic, align 2, !tbaa !56
  %i.if = load i16, ptr %i.id, align 2, !tbaa !56
  %i.ig = insertelement <2 x i16> poison, i16 %i.ie, i64 0
  %i.ih = insertelement <2 x i16> %i.ig, i16 %i.if, i64 1
  %i.ii = uitofp <2 x i16> %i.ih to <2 x double>
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ee, i64 42
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ee, i64 58
  %i.il = load i16, ptr %i.ij, align 2, !tbaa !56
  %i.im = load i16, ptr %i.ik, align 2, !tbaa !56
  %i.in = insertelement <2 x i16> poison, i16 %i.il, i64 0
  %i.io = insertelement <2 x i16> %i.in, i16 %i.im, i64 1
  %i.ip = uitofp <2 x i16> %i.io to <2 x double>
  %i.iq = fmul nnan <2 x double> %i.ip, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ee, i64 44
  %i.is = getelementptr inbounds nuw i8, ptr %i.ee, i64 60
  %i.it = load i16, ptr %i.ir, align 2, !tbaa !56
  %i.iu = load i16, ptr %i.is, align 2, !tbaa !56
  %i.iv = insertelement <2 x i16> poison, i16 %i.it, i64 0
  %i.iw = insertelement <2 x i16> %i.iv, i16 %i.iu, i64 1
  %i.ix = uitofp <2 x i16> %i.iw to <2 x double>
  %i.iy = fmul nnan <2 x double> %i.ix, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ee, i64 46
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ee, i64 62
  %i.jb = load i16, ptr %i.iz, align 2, !tbaa !56
  %i.jc = load i16, ptr %i.ja, align 2, !tbaa !56
  %i.jd = insertelement <2 x i16> poison, i16 %i.jb, i64 0
  %i.je = insertelement <2 x i16> %i.jd, i16 %i.jc, i64 1
  %i.jf = uitofp <2 x i16> %i.je to <2 x double>
  %i.jg = fmul nnan <2 x double> %i.jf, <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>
  %i.jh = shufflevector <2 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>, <2 x double> %i.hl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = shufflevector <2 x double> %i.ht, <2 x double> %i.ib, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = shufflevector <4 x double> %i.jh, <4 x double> %9, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ji = shufflevector <2 x double> %i.hc, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <4 x double> %i.ji, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = fmul <8 x double> %10, %11
  %i.jj = fptrunc <8 x double> %12 to <8 x float>
  %i.jk = shufflevector <2 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA>, <2 x double> %i.iq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %13 = shufflevector <2 x double> %i.iy, <2 x double> %i.jg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %14 = shufflevector <4 x double> %i.jk, <4 x double> %13, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jl = shufflevector <2 x double> %i.ii, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %15 = shufflevector <4 x double> %i.jl, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %16 = fmul <8 x double> %14, %15
  %i.jm = fptrunc <8 x double> %16 to <8 x float>
  %interleaved.vec.1 = shufflevector <8 x float> %i.jj, <8 x float> %i.jm, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.1, ptr %i.hd, align 4, !tbaa !60
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  %i.jp = load i16, ptr %i.jn, align 2, !tbaa !56
  %i.jq = load i16, ptr %i.jo, align 2, !tbaa !56
  %i.jr = insertelement <2 x i16> poison, i16 %i.jp, i64 0
  %i.js = insertelement <2 x i16> %i.jr, i16 %i.jq, i64 1
  %i.jt = uitofp <2 x i16> %i.js to <2 x double>
  %i.ju = getelementptr inbounds nuw i8, ptr %i.eg, i64 128
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ee, i64 66
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ee, i64 82
  %i.jx = load i16, ptr %i.jv, align 2, !tbaa !56
  %i.jy = load i16, ptr %i.jw, align 2, !tbaa !56
  %i.jz = insertelement <2 x i16> poison, i16 %i.jx, i64 0
  %i.ka = insertelement <2 x i16> %i.jz, i16 %i.jy, i64 1
  %i.kb = uitofp <2 x i16> %i.ka to <2 x double>
  %i.kc = fmul nnan <2 x double> %i.kb, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ee, i64 68
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ee, i64 84
  %i.kf = load i16, ptr %i.kd, align 2, !tbaa !56
  %i.kg = load i16, ptr %i.ke, align 2, !tbaa !56
  %i.kh = insertelement <2 x i16> poison, i16 %i.kf, i64 0
  %i.ki = insertelement <2 x i16> %i.kh, i16 %i.kg, i64 1
  %i.kj = uitofp <2 x i16> %i.ki to <2 x double>
  %i.kk = fmul nnan <2 x double> %i.kj, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ee, i64 70
  %i.km = getelementptr inbounds nuw i8, ptr %i.ee, i64 86
  %i.kn = load i16, ptr %i.kl, align 2, !tbaa !56
  %i.ko = load i16, ptr %i.km, align 2, !tbaa !56
  %i.kp = insertelement <2 x i16> poison, i16 %i.kn, i64 0
  %i.kq = insertelement <2 x i16> %i.kp, i16 %i.ko, i64 1
  %i.kr = uitofp <2 x i16> %i.kq to <2 x double>
  %i.ks = fmul nnan <2 x double> %i.kr, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ee, i64 88
  %i.kv = load i16, ptr %i.kt, align 2, !tbaa !56
  %i.kw = load i16, ptr %i.ku, align 2, !tbaa !56
  %i.kx = insertelement <2 x i16> poison, i16 %i.kv, i64 0
  %i.ky = insertelement <2 x i16> %i.kx, i16 %i.kw, i64 1
  %i.kz = uitofp <2 x i16> %i.ky to <2 x double>
  %i.la = getelementptr inbounds nuw i8, ptr %i.ee, i64 74
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ee, i64 90
  %i.lc = load i16, ptr %i.la, align 2, !tbaa !56
  %i.ld = load i16, ptr %i.lb, align 2, !tbaa !56
  %i.le = insertelement <2 x i16> poison, i16 %i.lc, i64 0
  %i.lf = insertelement <2 x i16> %i.le, i16 %i.ld, i64 1
  %i.lg = uitofp <2 x i16> %i.lf to <2 x double>
  %i.lh = fmul nnan <2 x double> %i.lg, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.li = getelementptr inbounds nuw i8, ptr %i.ee, i64 76
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ee, i64 92
  %i.lk = load i16, ptr %i.li, align 2, !tbaa !56
  %i.ll = load i16, ptr %i.lj, align 2, !tbaa !56
  %i.lm = insertelement <2 x i16> poison, i16 %i.lk, i64 0
  %i.ln = insertelement <2 x i16> %i.lm, i16 %i.ll, i64 1
  %i.lo = uitofp <2 x i16> %i.ln to <2 x double>
  %i.lp = fmul nnan <2 x double> %i.lo, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ee, i64 78
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ee, i64 94
  %i.ls = load i16, ptr %i.lq, align 2, !tbaa !56
  %i.lt = load i16, ptr %i.lr, align 2, !tbaa !56
  %i.lu = insertelement <2 x i16> poison, i16 %i.ls, i64 0
  %i.lv = insertelement <2 x i16> %i.lu, i16 %i.lt, i64 1
  %i.lw = uitofp <2 x i16> %i.lv to <2 x double>
  %i.lx = fmul nnan <2 x double> %i.lw, <double 1.000000e+00, double f0x3FE92469C0A7BF3B>
  %i.ly = shufflevector <2 x double> <double 1.000000e+00, double f0x3FE92469C0A7BF3B>, <2 x double> %i.kc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %17 = shufflevector <2 x double> %i.kk, <2 x double> %i.ks, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %18 = shufflevector <4 x double> %i.ly, <4 x double> %17, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lz = shufflevector <2 x double> %i.jt, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %19 = shufflevector <4 x double> %i.lz, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %20 = fmul <8 x double> %18, %19
  %i.ma = fptrunc <8 x double> %20 to <8 x float>
  %i.mb = shufflevector <2 x double> <double 1.000000e+00, double f0x3FE92469C0A7BF3B>, <2 x double> %i.lh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %21 = shufflevector <2 x double> %i.lp, <2 x double> %i.lx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %22 = shufflevector <4 x double> %i.mb, <4 x double> %21, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mc = shufflevector <2 x double> %i.kz, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %23 = shufflevector <4 x double> %i.mc, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %24 = fmul <8 x double> %22, %23
  %i.md = fptrunc <8 x double> %24 to <8 x float>
  %interleaved.vec.2 = shufflevector <8 x float> %i.ma, <8 x float> %i.md, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.2, ptr %i.ju, align 4, !tbaa !60
  %i.me = getelementptr inbounds nuw i8, ptr %i.ee, i64 96
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ee, i64 112
  %i.mg = load i16, ptr %i.me, align 2, !tbaa !56
  %i.mh = load i16, ptr %i.mf, align 2, !tbaa !56
  %i.mi = insertelement <2 x i16> poison, i16 %i.mg, i64 0
  %i.mj = insertelement <2 x i16> %i.mi, i16 %i.mh, i64 1
  %i.mk = uitofp <2 x i16> %i.mj to <2 x double>
  %i.ml = getelementptr inbounds nuw i8, ptr %i.eg, i64 192
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ee, i64 98
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ee, i64 114
  %i.mo = load i16, ptr %i.mm, align 2, !tbaa !56
  %i.mp = load i16, ptr %i.mn, align 2, !tbaa !56
  %i.mq = insertelement <2 x i16> poison, i16 %i.mo, i64 0
  %i.mr = insertelement <2 x i16> %i.mq, i16 %i.mp, i64 1
  %i.ms = uitofp <2 x i16> %i.mr to <2 x double>
  %i.mt = fmul nnan <2 x double> %i.ms, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ee, i64 100
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ee, i64 116
  %i.mw = load i16, ptr %i.mu, align 2, !tbaa !56
  %i.mx = load i16, ptr %i.mv, align 2, !tbaa !56
  %i.my = insertelement <2 x i16> poison, i16 %i.mw, i64 0
  %i.mz = insertelement <2 x i16> %i.my, i16 %i.mx, i64 1
  %i.na = uitofp <2 x i16> %i.mz to <2 x double>
  %i.nb = fmul nnan <2 x double> %i.na, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ee, i64 102
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ee, i64 118
  %i.ne = load i16, ptr %i.nc, align 2, !tbaa !56
  %i.nf = load i16, ptr %i.nd, align 2, !tbaa !56
  %i.ng = insertelement <2 x i16> poison, i16 %i.ne, i64 0
  %i.nh = insertelement <2 x i16> %i.ng, i16 %i.nf, i64 1
  %i.ni = uitofp <2 x i16> %i.nh to <2 x double>
  %i.nj = fmul nnan <2 x double> %i.ni, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ee, i64 104
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ee, i64 120
  %i.nm = load i16, ptr %i.nk, align 2, !tbaa !56
  %i.nn = load i16, ptr %i.nl, align 2, !tbaa !56
  %i.no = insertelement <2 x i16> poison, i16 %i.nm, i64 0
  %i.np = insertelement <2 x i16> %i.no, i16 %i.nn, i64 1
  %i.nq = uitofp <2 x i16> %i.np to <2 x double>
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ee, i64 106
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ee, i64 122
  %i.nt = load i16, ptr %i.nr, align 2, !tbaa !56
  %i.nu = load i16, ptr %i.ns, align 2, !tbaa !56
  %i.nv = insertelement <2 x i16> poison, i16 %i.nt, i64 0
  %i.nw = insertelement <2 x i16> %i.nv, i16 %i.nu, i64 1
  %i.nx = uitofp <2 x i16> %i.nw to <2 x double>
  %i.ny = fmul nnan <2 x double> %i.nx, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ee, i64 108
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ee, i64 124
  %i.ob = load i16, ptr %i.nz, align 2, !tbaa !56
  %i.oc = load i16, ptr %i.oa, align 2, !tbaa !56
  %i.od = insertelement <2 x i16> poison, i16 %i.ob, i64 0
  %i.oe = insertelement <2 x i16> %i.od, i16 %i.oc, i64 1
  %i.of = uitofp <2 x i16> %i.oe to <2 x double>
  %i.og = fmul nnan <2 x double> %i.of, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ee, i64 110
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ee, i64 126
  %i.oj = load i16, ptr %i.oh, align 2, !tbaa !56
  %i.ok = load i16, ptr %i.oi, align 2, !tbaa !56
  %i.ol = insertelement <2 x i16> poison, i16 %i.oj, i64 0
  %i.om = insertelement <2 x i16> %i.ol, i16 %i.ok, i64 1
  %i.on = uitofp <2 x i16> %i.om to <2 x double>
  %i.oo = fmul nnan <2 x double> %i.on, <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>
  %i.op = shufflevector <2 x double> <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>, <2 x double> %i.mt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %25 = shufflevector <2 x double> %i.nb, <2 x double> %i.nj, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %26 = shufflevector <4 x double> %i.op, <4 x double> %25, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.oq = shufflevector <2 x double> %i.mk, <2 x double> splat (double f0x3FF63150B14861EF), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %27 = shufflevector <4 x double> %i.oq, <4 x double> <double f0x3FF4E7AE914D6FCA, double f0x3FF4E7AE914D6FCA, double f0x3FF2D062EF6C11AA, double f0x3FF2D062EF6C11AA>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %28 = fmul <8 x double> %26, %27
  %i.or = fptrunc <8 x double> %28 to <8 x float>
  %i.os = shufflevector <2 x double> <double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D>, <2 x double> %i.ny, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %29 = shufflevector <2 x double> %i.og, <2 x double> %i.oo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %30 = shufflevector <4 x double> %i.os, <4 x double> %29, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ot = shufflevector <2 x double> %i.nq, <2 x double> splat (double f0x3FE92469C0A7BF3B), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %31 = shufflevector <4 x double> %i.ot, <4 x double> <double f0x3FE1517A7BC720BB, double f0x3FE1517A7BC720BB, double f0x3FD1A855DE72AB5D, double f0x3FD1A855DE72AB5D>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %32 = fmul <8 x double> %30, %31
  %i.ou = fptrunc <8 x double> %32 to <8 x float>
  %interleaved.vec.3 = shufflevector <8 x float> %i.or, <8 x float> %i.ou, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x float> %interleaved.vec.3, ptr %i.ml, align 4, !tbaa !60
  br label %.loopexit

default.unreachable102:                           ; preds = %bb.af
  unreachable

.loopexit:                                        ; preds = %vector.body, %vector.body118, %bb.ac, %bb.y, %bb.u, %bb.ad, %bb.z, %bb.v, %bb.ae, %bb.aa, %bb.w, %.loopexit.loopexit, %bb.ab, %bb.t, %bb.x
  %.163107 = phi i32 [ 2, %bb.ac ], [ 2, %bb.y ], [ 2, %bb.u ], [ 1, %bb.ad ], [ 1, %bb.z ], [ 1, %bb.v ], [ 0, %bb.ae ], [ 0, %bb.aa ], [ 0, %bb.w ], [ 2, %vector.body118 ], [ %.06276, %bb.x ], [ 0, %.loopexit.loopexit ], [ %.06276, %bb.ab ], [ %.06276, %bb.t ], [ 1, %vector.body ]
  %.165103 = phi ptr [ @jpeg_idct_float, %bb.ac ], [ @jpeg_idct_float, %bb.y ], [ @jpeg_idct_float, %bb.u ], [ @jpeg_idct_ifast, %bb.ad ], [ @jpeg_idct_ifast, %bb.z ], [ @jpeg_idct_ifast, %bb.v ], [ %.165.jt0, %bb.ae ], [ %.165.jt0, %bb.aa ], [ %.165.jt0, %bb.w ], [ %.165104, %vector.body118 ], [ %.06475, %bb.x ], [ %.165106, %.loopexit.loopexit ], [ %.06475, %bb.ab ], [ %.06475, %bb.t ], [ %.165105, %vector.body ]
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.06177, i64 96
  %i.ow = load i32, ptr %i.a, align 8, !tbaa !45
  %i.ox = sext i32 %i.ow to i64
  %i.oy = icmp slt i64 %indvars.iv.next100, %i.ox
  br i1 %i.oy, label %bb.b, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare void @jpeg_idct_1x1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_2x2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_3x3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_4x4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_5x5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_6x6(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_7x7(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_islow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_ifast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_float(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_9x9(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_10x10(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_11x11(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_12x12(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_13x13(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_14x14(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_15x15(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_16x16(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 296}
!8 = !{!"jpeg_decompress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !14, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !15, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !17, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !18, i64 384, !18, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !19, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !20, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !17, i64 552, !4, i64 560, !4, i64 564, !21, i64 568, !22, i64 576, !23, i64 584, !24, i64 592, !25, i64 600, !26, i64 608, !27, i64 616, !28, i64 624, !29, i64 632, !30, i64 640, !31, i64 648}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"short", !5, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!22 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!23 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!24 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!25 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!26 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!27 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!28 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!29 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!30 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!32 = !{!8, !9, i64 0}
!33 = !{!34, !4, i64 40}
!34 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !35, i64 128, !15, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 164}
!35 = !{!"long", !5, i64 0}
!36 = !{!5, !5, i64 0}
!37 = !{!34, !10, i64 0}
!38 = !{!8, !11, i64 8}
!39 = !{!40, !10, i64 0}
!40 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !35, i64 88, !35, i64 96}
!41 = !{!8, !28, i64 624}
!42 = !{!43, !10, i64 0}
!43 = !{!"", !44, i64 0, !5, i64 168}
!44 = !{!"jpeg_inverse_dct", !10, i64 0, !5, i64 8, !5, i64 88}
!45 = !{!8, !4, i64 56}
!46 = !{!8, !10, i64 304}
!47 = !{!48, !10, i64 88}
!48 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!48, !4, i64 36}
!52 = !{!8, !4, i64 96}
!53 = !{!10, !10, i64 0}
!54 = !{!48, !4, i64 52}
!55 = !{!48, !10, i64 80}
!56 = !{!18, !18, i64 0}
!57 = distinct !{!57, !50, !58, !59}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{!61, !61, i64 0}
!61 = !{!"float", !5, i64 0}
!62 = distinct !{!62, !50}
end_hunk_0
