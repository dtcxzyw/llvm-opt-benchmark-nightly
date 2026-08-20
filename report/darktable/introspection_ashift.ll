inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_homography:bb.a
  %i.dg = fadd reassoc nsz arcp contract afn <2 x float> %i.da, %i.cu ; 2 uses
  %i.dh = shufflevector <2 x float> %i.cq, <2 x float> %i.cu, <2 x i32> <i32 0, i32 3>
  %i.di = fadd reassoc nsz arcp contract afn <2 x float> %i.de, %i.dh
  %i.dj = fmul reassoc nsz arcp contract afn float %i.co, %4
  %i.dk = fadd reassoc nsz arcp contract afn float %i.dj, %i.cw ; 2 uses
  %i.dl = fadd reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cq
  %i.dm = fmul reassoc nsz arcp contract afn <2 x float> %i.dl, zeroinitializer ; 3 uses
  %i.dn = fadd reassoc nsz arcp contract afn float %i.cw, %i.co
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, 0.000000e+00
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, 1.000000e+00 ; 3 uses
  %i.dq = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.f, i64 1
  %i.ds = fmul reassoc nsz arcp contract afn <2 x float> %i.dr, <float 5.000000e-01, float 2.000000e+00>
  %i.dt = insertelement <2 x float> poison, float %i.c, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.l, i64 1
  %i.dv = fdiv reassoc nsz arcp contract afn <2 x float> %i.ds, %i.du ; 4 uses
  %i.dw = shufflevector <2 x float> %i.dg, <2 x float> %i.df, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dx = insertelement <2 x float> poison, float %i.f, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul reassoc nsz arcp contract afn <2 x float> %i.dw, %i.dy
  %i.ea = fmul reassoc nsz arcp contract afn <2 x float> %i.di, zeroinitializer ; 2 uses
  %i.eb = fadd reassoc nsz arcp contract afn <2 x float> %i.dz, %i.dm
  %i.ec = fadd reassoc nsz arcp contract afn <2 x float> %i.eb, %i.ea ; 3 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 1
  store float %i.ed, ptr %i.bd, align 4, !tbaa !14, !alias.scope !87, !noalias !90
  %i.ee = fmul reassoc nsz arcp contract afn float %i.dc, %i.f
  %i.ef = fmul reassoc nsz arcp contract afn float %i.dk, 0.000000e+00 ; 2 uses
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ef, %i.ee
  %i.eh = fmul reassoc nsz arcp contract afn float %i.dp, 0.000000e+00
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eg, %i.eh ; 3 uses
  store float %i.ei, ptr %i.bg, align 8, !tbaa !14, !alias.scope !87, !noalias !90
  %i.ej = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ek = fmul reassoc nsz arcp contract afn <2 x float> %i.df, %i.ej
  %i.el = fmul reassoc nsz arcp contract afn <2 x float> %i.dg, %i.dv
  %i.em = fadd reassoc nsz arcp contract afn <2 x float> %i.el, %i.ek
  %i.en = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = fmul reassoc nsz arcp contract afn <2 x float> %i.dm, %i.eo
  %i.eq = fadd reassoc nsz arcp contract afn <2 x float> %i.em, %i.ep ; 3 uses
  %i.er = extractelement <2 x float> %i.eq, i64 0
  store float %i.er, ptr %i.bh, align 4, !tbaa !14, !alias.scope !87, !noalias !90
  %i.es = extractelement <2 x float> %i.dv, i64 0
  %i.et = fmul reassoc nsz arcp contract afn float %i.dc, %i.es
  %i.eu = extractelement <2 x float> %i.dv, i64 1
  %i.ev = fmul reassoc nsz arcp contract afn float %i.dk, %i.eu
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ev, %i.et
  %i.ex = fmul reassoc nsz arcp contract afn float %i.dp, %i.bq
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ew, %i.ex ; 2 uses
  %i.ez = insertelement <2 x float> poison, float %i.br, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul reassoc nsz arcp contract afn <2 x float> %i.dw, %i.fa
  %i.fc = fadd reassoc nsz arcp contract afn <2 x float> %i.fb, %i.dm
  %i.fd = fadd reassoc nsz arcp contract afn <2 x float> %i.fc, %i.ea ; 3 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %i.dc, %i.br
  %i.ff = fadd reassoc nsz arcp contract afn float %i.ef, %i.fe
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ff, %i.dp ; 3 uses
  %i.fh = fmul reassoc nsz arcp contract afn float %i.ey, 0.000000e+00 ; 2 uses
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, %i.ei
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fg, 0.000000e+00
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fi, %i.fj ; 2 uses
  %i.fl = fmul reassoc nsz arcp contract afn <2 x float> %i.ec, zeroinitializer ; 2 uses
  %i.fm = insertelement <2 x float> poison, float %i.x, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = fmul reassoc nsz arcp contract afn <2 x float> %i.fn, %i.eq
  %i.fp = fadd reassoc nsz arcp contract afn <2 x float> %i.fo, %i.fl
  %i.fq = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fmul reassoc nsz arcp contract afn <2 x float> %i.fr, %i.fd
  %i.ft = fadd reassoc nsz arcp contract afn <2 x float> %i.fp, %i.fs ; 2 uses
  %i.fu = fmul reassoc nsz arcp contract afn float %i.ei, 0.000000e+00 ; 2 uses
  %i.fv = fmul reassoc nsz arcp contract afn float %i.x, %i.ey
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fv, %i.fu
  %i.fx = fmul reassoc nsz arcp contract afn float %i.bt, %i.fg
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fw, %i.fx ; 2 uses
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fu, %i.fg
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.fh ; 2 uses
  %i.gb = fmul reassoc nsz arcp contract afn <2 x float> %i.eq, zeroinitializer ; 2 uses
  %i.gc = fadd reassoc nsz arcp contract afn <2 x float> %i.gb, %i.ec
  %i.gd = fmul reassoc nsz arcp contract afn <2 x float> %i.fd, zeroinitializer
  %i.ge = fadd reassoc nsz arcp contract afn <2 x float> %i.gc, %i.gd ; 2 uses
  %i.gf = fadd reassoc nsz arcp contract afn <2 x float> %i.fl, %i.fd
  %i.gg = fadd reassoc nsz arcp contract afn <2 x float> %i.gf, %i.gb ; 3 uses
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.ge, zeroinitializer ; 3 uses
  %i.gi = fmul reassoc nsz arcp contract afn <2 x float> %i.gg, zeroinitializer ; 2 uses
  %i.gj = fadd reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gh
  %i.gk = fadd reassoc nsz arcp contract afn <2 x float> %i.gj, %i.ft ; 5 uses
  %i.gl = extractelement <2 x float> %i.gk, i64 0
  store float %i.gl, ptr %i.a, align 64, !tbaa !14, !alias.scope !93, !noalias !96
  %i.gm = fmul reassoc nsz arcp contract afn float %i.fk, 0.000000e+00 ; 2 uses
  %i.gn = fmul reassoc nsz arcp contract afn float %i.ga, 0.000000e+00 ; 2 uses
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, %i.gm
  %i.gp = fadd reassoc nsz arcp contract afn float %i.go, %i.fy ; 3 uses
  %i.gq = fmul reassoc nsz arcp contract afn <2 x float> %i.ft, zeroinitializer ; 2 uses
  %i.gr = fmul reassoc nsz arcp contract afn float %i.fy, 0.000000e+00 ; 2 uses
  %i.gs = shufflevector <2 x float> %i.gh, <2 x float> %i.gi, <4 x i32> <i32 0, i32 3, i32 poison, i32 2>
  %i.gt = insertelement <4 x float> %i.gs, float %i.gn, i64 2
  %i.gu = shufflevector <2 x float> %i.gg, <2 x float> %i.ge, <4 x i32> <i32 0, i32 3, i32 poison, i32 2>
  %i.gv = insertelement <4 x float> %i.gu, float %i.fk, i64 2
  %i.gw = fadd reassoc nsz arcp contract afn <4 x float> %i.gt, %i.gv ; 2 uses
  %i.gx = shufflevector <2 x float> %i.gq, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.gy = insertelement <3 x float> poison, float %i.gr, i64 2
  %i.gz = shufflevector <3 x float> %i.gx, <3 x float> %i.gy, <4 x i32> <i32 0, i32 1, i32 5, i32 0> ; 2 uses
  %i.ha = fadd reassoc nsz arcp contract afn <4 x float> %i.gw, %i.gz ; 4 uses
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x float> %i.gh, %i.gg
  %i.hb = fadd reassoc nsz arcp contract afn float %i.gm, %i.ga
  %i.hc = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 0>
  %i.hd = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.he = shufflevector <4 x float> %i.hc, <4 x float> %i.hd, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.hf = insertelement <4 x float> %i.he, float %i.hb, i64 2 ; 2 uses
  %i.hg = fadd reassoc nsz arcp contract afn <4 x float> %i.hf, %i.gz
  %.scalar = fdiv reassoc nsz arcp contract afn float %i.cb, %i.ae
  %i.hh = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.scalar, i64 1
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.hj = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 poison>
  %i.hk = shufflevector <2 x float> %i.gk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hl = shufflevector <2 x float> %i.gk, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.hm = shufflevector <4 x float> %i.hj, <4 x float> %i.hl, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.hn = insertelement <4 x float> poison, float %i.gr, i64 2
  %i.ho = insertelement <4 x float> %i.hn, float %i.y, i64 3
  %i.hp = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> %i.ho, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.hr = fmul reassoc nsz arcp contract afn <4 x float> %i.hm, %i.hq ; 2 uses
  %i.hs = fadd reassoc nsz arcp contract afn <4 x float> %i.hm, %i.hq ; 3 uses
  %i.ht = shufflevector <4 x float> %i.hr, <4 x float> %i.hs, <4 x i32> <i32 3, i32 5, i32 6, i32 4>
  %i.hu = fmul reassoc nsz arcp contract afn <4 x float> %i.ha, zeroinitializer ; 2 uses
  %i.hv = shufflevector <4 x float> %i.hs, <4 x float> %i.ha, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.hw = insertelement <4 x float> %i.hv, float %i.gp, i64 2
  %i.hx = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hy = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.hx, <4 x i32> <i32 0, i32 4, i32 5, i32 4>
  %i.hz = fmul reassoc nsz arcp contract afn <4 x float> %i.hw, %i.hy ; 2 uses
  %i.ia = shufflevector <4 x float> %i.ha, <4 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 2>
  %i.ib = shufflevector <2 x float> %i.gk, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ic = shufflevector <3 x float> %i.ib, <3 x float> %i.ia, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %i.id = insertelement <4 x float> poison, float %i.cc, i64 0 ; 2 uses
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> %i.hx, <4 x i32> <i32 0, i32 5, i32 4, i32 5>
  %i.if = fmul reassoc nsz arcp contract afn <4 x float> %i.ic, %i.ie ; 2 uses
  %i.ig = fmul reassoc nsz arcp contract afn <4 x float> %i.hg, %i.hi
  %i.ih = fmul reassoc nsz arcp contract afn float %i.gp, %i.y
  %i.ii = extractelement <2 x float> %i.gk, i64 1
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ii, %i.y
  %i.ik = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> %i.hk, <4 x i32> <i32 0, i32 5, i32 poison, i32 4>
  %i.im = insertelement <4 x float> %i.il, float %i.gp, i64 2
  %i.in = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.id, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.io = fmul reassoc nsz arcp contract afn <4 x float> %i.im, %i.in ; 2 uses
  %i.ip = shufflevector <4 x float> %i.hz, <4 x float> %i.hu, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> %i.io, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ir = shufflevector <4 x float> %i.if, <4 x float> %i.hr, <4 x i32> <i32 3, i32 poison, i32 poison, i32 7>
  %i.is = insertelement <4 x float> %i.ir, float %i.ij, i64 1
  %i.it = insertelement <4 x float> %i.is, float %i.ih, i64 2
  %i.iu = fadd reassoc nsz arcp contract afn <4 x float> %i.iq, %i.it
  %i.iv = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.iw = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.hi, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ix = fmul reassoc nsz arcp contract afn <4 x float> %i.iv, %i.iw
  %i.iy = fadd reassoc nsz arcp contract afn <4 x float> %i.hz, %i.if
  %i.iz = fadd reassoc nsz arcp contract afn <4 x float> %i.io, %i.ht
  %i.ja = fadd reassoc nsz arcp contract afn <4 x float> %i.iu, %i.ix ; 3 uses
  %i.jb = fadd reassoc nsz arcp contract afn <4 x float> %i.iy, %i.ig ; 2 uses
  %i.jc = fadd reassoc nsz arcp contract afn <4 x float> %i.iz, %i.hu ; 3 uses
  %i.jd = fmul reassoc nsz arcp contract afn <4 x float> %i.jb, zeroinitializer ; 2 uses
  %i.je = fmul reassoc nsz arcp contract afn <4 x float> %i.ja, zeroinitializer ; 2 uses
  %i.jf = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jh = shufflevector <4 x float> %i.ja, <4 x float> %i.jb, <4 x i32> <i32 0, i32 5, i32 6, i32 0>
  %i.ji = fmul reassoc nsz arcp contract afn <4 x float> %i.jg, %i.jh
  %i.jj = shufflevector <4 x float> %i.je, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.jk = fadd reassoc nsz arcp contract afn <4 x float> %i.ji, %i.jj
  %i.jl = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.jm = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jn = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.jo = fmul reassoc nsz arcp contract afn <4 x float> %i.jm, %i.jn
  %i.jp = fadd reassoc nsz arcp contract afn <4 x float> %i.jk, %i.jo ; 2 uses
  %i.jq = fadd reassoc nsz arcp contract afn <4 x float> %i.je, %i.jc
  %i.jr = shufflevector <4 x float> %i.jc, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.js = fmul reassoc nsz arcp contract afn <2 x float> %i.jr, zeroinitializer
  %i.jt = shufflevector <4 x float> %i.jd, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ju = shufflevector <4 x float> %i.ja, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.jv = fadd reassoc nsz arcp contract afn <2 x float> %i.jt, %i.ju
  %i.jw = fadd reassoc nsz arcp contract afn <2 x float> %i.jv, %i.js
  %i.jx = fadd reassoc nsz arcp contract afn <4 x float> %i.jq, %i.jd ; 4 uses
  %i.jy = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.e, i64 0 ; 2 uses
  %i.jz = fdiv reassoc nsz arcp contract afn <2 x float> <float 1.000000e+00, float 0.000000e+00>, %i.jy ; 2 uses
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.kb = fmul reassoc nsz arcp contract afn <4 x float> %i.jx, zeroinitializer ; 2 uses
  %i.kc = shufflevector <4 x float> %i.jx, <4 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.kd = shufflevector <2 x float> %i.jw, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ke = shufflevector <3 x float> %i.kc, <3 x float> %i.kd, <4 x i32> <i32 0, i32 3, i32 4, i32 0> ; 3 uses
  %i.kf = shufflevector <2 x float> %i.jy, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.kg = fmul reassoc nsz arcp contract afn <4 x float> %i.ke, %i.kf
  %i.kh = shufflevector <2 x float> %i.jz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ki = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.kh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kj = fmul reassoc nsz arcp contract afn <4 x float> %i.jp, %i.ki ; 2 uses
  %i.kk = shufflevector <4 x float> %i.jx, <4 x float> %i.ke, <4 x i32> <i32 3, i32 5, i32 6, i32 0>
  %i.kl = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.e, i64 3
  %i.km = fmul reassoc nsz arcp contract afn <4 x float> %i.kk, %i.kl
  %i.kn = fmul reassoc nsz arcp contract afn <4 x float> %i.ke, zeroinitializer
  %i.ko = fmul reassoc nsz arcp contract afn <4 x float> %i.jp, %i.ka ; 2 uses
  %i.kp = shufflevector <4 x float> %i.kb, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.kq = fadd reassoc nsz arcp contract afn <4 x float> %i.kp, %i.kg
  %i.kr = fadd reassoc nsz arcp contract afn <4 x float> %i.kb, %i.km
  %i.ks = fadd reassoc nsz arcp contract afn <4 x float> %i.kq, %i.kj ; 5 uses
  %i.kt = fadd reassoc nsz arcp contract afn <4 x float> %i.kr, %i.ko ; 6 uses
  %i.ku = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.kv = fadd reassoc nsz arcp contract afn <4 x float> %i.kn, %i.ku
  %i.kw = shufflevector <4 x float> %i.ko, <4 x float> %i.kj, <4 x i32> <i32 3, i32 5, i32 6, i32 3>
  %i.kx = fadd reassoc nsz arcp contract afn <4 x float> %i.kv, %i.kw ; 7 uses
  %i.ky = icmp sgt i32 %9, 0
  br i1 %i.ky, label %.preheader.lr.ph, label %._crit_edge360

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.kz = icmp sgt i32 %8, 0
  %i.la = add nsw i32 %8, -1
  %i.lb = add nsw i32 %9, -1                      ; 2 uses
  br i1 %i.kz, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.lc = shufflevector <4 x float> %i.ks, <4 x float> %i.kt, <2 x i32> <i32 1, i32 5>
  %i.ld = shufflevector <4 x float> %i.ks, <4 x float> %i.kt, <2 x i32> <i32 2, i32 6>
  %i.le = extractelement <4 x float> %i.kx, i64 1
  %i.lf = extractelement <4 x float> %i.kx, i64 2
  %i.lg = shufflevector <4 x float> %i.kt, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.lh = extractelement <4 x float> %i.kx, i64 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.0217359.us = phi i32 [ %i.mf, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %i.li = phi <2 x float> [ %i.mc, %._crit_edge.us ], [ splat (float f0x7F7FFFFF), %.preheader.us.preheader ]
  %i.lj = uitofp nneg i32 %.0217359.us to float   ; 2 uses
  %i.lk = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fmul reassoc nsz arcp contract afn <2 x float> %i.lc, %i.ll
  %i.ln = fadd reassoc nsz arcp contract afn <2 x float> %i.lm, %i.ld
  %i.lo = fmul reassoc nsz arcp contract afn float %i.le, %i.lj
  %i.lp = fadd reassoc nsz arcp contract afn float %i.lo, %i.lf
  br label %bb.f

bb.f:                                             ; preds = %.preheader.us, %bb.f
  %.0355.us = phi i32 [ 0, %.preheader.us ], [ %i.md, %bb.f ] ; 2 uses
  %i.lq = phi <2 x float> [ %i.li, %.preheader.us ], [ %i.mc, %bb.f ] ; 2 uses
  %i.lr = uitofp nneg i32 %.0355.us to float      ; 2 uses
  %i.ls = fmul reassoc nsz arcp contract afn float %i.lh, %i.lr
  %i.lt = fadd reassoc nsz arcp contract afn float %i.lp, %i.ls
  %i.lu = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = fmul reassoc nsz arcp contract afn <2 x float> %i.lg, %i.lv
  %i.lx = fadd reassoc nsz arcp contract afn <2 x float> %i.ln, %i.lw
  %i.ly = insertelement <2 x float> poison, float %i.lt, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = fdiv reassoc nsz arcp contract afn <2 x float> %i.lx, %i.lz ; 2 uses
  %i.mb = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.lq, %i.ma
  %i.mc = select <2 x i1> %i.mb, <2 x float> %i.lq, <2 x float> %i.ma ; 3 uses
  %i.md = add nuw nsw i32 %i.la, %.0355.us        ; 2 uses
  %i.me = icmp slt i32 %i.md, %8
  br i1 %i.me, label %bb.f, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.f
  %i.mf = add nuw nsw i32 %i.lb, %.0217359.us     ; 2 uses
  %i.mg = icmp slt i32 %i.mf, %9
  br i1 %i.mg, label %.preheader.us, label %._crit_edge360

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.0217359 = phi i32 [ %i.mh, %.preheader ], [ 0, %.preheader.lr.ph ]
  %i.mh = add nuw nsw i32 %i.lb, %.0217359        ; 2 uses
  %i.mi = icmp slt i32 %i.mh, %9
  br i1 %i.mi, label %.preheader, label %._crit_edge360

._crit_edge360:                                   ; preds = %.preheader, %._crit_edge.us, %bb.e
  %i.mj = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.e ], [ %i.mc, %._crit_edge.us ], [ splat (float f0x7F7FFFFF), %.preheader ] ; 2 uses
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ml = fmul reassoc nsz arcp contract afn <4 x float> %i.kt, zeroinitializer ; 3 uses
  %i.mm = fmul reassoc nsz arcp contract afn <4 x float> %i.kx, %i.mk
  %i.mn = fadd reassoc nsz arcp contract afn <4 x float> %i.ml, %i.ks
  %i.mo = fsub reassoc nsz arcp contract afn <4 x float> %i.mn, %i.mm
  store <4 x float> %i.mo, ptr %i.a, align 64, !tbaa !14, !alias.scope !99, !noalias !102
  %11 = shufflevector <4 x float> %i.kt, <4 x float> %i.ml, <4 x i32> <i32 1, i32 2, i32 7, i32 poison>
  %12 = shufflevector <4 x float> %11, <4 x float> %i.ks, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mp = fmul reassoc nsz arcp contract afn <4 x float> %12, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %13 = shufflevector <4 x float> %i.ks, <4 x float> %i.kx, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %14 = fmul reassoc nsz arcp contract afn <4 x float> %13, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.mq = fadd reassoc nsz arcp contract afn <4 x float> %i.mp, %14 ; 2 uses
  %i.mr = shufflevector <2 x float> %i.mj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ms = shufflevector <4 x float> %i.kx, <4 x float> %i.kt, <4 x i32> <i32 1, i32 2, i32 4, i32 5>
  %i.mt = shufflevector <4 x float> %i.mr, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mu = fmul reassoc nsz arcp contract afn <4 x float> %i.ms, %i.mt ; 2 uses
  %i.mv = fsub reassoc nsz arcp contract afn <4 x float> %i.mq, %i.mu
  %i.mw = fadd reassoc nsz arcp contract afn <4 x float> %i.mq, %i.mu
  %i.mx = shufflevector <4 x float> %i.mv, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.mx, ptr %i.bi, align 16, !tbaa !14, !alias.scope !99, !noalias !102
  %shift = shufflevector <4 x float> %i.kx, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop373 = fadd reassoc nsz arcp contract afn <4 x float> %14, %shift
  %shift375 = shufflevector <4 x float> %i.ml, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop376 = fadd reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop373, %shift375
  %i.my = extractelement <4 x float> %foldExtExtBinop376, i64 1
  store float %i.my, ptr %i.bn, align 32, !tbaa !14, !alias.scope !99, !noalias !102
  %i.mz = icmp eq i32 %10, 0
  br i1 %i.mz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 64 dereferenceable(36) %i.a, i64 36, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge360
  %i.na = call i32 @mat3inv(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #34
  %.not = icmp eq i32 %i.na, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %.sroa.121.0..sroa_idx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nounwind uwtable
define noundef i32 @distort_backtransform(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x [3 x float]], align 64       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !42  ; 15 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !59 ; 2 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.d)
  %i.f = fcmp reassoc nsz arcp contract afn uge float %i.e, f0x38D1B717
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !61 ; 2 uses
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.pre)
  %i.h = fcmp reassoc nsz arcp contract afn uge float %i.g, f0x38D1B717
  %or.cond = select i1 %i.f, i1 true, i1 %i.h
  br i1 %or.cond, label %_isneutral.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !62
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.j)
  %i.l = fcmp reassoc nsz arcp contract afn uge float %i.k, f0x38D1B717
  br i1 %i.l, label %_isneutral.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !63
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.n)
  %i.p = fcmp reassoc nsz arcp contract afn uge float %i.o, f0x38D1B717
  br i1 %i.p, label %_isneutral.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !64
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, -1.000000e+00
  %i.t = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.s)
  %i.u = fcmp reassoc nsz arcp contract afn uge float %i.t, f0x38D1B717
  br i1 %i.u, label %_isneutral.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.w = load float, ptr %i.v, align 4, !tbaa !65
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp reassoc nsz arcp contract afn uge float %i.x, f0x38D1B717
  br i1 %i.y, label %_isneutral.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load float, ptr %i.z, align 4, !tbaa !66
  %i.ab = fadd reassoc nsz arcp contract afn float %i.aa, -1.000000e+00
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ab)
  %i.ad = fcmp reassoc nsz arcp contract afn uge float %i.ac, f0x38D1B717
  br i1 %i.ad, label %_isneutral.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.af = load float, ptr %i.ae, align 4, !tbaa !67
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.af)
  %i.ah = fcmp reassoc nsz arcp contract afn uge float %i.ag, f0x38D1B717
  br i1 %i.ah, label %_isneutral.exit.thread, label %_isneutral.exit

_isneutral.exit:                                  ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !68
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, -1.000000e+00
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ak)
  %i.am = fcmp reassoc nsz arcp contract afn uge float %i.al, f0x38D1B717
  br i1 %i.am, label %_isneutral.exit.thread, label %bb.h

_isneutral.exit.thread:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_isneutral.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ay = load i32, ptr %i.ax, align 16, !tbaa !71
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !72
  call fastcc void @_homography(ptr noundef %i.a, float noundef %i.d, float noundef %.pre, float noundef %i.ao, float noundef %i.aq, float noundef %i.as, float noundef %i.au, float noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef 1)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bd = load <2 x i32>, ptr %i.bb, align 4, !tbaa !41
  %i.be = sitofp <2 x i32> %i.bd to <2 x float>
  %i.bf = load <4 x float>, ptr %i.bc, align 4, !tbaa !14 ; 2 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.bh = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bi = fsub reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bh
  %i.bj = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, %i.be
  %i.bk = fdiv reassoc nsz arcp contract afn <2 x float> %i.bj, %i.bi ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 64) ]
  %i.bl = shl i64 %3, 1                           ; 3 uses
  %.not = icmp eq i64 %i.bl, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_isneutral.exit.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bn = load <4 x float>, ptr %i.a, align 64, !tbaa !14, !noalias !105 ; 7 uses
  %i.bo = load <2 x float>, ptr %i.bm, align 16, !tbaa !14, !noalias !105 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !14, !noalias !105 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bs = load float, ptr %i.br, align 4, !tbaa !14, !noalias !105 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bu = load float, ptr %i.bt, align 32, !tbaa !14, !noalias !105 ; 2 uses
  %i.bv = add i64 %i.bl, -2                       ; 2 uses
  %i.bw = lshr exact i64 %i.bv, 1
  %i.bx = add nuw i64 %i.bw, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bv, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.bx, -8                      ; 3 uses
  %i.by = shl i64 %n.vec, 1
  %broadcast.splat = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat43 = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat45 = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat47 = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat49 = shufflevector <2 x float> %i.bo, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat51 = shufflevector <2 x float> %i.bo, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert52 = insertelement <8 x float> poison, float %i.bq, i64 0
  %broadcast.splat53 = shufflevector <8 x float> %broadcast.splatinsert52, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <8 x float> poison, float %i.bs, i64 0
  %broadcast.splat55 = shufflevector <8 x float> %broadcast.splatinsert54, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <8 x float> poison, float %i.bu, i64 0
  %broadcast.splat57 = shufflevector <8 x float> %broadcast.splatinsert56, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat59 = shufflevector <2 x float> %i.bk, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat61 = shufflevector <2 x float> %i.bk, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec = load <16 x float>, ptr %i.bz, align 64, !tbaa !14 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec62 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ca = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat59 ; 3 uses
  %i.cb = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec62, %broadcast.splat61 ; 3 uses
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.ca
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat43, %i.cb
  %i.ce = fadd reassoc nsz arcp contract afn <8 x float> %i.cd, %i.cc
  %i.cf = fadd reassoc nsz arcp contract afn <8 x float> %i.ce, %broadcast.splat45
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat47, %i.ca
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat49, %i.cb
  %i.ci = fadd reassoc nsz arcp contract afn <8 x float> %i.ch, %i.cg
  %i.cj = fadd reassoc nsz arcp contract afn <8 x float> %i.ci, %broadcast.splat51
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat53, %i.ca
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat55, %i.cb
  %i.cm = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %i.ck
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat57 ; 2 uses
  %i.co = fdiv reassoc nsz arcp contract afn <8 x float> %i.cf, %i.cn
  %i.cp = fdiv reassoc nsz arcp contract afn <8 x float> %i.cj, %i.cn
  %interleaved.vec = shufflevector <8 x float> %i.co, <8 x float> %i.cp, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bz, align 64, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.040.ph = phi i64 [ 0, %.lr.ph ], [ %i.by, %middle.block ]
end_hunk_0
