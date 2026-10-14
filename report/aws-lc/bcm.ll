Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 550
begin_hunk_0_@ml_kem_1024_decapsulate_no_self_test:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 55
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 66
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 77
  %i.aj = load i8, ptr %i.u, align 1, !tbaa !76
  %i.ak = load i8, ptr %i.w, align 1, !tbaa !76
  %i.al = load i8, ptr %i.y, align 1, !tbaa !76
  %i.am = load i8, ptr %i.aa, align 1, !tbaa !76
  %i.an = load i8, ptr %i.ac, align 1, !tbaa !76
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !76
  %i.ap = load i8, ptr %i.ag, align 1, !tbaa !76
  %i.aq = load i8, ptr %i.ai, align 1, !tbaa !76
  %i.ar = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 1
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 2
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 3
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 4
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 5
  %i.ax = insertelement <8 x i8> %i.aw, i8 %i.ap, i64 6
  %i.ay = insertelement <8 x i8> %i.ax, i8 %i.aq, i64 7
  %i.az = zext <8 x i8> %i.ay to <8 x i32>
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 34
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 45
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 67
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 78
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !76
  %i.bj = load i8, ptr %i.bb, align 1, !tbaa !76
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !76
  %i.bl = load i8, ptr %i.bd, align 1, !tbaa !76
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !76
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !76
  %i.bo = load i8, ptr %i.bg, align 1, !tbaa !76
  %i.bp = load i8, ptr %i.bh, align 1, !tbaa !76
  %i.bq = insertelement <8 x i8> poison, i8 %i.bi, i64 0
  %i.br = insertelement <8 x i8> %i.bq, i8 %i.bj, i64 1
  %i.bs = insertelement <8 x i8> %i.br, i8 %i.bk, i64 2
  %i.bt = insertelement <8 x i8> %i.bs, i8 %i.bl, i64 3
  %i.bu = insertelement <8 x i8> %i.bt, i8 %i.bm, i64 4
  %i.bv = insertelement <8 x i8> %i.bu, i8 %i.bn, i64 5
  %i.bw = insertelement <8 x i8> %i.bv, i8 %i.bo, i64 6
  %i.bx = insertelement <8 x i8> %i.bw, i8 %i.bp, i64 7 ; 2 uses
  %i.by = zext <8 x i8> %i.bx to <8 x i32>
  %i.bz = shl nuw nsw <8 x i32> %i.by, splat (i32 8)
  %i.ca = and <8 x i32> %i.bz, splat (i32 1792)
  %i.cb = or disjoint <8 x i32> %i.ca, %i.az
  %i.cc = lshr <8 x i8> %i.bx, splat (i8 3)
  %i.cd = zext nneg <8 x i8> %i.cc to <8 x i32>
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 13
  %i.cg = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 46
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ad, i64 57
  %i.ck = getelementptr inbounds nuw i8, ptr %i.af, i64 68
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ah, i64 79
  %i.cm = load i8, ptr %i.ce, align 1, !tbaa !76
  %i.cn = load i8, ptr %i.cf, align 1, !tbaa !76
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !76
  %i.cp = load i8, ptr %i.ch, align 1, !tbaa !76
  %i.cq = load i8, ptr %i.ci, align 1, !tbaa !76
  %i.cr = load i8, ptr %i.cj, align 1, !tbaa !76
  %i.cs = load i8, ptr %i.ck, align 1, !tbaa !76
  %i.ct = load i8, ptr %i.cl, align 1, !tbaa !76
  %i.cu = insertelement <8 x i8> poison, i8 %i.cm, i64 0
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 1
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 2
  %i.cx = insertelement <8 x i8> %i.cw, i8 %i.cp, i64 3
  %i.cy = insertelement <8 x i8> %i.cx, i8 %i.cq, i64 4
  %i.cz = insertelement <8 x i8> %i.cy, i8 %i.cr, i64 5
  %i.da = insertelement <8 x i8> %i.cz, i8 %i.cs, i64 6
  %i.db = insertelement <8 x i8> %i.da, i8 %i.ct, i64 7 ; 2 uses
  %i.dc = zext <8 x i8> %i.db to <8 x i32>
  %i.dd = shl nuw nsw <8 x i32> %i.dc, splat (i32 5)
  %i.de = and <8 x i32> %i.dd, splat (i32 2016)
  %i.df = or disjoint <8 x i32> %i.de, %i.cd
  %i.dg = lshr <8 x i8> %i.db, splat (i8 6)
  %i.dh = zext nneg <8 x i8> %i.dg to <8 x i32>
  %i.di = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 25
  %i.dl = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ab, i64 47
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ad, i64 58
  %i.do = getelementptr inbounds nuw i8, ptr %i.af, i64 69
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.dq = load i8, ptr %i.di, align 1, !tbaa !76
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !76
  %i.ds = load i8, ptr %i.dk, align 1, !tbaa !76
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !76
  %i.du = load i8, ptr %i.dm, align 1, !tbaa !76
  %i.dv = load i8, ptr %i.dn, align 1, !tbaa !76
  %i.dw = load i8, ptr %i.do, align 1, !tbaa !76
  %i.dx = load i8, ptr %i.dp, align 1, !tbaa !76
  %i.dy = insertelement <8 x i8> poison, i8 %i.dq, i64 0
  %i.dz = insertelement <8 x i8> %i.dy, i8 %i.dr, i64 1
  %i.ea = insertelement <8 x i8> %i.dz, i8 %i.ds, i64 2
  %i.eb = insertelement <8 x i8> %i.ea, i8 %i.dt, i64 3
  %i.ec = insertelement <8 x i8> %i.eb, i8 %i.du, i64 4
  %i.ed = insertelement <8 x i8> %i.ec, i8 %i.dv, i64 5
  %i.ee = insertelement <8 x i8> %i.ed, i8 %i.dw, i64 6
  %i.ef = insertelement <8 x i8> %i.ee, i8 %i.dx, i64 7
  %i.eg = zext <8 x i8> %i.ef to <8 x i32>
  %i.eh = shl nuw nsw <8 x i32> %i.eg, splat (i32 2)
  %i.ei = or disjoint <8 x i32> %i.eh, %i.dh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.v, i64 15
  %i.el = getelementptr inbounds nuw i8, ptr %i.x, i64 26
  %i.em = getelementptr inbounds nuw i8, ptr %i.z, i64 37
  %i.en = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ad, i64 59
  %i.ep = getelementptr inbounds nuw i8, ptr %i.af, i64 70
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ah, i64 81
  %i.er = load i8, ptr %i.ej, align 1, !tbaa !76
  %i.es = load i8, ptr %i.ek, align 1, !tbaa !76
  %i.et = load i8, ptr %i.el, align 1, !tbaa !76
  %i.eu = load i8, ptr %i.em, align 1, !tbaa !76
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !76
  %i.ew = load i8, ptr %i.eo, align 1, !tbaa !76
  %i.ex = load i8, ptr %i.ep, align 1, !tbaa !76
  %i.ey = load i8, ptr %i.eq, align 1, !tbaa !76
  %i.ez = insertelement <8 x i8> poison, i8 %i.er, i64 0
  %i.fa = insertelement <8 x i8> %i.ez, i8 %i.es, i64 1
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.et, i64 2
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.eu, i64 3
  %i.fd = insertelement <8 x i8> %i.fc, i8 %i.ev, i64 4
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ew, i64 5
  %i.ff = insertelement <8 x i8> %i.fe, i8 %i.ex, i64 6
  %i.fg = insertelement <8 x i8> %i.ff, i8 %i.ey, i64 7 ; 2 uses
  %i.fh = zext <8 x i8> %i.fg to <8 x i32>
  %i.fi = shl nuw nsw <8 x i32> %i.fh, splat (i32 10)
  %i.fj = and <8 x i32> %i.fi, splat (i32 1024)
  %i.fk = or disjoint <8 x i32> %i.fj, %i.ei
  %i.fl = lshr <8 x i8> %i.fg, splat (i8 1)
  %i.fm = zext nneg <8 x i8> %i.fl to <8 x i32>
  %i.fn = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %i.fo = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.x, i64 27
  %i.fq = getelementptr inbounds nuw i8, ptr %i.z, i64 38
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ab, i64 49
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.ft = getelementptr inbounds nuw i8, ptr %i.af, i64 71
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ah, i64 82
  %i.fv = load i8, ptr %i.fn, align 1, !tbaa !76
  %i.fw = load i8, ptr %i.fo, align 1, !tbaa !76
  %i.fx = load i8, ptr %i.fp, align 1, !tbaa !76
  %i.fy = load i8, ptr %i.fq, align 1, !tbaa !76
  %i.fz = load i8, ptr %i.fr, align 1, !tbaa !76
  %i.ga = load i8, ptr %i.fs, align 1, !tbaa !76
  %i.gb = load i8, ptr %i.ft, align 1, !tbaa !76
  %i.gc = load i8, ptr %i.fu, align 1, !tbaa !76
  %i.gd = insertelement <8 x i8> poison, i8 %i.fv, i64 0
  %i.ge = insertelement <8 x i8> %i.gd, i8 %i.fw, i64 1
  %i.gf = insertelement <8 x i8> %i.ge, i8 %i.fx, i64 2
  %i.gg = insertelement <8 x i8> %i.gf, i8 %i.fy, i64 3
  %i.gh = insertelement <8 x i8> %i.gg, i8 %i.fz, i64 4
  %i.gi = insertelement <8 x i8> %i.gh, i8 %i.ga, i64 5
  %i.gj = insertelement <8 x i8> %i.gi, i8 %i.gb, i64 6
  %i.gk = insertelement <8 x i8> %i.gj, i8 %i.gc, i64 7 ; 2 uses
  %i.gl = zext <8 x i8> %i.gk to <8 x i32>
  %i.gm = shl nuw nsw <8 x i32> %i.gl, splat (i32 7)
  %i.gn = and <8 x i32> %i.gm, splat (i32 1920)
  %i.go = or disjoint <8 x i32> %i.gn, %i.fm
  %i.gp = lshr <8 x i8> %i.gk, splat (i8 4)
  %i.gq = zext nneg <8 x i8> %i.gp to <8 x i32>
  %i.gr = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.gs = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  %i.gt = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.gu = getelementptr inbounds nuw i8, ptr %i.z, i64 39
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ab, i64 50
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ad, i64 61
  %i.gx = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ah, i64 83
  %i.gz = load i8, ptr %i.gr, align 1, !tbaa !76
  %i.ha = load i8, ptr %i.gs, align 1, !tbaa !76
  %i.hb = load i8, ptr %i.gt, align 1, !tbaa !76
  %i.hc = load i8, ptr %i.gu, align 1, !tbaa !76
  %i.hd = load i8, ptr %i.gv, align 1, !tbaa !76
  %i.he = load i8, ptr %i.gw, align 1, !tbaa !76
  %i.hf = load i8, ptr %i.gx, align 1, !tbaa !76
  %i.hg = load i8, ptr %i.gy, align 1, !tbaa !76
  %i.hh = insertelement <8 x i8> poison, i8 %i.gz, i64 0
  %i.hi = insertelement <8 x i8> %i.hh, i8 %i.ha, i64 1
  %i.hj = insertelement <8 x i8> %i.hi, i8 %i.hb, i64 2
  %i.hk = insertelement <8 x i8> %i.hj, i8 %i.hc, i64 3
  %i.hl = insertelement <8 x i8> %i.hk, i8 %i.hd, i64 4
  %i.hm = insertelement <8 x i8> %i.hl, i8 %i.he, i64 5
  %i.hn = insertelement <8 x i8> %i.hm, i8 %i.hf, i64 6
  %i.ho = insertelement <8 x i8> %i.hn, i8 %i.hg, i64 7 ; 2 uses
  %i.hp = zext <8 x i8> %i.ho to <8 x i32>
  %i.hq = shl nuw nsw <8 x i32> %i.hp, splat (i32 4)
  %i.hr = lshr <8 x i8> %i.ho, splat (i8 7)
  %i.hs = zext nneg <8 x i8> %i.hr to <8 x i32>
  %i.ht = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  %i.hu = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %i.hv = getelementptr inbounds nuw i8, ptr %i.x, i64 29
  %i.hw = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ab, i64 51
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ad, i64 62
  %i.hz = getelementptr inbounds nuw i8, ptr %i.af, i64 73
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ah, i64 84
  %i.ib = load i8, ptr %i.ht, align 1, !tbaa !76
  %i.ic = load i8, ptr %i.hu, align 1, !tbaa !76
  %i.id = load i8, ptr %i.hv, align 1, !tbaa !76
  %i.ie = load i8, ptr %i.hw, align 1, !tbaa !76
  %i.if = load i8, ptr %i.hx, align 1, !tbaa !76
  %i.ig = load i8, ptr %i.hy, align 1, !tbaa !76
  %i.ih = load i8, ptr %i.hz, align 1, !tbaa !76
  %i.ii = load i8, ptr %i.ia, align 1, !tbaa !76
  %i.ij = insertelement <8 x i8> poison, i8 %i.ib, i64 0
  %i.ik = insertelement <8 x i8> %i.ij, i8 %i.ic, i64 1
  %i.il = insertelement <8 x i8> %i.ik, i8 %i.id, i64 2
  %i.im = insertelement <8 x i8> %i.il, i8 %i.ie, i64 3
  %i.in = insertelement <8 x i8> %i.im, i8 %i.if, i64 4
  %i.io = insertelement <8 x i8> %i.in, i8 %i.ig, i64 5
  %i.ip = insertelement <8 x i8> %i.io, i8 %i.ih, i64 6
  %i.iq = insertelement <8 x i8> %i.ip, i8 %i.ii, i64 7
  %i.ir = zext <8 x i8> %i.iq to <8 x i32>
  %i.is = shl nuw nsw <8 x i32> %i.ir, splat (i32 1)
  %i.it = or disjoint <8 x i32> %i.is, %i.hs
  %i.iu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.v, i64 19
  %i.iw = getelementptr inbounds nuw i8, ptr %i.x, i64 30
  %i.ix = getelementptr inbounds nuw i8, ptr %i.z, i64 41
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ad, i64 63
  %i.ja = getelementptr inbounds nuw i8, ptr %i.af, i64 74
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ah, i64 85
  %i.jc = load i8, ptr %i.iu, align 1, !tbaa !76
  %i.jd = load i8, ptr %i.iv, align 1, !tbaa !76
  %i.je = load i8, ptr %i.iw, align 1, !tbaa !76
  %i.jf = load i8, ptr %i.ix, align 1, !tbaa !76
  %i.jg = load i8, ptr %i.iy, align 1, !tbaa !76
  %i.jh = load i8, ptr %i.iz, align 1, !tbaa !76
  %i.ji = load i8, ptr %i.ja, align 1, !tbaa !76
  %i.jj = load i8, ptr %i.jb, align 1, !tbaa !76
  %i.jk = insertelement <8 x i8> poison, i8 %i.jc, i64 0
  %i.jl = insertelement <8 x i8> %i.jk, i8 %i.jd, i64 1
  %i.jm = insertelement <8 x i8> %i.jl, i8 %i.je, i64 2
  %i.jn = insertelement <8 x i8> %i.jm, i8 %i.jf, i64 3
  %i.jo = insertelement <8 x i8> %i.jn, i8 %i.jg, i64 4
  %i.jp = insertelement <8 x i8> %i.jo, i8 %i.jh, i64 5
  %i.jq = insertelement <8 x i8> %i.jp, i8 %i.ji, i64 6
  %i.jr = insertelement <8 x i8> %i.jq, i8 %i.jj, i64 7 ; 2 uses
  %i.js = zext <8 x i8> %i.jr to <8 x i32>
  %i.jt = shl nuw nsw <8 x i32> %i.js, splat (i32 9)
  %i.ju = lshr <8 x i8> %i.jr, splat (i8 2)
  %i.jv = zext nneg <8 x i8> %i.ju to <8 x i32>
  %i.jw = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.jx = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.jy = getelementptr inbounds nuw i8, ptr %i.x, i64 31
  %i.jz = getelementptr inbounds nuw i8, ptr %i.z, i64 42
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ab, i64 53
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.af, i64 75
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ah, i64 86
  %i.ke = load i8, ptr %i.jw, align 1, !tbaa !76
  %i.kf = load i8, ptr %i.jx, align 1, !tbaa !76
  %i.kg = load i8, ptr %i.jy, align 1, !tbaa !76
  %i.kh = load i8, ptr %i.jz, align 1, !tbaa !76
  %i.ki = load i8, ptr %i.ka, align 1, !tbaa !76
  %i.kj = load i8, ptr %i.kb, align 1, !tbaa !76
  %i.kk = load i8, ptr %i.kc, align 1, !tbaa !76
  %i.kl = load i8, ptr %i.kd, align 1, !tbaa !76
  %i.km = insertelement <8 x i8> poison, i8 %i.ke, i64 0
  %i.kn = insertelement <8 x i8> %i.km, i8 %i.kf, i64 1
  %i.ko = insertelement <8 x i8> %i.kn, i8 %i.kg, i64 2
  %i.kp = insertelement <8 x i8> %i.ko, i8 %i.kh, i64 3
  %i.kq = insertelement <8 x i8> %i.kp, i8 %i.ki, i64 4
  %i.kr = insertelement <8 x i8> %i.kq, i8 %i.kj, i64 5
  %i.ks = insertelement <8 x i8> %i.kr, i8 %i.kk, i64 6
  %i.kt = insertelement <8 x i8> %i.ks, i8 %i.kl, i64 7 ; 2 uses
  %i.ku = zext <8 x i8> %i.kt to <8 x i32>
  %i.kv = shl nuw nsw <8 x i32> %i.ku, splat (i32 6)
  %i.kw = and <8 x i32> %i.kv, splat (i32 1984)
  %i.kx = lshr <8 x i8> %i.kt, splat (i8 5)
  %i.ky = zext nneg <8 x i8> %i.kx to <8 x i32>
  %i.kz = getelementptr inbounds nuw i8, ptr %i.u, i64 10
  %i.la = getelementptr inbounds nuw i8, ptr %i.v, i64 21
  %i.lb = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %i.z, i64 43
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ab, i64 54
  %i.le = getelementptr inbounds nuw i8, ptr %i.ad, i64 65
  %i.lf = getelementptr inbounds nuw i8, ptr %i.af, i64 76
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ah, i64 87
  %i.lh = load i8, ptr %i.kz, align 1, !tbaa !76
  %i.li = load i8, ptr %i.la, align 1, !tbaa !76
  %i.lj = load i8, ptr %i.lb, align 1, !tbaa !76
  %i.lk = load i8, ptr %i.lc, align 1, !tbaa !76
  %i.ll = load i8, ptr %i.ld, align 1, !tbaa !76
  %i.lm = load i8, ptr %i.le, align 1, !tbaa !76
  %i.ln = load i8, ptr %i.lf, align 1, !tbaa !76
  %i.lo = load i8, ptr %i.lg, align 1, !tbaa !76
  %i.lp = insertelement <8 x i8> poison, i8 %i.lh, i64 0
  %i.lq = insertelement <8 x i8> %i.lp, i8 %i.li, i64 1
  %i.lr = insertelement <8 x i8> %i.lq, i8 %i.lj, i64 2
  %i.ls = insertelement <8 x i8> %i.lr, i8 %i.lk, i64 3
  %i.lt = insertelement <8 x i8> %i.ls, i8 %i.ll, i64 4
  %i.lu = insertelement <8 x i8> %i.lt, i8 %i.lm, i64 5
  %i.lv = insertelement <8 x i8> %i.lu, i8 %i.ln, i64 6
  %i.lw = insertelement <8 x i8> %i.lv, i8 %i.lo, i64 7
  %i.lx = zext <8 x i8> %i.lw to <8 x i32>
  %i.ly = shl nuw nsw <8 x i32> %i.lx, splat (i32 3)
  %i.lz = shl nuw nsw i64 %index, 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.lz
  %i.mb = shufflevector <8 x i32> %i.cb, <8 x i32> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mc = mul nuw nsw <16 x i32> %i.mb, splat (i32 3329)
  %i.md = add nuw nsw <16 x i32> %i.mc, splat (i32 1024)
  %i.me = lshr <16 x i32> %i.md, splat (i32 11)
  %i.mf = trunc nuw nsw <16 x i32> %i.me to <16 x i16>
  %i.mg = shufflevector <8 x i32> %i.fk, <8 x i32> %i.go, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mh = mul nuw nsw <16 x i32> %i.mg, splat (i32 3329)
  %i.mi = add nuw nsw <16 x i32> %i.mh, splat (i32 1024)
  %i.mj = lshr <16 x i32> %i.mi, splat (i32 11)
  %i.mk = trunc nuw nsw <16 x i32> %i.mj to <16 x i16>
  %i.ml = shufflevector <16 x i16> %i.mf, <16 x i16> %i.mk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.mm = shufflevector <8 x i32> %i.hq, <8 x i32> %i.jt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %11 = and <16 x i32> %i.mm, <i32 2032, i32 2032, i32 2032, i32 2032, i32 2032, i32 2032, i32 2032, i32 2032, i32 1536, i32 1536, i32 1536, i32 1536, i32 1536, i32 1536, i32 1536, i32 1536>
  %i.mn = shufflevector <8 x i32> %i.kw, <8 x i32> %i.ly, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mo = shufflevector <16 x i32> %11, <16 x i32> %i.mn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.mp = shufflevector <8 x i32> %i.gq, <8 x i32> %i.it, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mq = shufflevector <8 x i32> %i.jv, <8 x i32> %i.ky, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mr = shufflevector <16 x i32> %i.mp, <16 x i32> %i.mq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ms = or disjoint <32 x i32> %i.mo, %i.mr
  %i.mt = mul nuw nsw <32 x i32> %i.ms, splat (i32 3329)
  %i.mu = add nuw nsw <32 x i32> %i.mt, splat (i32 1024)
  %i.mv = lshr <32 x i32> %i.mu, splat (i32 11)
  %i.mw = trunc nuw nsw <32 x i32> %i.mv to <32 x i16>
  %interleaved.vec = shufflevector <32 x i16> %i.ml, <32 x i16> %i.mw, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec, ptr %i.ma, align 32, !tbaa !131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mx = icmp eq i64 %index.next, 32
  br i1 %i.mx, label %mlkem1024_poly_decompress_du.exit.i.i.i.i, label %vector.body, !llvm.loop !2197

mlk_poly_decompress_d11_native.exit.thread.i.i.i.i.i.i: ; preds = %bb.d
  call void @mlkem_poly_decompress_d11_avx2_asm(ptr noundef nonnull %i.h, ptr noundef %i.j, ptr noundef nonnull @mlkem_decompress_d11_data) #46
  br label %mlkem1024_poly_decompress_du.exit.i.i.i.i

mlkem1024_poly_decompress_du.exit.i.i.i.i:        ; preds = %vector.body, %mlk_poly_decompress_d11_native.exit.thread.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i, label %mlkem1024_polyvec_decompress_du.exit.i.i.i, label %bb.d, !llvm.loop !2198

mlkem1024_polyvec_decompress_du.exit.i.i.i:       ; preds = %mlkem1024_poly_decompress_du.exit.i.i.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 1408 ; 9 uses
  %i.mz = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.na = and i32 %i.mz, 32
  %.not.i.i.i.i.i.i = icmp eq i32 %i.na, 0
  br i1 %.not.i.i.i.i.i.i, label %vector.body12, label %mlk_poly_decompress_d5_native.exit.thread.i.i.i.i.i

vector.body12:                                    ; preds = %mlkem1024_polyvec_decompress_du.exit.i.i.i, %vector.body12
  %index13 = phi i64 [ %index.next15, %vector.body12 ], [ 0, %mlkem1024_polyvec_decompress_du.exit.i.i.i ] ; 10 uses
  %i.nb = mul nuw nsw i64 %index13, 5
  %i.nc = mul nuw i64 %index13, 5
  %i.nd = mul nuw i64 %index13, 5
  %i.ne = mul nuw i64 %index13, 5
  %i.nf = mul nuw i64 %index13, 5
  %i.ng = mul nuw i64 %index13, 5
  %i.nh = mul nuw i64 %index13, 5
  %i.ni = mul nuw i64 %index13, 5
  %i.nj = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nb ; 5 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nc ; 5 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 5
  %i.nm = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nd ; 5 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 10
  %i.no = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.ne ; 5 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 15
  %i.nq = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nf ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 20
  %i.ns = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.ng ; 5 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 25
  %i.nu = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.nh ; 5 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 30
  %i.nw = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.ni ; 5 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 35
  %i.ny = load i8, ptr %i.nj, align 1, !tbaa !76
  %i.nz = load i8, ptr %i.nl, align 1, !tbaa !76
  %i.oa = load i8, ptr %i.nn, align 1, !tbaa !76
  %i.ob = load i8, ptr %i.np, align 1, !tbaa !76
  %i.oc = load i8, ptr %i.nr, align 1, !tbaa !76
  %i.od = load i8, ptr %i.nt, align 1, !tbaa !76
  %i.oe = load i8, ptr %i.nv, align 1, !tbaa !76
  %i.of = load i8, ptr %i.nx, align 1, !tbaa !76
  %i.og = insertelement <8 x i8> poison, i8 %i.ny, i64 0
  %i.oh = insertelement <8 x i8> %i.og, i8 %i.nz, i64 1
  %i.oi = insertelement <8 x i8> %i.oh, i8 %i.oa, i64 2
  %i.oj = insertelement <8 x i8> %i.oi, i8 %i.ob, i64 3
  %i.ok = insertelement <8 x i8> %i.oj, i8 %i.oc, i64 4
  %i.ol = insertelement <8 x i8> %i.ok, i8 %i.od, i64 5
  %i.om = insertelement <8 x i8> %i.ol, i8 %i.oe, i64 6
  %i.on = insertelement <8 x i8> %i.om, i8 %i.of, i64 7 ; 2 uses
  %i.oo = and <8 x i8> %i.on, splat (i8 31)
  %i.op = lshr <8 x i8> %i.on, splat (i8 5)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nj, i64 1
  %i.or = getelementptr inbounds nuw i8, ptr %i.nk, i64 6
  %i.os = getelementptr inbounds nuw i8, ptr %i.nm, i64 11
  %i.ot = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nq, i64 21
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ns, i64 26
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nu, i64 31
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nw, i64 36
  %i.oy = load i8, ptr %i.oq, align 1, !tbaa !76
  %i.oz = load i8, ptr %i.or, align 1, !tbaa !76
  %i.pa = load i8, ptr %i.os, align 1, !tbaa !76
  %i.pb = load i8, ptr %i.ot, align 1, !tbaa !76
  %i.pc = load i8, ptr %i.ou, align 1, !tbaa !76
  %i.pd = load i8, ptr %i.ov, align 1, !tbaa !76
  %i.pe = load i8, ptr %i.ow, align 1, !tbaa !76
  %i.pf = load i8, ptr %i.ox, align 1, !tbaa !76
  %i.pg = insertelement <8 x i8> poison, i8 %i.oy, i64 0
  %i.ph = insertelement <8 x i8> %i.pg, i8 %i.oz, i64 1
  %i.pi = insertelement <8 x i8> %i.ph, i8 %i.pa, i64 2
  %i.pj = insertelement <8 x i8> %i.pi, i8 %i.pb, i64 3
  %i.pk = insertelement <8 x i8> %i.pj, i8 %i.pc, i64 4
  %i.pl = insertelement <8 x i8> %i.pk, i8 %i.pd, i64 5
  %i.pm = insertelement <8 x i8> %i.pl, i8 %i.pe, i64 6
  %i.pn = insertelement <8 x i8> %i.pm, i8 %i.pf, i64 7 ; 3 uses
  %i.po = shl <8 x i8> %i.pn, splat (i8 3)
  %i.pp = and <8 x i8> %i.po, splat (i8 24)
  %i.pq = or disjoint <8 x i8> %i.pp, %i.op
  %i.pr = lshr <8 x i8> %i.pn, splat (i8 2)
  %i.ps = and <8 x i8> %i.pr, splat (i8 31)
  %i.pt = lshr <8 x i8> %i.pn, splat (i8 7)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.nj, i64 2
  %i.pv = getelementptr inbounds nuw i8, ptr %i.nk, i64 7
  %i.pw = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  %i.px = getelementptr inbounds nuw i8, ptr %i.no, i64 17
  %i.py = getelementptr inbounds nuw i8, ptr %i.nq, i64 22
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ns, i64 27
  %i.qa = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.qb = getelementptr inbounds nuw i8, ptr %i.nw, i64 37
  %i.qc = load i8, ptr %i.pu, align 1, !tbaa !76
  %i.qd = load i8, ptr %i.pv, align 1, !tbaa !76
  %i.qe = load i8, ptr %i.pw, align 1, !tbaa !76
  %i.qf = load i8, ptr %i.px, align 1, !tbaa !76
  %i.qg = load i8, ptr %i.py, align 1, !tbaa !76
  %i.qh = load i8, ptr %i.pz, align 1, !tbaa !76
  %i.qi = load i8, ptr %i.qa, align 1, !tbaa !76
  %i.qj = load i8, ptr %i.qb, align 1, !tbaa !76
  %i.qk = insertelement <8 x i8> poison, i8 %i.qc, i64 0
  %i.ql = insertelement <8 x i8> %i.qk, i8 %i.qd, i64 1
  %i.qm = insertelement <8 x i8> %i.ql, i8 %i.qe, i64 2
  %i.qn = insertelement <8 x i8> %i.qm, i8 %i.qf, i64 3
  %i.qo = insertelement <8 x i8> %i.qn, i8 %i.qg, i64 4
  %i.qp = insertelement <8 x i8> %i.qo, i8 %i.qh, i64 5
  %i.qq = insertelement <8 x i8> %i.qp, i8 %i.qi, i64 6
  %i.qr = insertelement <8 x i8> %i.qq, i8 %i.qj, i64 7 ; 2 uses
  %i.qs = shl <8 x i8> %i.qr, splat (i8 1)
  %i.qt = and <8 x i8> %i.qs, splat (i8 30)
  %i.qu = or disjoint <8 x i8> %i.qt, %i.pt
  %i.qv = lshr <8 x i8> %i.qr, splat (i8 4)
  %i.qw = getelementptr inbounds nuw i8, ptr %i.nj, i64 3
  %i.qx = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.nm, i64 13
  %i.qz = getelementptr inbounds nuw i8, ptr %i.no, i64 18
  %i.ra = getelementptr inbounds nuw i8, ptr %i.nq, i64 23
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ns, i64 28
  %i.rc = getelementptr inbounds nuw i8, ptr %i.nu, i64 33
  %i.rd = getelementptr inbounds nuw i8, ptr %i.nw, i64 38
  %i.re = load i8, ptr %i.qw, align 1, !tbaa !76
  %i.rf = load i8, ptr %i.qx, align 1, !tbaa !76
  %i.rg = load i8, ptr %i.qy, align 1, !tbaa !76
  %i.rh = load i8, ptr %i.qz, align 1, !tbaa !76
  %i.ri = load i8, ptr %i.ra, align 1, !tbaa !76
  %i.rj = load i8, ptr %i.rb, align 1, !tbaa !76
  %i.rk = load i8, ptr %i.rc, align 1, !tbaa !76
  %i.rl = load i8, ptr %i.rd, align 1, !tbaa !76
  %i.rm = insertelement <8 x i8> poison, i8 %i.re, i64 0
  %i.rn = insertelement <8 x i8> %i.rm, i8 %i.rf, i64 1
  %i.ro = insertelement <8 x i8> %i.rn, i8 %i.rg, i64 2
  %i.rp = insertelement <8 x i8> %i.ro, i8 %i.rh, i64 3
  %i.rq = insertelement <8 x i8> %i.rp, i8 %i.ri, i64 4
  %i.rr = insertelement <8 x i8> %i.rq, i8 %i.rj, i64 5
  %i.rs = insertelement <8 x i8> %i.rr, i8 %i.rk, i64 6
  %i.rt = insertelement <8 x i8> %i.rs, i8 %i.rl, i64 7 ; 3 uses
  %i.ru = shl <8 x i8> %i.rt, splat (i8 4)
  %i.rv = and <8 x i8> %i.ru, splat (i8 16)
  %i.rw = or disjoint <8 x i8> %i.rv, %i.qv
  %i.rx = lshr <8 x i8> %i.rt, splat (i8 1)
  %i.ry = and <8 x i8> %i.rx, splat (i8 31)
  %i.rz = lshr <8 x i8> %i.rt, splat (i8 6)
  %i.sa = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.sb = getelementptr inbounds nuw i8, ptr %i.nk, i64 9
  %i.sc = getelementptr inbounds nuw i8, ptr %i.nm, i64 14
  %i.sd = getelementptr inbounds nuw i8, ptr %i.no, i64 19
  %i.se = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ns, i64 29
  %i.sg = getelementptr inbounds nuw i8, ptr %i.nu, i64 34
  %i.sh = getelementptr inbounds nuw i8, ptr %i.nw, i64 39
  %i.si = load i8, ptr %i.sa, align 1, !tbaa !76
  %i.sj = load i8, ptr %i.sb, align 1, !tbaa !76
  %i.sk = load i8, ptr %i.sc, align 1, !tbaa !76
  %i.sl = load i8, ptr %i.sd, align 1, !tbaa !76
  %i.sm = load i8, ptr %i.se, align 1, !tbaa !76
  %i.sn = load i8, ptr %i.sf, align 1, !tbaa !76
  %i.so = load i8, ptr %i.sg, align 1, !tbaa !76
  %i.sp = load i8, ptr %i.sh, align 1, !tbaa !76
  %i.sq = insertelement <8 x i8> poison, i8 %i.si, i64 0
  %i.sr = insertelement <8 x i8> %i.sq, i8 %i.sj, i64 1
  %i.ss = insertelement <8 x i8> %i.sr, i8 %i.sk, i64 2
  %i.st = insertelement <8 x i8> %i.ss, i8 %i.sl, i64 3
  %i.su = insertelement <8 x i8> %i.st, i8 %i.sm, i64 4
  %i.sv = insertelement <8 x i8> %i.su, i8 %i.sn, i64 5
  %i.sw = insertelement <8 x i8> %i.sv, i8 %i.so, i64 6
  %i.sx = insertelement <8 x i8> %i.sw, i8 %i.sp, i64 7 ; 2 uses
  %i.sy = shl <8 x i8> %i.sx, splat (i8 2)
  %i.sz = and <8 x i8> %i.sy, splat (i8 28)
  %i.ta = or disjoint <8 x i8> %i.sz, %i.rz
  %i.tb = lshr <8 x i8> %i.sx, splat (i8 3)
  %i.tc = zext nneg <8 x i8> %i.oo to <8 x i32>
  %i.td = mul nuw nsw <8 x i32> %i.tc, splat (i32 3329)
  %i.te = shl nuw nsw i64 %index13, 4
  %i.tf = getelementptr inbounds nuw i8, ptr %8, i64 %i.te
  %i.tg = zext nneg <8 x i8> %i.pq to <8 x i32>
  %i.th = mul nuw nsw <8 x i32> %i.tg, splat (i32 3329)
  %i.ti = zext nneg <8 x i8> %i.ps to <8 x i32>
  %i.tj = mul nuw nsw <8 x i32> %i.ti, splat (i32 3329)
  %i.tk = zext nneg <8 x i8> %i.qu to <8 x i32>
  %i.tl = mul nuw nsw <8 x i32> %i.tk, splat (i32 3329)
  %i.tm = zext nneg <8 x i8> %i.rw to <8 x i32>
end_hunk_0
begin_hunk_1_@mlkem512_indcpa_enc:vector.ph
  %i.zt = trunc nsw i32 %i.zs to i16
  %i.zu = getelementptr inbounds nuw i8, ptr %7, i64 988
  store i16 %i.zt, ptr %i.zu, align 4, !tbaa !131
  %i.zv = lshr i32 %i.za, 18
  %i.zw = and i32 %i.zv, 7
  %i.zx = lshr i32 %i.za, 21
  %i.zy = sub nsw i32 %i.zw, %i.zx
  %i.zz = trunc nsw i32 %i.zy to i16
  %i.aaa = getelementptr inbounds nuw i8, ptr %7, i64 990
  store i16 %i.zz, ptr %i.aaa, align 2, !tbaa !131
  %i.aab = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.aac = load i16, ptr %i.aab, align 4
  %i.aad = zext i16 %i.aac to i32
  %i.aae = getelementptr inbounds nuw i8, ptr %i.g, i64 374
  %i.aaf = load i8, ptr %i.aae, align 2, !tbaa !76
  %i.aag = zext i8 %i.aaf to i32
  %i.aah = shl nuw nsw i32 %i.aag, 16
  %i.aai = or disjoint i32 %i.aah, %i.aad         ; 3 uses
  %i.aaj = and i32 %i.aai, 2396745
  %i.aak = lshr i32 %i.aai, 1
  %i.aal = and i32 %i.aak, 2396745
  %i.aam = add nuw nsw i32 %i.aal, %i.aaj
  %i.aan = lshr i32 %i.aai, 2
  %i.aao = and i32 %i.aan, 2396745
  %i.aap = add nuw nsw i32 %i.aam, %i.aao         ; 8 uses
  %i.aaq = and i32 %i.aap, 7
  %i.aar = lshr i32 %i.aap, 3
  %i.aas = and i32 %i.aar, 7
  %i.aat = sub nsw i32 %i.aaq, %i.aas
  %i.aau = trunc nsw i32 %i.aat to i16
  %i.aav = getelementptr inbounds nuw i8, ptr %7, i64 992
  store i16 %i.aau, ptr %i.aav, align 32, !tbaa !131
  %i.aaw = lshr i32 %i.aap, 6
  %i.aax = and i32 %i.aaw, 7
  %i.aay = lshr i32 %i.aap, 9
  %i.aaz = and i32 %i.aay, 7
  %i.aba = sub nsw i32 %i.aax, %i.aaz
  %i.abb = trunc nsw i32 %i.aba to i16
  %i.abc = getelementptr inbounds nuw i8, ptr %7, i64 994
  store i16 %i.abb, ptr %i.abc, align 2, !tbaa !131
  %i.abd = lshr i32 %i.aap, 12
  %i.abe = and i32 %i.abd, 7
  %i.abf = lshr i32 %i.aap, 15
  %i.abg = and i32 %i.abf, 7
  %i.abh = sub nsw i32 %i.abe, %i.abg
  %i.abi = trunc nsw i32 %i.abh to i16
  %i.abj = getelementptr inbounds nuw i8, ptr %7, i64 996
  store i16 %i.abi, ptr %i.abj, align 4, !tbaa !131
  %i.abk = lshr i32 %i.aap, 18
  %i.abl = and i32 %i.abk, 7
  %i.abm = lshr i32 %i.aap, 21
  %i.abn = sub nsw i32 %i.abl, %i.abm
  %i.abo = trunc nsw i32 %i.abn to i16
  %i.abp = getelementptr inbounds nuw i8, ptr %7, i64 998
  store i16 %i.abo, ptr %i.abp, align 2, !tbaa !131
  %i.abq = getelementptr inbounds nuw i8, ptr %i.g, i64 375
  %i.abr = load i16, ptr %i.abq, align 1
  %i.abs = zext i16 %i.abr to i32
  %i.abt = getelementptr inbounds nuw i8, ptr %i.g, i64 377
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !76
  %i.abv = zext i8 %i.abu to i32
  %i.abw = shl nuw nsw i32 %i.abv, 16
  %i.abx = or disjoint i32 %i.abw, %i.abs         ; 3 uses
  %i.aby = and i32 %i.abx, 2396745
  %i.abz = lshr i32 %i.abx, 1
  %i.aca = and i32 %i.abz, 2396745
  %i.acb = add nuw nsw i32 %i.aca, %i.aby
  %i.acc = lshr i32 %i.abx, 2
  %i.acd = and i32 %i.acc, 2396745
  %i.ace = add nuw nsw i32 %i.acb, %i.acd         ; 8 uses
  %i.acf = and i32 %i.ace, 7
  %i.acg = lshr i32 %i.ace, 3
  %i.ach = and i32 %i.acg, 7
  %i.aci = sub nsw i32 %i.acf, %i.ach
  %i.acj = trunc nsw i32 %i.aci to i16
  %i.ack = getelementptr inbounds nuw i8, ptr %7, i64 1000
  store i16 %i.acj, ptr %i.ack, align 8, !tbaa !131
  %i.acl = lshr i32 %i.ace, 6
  %i.acm = and i32 %i.acl, 7
  %i.acn = lshr i32 %i.ace, 9
  %i.aco = and i32 %i.acn, 7
  %i.acp = sub nsw i32 %i.acm, %i.aco
  %i.acq = trunc nsw i32 %i.acp to i16
  %i.acr = getelementptr inbounds nuw i8, ptr %7, i64 1002
  store i16 %i.acq, ptr %i.acr, align 2, !tbaa !131
  %i.acs = lshr i32 %i.ace, 12
  %i.act = and i32 %i.acs, 7
  %i.acu = lshr i32 %i.ace, 15
  %i.acv = and i32 %i.acu, 7
  %i.acw = sub nsw i32 %i.act, %i.acv
  %i.acx = trunc nsw i32 %i.acw to i16
  %i.acy = getelementptr inbounds nuw i8, ptr %7, i64 1004
  store i16 %i.acx, ptr %i.acy, align 4, !tbaa !131
  %i.acz = lshr i32 %i.ace, 18
  %i.ada = and i32 %i.acz, 7
  %i.adb = lshr i32 %i.ace, 21
  %i.adc = sub nsw i32 %i.ada, %i.adb
  %i.add = trunc nsw i32 %i.adc to i16
  %i.ade = getelementptr inbounds nuw i8, ptr %7, i64 1006
  store i16 %i.add, ptr %i.ade, align 2, !tbaa !131
  %i.adf = getelementptr inbounds nuw i8, ptr %i.g, i64 378
  %i.adg = load i16, ptr %i.adf, align 2
  %i.adh = zext i16 %i.adg to i32
  %i.adi = getelementptr inbounds nuw i8, ptr %i.g, i64 380
  %i.adj = load i8, ptr %i.adi, align 4, !tbaa !76
  %i.adk = zext i8 %i.adj to i32
  %i.adl = shl nuw nsw i32 %i.adk, 16
  %i.adm = or disjoint i32 %i.adl, %i.adh         ; 3 uses
  %i.adn = and i32 %i.adm, 2396745
  %i.ado = lshr i32 %i.adm, 1
  %i.adp = and i32 %i.ado, 2396745
  %i.adq = add nuw nsw i32 %i.adp, %i.adn
  %i.adr = lshr i32 %i.adm, 2
  %i.ads = and i32 %i.adr, 2396745
  %i.adt = add nuw nsw i32 %i.adq, %i.ads         ; 8 uses
  %i.adu = and i32 %i.adt, 7
  %i.adv = lshr i32 %i.adt, 3
  %i.adw = and i32 %i.adv, 7
  %i.adx = sub nsw i32 %i.adu, %i.adw
  %i.ady = trunc nsw i32 %i.adx to i16
  %i.adz = getelementptr inbounds nuw i8, ptr %7, i64 1008
  store i16 %i.ady, ptr %i.adz, align 16, !tbaa !131
  %i.aea = lshr i32 %i.adt, 6
  %i.aeb = and i32 %i.aea, 7
  %i.aec = lshr i32 %i.adt, 9
  %i.aed = and i32 %i.aec, 7
  %i.aee = sub nsw i32 %i.aeb, %i.aed
  %i.aef = trunc nsw i32 %i.aee to i16
  %i.aeg = getelementptr inbounds nuw i8, ptr %7, i64 1010
  store i16 %i.aef, ptr %i.aeg, align 2, !tbaa !131
  %i.aeh = lshr i32 %i.adt, 12
  %i.aei = and i32 %i.aeh, 7
  %i.aej = lshr i32 %i.adt, 15
  %i.aek = and i32 %i.aej, 7
  %i.ael = sub nsw i32 %i.aei, %i.aek
  %i.aem = trunc nsw i32 %i.ael to i16
  %i.aen = getelementptr inbounds nuw i8, ptr %7, i64 1012
  store i16 %i.aem, ptr %i.aen, align 4, !tbaa !131
  %i.aeo = lshr i32 %i.adt, 18
  %i.aep = and i32 %i.aeo, 7
  %i.aeq = lshr i32 %i.adt, 21
  %i.aer = sub nsw i32 %i.aep, %i.aeq
  %i.aes = trunc nsw i32 %i.aer to i16
  %i.aet = getelementptr inbounds nuw i8, ptr %7, i64 1014
  store i16 %i.aes, ptr %i.aet, align 2, !tbaa !131
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.g, i64 381
  %i.aev = load i16, ptr %i.aeu, align 1
  %i.aew = zext i16 %i.aev to i32
  %i.aex = getelementptr inbounds nuw i8, ptr %i.g, i64 383
  %i.aey = load i8, ptr %i.aex, align 1, !tbaa !76
  %i.aez = zext i8 %i.aey to i32
  %i.afa = shl nuw nsw i32 %i.aez, 16
  %i.afb = or disjoint i32 %i.afa, %i.aew         ; 3 uses
  %i.afc = and i32 %i.afb, 2396745
  %i.afd = lshr i32 %i.afb, 1
  %i.afe = and i32 %i.afd, 2396745
  %i.aff = add nuw nsw i32 %i.afe, %i.afc
  %i.afg = lshr i32 %i.afb, 2
  %i.afh = and i32 %i.afg, 2396745
  %i.afi = add nuw nsw i32 %i.aff, %i.afh         ; 8 uses
  %i.afj = and i32 %i.afi, 7
  %i.afk = lshr i32 %i.afi, 3
  %i.afl = and i32 %i.afk, 7
  %i.afm = sub nsw i32 %i.afj, %i.afl
  %i.afn = trunc nsw i32 %i.afm to i16
  %i.afo = getelementptr inbounds nuw i8, ptr %7, i64 1016
  store i16 %i.afn, ptr %i.afo, align 8, !tbaa !131
  %i.afp = lshr i32 %i.afi, 6
  %i.afq = and i32 %i.afp, 7
  %i.afr = lshr i32 %i.afi, 9
  %i.afs = and i32 %i.afr, 7
  %i.aft = sub nsw i32 %i.afq, %i.afs
  %i.afu = trunc nsw i32 %i.aft to i16
  %i.afv = getelementptr inbounds nuw i8, ptr %7, i64 1018
  store i16 %i.afu, ptr %i.afv, align 2, !tbaa !131
  %i.afw = lshr i32 %i.afi, 12
  %i.afx = and i32 %i.afw, 7
  %i.afy = lshr i32 %i.afi, 15
  %i.afz = and i32 %i.afy, 7
  %i.aga = sub nsw i32 %i.afx, %i.afz
  %i.agb = trunc nsw i32 %i.aga to i16
  %i.agc = getelementptr inbounds nuw i8, ptr %7, i64 1020
  store i16 %i.agb, ptr %i.agc, align 4, !tbaa !131
  %i.agd = lshr i32 %i.afi, 18
  %i.age = and i32 %i.agd, 7
  %i.agf = lshr i32 %i.afi, 21
  %i.agg = sub nsw i32 %i.age, %i.agf
  %i.agh = trunc nsw i32 %i.agg to i16
  %i.agi = getelementptr inbounds nuw i8, ptr %7, i64 1022
  store i16 %i.agh, ptr %i.agi, align 2, !tbaa !131
  br label %vector.body10

vector.body10:                                    ; preds = %mlk_poly_cbd_eta1512.exit.i.i, %vector.body10
  %index11 = phi i64 [ %index.next13, %vector.body10 ], [ 0, %mlk_poly_cbd_eta1512.exit.i.i ] ; 3 uses
  %i.agj = shl nuw nsw i64 %index11, 2
  %i.agk = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.agj
  %wide.load = load <4 x i32>, ptr %i.agk, align 16 ; 2 uses
  %i.agl = and <4 x i32> %wide.load, splat (i32 1431655765)
  %i.agm = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.agn = and <4 x i32> %i.agm, splat (i32 1431655765)
  %i.ago = add nuw <4 x i32> %i.agn, %i.agl       ; 10 uses
  %i.agp = shl nuw nsw i64 %index11, 4
  %i.agq = getelementptr inbounds nuw i8, ptr %9, i64 %i.agp
  %i.agr = lshr <4 x i32> %i.ago, splat (i32 4)
  %i.ags = lshr <4 x i32> %i.ago, splat (i32 26)
  %15 = and <4 x i32> %i.ags, splat (i32 3)
  %i.agt = lshr <4 x i32> %i.ago, splat (i32 30)
  %16 = shufflevector <4 x i32> %i.ago, <4 x i32> %i.agr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %17 = and <8 x i32> %16, splat (i32 3)
  %18 = shufflevector <4 x i32> %i.ago, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %19 = lshr <8 x i32> %18, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %20 = and <8 x i32> %19, splat (i32 3)
  %21 = sub nsw <8 x i32> %17, %20
  %22 = shufflevector <4 x i32> %i.ago, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %23 = lshr <8 x i32> %22, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %24 = and <8 x i32> %23, splat (i32 3)
  %25 = shufflevector <4 x i32> %i.ago, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %26 = lshr <8 x i32> %25, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %27 = and <8 x i32> %26, splat (i32 3)
  %28 = sub nsw <8 x i32> %24, %27
  %i.agu = shufflevector <4 x i32> %i.ago, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %29 = lshr <8 x i32> %i.agu, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %30 = and <8 x i32> %29, splat (i32 3)
  %31 = shufflevector <4 x i32> %i.ago, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %32 = lshr <8 x i32> %31, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %33 = and <8 x i32> %32, splat (i32 3)
  %34 = sub nsw <8 x i32> %30, %33
  %35 = shufflevector <4 x i32> %i.ago, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %36 = lshr <8 x i32> %35, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %37 = and <8 x i32> %36, splat (i32 3)
  %i.agv = shufflevector <4 x i32> %15, <4 x i32> %i.agt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %38 = sub nsw <8 x i32> %37, %i.agv
  %i.agw = shufflevector <8 x i32> %21, <8 x i32> %28, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %39 = shufflevector <8 x i32> %34, <8 x i32> %38, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agx = shufflevector <16 x i32> %i.agw, <16 x i32> %39, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec12 = trunc nsw <32 x i32> %i.agx to <32 x i16>
  store <32 x i16> %interleaved.vec12, ptr %i.agq, align 32, !tbaa !131
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.agy = icmp eq i64 %index.next13, 32
  br i1 %i.agy, label %mlk_poly_cbd_eta2512.exit.i.preheader.i, label %vector.body10, !llvm.loop !2790

mlk_poly_cbd_eta2512.exit.i.preheader.i:          ; preds = %vector.body10
  %i.agz = getelementptr inbounds nuw i8, ptr %9, i64 512 ; 2 uses
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %mlk_poly_cbd_eta2512.exit.i.preheader.i
  %index18 = phi i64 [ 0, %mlk_poly_cbd_eta2512.exit.i.preheader.i ], [ %index.next21, %vector.body17 ] ; 3 uses
  %i.aha = shl nuw nsw i64 %index18, 2
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aha
  %wide.load19 = load <4 x i32>, ptr %i.ahb, align 16 ; 2 uses
  %i.ahc = and <4 x i32> %wide.load19, splat (i32 1431655765)
  %i.ahd = lshr <4 x i32> %wide.load19, splat (i32 1)
  %i.ahe = and <4 x i32> %i.ahd, splat (i32 1431655765)
  %i.ahf = add nuw <4 x i32> %i.ahe, %i.ahc       ; 10 uses
  %i.ahg = shl nuw nsw i64 %index18, 4
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agz, i64 %i.ahg
  %i.ahi = lshr <4 x i32> %i.ahf, splat (i32 4)
  %i.ahj = lshr <4 x i32> %i.ahf, splat (i32 26)
  %40 = and <4 x i32> %i.ahj, splat (i32 3)
  %i.ahk = lshr <4 x i32> %i.ahf, splat (i32 30)
  %41 = shufflevector <4 x i32> %i.ahf, <4 x i32> %i.ahi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %42 = and <8 x i32> %41, splat (i32 3)
  %43 = shufflevector <4 x i32> %i.ahf, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %44 = lshr <8 x i32> %43, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %45 = and <8 x i32> %44, splat (i32 3)
  %46 = sub nsw <8 x i32> %42, %45
  %47 = shufflevector <4 x i32> %i.ahf, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %48 = lshr <8 x i32> %47, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %49 = and <8 x i32> %48, splat (i32 3)
  %50 = shufflevector <4 x i32> %i.ahf, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %51 = lshr <8 x i32> %50, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %52 = and <8 x i32> %51, splat (i32 3)
  %53 = sub nsw <8 x i32> %49, %52
  %i.ahl = shufflevector <4 x i32> %i.ahf, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %54 = lshr <8 x i32> %i.ahl, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %55 = and <8 x i32> %54, splat (i32 3)
  %56 = shufflevector <4 x i32> %i.ahf, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %57 = lshr <8 x i32> %56, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %58 = and <8 x i32> %57, splat (i32 3)
  %59 = sub nsw <8 x i32> %55, %58
  %60 = shufflevector <4 x i32> %i.ahf, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %61 = lshr <8 x i32> %60, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %62 = and <8 x i32> %61, splat (i32 3)
  %i.ahm = shufflevector <4 x i32> %40, <4 x i32> %i.ahk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %63 = sub nsw <8 x i32> %62, %i.ahm
  %i.ahn = shufflevector <8 x i32> %46, <8 x i32> %53, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %64 = shufflevector <8 x i32> %59, <8 x i32> %63, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aho = shufflevector <16 x i32> %i.ahn, <16 x i32> %64, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec20 = trunc nsw <32 x i32> %i.aho to <32 x i16>
  store <32 x i16> %interleaved.vec20, ptr %i.ahh, align 32, !tbaa !131
  %index.next21 = add nuw i64 %index18, 4         ; 2 uses
  %i.ahp = icmp eq i64 %index.next21, 32
  br i1 %i.ahp, label %mlkem512_poly_getnoise_eta1122_4x.exit.i, label %vector.body17, !llvm.loop !2791

mlkem512_poly_getnoise_eta1122_4x.exit.i:         ; preds = %vector.body17
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.g, i64 noundef 768) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.h, i64 noundef 256) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 4, ptr %i.ahq, align 32, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  %i.ahr = getelementptr inbounds nuw i8, ptr %4, i64 216
  store i64 0, ptr %i.ahr, align 8, !tbaa !444
  %i.ahs = getelementptr inbounds nuw i8, ptr %4, i64 393
  store i8 0, ptr %i.ahs, align 1, !tbaa !445
  %i.aht = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i64 136, ptr %i.aht, align 8, !tbaa !446
  %i.ahu = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i64 0, ptr %i.ahu, align 8, !tbaa !447
  %i.ahv = getelementptr inbounds nuw i8, ptr %4, i64 392
  store i8 31, ptr %i.ahv, align 8, !tbaa !448
  %i.ahw = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.b, i64 noundef 33)
  %i.ahx = icmp eq i32 %i.ahw, 0
  br i1 %i.ahx, label %mlk_shake256.exit.i.i, label %bb.a

bb.a:                                             ; preds = %mlkem512_poly_getnoise_eta1122_4x.exit.i
  %i.ahy = call i32 @SHAKE_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %4, i64 noundef 128) ; 0 uses
  br label %mlk_shake256.exit.i.i

mlk_shake256.exit.i.i:                            ; preds = %bb.a, %mlkem512_poly_getnoise_eta1122_4x.exit.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %mlk_shake256.exit.i.i
  %index26 = phi i64 [ 0, %mlk_shake256.exit.i.i ], [ %index.next29, %vector.body25 ] ; 3 uses
  %i.ahz = shl nuw nsw i64 %index26, 2
  %i.aia = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahz
  %wide.load27 = load <4 x i32>, ptr %i.aia, align 16 ; 2 uses
  %i.aib = and <4 x i32> %wide.load27, splat (i32 1431655765)
  %i.aic = lshr <4 x i32> %wide.load27, splat (i32 1)
  %i.aid = and <4 x i32> %i.aic, splat (i32 1431655765)
  %i.aie = add nuw <4 x i32> %i.aid, %i.aib       ; 10 uses
  %i.aif = shl nuw nsw i64 %index26, 4
  %i.aig = getelementptr inbounds nuw i8, ptr %13, i64 %i.aif
  %i.aih = lshr <4 x i32> %i.aie, splat (i32 4)
  %i.aii = lshr <4 x i32> %i.aie, splat (i32 26)
  %65 = and <4 x i32> %i.aii, splat (i32 3)
  %i.aij = lshr <4 x i32> %i.aie, splat (i32 30)
  %66 = shufflevector <4 x i32> %i.aie, <4 x i32> %i.aih, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %67 = and <8 x i32> %66, splat (i32 3)
  %68 = shufflevector <4 x i32> %i.aie, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %69 = lshr <8 x i32> %68, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %70 = and <8 x i32> %69, splat (i32 3)
  %71 = sub nsw <8 x i32> %67, %70
  %72 = shufflevector <4 x i32> %i.aie, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %73 = lshr <8 x i32> %72, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %74 = and <8 x i32> %73, splat (i32 3)
  %75 = shufflevector <4 x i32> %i.aie, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %76 = lshr <8 x i32> %75, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %77 = and <8 x i32> %76, splat (i32 3)
  %78 = sub nsw <8 x i32> %74, %77
  %i.aik = shufflevector <4 x i32> %i.aie, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %79 = lshr <8 x i32> %i.aik, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %80 = and <8 x i32> %79, splat (i32 3)
  %81 = shufflevector <4 x i32> %i.aie, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %82 = lshr <8 x i32> %81, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %83 = and <8 x i32> %82, splat (i32 3)
  %84 = sub nsw <8 x i32> %80, %83
  %85 = shufflevector <4 x i32> %i.aie, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %86 = lshr <8 x i32> %85, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %87 = and <8 x i32> %86, splat (i32 3)
  %i.ail = shufflevector <4 x i32> %65, <4 x i32> %i.aij, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %88 = sub nsw <8 x i32> %87, %i.ail
  %i.aim = shufflevector <8 x i32> %71, <8 x i32> %78, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %89 = shufflevector <8 x i32> %84, <8 x i32> %88, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ain = shufflevector <16 x i32> %i.aim, <16 x i32> %89, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec28 = trunc nsw <32 x i32> %i.ain to <32 x i16>
  store <32 x i16> %interleaved.vec28, ptr %i.aig, align 32, !tbaa !131
  %index.next29 = add nuw i64 %index26, 4         ; 2 uses
  %i.aio = icmp eq i64 %index.next29, 32
  br i1 %i.aio, label %mlk_enc_getnoise_eta1_eta2512.exit, label %vector.body25, !llvm.loop !2792

mlk_enc_getnoise_eta1_eta2512.exit:               ; preds = %vector.body25
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 128) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 33) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call fastcc void @mlkem_poly_ntt(ptr noundef nonnull %7)
  call fastcc void @mlkem_poly_ntt(ptr noundef %i.qd)
  call fastcc void @mlkem512_polyvec_mulcache_compute(ptr noundef %14, ptr noundef %7)
  call fastcc void @mlk_matvec_mul512(ptr noundef %10, ptr noundef %6, ptr noundef %7, ptr noundef %14)
  %i.aip = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.aiq = and i32 %i.aip, 32
  %.not.i.i = icmp eq i32 %i.aiq, 0
  br i1 %.not.i.i, label %vector.body33, label %mlk_polyvec_basemul_acc_montgomery_cached_k2_native.exit.i

mlk_polyvec_basemul_acc_montgomery_cached_k2_native.exit.i: ; preds = %mlk_enc_getnoise_eta1_eta2512.exit
  call void @mlkem_polyvec_basemul_acc_montgomery_cached_k2_avx2_asm(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %14) #46
  br label %mlkem512_polyvec_basemul_acc_montgomery_cached.exit

vector.body33:                                    ; preds = %mlk_enc_getnoise_eta1_eta2512.exit, %vector.body33
  %index34 = phi i64 [ %index.next48, %vector.body33 ], [ 0, %mlk_enc_getnoise_eta1_eta2512.exit ] ; 3 uses
  %i.air = shl nuw nsw i64 %index34, 1            ; 4 uses
  %i.ais = or disjoint i64 %i.air, 1              ; 2 uses
  %i.ait = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %index34 ; 2 uses
  %i.aiu = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ais
  %i.aiv = getelementptr inbounds i8, ptr %i.aiu, i64 -2
  %wide.vec = load <8 x i16>, ptr %i.aiv, align 16, !tbaa !131 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec35 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aiw = sext <4 x i16> %strided.vec35 to <4 x i32> ; 2 uses
  %wide.load36 = load <4 x i16>, ptr %i.ait, align 8, !tbaa !131
  %i.aix = sext <4 x i16> %wide.load36 to <4 x i32>
  %i.aiy = mul nsw <4 x i32> %i.aix, %i.aiw
  %i.aiz = sext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %i.air
  %wide.vec37 = load <8 x i16>, ptr %i.aja, align 16, !tbaa !131 ; 2 uses
  %strided.vec38 = shufflevector <8 x i16> %wide.vec37, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec39 = shufflevector <8 x i16> %wide.vec37, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ajb = sext <4 x i16> %strided.vec38 to <4 x i32> ; 2 uses
  %i.ajc = mul nsw <4 x i32> %i.ajb, %i.aiz
  %i.ajd = add nsw <4 x i32> %i.ajc, %i.aiy
  %i.aje = sext <4 x i16> %strided.vec39 to <4 x i32>
  %i.ajf = mul nsw <4 x i32> %i.aje, %i.aiz
  %i.ajg = mul nsw <4 x i32> %i.ajb, %i.aiw
  %i.ajh = add <4 x i32> %i.ajf, %i.ajg
  %i.aji = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ais
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 510
  %wide.vec40 = load <8 x i16>, ptr %i.ajj, align 16, !tbaa !131 ; 2 uses
  %strided.vec41 = shufflevector <8 x i16> %wide.vec40, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec42 = shufflevector <8 x i16> %wide.vec40, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ajk = sext <4 x i16> %strided.vec42 to <4 x i32> ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ait, i64 256
  %wide.load43 = load <4 x i16>, ptr %i.ajl, align 8, !tbaa !131
  %i.ajm = sext <4 x i16> %wide.load43 to <4 x i32>
  %i.ajn = mul nsw <4 x i32> %i.ajm, %i.ajk
  %i.ajo = add nsw <4 x i32> %i.ajd, %i.ajn
  %i.ajp = sext <4 x i16> %strided.vec41 to <4 x i32> ; 2 uses
  %i.ajq = getelementptr inbounds nuw [2 x i8], ptr %i.qd, i64 %i.air
  %wide.vec44 = load <8 x i16>, ptr %i.ajq, align 16, !tbaa !131 ; 2 uses
  %strided.vec45 = shufflevector <8 x i16> %wide.vec44, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec46 = shufflevector <8 x i16> %wide.vec44, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ajr = sext <4 x i16> %strided.vec45 to <4 x i32> ; 2 uses
  %i.ajs = mul nsw <4 x i32> %i.ajr, %i.ajp
  %i.ajt = add nsw <4 x i32> %i.ajo, %i.ajs       ; 2 uses
  %i.aju = sext <4 x i16> %strided.vec46 to <4 x i32>
  %i.ajv = mul nsw <4 x i32> %i.aju, %i.ajp
  %i.ajw = mul nsw <4 x i32> %i.ajr, %i.ajk
  %i.ajx = add <4 x i32> %i.ajh, %i.ajw
  %i.ajy = add <4 x i32> %i.ajx, %i.ajv           ; 2 uses
  %i.ajz = mul <4 x i32> %i.ajt, splat (i32 -218038272)
  %i.aka = ashr exact <4 x i32> %i.ajz, splat (i32 16)
  %i.akb = mul nsw <4 x i32> %i.aka, splat (i32 -3329)
  %i.akc = add <4 x i32> %i.akb, %i.ajt
  %i.akd = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %i.air
  %i.ake = mul <4 x i32> %i.ajy, splat (i32 -218038272)
  %i.akf = ashr exact <4 x i32> %i.ake, splat (i32 16)
  %i.akg = mul nsw <4 x i32> %i.akf, splat (i32 -3329)
  %i.akh = add <4 x i32> %i.akg, %i.ajy
  %i.aki = shufflevector <4 x i32> %i.akc, <4 x i32> %i.akh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.akj = lshr <8 x i32> %i.aki, splat (i32 16)
  %interleaved.vec47 = trunc nuw <8 x i32> %i.akj to <8 x i16>
  store <8 x i16> %interleaved.vec47, ptr %i.akd, align 16, !tbaa !131
  %index.next48 = add nuw i64 %index34, 4         ; 2 uses
  %i.akk = icmp eq i64 %index.next48, 128
  br i1 %i.akk, label %mlkem512_polyvec_basemul_acc_montgomery_cached.exit, label %vector.body33, !llvm.loop !2793

mlkem512_polyvec_basemul_acc_montgomery_cached.exit: ; preds = %vector.body33, %mlk_polyvec_basemul_acc_montgomery_cached_k2_native.exit.i
  call fastcc void @mlkem_poly_invntt_tomont(ptr noundef nonnull %10)
  %i.akl = getelementptr inbounds nuw i8, ptr %10, i64 512 ; 5 uses
  call fastcc void @mlkem_poly_invntt_tomont(ptr noundef %i.akl)
  call fastcc void @mlkem_poly_invntt_tomont(ptr noundef %11)
  %i.akm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %wide.load54 = load <8 x i16>, ptr %10, align 32, !tbaa !131
  %wide.load55 = load <8 x i16>, ptr %i.akm, align 16, !tbaa !131
  %i.akn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %wide.load56 = load <8 x i16>, ptr %9, align 32, !tbaa !131
  %wide.load57 = load <8 x i16>, ptr %i.akn, align 16, !tbaa !131
  %i.ako = add <8 x i16> %wide.load56, %wide.load54
  %i.akp = add <8 x i16> %wide.load57, %wide.load55
  store <8 x i16> %i.ako, ptr %10, align 32, !tbaa !131
  store <8 x i16> %i.akp, ptr %i.akm, align 16, !tbaa !131
  %i.akq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %wide.load54.1 = load <8 x i16>, ptr %i.akq, align 32, !tbaa !131
  %wide.load55.1 = load <8 x i16>, ptr %i.akr, align 16, !tbaa !131
  %i.aks = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.akt = getelementptr inbounds nuw i8, ptr %9, i64 48
  %wide.load56.1 = load <8 x i16>, ptr %i.aks, align 32, !tbaa !131
  %wide.load57.1 = load <8 x i16>, ptr %i.akt, align 16, !tbaa !131
  %i.aku = add <8 x i16> %wide.load56.1, %wide.load54.1
  %i.akv = add <8 x i16> %wide.load57.1, %wide.load55.1
  store <8 x i16> %i.aku, ptr %i.akq, align 32, !tbaa !131
  store <8 x i16> %i.akv, ptr %i.akr, align 16, !tbaa !131
  %i.akw = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %wide.load54.2 = load <8 x i16>, ptr %i.akw, align 32, !tbaa !131
  %wide.load55.2 = load <8 x i16>, ptr %i.akx, align 16, !tbaa !131
  %i.aky = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.akz = getelementptr inbounds nuw i8, ptr %9, i64 80
  %wide.load56.2 = load <8 x i16>, ptr %i.aky, align 32, !tbaa !131
  %wide.load57.2 = load <8 x i16>, ptr %i.akz, align 16, !tbaa !131
  %i.ala = add <8 x i16> %wide.load56.2, %wide.load54.2
  %i.alb = add <8 x i16> %wide.load57.2, %wide.load55.2
  store <8 x i16> %i.ala, ptr %i.akw, align 32, !tbaa !131
  store <8 x i16> %i.alb, ptr %i.akx, align 16, !tbaa !131
  %i.alc = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %wide.load54.3 = load <8 x i16>, ptr %i.alc, align 32, !tbaa !131
  %wide.load55.3 = load <8 x i16>, ptr %i.ald, align 16, !tbaa !131
  %i.ale = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.alf = getelementptr inbounds nuw i8, ptr %9, i64 112
  %wide.load56.3 = load <8 x i16>, ptr %i.ale, align 32, !tbaa !131
  %wide.load57.3 = load <8 x i16>, ptr %i.alf, align 16, !tbaa !131
  %i.alg = add <8 x i16> %wide.load56.3, %wide.load54.3
  %i.alh = add <8 x i16> %wide.load57.3, %wide.load55.3
  store <8 x i16> %i.alg, ptr %i.alc, align 32, !tbaa !131
  store <8 x i16> %i.alh, ptr %i.ald, align 16, !tbaa !131
  %i.ali = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 2 uses
  %wide.load54.4 = load <8 x i16>, ptr %i.ali, align 32, !tbaa !131
  %wide.load55.4 = load <8 x i16>, ptr %i.alj, align 16, !tbaa !131
  %i.alk = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.all = getelementptr inbounds nuw i8, ptr %9, i64 144
  %wide.load56.4 = load <8 x i16>, ptr %i.alk, align 32, !tbaa !131
  %wide.load57.4 = load <8 x i16>, ptr %i.all, align 16, !tbaa !131
  %i.alm = add <8 x i16> %wide.load56.4, %wide.load54.4
  %i.aln = add <8 x i16> %wide.load57.4, %wide.load55.4
  store <8 x i16> %i.alm, ptr %i.ali, align 32, !tbaa !131
  store <8 x i16> %i.aln, ptr %i.alj, align 16, !tbaa !131
  %i.alo = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %10, i64 176 ; 2 uses
  %wide.load54.5 = load <8 x i16>, ptr %i.alo, align 32, !tbaa !131
  %wide.load55.5 = load <8 x i16>, ptr %i.alp, align 16, !tbaa !131
  %i.alq = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.alr = getelementptr inbounds nuw i8, ptr %9, i64 176
  %wide.load56.5 = load <8 x i16>, ptr %i.alq, align 32, !tbaa !131
  %wide.load57.5 = load <8 x i16>, ptr %i.alr, align 16, !tbaa !131
  %i.als = add <8 x i16> %wide.load56.5, %wide.load54.5
  %i.alt = add <8 x i16> %wide.load57.5, %wide.load55.5
  store <8 x i16> %i.als, ptr %i.alo, align 32, !tbaa !131
  store <8 x i16> %i.alt, ptr %i.alp, align 16, !tbaa !131
  %i.alu = getelementptr inbounds nuw i8, ptr %10, i64 192 ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %10, i64 208 ; 2 uses
  %wide.load54.6 = load <8 x i16>, ptr %i.alu, align 32, !tbaa !131
  %wide.load55.6 = load <8 x i16>, ptr %i.alv, align 16, !tbaa !131
  %i.alw = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.alx = getelementptr inbounds nuw i8, ptr %9, i64 208
  %wide.load56.6 = load <8 x i16>, ptr %i.alw, align 32, !tbaa !131
  %wide.load57.6 = load <8 x i16>, ptr %i.alx, align 16, !tbaa !131
  %i.aly = add <8 x i16> %wide.load56.6, %wide.load54.6
  %i.alz = add <8 x i16> %wide.load57.6, %wide.load55.6
  store <8 x i16> %i.aly, ptr %i.alu, align 32, !tbaa !131
  store <8 x i16> %i.alz, ptr %i.alv, align 16, !tbaa !131
  %i.ama = getelementptr inbounds nuw i8, ptr %10, i64 224 ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %10, i64 240 ; 2 uses
  %wide.load54.7 = load <8 x i16>, ptr %i.ama, align 32, !tbaa !131
  %wide.load55.7 = load <8 x i16>, ptr %i.amb, align 16, !tbaa !131
  %i.amc = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.amd = getelementptr inbounds nuw i8, ptr %9, i64 240
  %wide.load56.7 = load <8 x i16>, ptr %i.amc, align 32, !tbaa !131
  %wide.load57.7 = load <8 x i16>, ptr %i.amd, align 16, !tbaa !131
  %i.ame = add <8 x i16> %wide.load56.7, %wide.load54.7
  %i.amf = add <8 x i16> %wide.load57.7, %wide.load55.7
  store <8 x i16> %i.ame, ptr %i.ama, align 32, !tbaa !131
  store <8 x i16> %i.amf, ptr %i.amb, align 16, !tbaa !131
  %i.amg = getelementptr inbounds nuw i8, ptr %10, i64 256 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %10, i64 272 ; 2 uses
  %wide.load54.8 = load <8 x i16>, ptr %i.amg, align 32, !tbaa !131
  %wide.load55.8 = load <8 x i16>, ptr %i.amh, align 16, !tbaa !131
  %i.ami = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.amj = getelementptr inbounds nuw i8, ptr %9, i64 272
  %wide.load56.8 = load <8 x i16>, ptr %i.ami, align 32, !tbaa !131
  %wide.load57.8 = load <8 x i16>, ptr %i.amj, align 16, !tbaa !131
  %i.amk = add <8 x i16> %wide.load56.8, %wide.load54.8
  %i.aml = add <8 x i16> %wide.load57.8, %wide.load55.8
end_hunk_1
begin_hunk_2_@mlkem768_polyvec_mulcache_compute:bb.a
  %i.io = sext i16 %i.im to i32
  %i.ip = sext i16 %i.in to i32
  %i.iq = mul nsw i32 %i.io, %i.ip                ; 2 uses
  %sext.i11.i.i.2 = mul i32 %i.iq, -218038272
  %i.ir = ashr exact i32 %sext.i11.i.i.2, 16
  %.neg.i.i12.i.i.2 = mul nsw i32 %i.ir, -3329
  %i.is = add nsw i32 %.neg.i.i12.i.i.2, %i.iq
  %i.it = lshr i32 %i.is, 16
  %i.iu = trunc nuw i32 %i.it to i16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !131
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.2, 1 ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, 64
  br i1 %exitcond.not.i.i.2, label %mlkem_poly_mulcache_compute.exit.2, label %mlk_poly_mulcache_compute_native.exit.i.2, !llvm.loop !2839

mlkem_poly_mulcache_compute.exit.2:               ; preds = %mlk_poly_mulcache_compute_native.exit.i.2, %mlk_poly_mulcache_compute_native.exit.thread.i.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem768_polyvec_reduce(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.b = and i32 %i.a, 32
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %mlk_poly_reduce_native.exit.i, label %mlk_poly_reduce_native.exit.thread.i

mlk_poly_reduce_native.exit.thread.i:             ; preds = %bb.a
  tail call void @mlkem_reduce_avx2_asm(ptr noundef nonnull %0) #46
  br label %mlkem_poly_reduce.exit

mlk_poly_reduce_native.exit.i:                    ; preds = %bb.a, %mlk_poly_reduce_native.exit.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %mlk_poly_reduce_native.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !131  ; 2 uses
  %i.e = sext i16 %i.d to i32
  %i.f = mul nsw i32 %i.e, 20159
  %i.g = add nsw i32 %i.f, 33554432
  %i.h = ashr i32 %i.g, 26
  %i.i = trunc nsw i32 %i.h to i16
  %i.j = mul i16 %i.i, -3329
  %i.k = add i16 %i.j, %i.d                       ; 4 uses
  %i.l = add i16 %i.k, 3329
  %i.m = sext i16 %i.k to i32
  %i.n = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.m) #46, !srcloc !458
  %i.o = lshr i32 %i.n, 16
  %i.p = sub nsw i32 0, %i.o
  %i.q = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.p) #46, !srcloc !458
  %i.r = lshr i32 %i.q, 16
  %i.s = trunc nuw i32 %i.r to i16
  %i.t = xor i16 %i.l, %i.k
  %i.u = and i16 %i.t, %i.s
  %i.v = xor i16 %i.u, %i.k
  store i16 %i.v, ptr %i.c, align 2, !tbaa !131
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.not.i.i, label %mlkem_poly_reduce.exit, label %mlk_poly_reduce_native.exit.i, !llvm.loop !44

mlkem_poly_reduce.exit:                           ; preds = %mlk_poly_reduce_native.exit.i, %mlk_poly_reduce_native.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.y = and i32 %i.x, 32
  %.not.i.i.1 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.1, label %mlk_poly_reduce_native.exit.i.1, label %mlk_poly_reduce_native.exit.thread.i.1

mlk_poly_reduce_native.exit.thread.i.1:           ; preds = %mlkem_poly_reduce.exit
  tail call void @mlkem_reduce_avx2_asm(ptr noundef nonnull %i.w) #46
  br label %mlkem_poly_reduce.exit.1

mlk_poly_reduce_native.exit.i.1:                  ; preds = %mlkem_poly_reduce.exit, %mlk_poly_reduce_native.exit.i.1
  %indvars.iv.i.i.1 = phi i64 [ %indvars.iv.next.i.i.1, %mlk_poly_reduce_native.exit.i.1 ], [ 0, %mlkem_poly_reduce.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.i.i.1 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !131 ; 2 uses
  %i.ab = sext i16 %i.aa to i32
  %i.ac = mul nsw i32 %i.ab, 20159
  %i.ad = add nsw i32 %i.ac, 33554432
  %i.ae = ashr i32 %i.ad, 26
  %i.af = trunc nsw i32 %i.ae to i16
  %i.ag = mul i16 %i.af, -3329
  %i.ah = add i16 %i.ag, %i.aa                    ; 4 uses
  %i.ai = add i16 %i.ah, 3329
  %i.aj = sext i16 %i.ah to i32
  %i.ak = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.aj) #46, !srcloc !458
  %i.al = lshr i32 %i.ak, 16
  %i.am = sub nsw i32 0, %i.al
  %i.an = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.am) #46, !srcloc !458
  %i.ao = lshr i32 %i.an, 16
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = xor i16 %i.ai, %i.ah
  %i.ar = and i16 %i.aq, %i.ap
  %i.as = xor i16 %i.ar, %i.ah
  store i16 %i.as, ptr %i.z, align 2, !tbaa !131
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.1, 1 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i.1, label %mlkem_poly_reduce.exit.1, label %mlk_poly_reduce_native.exit.i.1, !llvm.loop !44

mlkem_poly_reduce.exit.1:                         ; preds = %mlk_poly_reduce_native.exit.i.1, %mlk_poly_reduce_native.exit.thread.i.1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.av = and i32 %i.au, 32
  %.not.i.i.2 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.2, label %mlk_poly_reduce_native.exit.i.2, label %mlk_poly_reduce_native.exit.thread.i.2

mlk_poly_reduce_native.exit.thread.i.2:           ; preds = %mlkem_poly_reduce.exit.1
  tail call void @mlkem_reduce_avx2_asm(ptr noundef nonnull %i.at) #46
  br label %mlkem_poly_reduce.exit.2

mlk_poly_reduce_native.exit.i.2:                  ; preds = %mlkem_poly_reduce.exit.1, %mlk_poly_reduce_native.exit.i.2
  %indvars.iv.i.i.2 = phi i64 [ %indvars.iv.next.i.i.2, %mlk_poly_reduce_native.exit.i.2 ], [ 0, %mlkem_poly_reduce.exit.1 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i.i.2 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !131 ; 2 uses
  %i.ay = sext i16 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, 20159
  %i.ba = add nsw i32 %i.az, 33554432
  %i.bb = ashr i32 %i.ba, 26
  %i.bc = trunc nsw i32 %i.bb to i16
  %i.bd = mul i16 %i.bc, -3329
  %i.be = add i16 %i.bd, %i.ax                    ; 4 uses
  %i.bf = add i16 %i.be, 3329
  %i.bg = sext i16 %i.be to i32
  %i.bh = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.bg) #46, !srcloc !458
  %i.bi = lshr i32 %i.bh, 16
  %i.bj = sub nsw i32 0, %i.bi
  %i.bk = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.bj) #46, !srcloc !458
  %i.bl = lshr i32 %i.bk, 16
  %i.bm = trunc nuw i32 %i.bl to i16
  %i.bn = xor i16 %i.bf, %i.be
  %i.bo = and i16 %i.bn, %i.bm
  %i.bp = xor i16 %i.bo, %i.be
  store i16 %i.bp, ptr %i.aw, align 2, !tbaa !131
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.2, 1 ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, 256
  br i1 %exitcond.not.i.i.2, label %mlkem_poly_reduce.exit.2, label %mlk_poly_reduce_native.exit.i.2, !llvm.loop !44

mlkem_poly_reduce.exit.2:                         ; preds = %mlk_poly_reduce_native.exit.i.2, %mlk_poly_reduce_native.exit.thread.i.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem768_poly_getnoise_eta1_4x(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef nonnull readonly captures(none) %4, i8 noundef zeroext range(i8 0, 4) %5, i8 noundef zeroext range(i8 1, 5) %6, i8 noundef zeroext range(i8 2, 6) %7, i8 noundef zeroext range(i8 -1, 7) %8) unnamed_addr #0 {
vector.ph:
  %9 = alloca %struct.keccak_ctx_st_x4, align 8   ; 6 uses
  %i.a = alloca [136 x i8], align 16              ; 5 uses
  %i.b = alloca [136 x i8], align 16              ; 5 uses
  %i.c = alloca [136 x i8], align 16              ; 5 uses
  %i.d = alloca [136 x i8], align 16              ; 5 uses
  %i.e = alloca [4 x [128 x i8]], align 32        ; 8 uses
  %i.f = alloca [4 x [64 x i8]], align 32         ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %5, ptr %i.j, align 32, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i8 %6, ptr %i.k, align 32, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store i8 %7, ptr %i.l, align 32, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  store i8 %8, ptr %i.m, align 32, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %9, i8 0, i64 800, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  call void @Keccak1600_Absorb_once_x4(ptr noundef nonnull %9, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef 33, i64 noundef 136, i8 noundef zeroext 31)
  call void @Keccak1600_Squeezeblocks_x4(ptr noundef nonnull %9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 136)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.e, ptr noundef nonnull readonly align 16 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.n, ptr noundef nonnull readonly align 16 dereferenceable(128) %i.b, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.o, ptr noundef nonnull readonly align 16 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.p, ptr noundef nonnull readonly align 16 dereferenceable(128) %i.d, i64 128, i1 false)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 136) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 136) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 136) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 136) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %9, i64 noundef 800) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl nuw nsw i64 %index, 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.q
  %wide.load = load <4 x i32>, ptr %i.r, align 16 ; 2 uses
  %i.s = and <4 x i32> %wide.load, splat (i32 1431655765)
  %i.t = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.u = and <4 x i32> %i.t, splat (i32 1431655765)
  %i.v = add nuw <4 x i32> %i.u, %i.s             ; 10 uses
  %i.w = shl nuw nsw i64 %index, 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = lshr <4 x i32> %i.v, splat (i32 4)
  %i.z = lshr <4 x i32> %i.v, splat (i32 26)
  %10 = and <4 x i32> %i.z, splat (i32 3)
  %i.aa = lshr <4 x i32> %i.v, splat (i32 30)
  %11 = shufflevector <4 x i32> %i.v, <4 x i32> %i.y, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = and <8 x i32> %11, splat (i32 3)
  %13 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %14 = lshr <8 x i32> %13, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %15 = and <8 x i32> %14, splat (i32 3)
  %16 = sub nsw <8 x i32> %12, %15
  %17 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %18 = lshr <8 x i32> %17, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %19 = and <8 x i32> %18, splat (i32 3)
  %20 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %21 = lshr <8 x i32> %20, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %22 = and <8 x i32> %21, splat (i32 3)
  %23 = sub nsw <8 x i32> %19, %22
  %i.ab = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %24 = lshr <8 x i32> %i.ab, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %25 = and <8 x i32> %24, splat (i32 3)
  %26 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %27 = lshr <8 x i32> %26, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %28 = and <8 x i32> %27, splat (i32 3)
  %29 = sub nsw <8 x i32> %25, %28
  %30 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %31 = lshr <8 x i32> %30, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %32 = and <8 x i32> %31, splat (i32 3)
  %i.ac = shufflevector <4 x i32> %10, <4 x i32> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %33 = sub nsw <8 x i32> %32, %i.ac
  %i.ad = shufflevector <8 x i32> %16, <8 x i32> %23, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %34 = shufflevector <8 x i32> %29, <8 x i32> %33, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = shufflevector <16 x i32> %i.ad, <16 x i32> %34, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec = trunc nsw <32 x i32> %i.ae to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %i.x, align 2, !tbaa !131
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, 32
  br i1 %i.af, label %vector.body28, label %vector.body, !llvm.loop !2846

vector.body28:                                    ; preds = %vector.body, %vector.body28
  %index29 = phi i64 [ %index.next32, %vector.body28 ], [ 0, %vector.body ] ; 3 uses
  %i.ag = shl nuw nsw i64 %index29, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ag
  %wide.load30 = load <4 x i32>, ptr %i.ah, align 16 ; 2 uses
  %i.ai = and <4 x i32> %wide.load30, splat (i32 1431655765)
  %i.aj = lshr <4 x i32> %wide.load30, splat (i32 1)
  %i.ak = and <4 x i32> %i.aj, splat (i32 1431655765)
  %i.al = add nuw <4 x i32> %i.ak, %i.ai          ; 10 uses
  %i.am = shl nuw nsw i64 %index29, 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ao = lshr <4 x i32> %i.al, splat (i32 4)
  %i.ap = lshr <4 x i32> %i.al, splat (i32 26)
  %35 = and <4 x i32> %i.ap, splat (i32 3)
  %i.aq = lshr <4 x i32> %i.al, splat (i32 30)
  %36 = shufflevector <4 x i32> %i.al, <4 x i32> %i.ao, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %37 = and <8 x i32> %36, splat (i32 3)
  %38 = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %39 = lshr <8 x i32> %38, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %40 = and <8 x i32> %39, splat (i32 3)
  %41 = sub nsw <8 x i32> %37, %40
  %42 = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %43 = lshr <8 x i32> %42, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %44 = and <8 x i32> %43, splat (i32 3)
  %45 = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %46 = lshr <8 x i32> %45, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %47 = and <8 x i32> %46, splat (i32 3)
  %48 = sub nsw <8 x i32> %44, %47
  %i.ar = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %49 = lshr <8 x i32> %i.ar, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %50 = and <8 x i32> %49, splat (i32 3)
  %51 = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %52 = lshr <8 x i32> %51, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %53 = and <8 x i32> %52, splat (i32 3)
  %54 = sub nsw <8 x i32> %50, %53
  %55 = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %56 = lshr <8 x i32> %55, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %57 = and <8 x i32> %56, splat (i32 3)
  %i.as = shufflevector <4 x i32> %35, <4 x i32> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %58 = sub nsw <8 x i32> %57, %i.as
  %i.at = shufflevector <8 x i32> %41, <8 x i32> %48, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %59 = shufflevector <8 x i32> %54, <8 x i32> %58, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.au = shufflevector <16 x i32> %i.at, <16 x i32> %59, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec31 = trunc nsw <32 x i32> %i.au to <32 x i16>
  store <32 x i16> %interleaved.vec31, ptr %i.an, align 2, !tbaa !131
  %index.next32 = add nuw i64 %index29, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next32, 32
  br i1 %i.av, label %vector.body35, label %vector.body28, !llvm.loop !2847

vector.body35:                                    ; preds = %vector.body28, %vector.body35
  %index36 = phi i64 [ %index.next39, %vector.body35 ], [ 0, %vector.body28 ] ; 3 uses
  %i.aw = shl nuw nsw i64 %index36, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aw
  %wide.load37 = load <4 x i32>, ptr %i.ax, align 16 ; 2 uses
  %i.ay = and <4 x i32> %wide.load37, splat (i32 1431655765)
  %i.az = lshr <4 x i32> %wide.load37, splat (i32 1)
  %i.ba = and <4 x i32> %i.az, splat (i32 1431655765)
  %i.bb = add nuw <4 x i32> %i.ba, %i.ay          ; 10 uses
  %i.bc = shl nuw nsw i64 %index36, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  %i.be = lshr <4 x i32> %i.bb, splat (i32 4)
  %i.bf = lshr <4 x i32> %i.bb, splat (i32 26)
  %60 = and <4 x i32> %i.bf, splat (i32 3)
  %i.bg = lshr <4 x i32> %i.bb, splat (i32 30)
  %61 = shufflevector <4 x i32> %i.bb, <4 x i32> %i.be, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %62 = and <8 x i32> %61, splat (i32 3)
  %63 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %64 = lshr <8 x i32> %63, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %65 = and <8 x i32> %64, splat (i32 3)
  %66 = sub nsw <8 x i32> %62, %65
  %67 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %68 = lshr <8 x i32> %67, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %69 = and <8 x i32> %68, splat (i32 3)
  %70 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %71 = lshr <8 x i32> %70, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %72 = and <8 x i32> %71, splat (i32 3)
  %73 = sub nsw <8 x i32> %69, %72
  %i.bh = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %74 = lshr <8 x i32> %i.bh, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %75 = and <8 x i32> %74, splat (i32 3)
  %76 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %77 = lshr <8 x i32> %76, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %78 = and <8 x i32> %77, splat (i32 3)
  %79 = sub nsw <8 x i32> %75, %78
  %80 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %81 = lshr <8 x i32> %80, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %82 = and <8 x i32> %81, splat (i32 3)
  %i.bi = shufflevector <4 x i32> %60, <4 x i32> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %83 = sub nsw <8 x i32> %82, %i.bi
  %i.bj = shufflevector <8 x i32> %66, <8 x i32> %73, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %84 = shufflevector <8 x i32> %79, <8 x i32> %83, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bk = shufflevector <16 x i32> %i.bj, <16 x i32> %84, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec38 = trunc nsw <32 x i32> %i.bk to <32 x i16>
  store <32 x i16> %interleaved.vec38, ptr %i.bd, align 2, !tbaa !131
  %index.next39 = add nuw i64 %index36, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next39, 32
  br i1 %i.bl, label %mlk_poly_cbd_eta1768.exit21, label %vector.body35, !llvm.loop !2848

mlk_poly_cbd_eta1768.exit21:                      ; preds = %vector.body35
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %mlk_poly_cbd_eta1768.exit26, label %vector.body42

vector.body42:                                    ; preds = %mlk_poly_cbd_eta1768.exit21, %vector.body42
  %index43 = phi i64 [ %index.next46, %vector.body42 ], [ 0, %mlk_poly_cbd_eta1768.exit21 ] ; 3 uses
  %i.bm = shl nuw nsw i64 %index43, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bm
  %wide.load44 = load <4 x i32>, ptr %i.bn, align 16 ; 2 uses
  %i.bo = and <4 x i32> %wide.load44, splat (i32 1431655765)
  %i.bp = lshr <4 x i32> %wide.load44, splat (i32 1)
  %i.bq = and <4 x i32> %i.bp, splat (i32 1431655765)
  %i.br = add nuw <4 x i32> %i.bq, %i.bo          ; 10 uses
  %i.bs = shl nuw nsw i64 %index43, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %i.bs
  %i.bu = lshr <4 x i32> %i.br, splat (i32 4)
  %i.bv = lshr <4 x i32> %i.br, splat (i32 26)
  %85 = and <4 x i32> %i.bv, splat (i32 3)
  %i.bw = lshr <4 x i32> %i.br, splat (i32 30)
  %86 = shufflevector <4 x i32> %i.br, <4 x i32> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %87 = and <8 x i32> %86, splat (i32 3)
  %88 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %89 = lshr <8 x i32> %88, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %90 = and <8 x i32> %89, splat (i32 3)
  %91 = sub nsw <8 x i32> %87, %90
  %92 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %93 = lshr <8 x i32> %92, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %94 = and <8 x i32> %93, splat (i32 3)
  %95 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %96 = lshr <8 x i32> %95, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %97 = and <8 x i32> %96, splat (i32 3)
  %98 = sub nsw <8 x i32> %94, %97
  %i.bx = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %99 = lshr <8 x i32> %i.bx, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %100 = and <8 x i32> %99, splat (i32 3)
  %101 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %102 = lshr <8 x i32> %101, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %103 = and <8 x i32> %102, splat (i32 3)
  %104 = sub nsw <8 x i32> %100, %103
  %105 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %106 = lshr <8 x i32> %105, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %107 = and <8 x i32> %106, splat (i32 3)
  %i.by = shufflevector <4 x i32> %85, <4 x i32> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %108 = sub nsw <8 x i32> %107, %i.by
  %i.bz = shufflevector <8 x i32> %91, <8 x i32> %98, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %109 = shufflevector <8 x i32> %104, <8 x i32> %108, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ca = shufflevector <16 x i32> %i.bz, <16 x i32> %109, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec45 = trunc nsw <32 x i32> %i.ca to <32 x i16>
  store <32 x i16> %interleaved.vec45, ptr %i.bt, align 2, !tbaa !131
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next46, 32
  br i1 %i.cb, label %mlk_poly_cbd_eta1768.exit26, label %vector.body42, !llvm.loop !2849

mlk_poly_cbd_eta1768.exit26:                      ; preds = %vector.body42, %mlk_poly_cbd_eta1768.exit21
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 512) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.f, i64 noundef 256) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem768_polyvec_basemul_acc_montgomery_cached(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.b = and i32 %i.a, 32
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %vector.memcheck, label %mlk_polyvec_basemul_acc_montgomery_cached_k3_native.exit

mlk_polyvec_basemul_acc_montgomery_cached_k3_native.exit: ; preds = %bb.a
  tail call void @mlkem_polyvec_basemul_acc_montgomery_cached_k3_avx2_asm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #46
  br label %mlk_polyvec_basemul_acc_montgomery_cached_c768.exit

vector.memcheck:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1024 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 512        ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 1536
  %i.i = getelementptr i8, ptr %3, i64 768
  %i.j = getelementptr i8, ptr %2, i64 1536
  %bound0 = icmp ult ptr %0, %i.h
  %bound1 = icmp ult ptr %1, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound020 = icmp ult ptr %0, %i.i
  %bound121 = icmp ult ptr %3, %i.g
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  %bound023 = icmp ult ptr %0, %i.j
  %bound124 = icmp ult ptr %2, %i.g
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  br i1 %conflict.rdx26, label %.preheader.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.k = shl nuw nsw i64 %index, 1                ; 5 uses
  %i.l = or disjoint i64 %i.k, 1                  ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.l
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -2
  %wide.vec = load <8 x i16>, ptr %i.o, align 2, !tbaa !131, !alias.scope !2857 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec27 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.p = sext <4 x i16> %strided.vec27 to <4 x i32> ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.m, align 2, !tbaa !131, !alias.scope !2858
  %i.q = sext <4 x i16> %wide.load to <4 x i32>
  %i.r = mul nsw <4 x i32> %i.q, %i.p
  %i.s = sext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.k
  %wide.vec28 = load <8 x i16>, ptr %i.t, align 2, !tbaa !131, !alias.scope !2859 ; 2 uses
  %strided.vec29 = shufflevector <8 x i16> %wide.vec28, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec30 = shufflevector <8 x i16> %wide.vec28, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.u = sext <4 x i16> %strided.vec29 to <4 x i32> ; 2 uses
  %i.v = mul nsw <4 x i32> %i.u, %i.s
  %i.w = add nsw <4 x i32> %i.v, %i.r
  %i.x = sext <4 x i16> %strided.vec30 to <4 x i32>
  %i.y = mul nsw <4 x i32> %i.x, %i.s
  %i.z = mul nsw <4 x i32> %i.u, %i.p
  %i.aa = add <4 x i32> %i.y, %i.z
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.l
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -2
  %wide.vec31 = load <8 x i16>, ptr %i.ac, align 2, !tbaa !131, !alias.scope !2857 ; 2 uses
  %strided.vec32 = shufflevector <8 x i16> %wide.vec31, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec33 = shufflevector <8 x i16> %wide.vec31, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ad = sext <4 x i16> %strided.vec33 to <4 x i32> ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %wide.load34 = load <4 x i16>, ptr %i.ae, align 2, !tbaa !131, !alias.scope !2858
  %i.af = sext <4 x i16> %wide.load34 to <4 x i32>
  %i.ag = mul nsw <4 x i32> %i.af, %i.ad
  %i.ah = add nsw <4 x i32> %i.w, %i.ag
  %i.ai = sext <4 x i16> %strided.vec32 to <4 x i32> ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.k
  %wide.vec35 = load <8 x i16>, ptr %i.aj, align 2, !tbaa !131, !alias.scope !2859 ; 2 uses
  %strided.vec36 = shufflevector <8 x i16> %wide.vec35, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec37 = shufflevector <8 x i16> %wide.vec35, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ak = sext <4 x i16> %strided.vec36 to <4 x i32> ; 2 uses
  %i.al = mul nsw <4 x i32> %i.ak, %i.ai
  %i.am = add nsw <4 x i32> %i.ah, %i.al
  %i.an = sext <4 x i16> %strided.vec37 to <4 x i32>
  %i.ao = mul nsw <4 x i32> %i.an, %i.ai
  %i.ap = mul nsw <4 x i32> %i.ak, %i.ad
  %i.aq = add <4 x i32> %i.aa, %i.ap
  %i.ar = add <4 x i32> %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.l
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -2
  %wide.vec38 = load <8 x i16>, ptr %i.at, align 2, !tbaa !131, !alias.scope !2857 ; 2 uses
  %strided.vec39 = shufflevector <8 x i16> %wide.vec38, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec40 = shufflevector <8 x i16> %wide.vec38, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.au = sext <4 x i16> %strided.vec40 to <4 x i32> ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %wide.load41 = load <4 x i16>, ptr %i.av, align 2, !tbaa !131, !alias.scope !2858
  %i.aw = sext <4 x i16> %wide.load41 to <4 x i32>
  %i.ax = mul nsw <4 x i32> %i.aw, %i.au
  %i.ay = add nsw <4 x i32> %i.am, %i.ax
  %i.az = sext <4 x i16> %strided.vec39 to <4 x i32> ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.k
  %wide.vec42 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !131, !alias.scope !2859 ; 2 uses
  %strided.vec43 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec44 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bb = sext <4 x i16> %strided.vec43 to <4 x i32> ; 2 uses
  %i.bc = mul nsw <4 x i32> %i.bb, %i.az
  %i.bd = add nsw <4 x i32> %i.ay, %i.bc          ; 2 uses
  %i.be = sext <4 x i16> %strided.vec44 to <4 x i32>
  %i.bf = mul nsw <4 x i32> %i.be, %i.az
  %i.bg = mul nsw <4 x i32> %i.bb, %i.au
  %i.bh = add <4 x i32> %i.ar, %i.bg
  %i.bi = add <4 x i32> %i.bh, %i.bf              ; 2 uses
  %i.bj = mul <4 x i32> %i.bd, splat (i32 -218038272)
  %i.bk = ashr exact <4 x i32> %i.bj, splat (i32 16)
  %i.bl = mul nsw <4 x i32> %i.bk, splat (i32 -3329)
  %i.bm = add <4 x i32> %i.bl, %i.bd
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.k
  %i.bo = mul <4 x i32> %i.bi, splat (i32 -218038272)
  %i.bp = ashr exact <4 x i32> %i.bo, splat (i32 16)
  %i.bq = mul nsw <4 x i32> %i.bp, splat (i32 -3329)
  %i.br = add <4 x i32> %i.bq, %i.bi
  %i.bs = shufflevector <4 x i32> %i.bm, <4 x i32> %i.br, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bt = lshr <8 x i32> %i.bs, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.bt to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.bn, align 2, !tbaa !131, !alias.scope !2860, !noalias !2861
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, 128
  br i1 %i.bu, label %mlk_polyvec_basemul_acc_montgomery_cached_c768.exit, label %vector.body, !llvm.loop !2855

.preheader.i:                                     ; preds = %vector.memcheck, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bv = shl nuw nsw i64 %indvars.iv.i, 1        ; 8 uses
  %i.bw = or disjoint i64 %i.bv, 1                ; 6 uses
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i ; 3 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !131
  %i.bz = sext i16 %i.by to i32                   ; 2 uses
  %i.ca = load i16, ptr %invariant.gep.i, align 2, !tbaa !131
  %i.cb = sext i16 %i.ca to i32
  %i.cc = mul nsw i32 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bv
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !131
  %i.cf = sext i16 %i.ce to i32                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bv
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !131
  %i.ci = sext i16 %i.ch to i32                   ; 2 uses
  %i.cj = mul nsw i32 %i.ci, %i.cf
  %i.ck = add nsw i32 %i.cj, %i.cc
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bw
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !131
  %i.cn = sext i16 %i.cm to i32
  %i.co = mul nsw i32 %i.cn, %i.cf
  %i.cp = mul nsw i32 %i.ci, %i.bz
  %i.cq = add i32 %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bw
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !131
  %i.ct = sext i16 %i.cs to i32                   ; 2 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 256
  %i.cu = load i16, ptr %gep.1.i, align 2, !tbaa !131
  %i.cv = sext i16 %i.cu to i32
  %i.cw = mul nsw i32 %i.cv, %i.ct
  %i.cx = add nsw i32 %i.ck, %i.cw
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bv
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !131
  %i.da = sext i16 %i.cz to i32                   ; 2 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bv
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !131
  %i.dd = sext i16 %i.dc to i32                   ; 2 uses
  %i.de = mul nsw i32 %i.dd, %i.da
  %i.df = add nsw i32 %i.cx, %i.de
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.bw
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !131
  %i.di = sext i16 %i.dh to i32
  %i.dj = mul nsw i32 %i.di, %i.da
  %i.dk = mul nsw i32 %i.dd, %i.ct
  %i.dl = add i32 %i.cq, %i.dk
  %i.dm = add i32 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bw
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !131
  %i.dp = sext i16 %i.do to i32                   ; 2 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 512
  %i.dq = load i16, ptr %gep.2.i, align 2, !tbaa !131
  %i.dr = sext i16 %i.dq to i32
  %i.ds = mul nsw i32 %i.dr, %i.dp
  %i.dt = add nsw i32 %i.df, %i.ds
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bv
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !131
  %i.dw = sext i16 %i.dv to i32                   ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bv
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !131
end_hunk_2
begin_hunk_3_@mlkem1024_polyvec_reduce:bb.a
  %i.h = ashr i32 %i.g, 26
  %i.i = trunc nsw i32 %i.h to i16
  %i.j = mul i16 %i.i, -3329
  %i.k = add i16 %i.j, %i.d                       ; 4 uses
  %i.l = add i16 %i.k, 3329
  %i.m = sext i16 %i.k to i32
  %i.n = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.m) #46, !srcloc !458
  %i.o = lshr i32 %i.n, 16
  %i.p = sub nsw i32 0, %i.o
  %i.q = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.p) #46, !srcloc !458
  %i.r = lshr i32 %i.q, 16
  %i.s = trunc nuw i32 %i.r to i16
  %i.t = xor i16 %i.l, %i.k
  %i.u = and i16 %i.t, %i.s
  %i.v = xor i16 %i.u, %i.k
  store i16 %i.v, ptr %i.c, align 2, !tbaa !131
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.not.i.i, label %mlkem_poly_reduce.exit, label %mlk_poly_reduce_native.exit.i, !llvm.loop !44

mlkem_poly_reduce.exit:                           ; preds = %mlk_poly_reduce_native.exit.i, %mlk_poly_reduce_native.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.y = and i32 %i.x, 32
  %.not.i.i.1 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.1, label %mlk_poly_reduce_native.exit.i.1, label %mlk_poly_reduce_native.exit.thread.i.1

mlk_poly_reduce_native.exit.thread.i.1:           ; preds = %mlkem_poly_reduce.exit
  tail call void @mlkem_reduce_avx2_asm(ptr noundef nonnull %i.w) #46
  br label %mlkem_poly_reduce.exit.1

mlk_poly_reduce_native.exit.i.1:                  ; preds = %mlkem_poly_reduce.exit, %mlk_poly_reduce_native.exit.i.1
  %indvars.iv.i.i.1 = phi i64 [ %indvars.iv.next.i.i.1, %mlk_poly_reduce_native.exit.i.1 ], [ 0, %mlkem_poly_reduce.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv.i.i.1 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !131 ; 2 uses
  %i.ab = sext i16 %i.aa to i32
  %i.ac = mul nsw i32 %i.ab, 20159
  %i.ad = add nsw i32 %i.ac, 33554432
  %i.ae = ashr i32 %i.ad, 26
  %i.af = trunc nsw i32 %i.ae to i16
  %i.ag = mul i16 %i.af, -3329
  %i.ah = add i16 %i.ag, %i.aa                    ; 4 uses
  %i.ai = add i16 %i.ah, 3329
  %i.aj = sext i16 %i.ah to i32
  %i.ak = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.aj) #46, !srcloc !458
  %i.al = lshr i32 %i.ak, 16
  %i.am = sub nsw i32 0, %i.al
  %i.an = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.am) #46, !srcloc !458
  %i.ao = lshr i32 %i.an, 16
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = xor i16 %i.ai, %i.ah
  %i.ar = and i16 %i.aq, %i.ap
  %i.as = xor i16 %i.ar, %i.ah
  store i16 %i.as, ptr %i.z, align 2, !tbaa !131
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.1, 1 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 256
  br i1 %exitcond.not.i.i.1, label %mlkem_poly_reduce.exit.1, label %mlk_poly_reduce_native.exit.i.1, !llvm.loop !44

mlkem_poly_reduce.exit.1:                         ; preds = %mlk_poly_reduce_native.exit.i.1, %mlk_poly_reduce_native.exit.thread.i.1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.av = and i32 %i.au, 32
  %.not.i.i.2 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.2, label %mlk_poly_reduce_native.exit.i.2, label %mlk_poly_reduce_native.exit.thread.i.2

mlk_poly_reduce_native.exit.thread.i.2:           ; preds = %mlkem_poly_reduce.exit.1
  tail call void @mlkem_reduce_avx2_asm(ptr noundef nonnull %i.at) #46
  br label %mlkem_poly_reduce.exit.2

mlk_poly_reduce_native.exit.i.2:                  ; preds = %mlkem_poly_reduce.exit.1, %mlk_poly_reduce_native.exit.i.2
  %indvars.iv.i.i.2 = phi i64 [ %indvars.iv.next.i.i.2, %mlk_poly_reduce_native.exit.i.2 ], [ 0, %mlkem_poly_reduce.exit.1 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i.i.2 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !131 ; 2 uses
  %i.ay = sext i16 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, 20159
  %i.ba = add nsw i32 %i.az, 33554432
  %i.bb = ashr i32 %i.ba, 26
  %i.bc = trunc nsw i32 %i.bb to i16
  %i.bd = mul i16 %i.bc, -3329
  %i.be = add i16 %i.bd, %i.ax                    ; 4 uses
  %i.bf = add i16 %i.be, 3329
  %i.bg = sext i16 %i.be to i32
  %i.bh = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.bg) #46, !srcloc !458
  %i.bi = lshr i32 %i.bh, 16
  %i.bj = sub nsw i32 0, %i.bi
  %i.bk = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.bj) #46, !srcloc !458
  %i.bl = lshr i32 %i.bk, 16
  %i.bm = trunc nuw i32 %i.bl to i16
  %i.bn = xor i16 %i.bf, %i.be
  %i.bo = and i16 %i.bn, %i.bm
  %i.bp = xor i16 %i.bo, %i.be
  store i16 %i.bp, ptr %i.aw, align 2, !tbaa !131
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.2, 1 ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, 256
  br i1 %exitcond.not.i.i.2, label %mlkem_poly_reduce.exit.2, label %mlk_poly_reduce_native.exit.i.2, !llvm.loop !44

mlkem_poly_reduce.exit.2:                         ; preds = %mlk_poly_reduce_native.exit.i.2, %mlk_poly_reduce_native.exit.thread.i.2
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.bs = and i32 %i.br, 32
  %.not.i.i.3 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.3, label %mlk_poly_reduce_native.exit.i.3, label %mlk_poly_reduce_native.exit.thread.i.3

mlk_poly_reduce_native.exit.thread.i.3:           ; preds = %mlkem_poly_reduce.exit.2
  tail call void @mlkem_reduce_avx2_asm(ptr noundef nonnull %i.bq) #46
  br label %mlkem_poly_reduce.exit.3

mlk_poly_reduce_native.exit.i.3:                  ; preds = %mlkem_poly_reduce.exit.2, %mlk_poly_reduce_native.exit.i.3
  %indvars.iv.i.i.3 = phi i64 [ %indvars.iv.next.i.i.3, %mlk_poly_reduce_native.exit.i.3 ], [ 0, %mlkem_poly_reduce.exit.2 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %indvars.iv.i.i.3 ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !131 ; 2 uses
  %i.bv = sext i16 %i.bu to i32
  %i.bw = mul nsw i32 %i.bv, 20159
  %i.bx = add nsw i32 %i.bw, 33554432
  %i.by = ashr i32 %i.bx, 26
  %i.bz = trunc nsw i32 %i.by to i16
  %i.ca = mul i16 %i.bz, -3329
  %i.cb = add i16 %i.ca, %i.bu                    ; 4 uses
  %i.cc = add i16 %i.cb, 3329
  %i.cd = sext i16 %i.cb to i32
  %i.ce = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.cd) #46, !srcloc !458
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = sub nsw i32 0, %i.cf
  %i.ch = tail call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.cg) #46, !srcloc !458
  %i.ci = lshr i32 %i.ch, 16
  %i.cj = trunc nuw i32 %i.ci to i16
  %i.ck = xor i16 %i.cc, %i.cb
  %i.cl = and i16 %i.ck, %i.cj
  %i.cm = xor i16 %i.cl, %i.cb
  store i16 %i.cm, ptr %i.bt, align 2, !tbaa !131
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.3, 1 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, 256
  br i1 %exitcond.not.i.i.3, label %mlkem_poly_reduce.exit.3, label %mlk_poly_reduce_native.exit.i.3, !llvm.loop !44

mlkem_poly_reduce.exit.3:                         ; preds = %mlk_poly_reduce_native.exit.i.3, %mlk_poly_reduce_native.exit.thread.i.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem1024_poly_getnoise_eta1_4x(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i8 noundef zeroext range(i8 0, 5) %5, i8 noundef zeroext range(i8 1, 6) %6, i8 noundef zeroext range(i8 2, 7) %7, i8 noundef zeroext range(i8 3, 8) %8) unnamed_addr #0 {
vector.ph:
  %9 = alloca %struct.keccak_ctx_st_x4, align 8   ; 6 uses
  %i.a = alloca [136 x i8], align 16              ; 5 uses
  %i.b = alloca [136 x i8], align 16              ; 5 uses
  %i.c = alloca [136 x i8], align 16              ; 5 uses
  %i.d = alloca [136 x i8], align 16              ; 5 uses
  %i.e = alloca [4 x [128 x i8]], align 32        ; 8 uses
  %i.f = alloca [4 x [64 x i8]], align 32         ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 %5, ptr %i.j, align 32, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i8 %6, ptr %i.k, align 32, !tbaa !76
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store i8 %7, ptr %i.l, align 32, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  store i8 %8, ptr %i.m, align 32, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %9, i8 0, i64 800, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  call void @Keccak1600_Absorb_once_x4(ptr noundef nonnull %9, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.g, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef 33, i64 noundef 136, i8 noundef zeroext 31)
  call void @Keccak1600_Squeezeblocks_x4(ptr noundef nonnull %9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef 136)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.e, ptr noundef nonnull readonly align 16 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.n, ptr noundef nonnull readonly align 16 dereferenceable(128) %i.b, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.o, ptr noundef nonnull readonly align 16 dereferenceable(128) %i.c, i64 128, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.p, ptr noundef nonnull readonly align 16 dereferenceable(128) %i.d, i64 128, i1 false)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 136) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 136) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef 136) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 136) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %9, i64 noundef 800) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl nuw nsw i64 %index, 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.q
  %wide.load = load <4 x i32>, ptr %i.r, align 16 ; 2 uses
  %i.s = and <4 x i32> %wide.load, splat (i32 1431655765)
  %i.t = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.u = and <4 x i32> %i.t, splat (i32 1431655765)
  %i.v = add nuw <4 x i32> %i.u, %i.s             ; 10 uses
  %i.w = shl nuw nsw i64 %index, 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = lshr <4 x i32> %i.v, splat (i32 4)
  %i.z = lshr <4 x i32> %i.v, splat (i32 26)
  %10 = and <4 x i32> %i.z, splat (i32 3)
  %i.aa = lshr <4 x i32> %i.v, splat (i32 30)
  %11 = shufflevector <4 x i32> %i.v, <4 x i32> %i.y, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = and <8 x i32> %11, splat (i32 3)
  %13 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %14 = lshr <8 x i32> %13, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %15 = and <8 x i32> %14, splat (i32 3)
  %16 = sub nsw <8 x i32> %12, %15
  %17 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %18 = lshr <8 x i32> %17, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %19 = and <8 x i32> %18, splat (i32 3)
  %20 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %21 = lshr <8 x i32> %20, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %22 = and <8 x i32> %21, splat (i32 3)
  %23 = sub nsw <8 x i32> %19, %22
  %i.ab = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %24 = lshr <8 x i32> %i.ab, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %25 = and <8 x i32> %24, splat (i32 3)
  %26 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %27 = lshr <8 x i32> %26, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %28 = and <8 x i32> %27, splat (i32 3)
  %29 = sub nsw <8 x i32> %25, %28
  %30 = shufflevector <4 x i32> %i.v, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %31 = lshr <8 x i32> %30, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %32 = and <8 x i32> %31, splat (i32 3)
  %i.ac = shufflevector <4 x i32> %10, <4 x i32> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %33 = sub nsw <8 x i32> %32, %i.ac
  %i.ad = shufflevector <8 x i32> %16, <8 x i32> %23, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %34 = shufflevector <8 x i32> %29, <8 x i32> %33, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ae = shufflevector <16 x i32> %i.ad, <16 x i32> %34, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec = trunc nsw <32 x i32> %i.ae to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %i.x, align 2, !tbaa !131
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, 32
  br i1 %i.af, label %vector.body28, label %vector.body, !llvm.loop !2911

vector.body28:                                    ; preds = %vector.body, %vector.body28
  %index29 = phi i64 [ %index.next32, %vector.body28 ], [ 0, %vector.body ] ; 3 uses
  %i.ag = shl nuw nsw i64 %index29, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ag
  %wide.load30 = load <4 x i32>, ptr %i.ah, align 16 ; 2 uses
  %i.ai = and <4 x i32> %wide.load30, splat (i32 1431655765)
  %i.aj = lshr <4 x i32> %wide.load30, splat (i32 1)
  %i.ak = and <4 x i32> %i.aj, splat (i32 1431655765)
  %i.al = add nuw <4 x i32> %i.ak, %i.ai          ; 10 uses
  %i.am = shl nuw nsw i64 %index29, 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ao = lshr <4 x i32> %i.al, splat (i32 4)
  %i.ap = lshr <4 x i32> %i.al, splat (i32 26)
  %35 = and <4 x i32> %i.ap, splat (i32 3)
  %i.aq = lshr <4 x i32> %i.al, splat (i32 30)
  %36 = shufflevector <4 x i32> %i.al, <4 x i32> %i.ao, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %37 = and <8 x i32> %36, splat (i32 3)
  %38 = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %39 = lshr <8 x i32> %38, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %40 = and <8 x i32> %39, splat (i32 3)
  %41 = sub nsw <8 x i32> %37, %40
  %42 = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %43 = lshr <8 x i32> %42, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %44 = and <8 x i32> %43, splat (i32 3)
  %45 = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %46 = lshr <8 x i32> %45, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %47 = and <8 x i32> %46, splat (i32 3)
  %48 = sub nsw <8 x i32> %44, %47
  %i.ar = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %49 = lshr <8 x i32> %i.ar, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %50 = and <8 x i32> %49, splat (i32 3)
  %51 = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %52 = lshr <8 x i32> %51, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %53 = and <8 x i32> %52, splat (i32 3)
  %54 = sub nsw <8 x i32> %50, %53
  %55 = shufflevector <4 x i32> %i.al, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %56 = lshr <8 x i32> %55, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %57 = and <8 x i32> %56, splat (i32 3)
  %i.as = shufflevector <4 x i32> %35, <4 x i32> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %58 = sub nsw <8 x i32> %57, %i.as
  %i.at = shufflevector <8 x i32> %41, <8 x i32> %48, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %59 = shufflevector <8 x i32> %54, <8 x i32> %58, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.au = shufflevector <16 x i32> %i.at, <16 x i32> %59, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec31 = trunc nsw <32 x i32> %i.au to <32 x i16>
  store <32 x i16> %interleaved.vec31, ptr %i.an, align 2, !tbaa !131
  %index.next32 = add nuw i64 %index29, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next32, 32
  br i1 %i.av, label %vector.body35, label %vector.body28, !llvm.loop !2912

vector.body35:                                    ; preds = %vector.body28, %vector.body35
  %index36 = phi i64 [ %index.next39, %vector.body35 ], [ 0, %vector.body28 ] ; 3 uses
  %i.aw = shl nuw nsw i64 %index36, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aw
  %wide.load37 = load <4 x i32>, ptr %i.ax, align 16 ; 2 uses
  %i.ay = and <4 x i32> %wide.load37, splat (i32 1431655765)
  %i.az = lshr <4 x i32> %wide.load37, splat (i32 1)
  %i.ba = and <4 x i32> %i.az, splat (i32 1431655765)
  %i.bb = add nuw <4 x i32> %i.ba, %i.ay          ; 10 uses
  %i.bc = shl nuw nsw i64 %index36, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bc
  %i.be = lshr <4 x i32> %i.bb, splat (i32 4)
  %i.bf = lshr <4 x i32> %i.bb, splat (i32 26)
  %60 = and <4 x i32> %i.bf, splat (i32 3)
  %i.bg = lshr <4 x i32> %i.bb, splat (i32 30)
  %61 = shufflevector <4 x i32> %i.bb, <4 x i32> %i.be, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %62 = and <8 x i32> %61, splat (i32 3)
  %63 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %64 = lshr <8 x i32> %63, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %65 = and <8 x i32> %64, splat (i32 3)
  %66 = sub nsw <8 x i32> %62, %65
  %67 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %68 = lshr <8 x i32> %67, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %69 = and <8 x i32> %68, splat (i32 3)
  %70 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %71 = lshr <8 x i32> %70, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %72 = and <8 x i32> %71, splat (i32 3)
  %73 = sub nsw <8 x i32> %69, %72
  %i.bh = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %74 = lshr <8 x i32> %i.bh, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %75 = and <8 x i32> %74, splat (i32 3)
  %76 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %77 = lshr <8 x i32> %76, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %78 = and <8 x i32> %77, splat (i32 3)
  %79 = sub nsw <8 x i32> %75, %78
  %80 = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %81 = lshr <8 x i32> %80, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %82 = and <8 x i32> %81, splat (i32 3)
  %i.bi = shufflevector <4 x i32> %60, <4 x i32> %i.bg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %83 = sub nsw <8 x i32> %82, %i.bi
  %i.bj = shufflevector <8 x i32> %66, <8 x i32> %73, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %84 = shufflevector <8 x i32> %79, <8 x i32> %83, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bk = shufflevector <16 x i32> %i.bj, <16 x i32> %84, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec38 = trunc nsw <32 x i32> %i.bk to <32 x i16>
  store <32 x i16> %interleaved.vec38, ptr %i.bd, align 2, !tbaa !131
  %index.next39 = add nuw i64 %index36, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next39, 32
  br i1 %i.bl, label %vector.body42, label %vector.body35, !llvm.loop !2913

vector.body42:                                    ; preds = %vector.body35, %vector.body42
  %index43 = phi i64 [ %index.next46, %vector.body42 ], [ 0, %vector.body35 ] ; 3 uses
  %i.bm = shl nuw nsw i64 %index43, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bm
  %wide.load44 = load <4 x i32>, ptr %i.bn, align 16 ; 2 uses
  %i.bo = and <4 x i32> %wide.load44, splat (i32 1431655765)
  %i.bp = lshr <4 x i32> %wide.load44, splat (i32 1)
  %i.bq = and <4 x i32> %i.bp, splat (i32 1431655765)
  %i.br = add nuw <4 x i32> %i.bq, %i.bo          ; 10 uses
  %i.bs = shl nuw nsw i64 %index43, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %i.bs
  %i.bu = lshr <4 x i32> %i.br, splat (i32 4)
  %i.bv = lshr <4 x i32> %i.br, splat (i32 26)
  %85 = and <4 x i32> %i.bv, splat (i32 3)
  %i.bw = lshr <4 x i32> %i.br, splat (i32 30)
  %86 = shufflevector <4 x i32> %i.br, <4 x i32> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %87 = and <8 x i32> %86, splat (i32 3)
  %88 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %89 = lshr <8 x i32> %88, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %90 = and <8 x i32> %89, splat (i32 3)
  %91 = sub nsw <8 x i32> %87, %90
  %92 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %93 = lshr <8 x i32> %92, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %94 = and <8 x i32> %93, splat (i32 3)
  %95 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %96 = lshr <8 x i32> %95, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %97 = and <8 x i32> %96, splat (i32 3)
  %98 = sub nsw <8 x i32> %94, %97
  %i.bx = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %99 = lshr <8 x i32> %i.bx, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %100 = and <8 x i32> %99, splat (i32 3)
  %101 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %102 = lshr <8 x i32> %101, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %103 = and <8 x i32> %102, splat (i32 3)
  %104 = sub nsw <8 x i32> %100, %103
  %105 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %106 = lshr <8 x i32> %105, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %107 = and <8 x i32> %106, splat (i32 3)
  %i.by = shufflevector <4 x i32> %85, <4 x i32> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %108 = sub nsw <8 x i32> %107, %i.by
  %i.bz = shufflevector <8 x i32> %91, <8 x i32> %98, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %109 = shufflevector <8 x i32> %104, <8 x i32> %108, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ca = shufflevector <16 x i32> %i.bz, <16 x i32> %109, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec45 = trunc nsw <32 x i32> %i.ca to <32 x i16>
  store <32 x i16> %interleaved.vec45, ptr %i.bt, align 2, !tbaa !131
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next46, 32
  br i1 %i.cb, label %mlk_poly_cbd_eta11024.exit26, label %vector.body42, !llvm.loop !2914

mlk_poly_cbd_eta11024.exit26:                     ; preds = %vector.body42
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.e, i64 noundef 512) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.f, i64 noundef 256) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem1024_polyvec_basemul_acc_montgomery_cached(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.b = and i32 %i.a, 32
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %vector.memcheck, label %mlk_polyvec_basemul_acc_montgomery_cached_k4_native.exit

mlk_polyvec_basemul_acc_montgomery_cached_k4_native.exit: ; preds = %bb.a
  tail call void @mlkem_polyvec_basemul_acc_montgomery_cached_k4_avx2_asm(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #46
  br label %mlk_polyvec_basemul_acc_montgomery_cached_c1024.exit

vector.memcheck:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1024 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1536 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1536 ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 512        ; 3 uses
  %i.j = getelementptr i8, ptr %1, i64 2048
  %i.k = getelementptr i8, ptr %3, i64 1024
  %i.l = getelementptr i8, ptr %2, i64 2048
  %bound0 = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %1, %i.i
  %found.conflict = and i1 %bound0, %bound1
  %bound020 = icmp ult ptr %0, %i.k
  %bound121 = icmp ult ptr %3, %i.i
  %found.conflict22 = and i1 %bound020, %bound121
  %conflict.rdx = or i1 %found.conflict, %found.conflict22
  %bound023 = icmp ult ptr %0, %i.l
  %bound124 = icmp ult ptr %2, %i.i
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  br i1 %conflict.rdx26, label %.preheader.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.m = shl nuw nsw i64 %index, 1                ; 6 uses
  %i.n = or disjoint i64 %i.m, 1                  ; 4 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 4 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.n
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -2
  %wide.vec = load <8 x i16>, ptr %i.q, align 2, !tbaa !131, !alias.scope !2922 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec27 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.r = sext <4 x i16> %strided.vec27 to <4 x i32> ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.o, align 2, !tbaa !131, !alias.scope !2923
  %i.s = sext <4 x i16> %wide.load to <4 x i32>
  %i.t = mul nsw <4 x i32> %i.s, %i.r
  %i.u = sext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.m
  %wide.vec28 = load <8 x i16>, ptr %i.v, align 2, !tbaa !131, !alias.scope !2924 ; 2 uses
  %strided.vec29 = shufflevector <8 x i16> %wide.vec28, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec30 = shufflevector <8 x i16> %wide.vec28, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.w = sext <4 x i16> %strided.vec29 to <4 x i32> ; 2 uses
  %i.x = mul nsw <4 x i32> %i.w, %i.u
  %i.y = add nsw <4 x i32> %i.x, %i.t
  %i.z = sext <4 x i16> %strided.vec30 to <4 x i32>
  %i.aa = mul nsw <4 x i32> %i.z, %i.u
  %i.ab = mul nsw <4 x i32> %i.w, %i.r
  %i.ac = add <4 x i32> %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.n
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -2
  %wide.vec31 = load <8 x i16>, ptr %i.ae, align 2, !tbaa !131, !alias.scope !2922 ; 2 uses
  %strided.vec32 = shufflevector <8 x i16> %wide.vec31, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec33 = shufflevector <8 x i16> %wide.vec31, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.af = sext <4 x i16> %strided.vec33 to <4 x i32> ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %wide.load34 = load <4 x i16>, ptr %i.ag, align 2, !tbaa !131, !alias.scope !2923
  %i.ah = sext <4 x i16> %wide.load34 to <4 x i32>
  %i.ai = mul nsw <4 x i32> %i.ah, %i.af
  %i.aj = add nsw <4 x i32> %i.y, %i.ai
  %i.ak = sext <4 x i16> %strided.vec32 to <4 x i32> ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.m
  %wide.vec35 = load <8 x i16>, ptr %i.al, align 2, !tbaa !131, !alias.scope !2924 ; 2 uses
  %strided.vec36 = shufflevector <8 x i16> %wide.vec35, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec37 = shufflevector <8 x i16> %wide.vec35, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.am = sext <4 x i16> %strided.vec36 to <4 x i32> ; 2 uses
  %i.an = mul nsw <4 x i32> %i.am, %i.ak
  %i.ao = add nsw <4 x i32> %i.aj, %i.an
  %i.ap = sext <4 x i16> %strided.vec37 to <4 x i32>
  %i.aq = mul nsw <4 x i32> %i.ap, %i.ak
  %i.ar = mul nsw <4 x i32> %i.am, %i.af
  %i.as = add <4 x i32> %i.ac, %i.ar
  %i.at = add <4 x i32> %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.n
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -2
  %wide.vec38 = load <8 x i16>, ptr %i.av, align 2, !tbaa !131, !alias.scope !2922 ; 2 uses
  %strided.vec39 = shufflevector <8 x i16> %wide.vec38, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec40 = shufflevector <8 x i16> %wide.vec38, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aw = sext <4 x i16> %strided.vec40 to <4 x i32> ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  %wide.load41 = load <4 x i16>, ptr %i.ax, align 2, !tbaa !131, !alias.scope !2923
  %i.ay = sext <4 x i16> %wide.load41 to <4 x i32>
  %i.az = mul nsw <4 x i32> %i.ay, %i.aw
  %i.ba = add nsw <4 x i32> %i.ao, %i.az
  %i.bb = sext <4 x i16> %strided.vec39 to <4 x i32> ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.m
  %wide.vec42 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !131, !alias.scope !2924 ; 2 uses
  %strided.vec43 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec44 = shufflevector <8 x i16> %wide.vec42, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bd = sext <4 x i16> %strided.vec43 to <4 x i32> ; 2 uses
  %i.be = mul nsw <4 x i32> %i.bd, %i.bb
  %i.bf = add nsw <4 x i32> %i.ba, %i.be
  %i.bg = sext <4 x i16> %strided.vec44 to <4 x i32>
  %i.bh = mul nsw <4 x i32> %i.bg, %i.bb
  %i.bi = mul nsw <4 x i32> %i.bd, %i.aw
  %i.bj = add <4 x i32> %i.at, %i.bi
  %i.bk = add <4 x i32> %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.n
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -2
  %wide.vec45 = load <8 x i16>, ptr %i.bm, align 2, !tbaa !131, !alias.scope !2922 ; 2 uses
  %strided.vec46 = shufflevector <8 x i16> %wide.vec45, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec47 = shufflevector <8 x i16> %wide.vec45, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bn = sext <4 x i16> %strided.vec47 to <4 x i32> ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 768
  %wide.load48 = load <4 x i16>, ptr %i.bo, align 2, !tbaa !131, !alias.scope !2923
  %i.bp = sext <4 x i16> %wide.load48 to <4 x i32>
  %i.bq = mul nsw <4 x i32> %i.bp, %i.bn
  %i.br = add nsw <4 x i32> %i.bf, %i.bq
  %i.bs = sext <4 x i16> %strided.vec46 to <4 x i32> ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.m
  %wide.vec49 = load <8 x i16>, ptr %i.bt, align 2, !tbaa !131, !alias.scope !2924 ; 2 uses
  %strided.vec50 = shufflevector <8 x i16> %wide.vec49, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec51 = shufflevector <8 x i16> %wide.vec49, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bu = sext <4 x i16> %strided.vec50 to <4 x i32> ; 2 uses
  %i.bv = mul nsw <4 x i32> %i.bu, %i.bs
  %i.bw = add nsw <4 x i32> %i.br, %i.bv          ; 2 uses
  %i.bx = sext <4 x i16> %strided.vec51 to <4 x i32>
  %i.by = mul nsw <4 x i32> %i.bx, %i.bs
  %i.bz = mul nsw <4 x i32> %i.bu, %i.bn
  %i.ca = add <4 x i32> %i.bk, %i.bz
  %i.cb = add <4 x i32> %i.ca, %i.by              ; 2 uses
  %i.cc = mul <4 x i32> %i.bw, splat (i32 -218038272)
  %i.cd = ashr exact <4 x i32> %i.cc, splat (i32 16)
  %i.ce = mul nsw <4 x i32> %i.cd, splat (i32 -3329)
  %i.cf = add <4 x i32> %i.ce, %i.bw
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.m
  %i.ch = mul <4 x i32> %i.cb, splat (i32 -218038272)
  %i.ci = ashr exact <4 x i32> %i.ch, splat (i32 16)
  %i.cj = mul nsw <4 x i32> %i.ci, splat (i32 -3329)
  %i.ck = add <4 x i32> %i.cj, %i.cb
  %i.cl = shufflevector <4 x i32> %i.cf, <4 x i32> %i.ck, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cm = lshr <8 x i32> %i.cl, splat (i32 16)
  %interleaved.vec = trunc nuw <8 x i32> %i.cm to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.cg, align 2, !tbaa !131, !alias.scope !2925, !noalias !2926
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, 128
  br i1 %i.cn, label %mlk_polyvec_basemul_acc_montgomery_cached_c1024.exit, label %vector.body, !llvm.loop !2920

.preheader.i:                                     ; preds = %vector.memcheck, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %vector.memcheck ] ; 3 uses
  %i.co = shl nuw nsw i64 %indvars.iv.i, 1        ; 10 uses
  %i.cp = or disjoint i64 %i.co, 1                ; 8 uses
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i ; 4 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !131
  %i.cs = sext i16 %i.cr to i32                   ; 2 uses
  %i.ct = load i16, ptr %invariant.gep.i, align 2, !tbaa !131
  %i.cu = sext i16 %i.ct to i32
  %i.cv = mul nsw i32 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.co
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !131
  %i.cy = sext i16 %i.cx to i32                   ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.co
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !131
  %i.db = sext i16 %i.da to i32                   ; 2 uses
  %i.dc = mul nsw i32 %i.db, %i.cy
  %i.dd = add nsw i32 %i.dc, %i.cv
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cp
  %i.df = load i16, ptr %i.de, align 2, !tbaa !131
  %i.dg = sext i16 %i.df to i32
  %i.dh = mul nsw i32 %i.dg, %i.cy
  %i.di = mul nsw i32 %i.db, %i.cs
  %i.dj = add i32 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cp
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !131
  %i.dm = sext i16 %i.dl to i32                   ; 2 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 256
  %i.dn = load i16, ptr %gep.1.i, align 2, !tbaa !131
  %i.do = sext i16 %i.dn to i32
  %i.dp = mul nsw i32 %i.do, %i.dm
  %i.dq = add nsw i32 %i.dd, %i.dp
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.co
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !131
end_hunk_3
begin_hunk_4_@mlkem1024_polyvec_tobytes:bb.a
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !76
  %indvars.iv.next.i.i.1.1 = add nuw nsw i64 %indvars.iv.i.i.1, 2 ; 2 uses
  %exitcond.not.i.i.1.1 = icmp eq i64 %indvars.iv.next.i.i.1.1, 128
  br i1 %exitcond.not.i.i.1.1, label %mlkem_poly_tobytes.exit.1, label %mlk_poly_tobytes_native.exit.i.1, !llvm.loop !42

mlkem_poly_tobytes.exit.1:                        ; preds = %mlk_poly_tobytes_native.exit.i.1, %mlk_poly_tobytes_native.exit.thread.i.1
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.br = and i32 %i.bq, 32
  %.not.i.i.2 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i.2, label %mlk_poly_tobytes_native.exit.i.2, label %mlk_poly_tobytes_native.exit.thread.i.2

mlk_poly_tobytes_native.exit.thread.i.2:          ; preds = %mlkem_poly_tobytes.exit.1
  tail call void @mlkem_ntttobytes_avx2_asm(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp) #46
  br label %mlkem_poly_tobytes.exit.2

mlk_poly_tobytes_native.exit.i.2:                 ; preds = %mlkem_poly_tobytes.exit.1, %mlk_poly_tobytes_native.exit.i.2
  %indvars.iv.i.i.2 = phi i64 [ %indvars.iv.next.i.i.2.1, %mlk_poly_tobytes_native.exit.i.2 ], [ 0, %mlkem_poly_tobytes.exit.1 ] ; 4 uses
  %.idx.i.i.2 = shl nuw nsw i64 %indvars.iv.i.i.2, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i.2 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !131 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !131 ; 2 uses
  %i.bw = trunc i16 %i.bt to i8
  %i.bx = mul nuw nsw i64 %indvars.iv.i.i.2, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bx ; 3 uses
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !76
  %i.bz = lshr i16 %i.bt, 8
  %i.ca = shl i16 %i.bv, 4
  %i.cb = or i16 %i.ca, %i.bz
  %i.cc = trunc i16 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !76
  %i.ce = lshr i16 %i.bv, 4
  %i.cf = trunc i16 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !76
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i.2, 1 ; 2 uses
  %.idx.i.i.2.1 = shl nuw nsw i64 %indvars.iv.next.i.i.2, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i.2.1 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !131 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !131 ; 2 uses
  %i.cl = trunc i16 %i.ci to i8
  %i.cm = mul nuw nsw i64 %indvars.iv.next.i.i.2, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cm ; 3 uses
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !76
  %i.co = lshr i16 %i.ci, 8
  %i.cp = shl i16 %i.ck, 4
  %i.cq = or i16 %i.cp, %i.co
  %i.cr = trunc i16 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !76
  %i.ct = lshr i16 %i.ck, 4
  %i.cu = trunc i16 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !76
  %indvars.iv.next.i.i.2.1 = add nuw nsw i64 %indvars.iv.i.i.2, 2 ; 2 uses
  %exitcond.not.i.i.2.1 = icmp eq i64 %indvars.iv.next.i.i.2.1, 128
  br i1 %exitcond.not.i.i.2.1, label %mlkem_poly_tobytes.exit.2, label %mlk_poly_tobytes_native.exit.i.2, !llvm.loop !42

mlkem_poly_tobytes.exit.2:                        ; preds = %mlk_poly_tobytes_native.exit.i.2, %mlk_poly_tobytes_native.exit.thread.i.2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 1536 ; 3 uses
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  %i.cz = and i32 %i.cy, 32
  %.not.i.i.3 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.3, label %mlk_poly_tobytes_native.exit.i.3, label %mlk_poly_tobytes_native.exit.thread.i.3

mlk_poly_tobytes_native.exit.thread.i.3:          ; preds = %mlkem_poly_tobytes.exit.2
  tail call void @mlkem_ntttobytes_avx2_asm(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cx) #46
  br label %mlkem_poly_tobytes.exit.3

mlk_poly_tobytes_native.exit.i.3:                 ; preds = %mlkem_poly_tobytes.exit.2, %mlk_poly_tobytes_native.exit.i.3
  %indvars.iv.i.i.3 = phi i64 [ %indvars.iv.next.i.i.3.1, %mlk_poly_tobytes_native.exit.i.3 ], [ 0, %mlkem_poly_tobytes.exit.2 ] ; 4 uses
  %.idx.i.i.3 = shl nuw nsw i64 %indvars.iv.i.i.3, 2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i.i.3 ; 2 uses
  %i.db = load i16, ptr %i.da, align 2, !tbaa !131 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !131 ; 2 uses
  %i.de = trunc i16 %i.db to i8
  %i.df = mul nuw nsw i64 %indvars.iv.i.i.3, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.df ; 3 uses
  store i8 %i.de, ptr %i.dg, align 1, !tbaa !76
  %i.dh = lshr i16 %i.db, 8
  %i.di = shl i16 %i.dd, 4
  %i.dj = or i16 %i.di, %i.dh
  %i.dk = trunc i16 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !76
  %i.dm = lshr i16 %i.dd, 4
  %i.dn = trunc i16 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !76
  %indvars.iv.next.i.i.3 = or disjoint i64 %indvars.iv.i.i.3, 1 ; 2 uses
  %.idx.i.i.3.1 = shl nuw nsw i64 %indvars.iv.next.i.i.3, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx.i.i.3.1 ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !131 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !131 ; 2 uses
  %i.dt = trunc i16 %i.dq to i8
  %i.du = mul nuw nsw i64 %indvars.iv.next.i.i.3, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.du ; 3 uses
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !76
  %i.dw = lshr i16 %i.dq, 8
  %i.dx = shl i16 %i.ds, 4
  %i.dy = or i16 %i.dx, %i.dw
  %i.dz = trunc i16 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !76
  %i.eb = lshr i16 %i.ds, 4
  %i.ec = trunc i16 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !76
  %indvars.iv.next.i.i.3.1 = add nuw nsw i64 %indvars.iv.i.i.3, 2 ; 2 uses
  %exitcond.not.i.i.3.1 = icmp eq i64 %indvars.iv.next.i.i.3.1, 128
  br i1 %exitcond.not.i.i.3.1, label %mlkem_poly_tobytes.exit.3, label %mlk_poly_tobytes_native.exit.i.3, !llvm.loop !42

mlkem_poly_tobytes.exit.3:                        ; preds = %mlk_poly_tobytes_native.exit.i.3, %mlk_poly_tobytes_native.exit.thread.i.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mlkem1024_indcpa_enc(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [128 x i8], align 32              ; 5 uses
  %i.b = alloca [33 x i8], align 32               ; 6 uses
  %i.c = alloca [32 x i8], align 32               ; 5 uses
  %5 = alloca [1 x %struct.mlk_polymat1024], align 32 ; 8 uses
  %6 = alloca [1 x %struct.mlk_polyvec1024], align 32 ; 14 uses
  %7 = alloca [1 x %struct.mlk_polyvec1024], align 32 ; 5 uses
  %8 = alloca [1 x %struct.mlk_polyvec1024], align 32 ; 132 uses
  %9 = alloca [1 x %struct.mlk_polyvec1024], align 32 ; 136 uses
  %10 = alloca [1 x %struct.mlk_poly], align 32   ; 75 uses
  %11 = alloca [1 x %struct.mlk_poly], align 32   ; 36 uses
  %12 = alloca [1 x %struct.mlk_poly], align 32   ; 36 uses
  %13 = alloca [1 x %struct.mlk_polyvec_mulcache1024], align 32 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  call fastcc void @mlkem1024_polyvec_frombytes(ptr noundef nonnull %7, ptr noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  call fastcc void @mlkem_poly_frommsg(ptr noundef %11, ptr noundef %1)
  call fastcc void @mlkem1024_gen_matrix(ptr noundef %5, ptr noundef %i.c, i32 noundef 1)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 512 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 1024 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 1536 ; 2 uses
  call fastcc void @mlkem1024_poly_getnoise_eta1_4x(ptr noundef nonnull %6, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull readonly %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext 3)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 512 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 1024 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 1536 ; 2 uses
  call fastcc void @mlkem1024_poly_getnoise_eta1_4x(ptr noundef nonnull %8, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef nonnull readonly %3, i8 noundef zeroext 4, i8 noundef zeroext 5, i8 noundef zeroext 6, i8 noundef zeroext 7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 8, ptr %i.k, align 32, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 216
  store i64 0, ptr %i.l, align 8, !tbaa !444
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 393
  store i8 0, ptr %i.m, align 1, !tbaa !445
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i64 136, ptr %i.n, align 8, !tbaa !446
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i64 0, ptr %i.o, align 8, !tbaa !447
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 392
  store i8 31, ptr %i.p, align 8, !tbaa !448
  %i.q = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.b, i64 noundef 33)
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %mlk_shake256.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = call i32 @SHAKE_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %4, i64 noundef 128) ; 0 uses
  br label %mlk_shake256.exit.i.i

mlk_shake256.exit.i.i:                            ; preds = %bb.b, %bb.a
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %mlk_shake256.exit.i.i
  %index = phi i64 [ 0, %mlk_shake256.exit.i.i ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = shl nuw nsw i64 %index, 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %wide.load = load <4 x i32>, ptr %i.u, align 16 ; 2 uses
  %i.v = and <4 x i32> %wide.load, splat (i32 1431655765)
  %i.w = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.x = and <4 x i32> %i.w, splat (i32 1431655765)
  %i.y = add nuw <4 x i32> %i.x, %i.v             ; 10 uses
  %i.z = shl nuw nsw i64 %index, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 %i.z
  %i.ab = lshr <4 x i32> %i.y, splat (i32 4)
  %i.ac = lshr <4 x i32> %i.y, splat (i32 26)
  %14 = and <4 x i32> %i.ac, splat (i32 3)
  %i.ad = lshr <4 x i32> %i.y, splat (i32 30)
  %15 = shufflevector <4 x i32> %i.y, <4 x i32> %i.ab, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %16 = and <8 x i32> %15, splat (i32 3)
  %17 = shufflevector <4 x i32> %i.y, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %18 = lshr <8 x i32> %17, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6>
  %19 = and <8 x i32> %18, splat (i32 3)
  %20 = sub nsw <8 x i32> %16, %19
  %21 = shufflevector <4 x i32> %i.y, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %22 = lshr <8 x i32> %21, <i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %23 = and <8 x i32> %22, splat (i32 3)
  %24 = shufflevector <4 x i32> %i.y, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %25 = lshr <8 x i32> %24, <i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %26 = and <8 x i32> %25, splat (i32 3)
  %27 = sub nsw <8 x i32> %23, %26
  %i.ae = shufflevector <4 x i32> %i.y, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %28 = lshr <8 x i32> %i.ae, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20>
  %29 = and <8 x i32> %28, splat (i32 3)
  %30 = shufflevector <4 x i32> %i.y, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %31 = lshr <8 x i32> %30, <i32 18, i32 18, i32 18, i32 18, i32 22, i32 22, i32 22, i32 22>
  %32 = and <8 x i32> %31, splat (i32 3)
  %33 = sub nsw <8 x i32> %29, %32
  %34 = shufflevector <4 x i32> %i.y, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %35 = lshr <8 x i32> %34, <i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %36 = and <8 x i32> %35, splat (i32 3)
  %i.af = shufflevector <4 x i32> %14, <4 x i32> %i.ad, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %37 = sub nsw <8 x i32> %36, %i.af
  %i.ag = shufflevector <8 x i32> %20, <8 x i32> %27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %38 = shufflevector <8 x i32> %33, <8 x i32> %37, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = shufflevector <16 x i32> %i.ag, <16 x i32> %38, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec = trunc nsw <32 x i32> %i.ah to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %i.aa, align 32, !tbaa !131
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 32
  br i1 %i.ai, label %mlk_enc_getnoise_eta1_eta21024.exit, label %vector.body, !llvm.loop !2927

mlk_enc_getnoise_eta1_eta21024.exit:              ; preds = %vector.body
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 128) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 33) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call fastcc void @mlkem_poly_ntt(ptr noundef nonnull %6)
  call fastcc void @mlkem_poly_ntt(ptr noundef %i.e)
  call fastcc void @mlkem_poly_ntt(ptr noundef %i.f)
  call fastcc void @mlkem_poly_ntt(ptr noundef %i.g)
  call fastcc void @mlkem1024_polyvec_mulcache_compute(ptr noundef %13, ptr noundef %6)
  call fastcc void @mlkem1024_polyvec_basemul_acc_montgomery_cached(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %13)
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 512 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 2048
  call fastcc void @mlkem1024_polyvec_basemul_acc_montgomery_cached(ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef nonnull %6, ptr noundef nonnull %13)
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 1024 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 4096
  call fastcc void @mlkem1024_polyvec_basemul_acc_montgomery_cached(ptr noundef %i.al, ptr noundef %i.am, ptr noundef nonnull %6, ptr noundef nonnull %13)
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 1536 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 6144
  call fastcc void @mlkem1024_polyvec_basemul_acc_montgomery_cached(ptr noundef %i.an, ptr noundef %i.ao, ptr noundef nonnull %6, ptr noundef nonnull %13)
  call fastcc void @mlkem1024_polyvec_basemul_acc_montgomery_cached(ptr noundef %10, ptr noundef %7, ptr noundef %6, ptr noundef %13)
  call fastcc void @mlkem_poly_invntt_tomont(ptr noundef nonnull %9)
  call fastcc void @mlkem_poly_invntt_tomont(ptr noundef %i.aj)
  call fastcc void @mlkem_poly_invntt_tomont(ptr noundef %i.al)
  call fastcc void @mlkem_poly_invntt_tomont(ptr noundef %i.an)
  call fastcc void @mlkem_poly_invntt_tomont(ptr noundef %10)
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %wide.load4 = load <8 x i16>, ptr %9, align 32, !tbaa !131
  %wide.load5 = load <8 x i16>, ptr %i.ap, align 16, !tbaa !131
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %wide.load6 = load <8 x i16>, ptr %8, align 32, !tbaa !131
  %wide.load7 = load <8 x i16>, ptr %i.aq, align 16, !tbaa !131
  %i.ar = add <8 x i16> %wide.load6, %wide.load4
  %i.as = add <8 x i16> %wide.load7, %wide.load5
  store <8 x i16> %i.ar, ptr %9, align 32, !tbaa !131
  store <8 x i16> %i.as, ptr %i.ap, align 16, !tbaa !131
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %wide.load4.1 = load <8 x i16>, ptr %i.at, align 32, !tbaa !131
  %wide.load5.1 = load <8 x i16>, ptr %i.au, align 16, !tbaa !131
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 48
  %wide.load6.1 = load <8 x i16>, ptr %i.av, align 32, !tbaa !131
  %wide.load7.1 = load <8 x i16>, ptr %i.aw, align 16, !tbaa !131
  %i.ax = add <8 x i16> %wide.load6.1, %wide.load4.1
  %i.ay = add <8 x i16> %wide.load7.1, %wide.load5.1
  store <8 x i16> %i.ax, ptr %i.at, align 32, !tbaa !131
  store <8 x i16> %i.ay, ptr %i.au, align 16, !tbaa !131
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %wide.load4.2 = load <8 x i16>, ptr %i.az, align 32, !tbaa !131
  %wide.load5.2 = load <8 x i16>, ptr %i.ba, align 16, !tbaa !131
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 80
  %wide.load6.2 = load <8 x i16>, ptr %i.bb, align 32, !tbaa !131
  %wide.load7.2 = load <8 x i16>, ptr %i.bc, align 16, !tbaa !131
  %i.bd = add <8 x i16> %wide.load6.2, %wide.load4.2
  %i.be = add <8 x i16> %wide.load7.2, %wide.load5.2
  store <8 x i16> %i.bd, ptr %i.az, align 32, !tbaa !131
  store <8 x i16> %i.be, ptr %i.ba, align 16, !tbaa !131
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %wide.load4.3 = load <8 x i16>, ptr %i.bf, align 32, !tbaa !131
  %wide.load5.3 = load <8 x i16>, ptr %i.bg, align 16, !tbaa !131
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 112
  %wide.load6.3 = load <8 x i16>, ptr %i.bh, align 32, !tbaa !131
  %wide.load7.3 = load <8 x i16>, ptr %i.bi, align 16, !tbaa !131
  %i.bj = add <8 x i16> %wide.load6.3, %wide.load4.3
  %i.bk = add <8 x i16> %wide.load7.3, %wide.load5.3
  store <8 x i16> %i.bj, ptr %i.bf, align 32, !tbaa !131
  store <8 x i16> %i.bk, ptr %i.bg, align 16, !tbaa !131
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %wide.load4.4 = load <8 x i16>, ptr %i.bl, align 32, !tbaa !131
  %wide.load5.4 = load <8 x i16>, ptr %i.bm, align 16, !tbaa !131
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 144
  %wide.load6.4 = load <8 x i16>, ptr %i.bn, align 32, !tbaa !131
  %wide.load7.4 = load <8 x i16>, ptr %i.bo, align 16, !tbaa !131
  %i.bp = add <8 x i16> %wide.load6.4, %wide.load4.4
  %i.bq = add <8 x i16> %wide.load7.4, %wide.load5.4
  store <8 x i16> %i.bp, ptr %i.bl, align 32, !tbaa !131
  store <8 x i16> %i.bq, ptr %i.bm, align 16, !tbaa !131
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 176 ; 2 uses
  %wide.load4.5 = load <8 x i16>, ptr %i.br, align 32, !tbaa !131
  %wide.load5.5 = load <8 x i16>, ptr %i.bs, align 16, !tbaa !131
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 176
  %wide.load6.5 = load <8 x i16>, ptr %i.bt, align 32, !tbaa !131
  %wide.load7.5 = load <8 x i16>, ptr %i.bu, align 16, !tbaa !131
  %i.bv = add <8 x i16> %wide.load6.5, %wide.load4.5
  %i.bw = add <8 x i16> %wide.load7.5, %wide.load5.5
  store <8 x i16> %i.bv, ptr %i.br, align 32, !tbaa !131
  store <8 x i16> %i.bw, ptr %i.bs, align 16, !tbaa !131
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 2 uses
  %wide.load4.6 = load <8 x i16>, ptr %i.bx, align 32, !tbaa !131
  %wide.load5.6 = load <8 x i16>, ptr %i.by, align 16, !tbaa !131
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 208
  %wide.load6.6 = load <8 x i16>, ptr %i.bz, align 32, !tbaa !131
  %wide.load7.6 = load <8 x i16>, ptr %i.ca, align 16, !tbaa !131
  %i.cb = add <8 x i16> %wide.load6.6, %wide.load4.6
  %i.cc = add <8 x i16> %wide.load7.6, %wide.load5.6
  store <8 x i16> %i.cb, ptr %i.bx, align 32, !tbaa !131
  store <8 x i16> %i.cc, ptr %i.by, align 16, !tbaa !131
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 224 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 240 ; 2 uses
  %wide.load4.7 = load <8 x i16>, ptr %i.cd, align 32, !tbaa !131
  %wide.load5.7 = load <8 x i16>, ptr %i.ce, align 16, !tbaa !131
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 240
  %wide.load6.7 = load <8 x i16>, ptr %i.cf, align 32, !tbaa !131
  %wide.load7.7 = load <8 x i16>, ptr %i.cg, align 16, !tbaa !131
  %i.ch = add <8 x i16> %wide.load6.7, %wide.load4.7
  %i.ci = add <8 x i16> %wide.load7.7, %wide.load5.7
  store <8 x i16> %i.ch, ptr %i.cd, align 32, !tbaa !131
  store <8 x i16> %i.ci, ptr %i.ce, align 16, !tbaa !131
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 256 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 272 ; 2 uses
  %wide.load4.8 = load <8 x i16>, ptr %i.cj, align 32, !tbaa !131
  %wide.load5.8 = load <8 x i16>, ptr %i.ck, align 16, !tbaa !131
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 256
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 272
  %wide.load6.8 = load <8 x i16>, ptr %i.cl, align 32, !tbaa !131
  %wide.load7.8 = load <8 x i16>, ptr %i.cm, align 16, !tbaa !131
  %i.cn = add <8 x i16> %wide.load6.8, %wide.load4.8
  %i.co = add <8 x i16> %wide.load7.8, %wide.load5.8
  store <8 x i16> %i.cn, ptr %i.cj, align 32, !tbaa !131
  store <8 x i16> %i.co, ptr %i.ck, align 16, !tbaa !131
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 288 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 304 ; 2 uses
  %wide.load4.9 = load <8 x i16>, ptr %i.cp, align 32, !tbaa !131
  %wide.load5.9 = load <8 x i16>, ptr %i.cq, align 16, !tbaa !131
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 288
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 304
  %wide.load6.9 = load <8 x i16>, ptr %i.cr, align 32, !tbaa !131
  %wide.load7.9 = load <8 x i16>, ptr %i.cs, align 16, !tbaa !131
  %i.ct = add <8 x i16> %wide.load6.9, %wide.load4.9
  %i.cu = add <8 x i16> %wide.load7.9, %wide.load5.9
  store <8 x i16> %i.ct, ptr %i.cp, align 32, !tbaa !131
  store <8 x i16> %i.cu, ptr %i.cq, align 16, !tbaa !131
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 320 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 336 ; 2 uses
  %wide.load4.10 = load <8 x i16>, ptr %i.cv, align 32, !tbaa !131
  %wide.load5.10 = load <8 x i16>, ptr %i.cw, align 16, !tbaa !131
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 336
  %wide.load6.10 = load <8 x i16>, ptr %i.cx, align 32, !tbaa !131
  %wide.load7.10 = load <8 x i16>, ptr %i.cy, align 16, !tbaa !131
  %i.cz = add <8 x i16> %wide.load6.10, %wide.load4.10
  %i.da = add <8 x i16> %wide.load7.10, %wide.load5.10
  store <8 x i16> %i.cz, ptr %i.cv, align 32, !tbaa !131
  store <8 x i16> %i.da, ptr %i.cw, align 16, !tbaa !131
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 352 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 368 ; 2 uses
  %wide.load4.11 = load <8 x i16>, ptr %i.db, align 32, !tbaa !131
  %wide.load5.11 = load <8 x i16>, ptr %i.dc, align 16, !tbaa !131
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 352
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 368
  %wide.load6.11 = load <8 x i16>, ptr %i.dd, align 32, !tbaa !131
  %wide.load7.11 = load <8 x i16>, ptr %i.de, align 16, !tbaa !131
  %i.df = add <8 x i16> %wide.load6.11, %wide.load4.11
  %i.dg = add <8 x i16> %wide.load7.11, %wide.load5.11
  store <8 x i16> %i.df, ptr %i.db, align 32, !tbaa !131
  store <8 x i16> %i.dg, ptr %i.dc, align 16, !tbaa !131
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 384 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 400 ; 2 uses
  %wide.load4.12 = load <8 x i16>, ptr %i.dh, align 32, !tbaa !131
  %wide.load5.12 = load <8 x i16>, ptr %i.di, align 16, !tbaa !131
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 384
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 400
  %wide.load6.12 = load <8 x i16>, ptr %i.dj, align 32, !tbaa !131
  %wide.load7.12 = load <8 x i16>, ptr %i.dk, align 16, !tbaa !131
  %i.dl = add <8 x i16> %wide.load6.12, %wide.load4.12
  %i.dm = add <8 x i16> %wide.load7.12, %wide.load5.12
  store <8 x i16> %i.dl, ptr %i.dh, align 32, !tbaa !131
  store <8 x i16> %i.dm, ptr %i.di, align 16, !tbaa !131
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 416 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 432 ; 2 uses
  %wide.load4.13 = load <8 x i16>, ptr %i.dn, align 32, !tbaa !131
  %wide.load5.13 = load <8 x i16>, ptr %i.do, align 16, !tbaa !131
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 416
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 432
  %wide.load6.13 = load <8 x i16>, ptr %i.dp, align 32, !tbaa !131
  %wide.load7.13 = load <8 x i16>, ptr %i.dq, align 16, !tbaa !131
  %i.dr = add <8 x i16> %wide.load6.13, %wide.load4.13
  %i.ds = add <8 x i16> %wide.load7.13, %wide.load5.13
  store <8 x i16> %i.dr, ptr %i.dn, align 32, !tbaa !131
  store <8 x i16> %i.ds, ptr %i.do, align 16, !tbaa !131
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 448 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 464 ; 2 uses
end_hunk_4
