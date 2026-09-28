Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuJacobiContactSolver?download=true
inline.NumInlined: 584
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_Z14setConstraint4RK9b3Vector3S1_S1_fRK11b3Matrix3x3S1_S1_S1_fS4_P10b3Contact4fffffP16b3GpuConstraint4:bb.a
  %i.cz = load <4 x float>, ptr %i.x, align 16    ; 2 uses
  %i.da = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.db = shufflevector <4 x float> %i.bi, <4 x float> %i.cy, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.de = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.cv, i64 1
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dh = fmul <4 x float> %i.dd, %i.dg
  %i.di = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> %i.cy, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> %i.da, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.dm = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.dn = shufflevector <4 x float> %i.bi, <4 x float> %i.dm, <4 x i32> <i32 2, i32 4, i32 4, i32 4>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 4 uses
  %i.dp = extractelement <4 x float> %i.do, i64 0
  %i.dq = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.bq, float %i.dp)
  %i.dr = extractelement <4 x float> %i.do, i64 1
  %i.ds = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.cj, float %i.dr)
  %i.dt = extractelement <4 x float> %i.do, i64 2
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.cu, float %i.cj, float %i.dt)
  %i.dv = load float, ptr %i.aa, align 8, !tbaa !69
  %i.dw = extractelement <4 x float> %i.do, i64 3
  %i.dx = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.cj, float %i.dw)
  %i.dy = fmul float %i.du, %i.cv
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.bm, float %i.dy)
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.dx, float %i.cj, float %i.dz)
  %i.eb = fadd float %3, %i.dq
  %i.ec = fadd float %8, %i.ea
  %i.ed = fmul float %15, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.eb, float %14, float %i.ed)
  %i.ef = fdiv float -1.000000e+00, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store float %i.ef, ptr %i.eg, align 4, !tbaa !68
  %i.eh = load float, ptr %1, align 16, !tbaa !69
  %i.ei = load float, ptr %i.ab, align 4, !tbaa !69
  %i.ej = fmul float %.sroa.6192.0.copyload, %i.ei
  %i.ek = load <4 x float>, ptr %1, align 16
  %i.el = load float, ptr %i.ac, align 8, !tbaa !69
  %i.em = load float, ptr %i.ad, align 8, !tbaa !69
  %i.en = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.eh, float %i.ej)
  %i.eo = load <4 x float>, ptr %2, align 16      ; 2 uses
  %i.ep = load <4 x float>, ptr %6, align 16      ; 2 uses
  %i.eq = load <4 x float>, ptr %7, align 16      ; 2 uses
  %i.er = insertelement <4 x float> %i.eo, float %i.en, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> %i.ep, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.et = shufflevector <4 x float> %i.es, <4 x float> %i.eq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eu = shufflevector <4 x float> %i.bi, <4 x float> %i.bf, <4 x i32> <i32 poison, i32 0, i32 6, i32 poison>
  %i.ev = insertelement <4 x float> %i.eu, float 1.000000e+00, i64 0
  %i.ew = insertelement <4 x float> %i.ev, float %i.cv, i64 3
  %i.ex = fmul <4 x float> %i.et, %i.ew
  %i.ey = shufflevector <4 x float> %i.bd, <4 x float> %i.bi, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.fa = insertelement <4 x float> %i.ez, float %i.bm, i64 3
  %i.fb = shufflevector <4 x float> %i.ek, <4 x float> %i.eo, <4 x i32> <i32 2, i32 4, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.ep, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> %i.eq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.fd, <4 x float> %i.ex) ; 4 uses
  %i.ff = extractelement <4 x float> %i.fe, i64 1
  %i.fg = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.el, float %i.ff)
  %i.fh = extractelement <4 x float> %i.fe, i64 0
  %i.fi = fadd float %i.fh, %i.fg
  %i.fj = extractelement <4 x float> %i.fe, i64 2
  %i.fk = tail call noundef float @llvm.fmuladd.f32(float %i.bj, float %i.em, float %i.fj)
  %i.fl = fadd float %i.fi, %i.fk
  %i.fm = load float, ptr %i.ae, align 8, !tbaa !69
  %i.fn = extractelement <4 x float> %i.fe, i64 3
  %i.fo = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.fm, float %i.fn)
  %i.fp = fadd float %i.fl, %i.fo
  %i.fq = fmul float %i.fp, 0.000000e+00          ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  store float %i.fq, ptr %i.fr, align 4, !tbaa !68
  %i.fs = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !68
  %i.fu = fadd float %12, %i.ft
  %i.fv = fmul float %13, %i.fu
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.f, float %i.fq)
  store float %i.fw, ptr %i.fr, align 4, !tbaa !68
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.fx = phi i64 [ 128, %bb.d ], [ 96, %bb.c ]
  %i.fy = getelementptr inbounds nuw i8, ptr %16, i64 %i.fx
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv
  store float 0.000000e+00, ptr %i.fz, align 4, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !109

bb.f:                                             ; preds = %.preheader
  %i.ga = fdiv nnan float 1.000000e+00, %i.ag
  %i.gb = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gd = fmul <4 x float> %i.gc, %i.ox           ; 5 uses
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gf = shufflevector <4 x float> %i.gd, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> %i.pa, <2 x i32> <i32 0, i32 3>
  %i.gh = load float, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !68 ; 6 uses
  %i.gi = tail call noundef float @llvm.fabs.f32(float %i.gh)
  %i.gj = fcmp ogt float %i.gi, f0x3F3504F3
  br i1 %i.gj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gk = load float, ptr %.sroa.6192.0..sroa_idx, align 4, !tbaa !68 ; 3 uses
  %i.gl = fmul nnan float %i.gh, %i.gh
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gl) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.gm)
  %i.gn = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.go = fneg float %i.gh
  %i.gp = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.gn, i64 0 ; 2 uses
  %i.gq = insertelement <4 x float> %i.gp, float %i.gk, i64 1
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gs = shufflevector <4 x float> %i.gp, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 poison, i32 0, i32 6, i32 0>
  %i.gt = insertelement <4 x float> %i.gs, float %i.go, i64 0
  %i.gu = fmul <4 x float> %i.gr, %i.gt           ; 3 uses
  %i.gv = extractelement <4 x float> %i.gu, i64 0
  %i.gw = load float, ptr %i.h, align 16, !tbaa !68 ; 2 uses
  %i.gx = fneg float %i.gw
  %i.gy = insertelement <4 x float> poison, float %i.gm, i64 0
  %i.gz = shufflevector <4 x float> %i.gu, <4 x float> %i.gy, <4 x i32> <i32 1, i32 0, i32 4, i32 4>
  %i.ha = insertelement <4 x float> poison, float %i.gx, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %i.gw, i64 1
  %i.hc = insertelement <4 x float> %i.hb, float %i.gn, i64 2
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.he = fmul <4 x float> %i.gz, %i.hd
  br label %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.hf = load float, ptr %i.h, align 16, !tbaa !68 ; 3 uses
  %i.hg = load float, ptr %.sroa.6192.0..sroa_idx, align 4, !tbaa !68 ; 3 uses
  %i.hh = fmul float %i.hg, %i.hg
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.hf, float %i.hh) ; 2 uses
  %sqrt43.i = tail call float @llvm.sqrt.f32(float %i.hi)
  %i.hj = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.hk = fneg float %i.hg
  %i.hl = fmul float %i.hj, %i.hk                 ; 3 uses
  %i.hm = fmul float %i.hf, %i.hj                 ; 4 uses
  %i.hn = fneg float %i.gh                        ; 2 uses
  %i.ho = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.hp = insertelement <4 x float> %i.ho, float %i.hi, i64 1
  %i.hq = insertelement <4 x float> %i.hp, float %i.hn, i64 2
  %i.hr = insertelement <4 x float> %i.hq, float %i.hm, i64 3
  %i.hs = insertelement <4 x float> poison, float %i.hl, i64 0
  %i.ht = insertelement <4 x float> %i.hs, float %i.hj, i64 1
  %i.hu = insertelement <4 x float> %i.ht, float %i.hm, i64 2
  %i.hv = insertelement <4 x float> %i.hu, float %i.hn, i64 3
  %i.hw = fmul <4 x float> %i.hr, %i.hv
  %i.hx = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.hm, i64 0
  %i.hy = insertelement <4 x float> %i.hx, float %i.hl, i64 2
  br label %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit

_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit:   ; preds = %bb.g, %bb.h
  %.sroa.5.0 = phi float [ %i.gv, %bb.g ], [ %i.hm, %bb.h ]
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.hl, %bb.h ]
  %i.hz = phi <4 x float> [ %i.gu, %bb.g ], [ %i.hy, %bb.h ] ; 2 uses
  %i.ia = phi <4 x float> [ %i.he, %bb.g ], [ %i.hw, %bb.h ] ; 4 uses
  %i.ib = load float, ptr %i.n, align 8, !tbaa !69
  %i.ic = load float, ptr %5, align 16, !tbaa !69
  %i.id = getelementptr inbounds nuw i8, ptr %16, i64 152
  %i.ie = fneg <4 x float> %i.hz                  ; 2 uses
  %i.if = shufflevector <4 x float> %i.ie, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ig = load <2 x float>, ptr %0, align 16, !tbaa !69
  %i.ih = load <2 x float>, ptr %i.m, align 4, !tbaa !69 ; 2 uses
  %i.ii = shufflevector <2 x float> %i.ig, <2 x float> %i.ih, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.ij = insertelement <4 x float> %i.ii, float %i.ib, i64 2 ; 2 uses
  %i.ik = fsub <4 x float> %i.gd, %i.ij           ; 7 uses
  %i.il = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.im = shufflevector <2 x float> %i.ih, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.in = shufflevector <4 x float> %i.ij, <4 x float> %i.im, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.io = fsub <4 x float> %i.il, %i.in           ; 4 uses
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.iq = fmul <4 x float> %i.ip, %i.if
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.is = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ik, <4 x float> %i.hz, <4 x float> %i.ir) ; 7 uses
  %i.it = extractelement <4 x float> %i.io, i64 3
  %i.iu = extractelement <4 x float> %i.is, i64 3
  %i.iv = fneg float %i.iu                        ; 2 uses
  %i.iw = extractelement <4 x float> %i.is, i64 2
  %i.ix = extractelement <4 x float> %i.is, i64 1 ; 3 uses
  %i.iy = load float, ptr %i.p, align 8, !tbaa !69
  %i.iz = extractelement <4 x float> %i.is, i64 0 ; 4 uses
  %i.ja = load float, ptr %i.q, align 16, !tbaa !69
  %i.jb = load float, ptr %i.s, align 8, !tbaa !69
  %i.jc = load float, ptr %i.t, align 16, !tbaa !69
  %i.jd = load float, ptr %i.r, align 4, !tbaa !69
  %i.je = load float, ptr %i.u, align 4, !tbaa !69
  %i.jf = shufflevector <4 x float> %i.gd, <4 x float> %i.ik, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.jg = insertelement <4 x float> %i.jf, float %i.jd, i64 2
  %i.jh = insertelement <4 x float> %i.jg, float %i.je, i64 3
  %i.ji = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ic, i64 0
  %i.jj = fsub <4 x float> %i.jh, %i.ji           ; 4 uses
  %i.jk = shufflevector <4 x float> %i.ie, <4 x float> %i.is, <4 x i32> <i32 1, i32 2, i32 6, i32 6>
  %i.jl = fmul <4 x float> %i.jj, %i.jk           ; 4 uses
  %i.jm = extractelement <4 x float> %i.jl, i64 0
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.it, float %.sroa.0.0, float %i.jm)
  %i.jo = extractelement <4 x float> %i.jl, i64 1
  %i.jp = extractelement <4 x float> %i.jj, i64 0
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.jp, float %.sroa.5.0, float %i.jo)
  %i.jr = fneg float %i.jq                        ; 4 uses
  %i.js = extractelement <4 x float> %i.jl, i64 3
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.jc, float %i.ix, float %i.js)
  %i.ju = load float, ptr %i.v, align 8, !tbaa !69
  %i.jv = tail call noundef float @llvm.fmuladd.f32(float %i.ju, float %i.iz, float %i.jt)
  %i.jw = load float, ptr %i.w, align 8, !tbaa !69
  %i.jx = load float, ptr %i.y, align 8, !tbaa !69
  %i.jy = fneg float %i.jn                        ; 2 uses
  %i.jz = load float, ptr %4, align 16, !tbaa !69
  %i.ka = load float, ptr %i.o, align 4, !tbaa !69
  %i.kb = fmul float %i.ka, %i.iw
  %17 = tail call float @llvm.fmuladd.f32(float %i.jz, float %i.ix, float %i.kb)
  %i.kc = tail call noundef float @llvm.fmuladd.f32(float %i.iy, float %i.iz, float %17)
  %18 = extractelement <4 x float> %i.jl, i64 2
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.ja, float %i.ix, float %18)
  %i.ke = tail call noundef float @llvm.fmuladd.f32(float %i.jb, float %i.iz, float %i.kd)
  %i.kf = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.kg = load <4 x float>, ptr %i.x, align 16    ; 2 uses
  %i.kh = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.ki = shufflevector <4 x float> %i.is, <4 x float> %i.kf, <4 x i32> <i32 2, i32 5, i32 poison, i32 poison>
  %i.kj = shufflevector <4 x float> %i.ki, <4 x float> %i.kg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> %i.kh, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.kl = insertelement <4 x float> poison, float %i.ke, i64 0
  %i.km = insertelement <4 x float> %i.kl, float %i.jy, i64 1
  %i.kn = shufflevector <4 x float> %i.km, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ko = fmul <4 x float> %i.kk, %i.kn
  %i.kp = insertelement <4 x float> poison, float %i.kc, i64 0
  %i.kq = shufflevector <4 x float> %i.kp, <4 x float> %i.kf, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> %i.kg, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ks = shufflevector <4 x float> %i.kr, <4 x float> %i.kh, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.kt = insertelement <4 x float> poison, float %i.iv, i64 0
  %i.ku = shufflevector <4 x float> %i.is, <4 x float> %i.kt, <4 x i32> <i32 1, i32 4, i32 4, i32 4>
  %i.kv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ks, <4 x float> %i.ku, <4 x float> %i.ko) ; 4 uses
  %i.kw = extractelement <4 x float> %i.kv, i64 0
  %i.kx = tail call noundef float @llvm.fmuladd.f32(float %i.jv, float %i.iz, float %i.kw)
  %i.ky = extractelement <4 x float> %i.kv, i64 1
  %i.kz = tail call noundef float @llvm.fmuladd.f32(float %i.jw, float %i.jr, float %i.ky)
  %i.la = extractelement <4 x float> %i.kv, i64 2
  %i.lb = tail call noundef float @llvm.fmuladd.f32(float %i.jx, float %i.jr, float %i.la)
  %i.lc = load float, ptr %i.aa, align 8, !tbaa !69
  %i.ld = extractelement <4 x float> %i.kv, i64 3
  %i.le = tail call noundef float @llvm.fmuladd.f32(float %i.lc, float %i.jr, float %i.ld)
  %i.lf = fmul float %i.lb, %i.jy
  %i.lg = tail call float @llvm.fmuladd.f32(float %i.kz, float %i.iv, float %i.lf)
  %i.lh = tail call noundef float @llvm.fmuladd.f32(float %i.le, float %i.jr, float %i.lg)
  %i.li = fadd float %3, %i.kx
  %i.lj = fadd float %8, %i.lh
  %i.lk = fmul float %15, %i.lj
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.li, float %14, float %i.lk)
  %i.lm = fdiv float -1.000000e+00, %i.ll
  store float %i.lm, ptr %i.g, align 16, !tbaa !68
  store float 0.000000e+00, ptr %i.id, align 8, !tbaa !68
  %i.ln = fneg <4 x float> %i.ia                  ; 2 uses
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %shift = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fmul <4 x float> %shift, %i.lo
  %i.lp = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.lq = extractelement <4 x float> %i.ik, i64 1
  %i.lr = extractelement <4 x float> %i.ia, i64 1
  %i.ls = shufflevector <4 x float> %i.io, <4 x float> %i.ik, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %i.lt = shufflevector <4 x float> %i.ls, <4 x float> %i.jj, <4 x i32> <i32 2, i32 0, i32 1, i32 4>
  %i.lu = shufflevector <4 x float> %i.lo, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.lv = fmul <4 x float> %i.lt, %i.lu
  %i.lw = shufflevector <4 x float> %i.ik, <4 x float> %i.io, <4 x i32> <i32 0, i32 3, i32 2, i32 7>
  %i.lx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lw, <4 x float> %i.ia, <4 x float> %i.lv) ; 7 uses
  %i.ly = extractelement <4 x float> %i.lx, i64 1
  %i.lz = fneg float %i.ly                        ; 2 uses
  %i.ma = extractelement <4 x float> %i.lx, i64 3
  %i.mb = fneg float %i.ma                        ; 2 uses
  %i.mc = extractelement <4 x float> %i.lx, i64 2
  %i.md = load float, ptr %i.p, align 8, !tbaa !69
  %i.me = extractelement <4 x float> %i.lx, i64 0 ; 2 uses
  %i.mf = load float, ptr %i.s, align 8, !tbaa !69
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.lr, float %i.lp) ; 2 uses
  %i.mh = load <4 x float>, ptr %4, align 16      ; 2 uses
  %i.mi = load <4 x float>, ptr %i.q, align 16    ; 2 uses
  %i.mj = load <4 x float>, ptr %i.t, align 16    ; 2 uses
  %i.mk = shufflevector <4 x float> %i.ik, <4 x float> %i.mh, <4 x i32> <i32 3, i32 5, i32 poison, i32 poison>
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> %i.mj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mn = shufflevector <4 x float> %i.ln, <4 x float> %i.lx, <4 x i32> <i32 2, i32 6, i32 6, i32 6>
  %i.mo = fmul <4 x float> %i.mm, %i.mn
  %i.mp = shufflevector <4 x float> %i.jj, <4 x float> %i.mh, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> %i.mj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ms = shufflevector <4 x float> %i.ia, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.mt = insertelement <2 x float> %i.ms, float %i.mg, i64 1
  %i.mu = shufflevector <2 x float> %i.mt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.mv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mr, <4 x float> %i.mu, <4 x float> %i.mo) ; 4 uses
  %i.mw = extractelement <4 x float> %i.mv, i64 0
  %i.mx = fneg float %i.mw                        ; 4 uses
  %i.my = extractelement <4 x float> %i.mv, i64 1
  %i.mz = tail call noundef float @llvm.fmuladd.f32(float %i.md, float %i.me, float %i.my)
  %i.na = extractelement <4 x float> %i.mv, i64 2
  %i.nb = tail call noundef float @llvm.fmuladd.f32(float %i.mf, float %i.me, float %i.na)
  %i.nc = load float, ptr %i.v, align 8, !tbaa !69
  %i.nd = fmul float %i.mc, %i.nb
  %i.ne = load float, ptr %i.w, align 8, !tbaa !69
  %i.nf = load float, ptr %i.y, align 8, !tbaa !69
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.mz, float %i.mg, float %i.nd)
  %i.nh = load <4 x float>, ptr %9, align 16      ; 2 uses
  %i.ni = load <4 x float>, ptr %i.x, align 16    ; 2 uses
  %i.nj = load <4 x float>, ptr %i.z, align 16    ; 2 uses
  %i.nk = insertelement <4 x float> poison, float %i.nc, i64 0
  %i.nl = shufflevector <4 x float> %i.nk, <4 x float> %i.nh, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.nm = shufflevector <4 x float> %i.nl, <4 x float> %i.ni, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> %i.nj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.no = shufflevector <4 x float> %i.lx, <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.np = shufflevector <4 x float> %i.mv, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.nq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nn, <4 x float> %i.no, <4 x float> %i.np)
  %i.nr = insertelement <4 x float> %i.nh, float %i.ng, i64 0
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> %i.ni, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nt = shufflevector <4 x float> %i.ns, <4 x float> %i.nj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nu = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.mb, i64 1
  %i.nv = shufflevector <4 x float> %i.nu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.nw = fmul <4 x float> %i.nt, %i.nv
  %i.nx = insertelement <4 x float> poison, float %i.lz, i64 0
  %i.ny = shufflevector <4 x float> %i.lx, <4 x float> %i.nx, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.nz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nq, <4 x float> %i.ny, <4 x float> %i.nw) ; 4 uses
  %i.oa = extractelement <4 x float> %i.nz, i64 1
  %i.ob = tail call noundef float @llvm.fmuladd.f32(float %i.ne, float %i.mx, float %i.oa)
  %i.oc = extractelement <4 x float> %i.nz, i64 2
  %i.od = tail call noundef float @llvm.fmuladd.f32(float %i.nf, float %i.mx, float %i.oc)
  %i.oe = load float, ptr %i.aa, align 8, !tbaa !69
  %i.of = extractelement <4 x float> %i.nz, i64 3
  %i.og = tail call noundef float @llvm.fmuladd.f32(float %i.oe, float %i.mx, float %i.of)
  %i.oh = fmul float %i.od, %i.mb
  %i.oi = tail call float @llvm.fmuladd.f32(float %i.ob, float %i.lz, float %i.oh)
  %i.oj = tail call noundef float @llvm.fmuladd.f32(float %i.og, float %i.mx, float %i.oi)
  %i.ok = extractelement <4 x float> %i.nz, i64 0
  %i.ol = fadd float %3, %i.ok
  %i.om = fadd float %8, %i.oj
  %i.on = fmul float %15, %i.om
  %i.oo = tail call float @llvm.fmuladd.f32(float %i.ol, float %14, float %i.on)
  %i.op = fdiv float -1.000000e+00, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %16, i64 148
  store float %i.op, ptr %i.oq, align 4, !tbaa !68
  %i.or = getelementptr inbounds nuw i8, ptr %16, i64 156
  store float 0.000000e+00, ptr %i.or, align 4, !tbaa !68
  %i.os = getelementptr inbounds nuw i8, ptr %16, i64 80
  store <2 x float> %i.ge, ptr %i.os, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 88
  store <2 x float> %i.gg, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !69
  %.pre = load float, ptr %i.j, align 4, !tbaa !68
  br label %bb.i

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.preheader ], [ 0, %bb.b ] ; 2 uses
  %.sroa.16.0204 = phi <2 x float> [ %i.pa, %.preheader ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.0141.0203 = phi <2 x float> [ %i.oy, %.preheader ], [ zeroinitializer, %bb.b ]
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %indvars.iv212
  %i.ou = load <3 x float>, ptr %i.ot, align 16, !tbaa !69
  %i.ov = shufflevector <3 x float> %i.ou, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ow = shufflevector <2 x float> %.sroa.0141.0203, <2 x float> %.sroa.16.0204, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ox = fadd <4 x float> %i.ow, %i.ov           ; 3 uses
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.oz = shufflevector <4 x float> %i.ox, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.pa = shufflevector <2 x float> %i.oz, <2 x float> %.sroa.16.0204, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.pb = trunc nuw nsw i64 %indvars.iv.next213 to i32
  %i.pc = uitofp nneg i32 %i.pb to float
  %i.pd = fcmp ogt float %i.ag, %i.pc
  br i1 %i.pd, label %.preheader, label %bb.f, !llvm.loop !110

bb.i:                                             ; preds = %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit, %bb.b
  %i.pe = phi float [ %.pre, %_Z13b3PlaneSpace1I9b3Vector3EvRKT_RS1_S4_.exit ], [ %i.ag, %bb.b ]
  %i.pf = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.pg = fcmp ogt float %i.pe, 0.000000e+00
  br i1 %i.pg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pf, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !72
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pf, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ph = load float, ptr %i.j, align 4, !tbaa !68
  %i.pi = fcmp ogt float %i.ph, 1.000000e+00
  br i1 %i.pi, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.pj = getelementptr inbounds nuw i8, ptr %16, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pj, i8 0, i64 16, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.pk = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %16, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pl, ptr noundef nonnull align 16 dereferenceable(16) %i.pk, i64 16, i1 false), !tbaa.struct !72
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.pm = load float, ptr %i.j, align 4, !tbaa !68
  %i.pn = fcmp ogt float %i.pm, 2.000000e+00
  br i1 %i.pn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.po = getelementptr inbounds nuw i8, ptr %16, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.po, i8 0, i64 16, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.pp = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.pq = getelementptr inbounds nuw i8, ptr %16, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pq, ptr noundef nonnull align 16 dereferenceable(16) %i.pp, i64 16, i1 false), !tbaa.struct !72
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.pr = load float, ptr %i.j, align 4, !tbaa !68
  %i.ps = fcmp ogt float %i.pr, 3.000000e+00
  br i1 %i.ps, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.pt = getelementptr inbounds nuw i8, ptr %16, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pt, i8 0, i64 16, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.pu = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.pv = getelementptr inbounds nuw i8, ptr %16, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pv, ptr noundef nonnull align 16 dereferenceable(16) %i.pu, i64 16, i1 false), !tbaa.struct !72
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
end_hunk_0
