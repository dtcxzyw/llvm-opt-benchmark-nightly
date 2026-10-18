Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSequentialImpulseConstraintSolver?download=true
inline.NumInlined: 912
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN35btSequentialImpulseConstraintSolver12convertJointEP18btSolverConstraintP17btTypedConstraintRKNS2_17btConstraintInfo1EiiRK19btContactSolverInfo:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 136
  store ptr %2, ptr %i.db, align 8, !tbaa !81
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !113, !nonnull !100, !align !114 ; 9 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 372
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 380
  %i.dg = load float, ptr %i.df, align 4, !tbaa !60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 388
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 396
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !60
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 404
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !60
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 408
  %i.do = load float, ptr %i.dn, align 8, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 412
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !60
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 672
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 680
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !60
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cs, i64 36
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cs, i64 52
  %i.ee = load <2 x float>, ptr %i.cs, align 8, !tbaa !60 ; 5 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 0 ; 2 uses
  %i.eg = load <2 x float>, ptr %i.dd, align 4, !tbaa !60 ; 2 uses
  %i.eh = load float, ptr %i.dh, align 8, !tbaa !60 ; 5 uses
  %i.ei = load <2 x float>, ptr %i.di, align 4, !tbaa !60 ; 2 uses
  %i.ej = load <2 x float>, ptr %i.dr, align 8, !tbaa !60
  %i.ek = load float, ptr %i.de, align 4, !tbaa !60 ; 4 uses
  %i.el = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = shufflevector <2 x float> %i.eg, <2 x float> %i.ei, <2 x i32> <i32 1, i32 3>
  %i.eo = fmul <2 x float> %i.em, %i.en
  %i.ep = shufflevector <2 x float> %i.eg, <2 x float> %i.ei, <2 x i32> <i32 0, i32 2>
  %i.eq = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.eq, <2 x float> %i.eo)
  %i.es = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.dk, i64 1
  %i.eu = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.ev, <2 x float> %i.er)
  %i.ex = fmul float %i.ek, %i.do
  %i.ey = call float @llvm.fmuladd.f32(float %i.dm, float %i.ef, float %i.ex)
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.eh, float %i.ey)
  %i.fa = fmul <2 x float> %i.ew, %i.ej
  %i.fb = fmul float %i.ez, %i.dt
  %.sroa.3.12.vec.insert.i129 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fb, i64 0
  store <2 x float> %i.fa, ptr %i.du, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i129, ptr %.sroa.417.0..sroa_idx, align 8, !tbaa !81
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !115, !nonnull !100, !align !114 ; 9 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 372
  %i.fe = load <2 x float>, ptr %i.dv, align 8, !tbaa !60 ; 4 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 380
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !60
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 388
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 396
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !60
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fc, i64 404
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !60
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 408
  %i.fo = load float, ptr %i.fn, align 8, !tbaa !60
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 412
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !60
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fc, i64 672
  %i.fs = load float, ptr %i.dx, align 8, !tbaa !60 ; 7 uses
  %i.ft = load <2 x float>, ptr %i.fd, align 4, !tbaa !60 ; 2 uses
  %i.fu = load float, ptr %i.dw, align 4, !tbaa !60 ; 6 uses
  %i.fv = load <2 x float>, ptr %i.fi, align 4, !tbaa !60 ; 2 uses
  %i.fw = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = shufflevector <2 x float> %i.ft, <2 x float> %i.fv, <2 x i32> <i32 1, i32 3>
  %i.fz = fmul <2 x float> %i.fx, %i.fy
  %i.ga = shufflevector <2 x float> %i.ft, <2 x float> %i.fv, <2 x i32> <i32 0, i32 2>
  %i.gb = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.gb, <2 x float> %i.fz)
  %i.gd = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.fk, i64 1
  %i.gf = insertelement <2 x float> poison, float %i.fs, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gg, <2 x float> %i.gc)
  %i.gi = fmul float %i.fu, %i.fo
  %i.gj = call float @llvm.fmuladd.f32(float %i.fm, float %i.ff, float %i.gi)
  %i.gk = call noundef float @llvm.fmuladd.f32(float %i.fq, float %i.fs, float %i.gj)
  %i.gl = load <2 x float>, ptr %i.fr, align 8, !tbaa !60
  %i.gm = fmul <2 x float> %i.gh, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fc, i64 680
  %i.go = load float, ptr %i.gn, align 8, !tbaa !60
  %i.gp = fmul float %i.gk, %i.go
  %.sroa.3.12.vec.insert.i139 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gp, i64 0
  store <2 x float> %i.gm, ptr %i.dy, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i139, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !81
  %i.gq = load float, ptr %i.be, align 4, !tbaa !88 ; 3 uses
  %i.gr = load <2 x float>, ptr %i.dz, align 8, !tbaa !60 ; 3 uses
  %i.gs = load float, ptr %i.ea, align 4, !tbaa !60 ; 2 uses
  %i.gt = extractelement <2 x float> %i.gr, i64 0 ; 2 uses
  %i.gu = fmul float %i.gq, %i.gt
  %i.gv = fmul float %i.gq, %i.gs
  %i.gw = load float, ptr %i.eb, align 8, !tbaa !60 ; 3 uses
  %i.gx = fmul float %i.gq, %i.gw
  %i.gy = load float, ptr %i.bg, align 4, !tbaa !60
  %i.gz = load float, ptr %i.bi, align 4, !tbaa !60
  %i.ha = load float, ptr %i.bk, align 4, !tbaa !60
  %i.hb = load float, ptr %i.bl, align 4, !tbaa !88 ; 3 uses
  %i.hc = load <2 x float>, ptr %i.ec, align 8, !tbaa !60 ; 2 uses
  %i.hd = load float, ptr %i.ed, align 4, !tbaa !60 ; 2 uses
  %i.he = extractelement <2 x float> %i.hc, i64 0 ; 2 uses
  %i.hf = fmul float %i.hb, %i.he
  %i.hg = fmul float %i.hb, %i.hd
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !60 ; 3 uses
  %i.hj = fmul float %i.hb, %i.hi
  %i.hk = load <2 x float>, ptr %i.bf, align 4, !tbaa !60 ; 2 uses
  %i.hl = load <2 x float>, ptr %i.bh, align 4, !tbaa !60 ; 2 uses
  %i.hm = load <2 x float>, ptr %i.bj, align 4, !tbaa !60
  %i.hn = load <2 x float>, ptr %i.bm, align 4, !tbaa !60
  %i.ho = insertelement <4 x float> poison, float %i.ek, i64 0
  %i.hp = insertelement <4 x float> %i.ho, float %i.fu, i64 1
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hr = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.hs = shufflevector <2 x float> %i.hm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ht = shufflevector <4 x float> %i.hr, <4 x float> %i.hs, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.hu = shufflevector <2 x float> %i.hn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hv = shufflevector <4 x float> %i.ht, <4 x float> %i.hu, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hw = fmul <4 x float> %i.hq, %i.hv
  %i.hx = shufflevector <2 x float> %i.hk, <2 x float> %i.hl, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> %i.hs, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.hz = shufflevector <4 x float> %i.hy, <4 x float> %i.hu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ia = shufflevector <2 x float> %i.ee, <2 x float> %i.fe, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.ib = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> %i.ia, <4 x float> %i.hw)
  %i.ic = load float, ptr %i.bn, align 4, !tbaa !60
  %i.id = insertelement <4 x float> poison, float %i.gy, i64 0
  %i.ie = insertelement <4 x float> %i.id, float %i.gz, i64 1
  %i.if = insertelement <4 x float> %i.ie, float %i.ha, i64 2
  %i.ig = insertelement <4 x float> %i.if, float %i.ic, i64 3
  %i.ih = insertelement <4 x float> poison, float %i.eh, i64 0
  %i.ii = insertelement <4 x float> %i.ih, float %i.fs, i64 1
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> %i.ij, <4 x float> %i.ib) ; 4 uses
  %i.il = load float, ptr %i.bo, align 4, !tbaa !60
  %i.im = load float, ptr %i.bp, align 8, !tbaa !60
  %i.in = fmul float %i.fu, %i.im
  %i.io = call float @llvm.fmuladd.f32(float %i.il, float %i.ff, float %i.in)
  %i.ip = load float, ptr %i.bq, align 4, !tbaa !60
  %i.iq = call noundef float @llvm.fmuladd.f32(float %i.ip, float %i.fs, float %i.io)
  %i.ir = load float, ptr %i.br, align 4, !tbaa !60
  %i.is = load float, ptr %i.bs, align 8, !tbaa !60
  %i.it = fmul float %i.fu, %i.is
  %i.iu = call float @llvm.fmuladd.f32(float %i.ir, float %i.ff, float %i.it)
  %i.iv = load float, ptr %i.bt, align 4, !tbaa !60
  %i.iw = call noundef float @llvm.fmuladd.f32(float %i.iv, float %i.fs, float %i.iu)
  %i.ix = fmul float %i.gs, %i.gv
  %i.iy = call float @llvm.fmuladd.f32(float %i.gu, float %i.gt, float %i.ix)
  %i.iz = call noundef float @llvm.fmuladd.f32(float %i.gx, float %i.gw, float %i.iy)
  %i.ja = extractelement <4 x float> %i.ik, i64 1
  %i.jb = fmul float %i.ek, %i.ja
  %i.jc = extractelement <4 x float> %i.ik, i64 0
  %i.jd = call float @llvm.fmuladd.f32(float %i.jc, float %i.ef, float %i.jb)
  %i.je = extractelement <4 x float> %i.ik, i64 2
  %i.jf = call noundef float @llvm.fmuladd.f32(float %i.je, float %i.eh, float %i.jd)
  %i.jg = fadd float %i.iz, %i.jf
  %i.jh = fmul float %i.hd, %i.hg
  %i.ji = call float @llvm.fmuladd.f32(float %i.hf, float %i.he, float %i.jh)
  %i.jj = call noundef float @llvm.fmuladd.f32(float %i.hj, float %i.hi, float %i.ji)
  %i.jk = fadd float %i.jg, %i.jj
  %i.jl = fmul float %i.fu, %i.iq
  %i.jm = extractelement <4 x float> %i.ik, i64 3
  %i.jn = call float @llvm.fmuladd.f32(float %i.jm, float %i.ff, float %i.jl)
  %i.jo = call noundef float @llvm.fmuladd.f32(float %i.iw, float %i.fs, float %i.jn)
  %i.jp = fadd float %i.jk, %i.jo                 ; 2 uses
  %i.jq = call noundef float @llvm.fabs.f32(float %i.jp)
  %i.jr = fcmp ogt float %i.jq, f0x34000000
  %i.js = fdiv float 1.000000e+00, %i.jp
  %i.jt = select i1 %i.jr, float %i.js, float 0.000000e+00 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.cs, i64 108
  store float %i.jt, ptr %i.ju, align 4, !tbaa !61
  %i.jv = load ptr, ptr %i.bu, align 8, !tbaa !68
  %.not = icmp eq ptr %i.jv, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0209.0.copyload = load float, ptr %i.bv, align 8
  %.sroa.5210.0.copyload = load float, ptr %.sroa.5210.0..sroa_idx, align 4
  %.sroa.7211.0.copyload = load float, ptr %.sroa.7211.0..sroa_idx, align 8
  %.sroa.0202.0.copyload = load float, ptr %i.bw, align 8
  %.sroa.5203.0.copyload = load float, ptr %.sroa.5203.0..sroa_idx, align 4
  %.sroa.7204.0.copyload = load float, ptr %.sroa.7204.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.7211.0234 = phi float [ %.sroa.7211.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.5210.0232 = phi float [ %.sroa.5210.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.0209.0230 = phi float [ %.sroa.0209.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.7204.0 = phi float [ %.sroa.7204.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.5203.0 = phi float [ %.sroa.5203.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.sroa.0202.0 = phi float [ %.sroa.0202.0.copyload, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.jw = load ptr, ptr %i.bx, align 8, !tbaa !68
  %.not125 = icmp eq ptr %i.jw, null
  br i1 %.not125, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0195.0.copyload = load float, ptr %i.by, align 8
  %.sroa.5196.0.copyload = load float, ptr %.sroa.5196.0..sroa_idx, align 4
  %.sroa.7197.0.copyload = load float, ptr %.sroa.7197.0..sroa_idx, align 8
  %.sroa.0190.0.copyload = load float, ptr %i.bz, align 8
  %.sroa.5191.0.copyload = load float, ptr %.sroa.5191.0..sroa_idx, align 4
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.0195.0244 = phi float [ %.sroa.0195.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.5196.0242 = phi float [ %.sroa.5196.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.7197.0240 = phi float [ %.sroa.7197.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.7.0 = phi float [ %.sroa.7.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.5191.0 = phi float [ %.sroa.5191.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.0190.0 = phi float [ %.sroa.0190.0.copyload, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.jx = load float, ptr %i.cb, align 4, !tbaa !60
  %i.jy = load float, ptr %i.cd, align 4, !tbaa !60
  %i.jz = load float, ptr %i.cf, align 4, !tbaa !60
  %i.ka = load float, ptr %i.ch, align 4, !tbaa !60
  %i.kb = load <2 x float>, ptr %i.ca, align 4, !tbaa !60 ; 2 uses
  %i.kc = load <2 x float>, ptr %i.cc, align 4, !tbaa !60 ; 2 uses
  %i.kd = load <2 x float>, ptr %i.ce, align 4, !tbaa !60
  %i.ke = load <2 x float>, ptr %i.cg, align 4, !tbaa !60
  %8 = insertelement <4 x float> poison, float %.sroa.0209.0230, i64 0
  %9 = insertelement <4 x float> %8, float %.sroa.0202.0, i64 1
  %10 = insertelement <4 x float> %9, float %.sroa.0195.0244, i64 2
  %11 = insertelement <4 x float> %10, float %.sroa.0190.0, i64 3
  %12 = shufflevector <2 x float> %i.kb, <2 x float> %i.kc, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %13 = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %14 = shufflevector <4 x float> %12, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %15 = shufflevector <2 x float> %i.ke, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %16 = shufflevector <4 x float> %14, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %17 = fadd <4 x float> %11, %16
  %18 = insertelement <4 x float> poison, float %.sroa.5210.0232, i64 0
  %19 = insertelement <4 x float> %18, float %.sroa.5203.0, i64 1
  %20 = insertelement <4 x float> %19, float %.sroa.5196.0242, i64 2
  %i.kf = insertelement <4 x float> %20, float %.sroa.5191.0, i64 3
  %21 = shufflevector <2 x float> %i.kb, <2 x float> %i.kc, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %22 = shufflevector <4 x float> %21, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %23 = shufflevector <4 x float> %22, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.kg = fadd <4 x float> %i.kf, %23
  %i.kh = shufflevector <2 x float> %i.gr, <2 x float> %i.ee, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ki = shufflevector <2 x float> %i.hc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.kj = shufflevector <4 x float> %i.kh, <4 x float> %i.ki, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.kk = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.kl = shufflevector <4 x float> %i.kj, <4 x float> %i.kk, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.km = fmul <4 x float> %i.kl, %i.kg
  %i.kn = shufflevector <2 x float> %i.gr, <2 x float> %i.ee, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ko = shufflevector <4 x float> %i.kn, <4 x float> %i.ki, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.kp = shufflevector <4 x float> %i.ko, <4 x float> %i.kk, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kp, <4 x float> %17, <4 x float> %i.km)
  %24 = insertelement <4 x float> poison, float %.sroa.7211.0234, i64 0
  %25 = insertelement <4 x float> %24, float %.sroa.7204.0, i64 1
  %26 = insertelement <4 x float> %25, float %.sroa.7197.0240, i64 2
  %27 = insertelement <4 x float> %26, float %.sroa.7.0, i64 3
  %28 = insertelement <4 x float> poison, float %i.jx, i64 0
  %29 = insertelement <4 x float> %28, float %i.jy, i64 1
  %30 = insertelement <4 x float> %29, float %i.jz, i64 2
  %31 = insertelement <4 x float> %30, float %i.ka, i64 3
  %32 = fadd <4 x float> %27, %31
  %i.kr = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.ks = insertelement <4 x float> %i.kr, float %i.eh, i64 1
  %i.kt = insertelement <4 x float> %i.ks, float %i.hi, i64 2
  %i.ku = insertelement <4 x float> %i.kt, float %i.fs, i64 3
  %i.kv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ku, <4 x float> %32, <4 x float> %i.kq) ; 4 uses
  %shift = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.kv, %shift
  %i.kw = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.kx = shufflevector <4 x float> %i.kv, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %shift261 = fadd <4 x float> %i.kw, %i.kx
  %foldExtExtBinop262 = fadd <4 x float> %foldExtExtBinop, %shift261
  %i.ky = extractelement <4 x float> %foldExtExtBinop262, i64 0
  %i.kz = getelementptr inbounds nuw i8, ptr %i.cs, i64 112 ; 2 uses
  %i.la = load float, ptr %i.kz, align 8, !tbaa !57
  %i.lb = fneg float %i.ky
  %i.lc = call float @llvm.fmuladd.f32(float %i.lb, float %i.ci, float 0.000000e+00)
  %i.ld = fmul float %i.jt, %i.la
  %i.le = fmul float %i.jt, %i.lc
  %i.lf = fadd float %i.ld, %i.le
  store float %i.lf, ptr %i.kz, align 8, !tbaa !57
  %i.lg = getelementptr inbounds nuw i8, ptr %i.cs, i64 100
  store float 0.000000e+00, ptr %i.lg, align 4, !tbaa !58
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %i.lh = load i32, ptr %3, align 4, !tbaa !118
  %i.li = sext i32 %i.lh to i64
  %i.lj = icmp slt i64 %indvars.iv.next253, %i.li
  br i1 %i.lj, label %bb.d, label %._crit_edge250, !llvm.loop !161
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN35btSequentialImpulseConstraintSolver13convertJointsEPP17btTypedConstraintiRK19btContactSolverInfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str)
  %i.a = icmp sgt i32 %2, 0                       ; 3 uses
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !50   ; 2 uses
  %i.d = icmp sgt i32 %2, %i.c
  br i1 %i.d, label %bb.b, label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit

bb.b:                                             ; preds = %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !51
  %i.g = icmp slt i32 %i.f, %2
  br i1 %i.g, label %bb.c, label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %2 to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.i, i32 noundef 16)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.d
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !50
  br label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE8allocateEi.exit.i.i: ; preds = %.noexc, %bb.c
  %i.k = phi i32 [ %.pre.i, %.noexc ], [ %i.c, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.j, %.noexc ], [ null, %bb.c ] ; 8 uses
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49   ; 9 uses
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE8allocateEi.exit.i.i
  %i.o = ptrtoaddr ptr %i.n to i64
  %.0.i.i.i113 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.k to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.k, 8
  %i.p = sub i64 %i.o, %.0.i.i.i113
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <2 x i64>, ptr %i.r, align 4, !tbaa !70
  %wide.load114 = load <2 x i64>, ptr %i.s, align 4, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x i64> %wide.load, ptr %i.q, align 4, !tbaa !70
  store <2 x i64> %wide.load114, ptr %i.t, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i.prol
  %i.x = load i64, ptr %i.w, align 4, !tbaa !70
  store i64 %i.x, ptr %i.v, align 4, !tbaa !70
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !181

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.i
  %i.ac = load i64, ptr %i.ab, align 4, !tbaa !70
  store i64 %i.ac, ptr %i.aa, align 4, !tbaa !70
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i
  %i.af = load i64, ptr %i.ae, align 4, !tbaa !70
  store i64 %i.af, ptr %i.ad, align 4, !tbaa !70
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i.1
  %i.ai = load i64, ptr %i.ah, align 4, !tbaa !70
  store i64 %i.ai, ptr %i.ag, align 4, !tbaa !70
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i.2
  %i.al = load i64, ptr %i.ak, align 4, !tbaa !70
  store i64 %i.al, ptr %i.aj, align 4, !tbaa !70
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !182

_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.an = load i8, ptr %i.am, align 8, !tbaa !48, !range !72, !noundef !100
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.n)
          to label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE10deallocateEv.exit.i.i unwind label %bb.n

_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 1, ptr %i.ap, align 8, !tbaa !48
  store ptr %.0.i.i.i, ptr %i.m, align 8, !tbaa !49
  store i32 %2, ptr %i.e, align 8, !tbaa !51
  br label %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit

_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit: ; preds = %._crit_edge, %bb.b, %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE10deallocateEv.exit.i.i
  store i32 %2, ptr %i.b, align 4, !tbaa !50
  br i1 %i.a, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE18resizeNoInitializeEi.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 280
  %wide.trip.count95 = zext nneg i32 %2 to i64
  br label %bb.o

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !126 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(72) %i.as)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store float 0.000000e+00, ptr %i.aw, align 8, !tbaa !127
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !183

bb.g:                                             ; preds = %.lr.ph
end_hunk_0
