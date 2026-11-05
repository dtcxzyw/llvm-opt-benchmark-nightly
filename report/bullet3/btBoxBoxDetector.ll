Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btBoxBoxDetector?download=true
inline.NumInlined: 309
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z8dBoxBox2RK9btVector3PKfS1_S1_S3_S1_RS_PfPiiP12dContactGeomiRN36btDiscreteCollisionDetectorInterface6ResultE:bb.a
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.da, <4 x float> %i.cm) ; 7 uses
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.cv, <4 x float> %i.cr) ; 8 uses
  %i.df = extractelement <2 x float> %i.bw, i64 1 ; 2 uses
  %i.dg = extractelement <2 x float> %i.by, i64 0 ; 2 uses
  %i.dh = fmul float %i.df, %i.dg
  %i.di = extractelement <4 x float> %i.bn, i64 2
  %i.dj = extractelement <2 x float> %i.bu, i64 1 ; 3 uses
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.di, float %i.dh)
  %i.dl = extractelement <2 x float> %i.cs, i64 1 ; 2 uses
  %i.dm = tail call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.cw, float %i.dk) ; 6 uses
  %i.dn = fmul float %i.df, %i.bz
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.bj, float %i.dn)
  %i.dp = extractelement <3 x float> %i.cu, i64 2 ; 2 uses
  %i.dq = tail call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.dp, float %i.do) ; 6 uses
  %i.dr = extractelement <4 x float> %i.dd, i64 1 ; 7 uses
  %i.ds = tail call noundef float @llvm.fabs.f32(float %i.dr) ; 3 uses
  %i.dt = extractelement <4 x float> %i.dd, i64 2 ; 7 uses
  %i.du = tail call noundef float @llvm.fabs.f32(float %i.dt) ; 3 uses
  %i.dv = extractelement <4 x float> %i.dd, i64 3 ; 7 uses
  %i.dw = tail call noundef float @llvm.fabs.f32(float %i.dv) ; 3 uses
  %i.dx = extractelement <4 x float> %i.de, i64 0 ; 7 uses
  %i.dy = tail call noundef float @llvm.fabs.f32(float %i.dx) ; 3 uses
  %i.dz = extractelement <4 x float> %i.de, i64 1 ; 7 uses
  %i.ea = tail call noundef float @llvm.fabs.f32(float %i.dz) ; 3 uses
  %i.eb = extractelement <4 x float> %i.de, i64 2 ; 7 uses
  %i.ec = tail call noundef float @llvm.fabs.f32(float %i.eb) ; 3 uses
  %i.ed = extractelement <4 x float> %i.de, i64 3 ; 5 uses
  %i.ee = tail call noundef float @llvm.fabs.f32(float %i.ed) ; 3 uses
  %i.ef = tail call noundef float @llvm.fabs.f32(float %i.dm) ; 3 uses
  %i.eg = tail call noundef float @llvm.fabs.f32(float %i.dq) ; 3 uses
  %i.eh = tail call noundef float @llvm.fabs.f32(float %i.bs)
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ds, float %i.ab)
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.du, float %i.ei)
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.an, float %i.dw, float %i.ej)
  %i.el = fsub float %i.eh, %i.ek                 ; 3 uses
  %i.em = fcmp ogt float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.ck, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.en = fcmp ogt float %i.el, f0xFF7FFFFF
  br i1 %i.en, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.eo = fcmp olt float %i.bs, 0.000000e+00
  %i.ep = zext i1 %i.eo to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0716 = phi float [ %i.el, %bb.c ], [ f0xFF7FFFFF, %bb.b ] ; 2 uses
  %.0680 = phi i32 [ %i.ep, %bb.c ], [ 0, %bb.b ]
  %.0665 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.0649 = phi ptr [ %1, %bb.c ], [ null, %bb.b ]
  %i.eq = tail call noundef float @llvm.fabs.f32(float %i.dc)
  %i.er = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.dy, float %i.aa)
  %i.es = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ea, float %i.er)
  %i.et = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ec, float %i.es)
  %i.eu = fsub float %i.eq, %i.et                 ; 3 uses
  %i.ev = fcmp ogt float %i.eu, 0.000000e+00
  br i1 %i.ev, label %bb.ck, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ew = fcmp ogt float %i.eu, %.0716
  br i1 %i.ew, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ex = fcmp olt float %i.dc, 0.000000e+00
  %i.ey = zext i1 %i.ex to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1717 = phi float [ %i.eu, %bb.f ], [ %.0716, %bb.e ] ; 2 uses
  %.1681 = phi i32 [ %i.ey, %bb.f ], [ %.0680, %bb.e ]
  %.1666 = phi i32 [ 2, %bb.f ], [ %.0665, %bb.e ]
  %.1650 = phi ptr [ %i.s, %bb.f ], [ %.0649, %bb.e ]
  %i.ez = extractelement <4 x float> %i.dd, i64 0 ; 8 uses
  %i.fa = tail call noundef float @llvm.fabs.f32(float %i.ez)
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ee, float %i.ae)
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ef, float %i.fb)
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.an, float %i.eg, float %i.fc)
  %i.fe = fsub float %i.fa, %i.fd                 ; 3 uses
  %i.ff = fcmp ogt float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.ck, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fg = fcmp ogt float %i.fe, %.1717
  br i1 %i.fg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fh = fcmp olt float %i.ez, 0.000000e+00
  %i.fi = zext i1 %i.fh to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2718 = phi float [ %i.fe, %bb.i ], [ %.1717, %bb.h ] ; 2 uses
  %.2682 = phi i32 [ %i.fi, %bb.i ], [ %.1681, %bb.h ]
  %.2667 = phi i32 [ 3, %bb.i ], [ %.1666, %bb.h ]
  %.2651 = phi ptr [ %i.v, %bb.i ], [ %.1650, %bb.h ]
  %i.fj = extractelement <2 x float> %i.az, i64 0
  %i.fk = fmul float %i.bf, %i.fj
  %i.fl = extractelement <2 x float> %i.bh, i64 0
  %i.fm = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.bo, float %i.fk)
  %i.fn = extractelement <3 x float> %i.cu, i64 0
  %i.fo = tail call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.br, float %i.fm) ; 2 uses
  %i.fp = tail call noundef float @llvm.fabs.f32(float %i.fo)
  %i.fq = fmul float %i.aa, %i.dy
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.ds, float %i.fq)
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ee, float %i.fr)
  %i.ft = fadd float %i.aj, %i.fs
  %i.fu = fsub float %i.fp, %i.ft                 ; 3 uses
  %i.fv = fcmp ogt float %i.fu, 0.000000e+00
  br i1 %i.fv, label %bb.ck, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fw = fcmp ogt float %i.fu, %.2718
  br i1 %i.fw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fx = fcmp olt float %i.fo, 0.000000e+00
  %i.fy = zext i1 %i.fx to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3719 = phi float [ %i.fu, %bb.l ], [ %.2718, %bb.k ] ; 2 uses
  %.3683 = phi i32 [ %i.fy, %bb.l ], [ %.2682, %bb.k ]
  %.3668 = phi i32 [ 4, %bb.l ], [ %.2667, %bb.k ]
  %.3652 = phi ptr [ %4, %bb.l ], [ %.2651, %bb.k ]
  %i.fz = fmul float %i.bf, %i.dg
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bo, float %i.fz)
  %i.gb = tail call noundef float @llvm.fmuladd.f32(float %i.cw, float %i.br, float %i.ga) ; 2 uses
  %i.gc = tail call noundef float @llvm.fabs.f32(float %i.gb)
  %i.gd = fmul float %i.aa, %i.ea
  %i.ge = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.du, float %i.gd)
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ef, float %i.ge)
  %i.gg = fadd float %i.ai, %i.gf
  %i.gh = fsub float %i.gc, %i.gg                 ; 3 uses
  %i.gi = fcmp ogt float %i.gh, 0.000000e+00
  br i1 %i.gi, label %bb.ck, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gj = fcmp ogt float %i.gh, %.3719
  br i1 %i.gj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gk = fcmp olt float %i.gb, 0.000000e+00
  %i.gl = zext i1 %i.gk to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.4720 = phi float [ %i.gh, %bb.o ], [ %.3719, %bb.n ] ; 2 uses
  %.4684 = phi i32 [ %i.gl, %bb.o ], [ %.3683, %bb.n ]
  %.4669 = phi i32 [ 5, %bb.o ], [ %.3668, %bb.n ]
  %.4 = phi ptr [ %i.ar, %bb.o ], [ %.3652, %bb.n ]
  %i.gm = fmul float %i.bf, %i.bz
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bo, float %i.gm)
  %i.go = tail call noundef float @llvm.fmuladd.f32(float %i.dp, float %i.br, float %i.gn) ; 2 uses
  %i.gp = tail call noundef float @llvm.fabs.f32(float %i.go)
  %i.gq = fmul float %i.aa, %i.ec
  %i.gr = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.dw, float %i.gq)
  %i.gs = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.eg, float %i.gr)
  %i.gt = fadd float %i.an, %i.gs
  %i.gu = fsub float %i.gp, %i.gt                 ; 3 uses
  %i.gv = fcmp ogt float %i.gu, 0.000000e+00
  br i1 %i.gv, label %bb.ck, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gw = fcmp ogt float %i.gu, %.4720
  br i1 %i.gw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gx = fcmp olt float %i.go, 0.000000e+00
  %i.gy = zext i1 %i.gx to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.5721 = phi float [ %i.gu, %bb.r ], [ %.4720, %bb.q ] ; 4 uses
  %.5685 = phi i32 [ %i.gy, %bb.r ], [ %.4684, %bb.q ] ; 2 uses
  %.5670 = phi i32 [ 6, %bb.r ], [ %.4669, %bb.q ] ; 2 uses
  %.5 = phi ptr [ %i.au, %bb.r ], [ %.4, %bb.q ]  ; 2 uses
  %i.gz = fadd float %i.ds, f0x3727C5AC           ; 4 uses
  %i.ha = fadd float %i.du, f0x3727C5AC           ; 4 uses
  %i.hb = fadd float %i.dw, f0x3727C5AC           ; 4 uses
  %i.hc = fadd float %i.dy, f0x3727C5AC           ; 4 uses
  %i.hd = fadd float %i.ea, f0x3727C5AC           ; 4 uses
  %i.he = fadd float %i.ec, f0x3727C5AC           ; 4 uses
  %i.hf = fadd float %i.ee, f0x3727C5AC           ; 4 uses
  %i.hg = fadd float %i.ef, f0x3727C5AC           ; 4 uses
  %i.hh = fadd float %i.eg, f0x3727C5AC           ; 4 uses
  %i.hi = fneg float %i.ed                        ; 2 uses
  %i.hj = fmul float %i.dc, %i.hi
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.dx, float %i.hj) ; 2 uses
  %i.hl = tail call noundef float @llvm.fabs.f32(float %i.hk)
  %i.hm = fmul float %i.ae, %i.hc
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.hf, float %i.hm)
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.hb, float %i.hn)
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ha, float %i.ho)
  %i.hq = fsub float %i.hl, %i.hp                 ; 2 uses
  %i.hr = fcmp ogt float %i.hq, f0x34000000
  br i1 %i.hr, label %bb.ck, label %bb.t

bb.t:                                             ; preds = %bb.s
  %27 = fmul float %i.ed, %i.ed                   ; 2 uses
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %27)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.hs) ; 3 uses
  %i.ht = fcmp ogt float %sqrt, f0x34000000
  %i.hu = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.5721, i64 0 ; 2 uses
  br i1 %i.ht, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.hv = fdiv float %i.hq, %sqrt                 ; 3 uses
  %i.hw = fmul float %i.hv, 1.050000e+00
  %i.hx = fcmp ogt float %i.hw, %.5721
  br i1 %i.hx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hy = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.de, <4 x i32> <i32 poison, i32 1, i32 poison, i32 4>
  %i.hz = insertelement <4 x float> %i.hy, float %i.hv, i64 0
  %i.ia = insertelement <4 x float> %i.hz, float %i.hi, i64 2
  %i.ib = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.id = fdiv <4 x float> %i.ia, %i.ic
  %i.ie = fcmp olt float %i.hk, 0.000000e+00
  %i.if = zext i1 %i.ie to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.6722 = phi float [ %i.hv, %bb.v ], [ %.5721, %bb.u ], [ %.5721, %bb.t ] ; 3 uses
  %.6686 = phi i32 [ %i.if, %bb.v ], [ %.5685, %bb.u ], [ %.5685, %bb.t ] ; 2 uses
  %.6671 = phi i32 [ 7, %bb.v ], [ %.5670, %bb.u ], [ %.5670, %bb.t ] ; 2 uses
  %.6 = phi ptr [ null, %bb.v ], [ %.5, %bb.u ], [ %.5, %bb.t ] ; 2 uses
  %i.ig = phi <4 x float> [ %i.id, %bb.v ], [ %i.hu, %bb.u ], [ %i.hu, %bb.t ] ; 2 uses
  %i.ih = fneg float %i.dm                        ; 2 uses
  %i.ii = fmul float %i.dc, %i.ih
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.dz, float %i.ii) ; 2 uses
  %i.ik = tail call noundef float @llvm.fabs.f32(float %i.ij)
  %i.il = fmul float %i.ae, %i.hd
  %i.im = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.hg, float %i.il)
  %i.in = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.hb, float %i.im)
  %i.io = tail call float @llvm.fmuladd.f32(float %i.an, float %i.gz, float %i.in)
  %i.ip = fsub float %i.ik, %i.io                 ; 2 uses
  %i.iq = fcmp ogt float %i.ip, f0x34000000
  br i1 %i.iq, label %bb.ck, label %bb.x

bb.x:                                             ; preds = %bb.w
  %28 = fmul float %i.dm, %i.dm                   ; 2 uses
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %28)
  %sqrt967 = tail call float @llvm.sqrt.f32(float %i.ir) ; 3 uses
  %i.is = fcmp ogt float %sqrt967, f0x34000000
  br i1 %i.is, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.it = fdiv float %i.ip, %sqrt967              ; 3 uses
  %i.iu = fmul float %i.it, 1.050000e+00
  %i.iv = fcmp ogt float %i.iu, %.6722
  br i1 %i.iv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.iw = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.de, <4 x i32> <i32 poison, i32 1, i32 poison, i32 5>
  %i.ix = insertelement <4 x float> %i.iw, float %i.it, i64 0
  %i.iy = insertelement <4 x float> %i.ix, float %i.ih, i64 2
  %i.iz = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt967, i64 0
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.jb = fdiv <4 x float> %i.iy, %i.ja
  %i.jc = fcmp olt float %i.ij, 0.000000e+00
  %i.jd = zext i1 %i.jc to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.7723 = phi float [ %i.it, %bb.z ], [ %.6722, %bb.y ], [ %.6722, %bb.x ] ; 3 uses
  %.7687 = phi i32 [ %i.jd, %bb.z ], [ %.6686, %bb.y ], [ %.6686, %bb.x ] ; 2 uses
  %.7672 = phi i32 [ 8, %bb.z ], [ %.6671, %bb.y ], [ %.6671, %bb.x ] ; 2 uses
  %.7 = phi ptr [ null, %bb.z ], [ %.6, %bb.y ], [ %.6, %bb.x ] ; 2 uses
  %i.je = phi <4 x float> [ %i.jb, %bb.z ], [ %i.ig, %bb.y ], [ %i.ig, %bb.x ] ; 2 uses
  %i.jf = fneg float %i.dq                        ; 2 uses
  %i.jg = fmul float %i.dc, %i.jf
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.ez, float %i.eb, float %i.jg) ; 2 uses
  %i.ji = tail call noundef float @llvm.fabs.f32(float %i.jh)
  %i.jj = fmul float %i.ae, %i.he
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.hh, float %i.jj)
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ha, float %i.jk)
  %i.jm = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.gz, float %i.jl)
  %i.jn = fsub float %i.ji, %i.jm                 ; 2 uses
  %i.jo = fcmp ogt float %i.jn, f0x34000000
  br i1 %i.jo, label %bb.ck, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %29 = fmul float %i.dq, %i.dq                   ; 2 uses
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.eb, float %i.eb, float %29)
  %sqrt968 = tail call float @llvm.sqrt.f32(float %i.jp) ; 3 uses
  %i.jq = fcmp ogt float %sqrt968, f0x34000000
  br i1 %i.jq, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.jr = fdiv float %i.jn, %sqrt968              ; 3 uses
  %i.js = fmul float %i.jr, 1.050000e+00
  %i.jt = fcmp ogt float %i.js, %.7723
  br i1 %i.jt, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ju = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.de, <4 x i32> <i32 poison, i32 1, i32 poison, i32 6>
  %i.jv = insertelement <4 x float> %i.ju, float %i.jr, i64 0
  %i.jw = insertelement <4 x float> %i.jv, float %i.jf, i64 2
  %i.jx = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt968, i64 0
  %i.jy = shufflevector <4 x float> %i.jx, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.jz = fdiv <4 x float> %i.jw, %i.jy
  %i.ka = fcmp olt float %i.jh, 0.000000e+00
  %i.kb = zext i1 %i.ka to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.8724 = phi float [ %i.jr, %bb.ad ], [ %.7723, %bb.ac ], [ %.7723, %bb.ab ] ; 3 uses
  %.8688 = phi i32 [ %i.kb, %bb.ad ], [ %.7687, %bb.ac ], [ %.7687, %bb.ab ] ; 2 uses
  %.8673 = phi i32 [ 9, %bb.ad ], [ %.7672, %bb.ac ], [ %.7672, %bb.ab ] ; 2 uses
  %.8 = phi ptr [ null, %bb.ad ], [ %.7, %bb.ac ], [ %.7, %bb.ab ] ; 2 uses
  %i.kc = phi <4 x float> [ %i.jz, %bb.ad ], [ %i.je, %bb.ac ], [ %i.je, %bb.ab ] ; 2 uses
  %i.kd = fneg float %i.dr                        ; 2 uses
  %i.ke = fmul float %i.ez, %i.kd
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.ed, float %i.ke) ; 2 uses
  %i.kg = tail call noundef float @llvm.fabs.f32(float %i.kf)
  %i.kh = fmul float %i.ae, %i.gz
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.hf, float %i.kh)
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.he, float %i.ki)
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.an, float %i.hd, float %i.kj)
  %i.kl = fsub float %i.kg, %i.kk                 ; 2 uses
  %i.km = fcmp ogt float %i.kl, f0x34000000
  br i1 %i.km, label %bb.ck, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %27)
  %sqrt969 = tail call float @llvm.sqrt.f32(float %i.kn) ; 3 uses
  %i.ko = fcmp ogt float %sqrt969, f0x34000000
  br i1 %i.ko, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.kp = fdiv float %i.kl, %sqrt969              ; 3 uses
  %i.kq = fmul float %i.kp, 1.050000e+00
  %i.kr = fcmp ogt float %i.kq, %.8724
  br i1 %i.kr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ks = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x float> %i.de, <4 x i32> <i32 poison, i32 7, i32 2, i32 poison>
  %i.kt = insertelement <4 x float> %i.ks, float %i.kp, i64 0
  %i.ku = insertelement <4 x float> %i.kt, float %i.kd, i64 3
  %i.kv = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt969, i64 0
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.kx = fdiv <4 x float> %i.ku, %i.kw
  %i.ky = fcmp olt float %i.kf, 0.000000e+00
  %i.kz = zext i1 %i.ky to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.9725 = phi float [ %i.kp, %bb.ah ], [ %.8724, %bb.ag ], [ %.8724, %bb.af ] ; 3 uses
  %.9689 = phi i32 [ %i.kz, %bb.ah ], [ %.8688, %bb.ag ], [ %.8688, %bb.af ] ; 2 uses
  %.9674 = phi i32 [ 10, %bb.ah ], [ %.8673, %bb.ag ], [ %.8673, %bb.af ] ; 2 uses
  %.9 = phi ptr [ null, %bb.ah ], [ %.8, %bb.ag ], [ %.8, %bb.af ] ; 2 uses
  %i.la = phi <4 x float> [ %i.kx, %bb.ah ], [ %i.kc, %bb.ag ], [ %i.kc, %bb.af ] ; 2 uses
  %i.lb = fneg float %i.dt                        ; 2 uses
  %i.lc = fmul float %i.ez, %i.lb
  %i.ld = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.dm, float %i.lc) ; 2 uses
  %i.le = tail call noundef float @llvm.fabs.f32(float %i.ld)
  %i.lf = fmul float %i.ae, %i.ha
  %i.lg = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.hg, float %i.lf)
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.he, float %i.lg)
  %i.li = tail call float @llvm.fmuladd.f32(float %i.an, float %i.hc, float %i.lh)
  %i.lj = fsub float %i.le, %i.li                 ; 2 uses
  %i.lk = fcmp ogt float %i.lj, f0x34000000
  br i1 %i.lk, label %bb.ck, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %28)
  %sqrt970 = tail call float @llvm.sqrt.f32(float %i.ll) ; 3 uses
  %i.lm = fcmp ogt float %sqrt970, f0x34000000
  br i1 %i.lm, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ln = fdiv float %i.lj, %sqrt970              ; 3 uses
  %i.lo = fmul float %i.ln, 1.050000e+00
  %i.lp = fcmp ogt float %i.lo, %.9725
  br i1 %i.lp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.lq = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.ln, i64 0
  %i.lr = insertelement <4 x float> %i.lq, float %i.dm, i64 1
  %i.ls = insertelement <4 x float> %i.lr, float %i.lb, i64 3
  %i.lt = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt970, i64 0
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.lv = fdiv <4 x float> %i.ls, %i.lu
  %i.lw = fcmp olt float %i.ld, 0.000000e+00
  %i.lx = zext i1 %i.lw to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.10726 = phi float [ %i.ln, %bb.al ], [ %.9725, %bb.ak ], [ %.9725, %bb.aj ] ; 3 uses
  %.10690 = phi i32 [ %i.lx, %bb.al ], [ %.9689, %bb.ak ], [ %.9689, %bb.aj ] ; 2 uses
  %.10675 = phi i32 [ 11, %bb.al ], [ %.9674, %bb.ak ], [ %.9674, %bb.aj ] ; 2 uses
  %.10 = phi ptr [ null, %bb.al ], [ %.9, %bb.ak ], [ %.9, %bb.aj ] ; 2 uses
  %i.ly = phi <4 x float> [ %i.lv, %bb.al ], [ %i.la, %bb.ak ], [ %i.la, %bb.aj ] ; 2 uses
  %i.lz = fneg float %i.dv                        ; 2 uses
  %i.ma = fmul float %i.ez, %i.lz
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.dq, float %i.ma) ; 2 uses
  %i.mc = tail call noundef float @llvm.fabs.f32(float %i.mb)
  %i.md = fmul float %i.ae, %i.hb
  %i.me = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.hh, float %i.md)
  %i.mf = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.hd, float %i.me)
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.hc, float %i.mf)
  %i.mh = fsub float %i.mc, %i.mg                 ; 2 uses
  %i.mi = fcmp ogt float %i.mh, f0x34000000
  br i1 %i.mi, label %bb.ck, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mj = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %29)
  %sqrt971 = tail call float @llvm.sqrt.f32(float %i.mj) ; 3 uses
  %i.mk = fcmp ogt float %sqrt971, f0x34000000
  br i1 %i.mk, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ml = fdiv float %i.mh, %sqrt971              ; 3 uses
  %i.mm = fmul float %i.ml, 1.050000e+00
  %i.mn = fcmp ogt float %i.mm, %.10726
  br i1 %i.mn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.mo = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.ml, i64 0
  %i.mp = insertelement <4 x float> %i.mo, float %i.dq, i64 1
  %i.mq = insertelement <4 x float> %i.mp, float %i.lz, i64 3
  %i.mr = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt971, i64 0
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.mt = fdiv <4 x float> %i.mq, %i.ms
  %i.mu = fcmp olt float %i.mb, 0.000000e+00
  %i.mv = zext i1 %i.mu to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an
  %.11727 = phi float [ %i.ml, %bb.ap ], [ %.10726, %bb.ao ], [ %.10726, %bb.an ] ; 3 uses
  %.11691 = phi i32 [ %i.mv, %bb.ap ], [ %.10690, %bb.ao ], [ %.10690, %bb.an ] ; 2 uses
  %.11676 = phi i32 [ 12, %bb.ap ], [ %.10675, %bb.ao ], [ %.10675, %bb.an ] ; 2 uses
  %.11 = phi ptr [ null, %bb.ap ], [ %.10, %bb.ao ], [ %.10, %bb.an ] ; 2 uses
  %i.mw = phi <4 x float> [ %i.mt, %bb.ap ], [ %i.ly, %bb.ao ], [ %i.ly, %bb.an ] ; 2 uses
  %i.mx = fneg float %i.dx                        ; 2 uses
  %i.my = fmul float %i.bs, %i.mx
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dr, float %i.my) ; 2 uses
  %i.na = tail call noundef float @llvm.fabs.f32(float %i.mz)
  %i.nb = fmul float %i.aa, %i.gz
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.hc, float %i.nb)
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.hh, float %i.nc)
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.an, float %i.hg, float %i.nd)
  %i.nf = fsub float %i.na, %i.ne                 ; 2 uses
  %i.ng = fcmp ogt float %i.nf, f0x34000000
  br i1 %i.ng, label %bb.ck, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.nh = fmul float %i.dr, %i.dr
  %i.ni = tail call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.nh)
  %i.nj = fadd float %i.ni, 0.000000e+00
  %sqrt972 = tail call float @llvm.sqrt.f32(float %i.nj) ; 3 uses
  %i.nk = fcmp ogt float %sqrt972, f0x34000000
  br i1 %i.nk, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.nl = fdiv float %i.nf, %sqrt972              ; 3 uses
  %i.nm = fmul float %i.nl, 1.050000e+00
  %i.nn = fcmp ogt float %i.nm, %.11727
  br i1 %i.nn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.no = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.dd, <4 x i32> <i32 poison, i32 poison, i32 5, i32 3>
  %i.np = insertelement <4 x float> %i.no, float %i.nl, i64 0
  %i.nq = insertelement <4 x float> %i.np, float %i.mx, i64 1
  %i.nr = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %sqrt972, i64 0
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.nt = fdiv <4 x float> %i.nq, %i.ns
  %i.nu = fcmp olt float %i.mz, 0.000000e+00
  %i.nv = zext i1 %i.nu to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %.12728 = phi float [ %i.nl, %bb.at ], [ %.11727, %bb.as ], [ %.11727, %bb.ar ] ; 3 uses
  %.12692 = phi i32 [ %i.nv, %bb.at ], [ %.11691, %bb.as ], [ %.11691, %bb.ar ] ; 2 uses
  %.12677 = phi i32 [ 13, %bb.at ], [ %.11676, %bb.as ], [ %.11676, %bb.ar ] ; 2 uses
  %.12 = phi ptr [ null, %bb.at ], [ %.11, %bb.as ], [ %.11, %bb.ar ] ; 2 uses
  %i.nw = phi <4 x float> [ %i.nt, %bb.at ], [ %i.mw, %bb.as ], [ %i.mw, %bb.ar ] ; 2 uses
  %i.nx = fneg float %i.dz                        ; 2 uses
  %i.ny = fmul float %i.bs, %i.nx
  %i.nz = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dt, float %i.ny) ; 2 uses
  %i.oa = tail call noundef float @llvm.fabs.f32(float %i.nz)
  %i.ob = fmul float %i.aa, %i.ha
  %i.oc = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.hd, float %i.ob)
end_hunk_0
