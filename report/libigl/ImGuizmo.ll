Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN8ImGuizmo29RecomposeMatrixFromComponentsEPKfS1_S1_Pf:.preheader.preheader
  %i.fl = insertelement <4 x float> poison, float %.sink60.i, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fn = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.fo = insertelement <4 x float> %i.fn, float 0.000000e+00, i64 3
  %i.fp = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fq = shufflevector <4 x float> %i.fo, <4 x float> %i.fp, <4 x i32> <i32 0, i32 4, i32 5, i32 3> ; 3 uses
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %i.fq, <4 x float> %i.fk)
  %i.fs = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = insertelement <4 x float> %i.cz, float 0.000000e+00, i64 3
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 3 uses
  %i.fv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fs, <4 x float> %i.fu, <4 x float> %i.fr) ; 2 uses
  %i.fw = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fx = fmul <4 x float> %i.fw, %i.fj
  %i.fy = insertelement <4 x float> poison, float %.sroa.11.0, i64 0
  %i.fz = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %i.fq, <4 x float> %i.fx)
  %i.gb = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gb, <4 x float> %i.fu, <4 x float> %i.ga) ; 4 uses
  %i.gd = extractelement <4 x float> %i.gc, i64 0
  %i.ge = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gf = fmul <4 x float> %i.ge, %i.fj
  %i.gg = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.fq, <4 x float> %i.gf)
  %i.gi = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> %i.fu, <4 x float> %i.gh) ; 4 uses
  %i.gk = extractelement <4 x float> %i.gj, i64 0
  %i.gl = extractelement <4 x float> %i.gj, i64 1
  %i.gm = insertelement <4 x float> poison, float %.sroa.43.0, i64 0
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> %i.db, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.go = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.sroa.75.0, i64 3
  %i.gp = shufflevector <2 x float> %i.dc, <2 x float> %i.da, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.gq = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gr = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.1775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.gs = shufflevector <4 x float> %i.gj, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.gt = fadd <4 x float> %i.gs, zeroinitializer ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gv = fadd float %i.gk, 0.000000e+00          ; 2 uses
  %i.gw = fadd float %i.gl, 0.000000e+00
  %i.gx = shufflevector <4 x float> %i.gj, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.gy = fadd <4 x float> %i.gx, zeroinitializer ; 2 uses
  %i.gz = insertelement <4 x float> poison, float %i.gw, i64 0 ; 2 uses
  %i.ha = insertelement <4 x float> %i.gz, float %.sroa.75.0, i64 1
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.hd = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> %i.ff, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hg = shufflevector <4 x float> %i.gy, <4 x float> %i.fd, <4 x i32> <i32 0, i32 6, i32 7, i32 poison>
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hi = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.75.0, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> %i.fe, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.hk = shufflevector <4 x float> %i.hj, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.hl = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gv, i64 0
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.hn = insertelement <4 x float> %i.ff, float -0.000000e+00, i64 3
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.hp = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.fd, <4 x i32> <i32 6, i32 7, i32 poison, i32 3>
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> %i.fe, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.hr = shufflevector <4 x float> %i.gt, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.hs = fadd float %i.gd, 0.000000e+00          ; 2 uses
  %i.ht = shufflevector <4 x float> %i.gc, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.hu = fadd <4 x float> %i.ht, zeroinitializer ; 2 uses
  %i.hv = shufflevector <4 x float> %i.gc, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.hw = fadd <4 x float> %i.hv, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.hx = fadd <4 x float> %i.gc, <float poison, float 0.000000e+00, float poison, float 0.000000e+00> ; 2 uses
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.hz = extractelement <4 x float> %i.hx, i64 1
  %i.ia = fmul float %i.hz, 0.000000e+00
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.hs, float 0.000000e+00, float %i.ia)
  %i.ic = extractelement <4 x float> %i.hu, i64 0
  %i.id = tail call float @llvm.fmuladd.f32(float %i.ic, float 0.000000e+00, float %i.ib)
  %i.ie = insertelement <4 x float> poison, float %.sroa.75.0, i64 0
  %i.if = shufflevector <4 x float> %i.ie, <4 x float> %i.fe, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ih = insertelement <4 x float> %i.ig, float %i.id, i64 3 ; 2 uses
  %i.ii = fmul <4 x float> %i.hy, %i.ih
  %i.ij = fadd <4 x float> %i.hy, %i.ih           ; 2 uses
  %i.ik = shufflevector <4 x float> %i.ii, <4 x float> %i.ij, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.il = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hs, i64 0
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.in = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> %i.ho, <4 x float> %i.ik)
  %i.io = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> %i.hq, <4 x float> %i.in)
  %i.ip = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hw, <4 x float> zeroinitializer, <4 x float> %i.io) ; 3 uses
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.iq, ptr %.sroa.773.0..sroa_idx, align 4
  %i.ir = extractelement <4 x float> %i.ip, i64 2
  store float %i.ir, ptr %.sroa.9.0..sroa_idx, align 4
  %i.is = extractelement <4 x float> %i.ij, i64 3
  store float %i.is, ptr %.sroa.10.0..sroa_idx, align 4
  %i.it = shufflevector <4 x float> %i.fv, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.iu = fadd <4 x float> %i.it, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.iv = shufflevector <4 x float> %i.fv, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.iw = fadd <3 x float> %i.iv, zeroinitializer ; 7 uses
  %i.ix = shufflevector <3 x float> %i.iw, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.iy = shufflevector <4 x float> %i.gn, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.iz = fmul <4 x float> %i.iy, %i.go
  %i.ja = shufflevector <3 x float> %i.iw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jb = shufflevector <4 x float> %i.fe, <4 x float> %i.fd, <2 x i32> <i32 0, i32 4>
  %i.jc = fmul <2 x float> %i.ja, %i.jb
  %i.jd = extractelement <3 x float> %i.iw, i64 1
  %i.je = fmul float %i.jd, 0.000000e+00
  %i.jf = shufflevector <4 x float> %i.gp, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.jg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jf, <4 x float> %i.gq, <4 x float> %i.iz)
  %i.jh = shufflevector <4 x float> %i.fn, <4 x float> %i.ix, <4 x i32> <i32 poison, i32 poison, i32 2, i32 6>
  %i.ji = shufflevector <4 x float> %i.cz, <4 x float> %i.jh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ji, <4 x float> %i.gr, <4 x float> %i.jg) ; 4 uses
  %i.jk = shufflevector <3 x float> %i.iw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jl = shufflevector <4 x float> %i.fd, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.jm = insertelement <2 x float> %i.jl, float %.sroa.68.0, i64 0
  %i.jn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jk, <2 x float> %i.jm, <2 x float> %i.jc)
  %i.jo = shufflevector <3 x float> %i.iw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jp = shufflevector <4 x float> %i.fd, <4 x float> %i.fe, <2 x i32> <i32 3, i32 5>
  %i.jq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.jp, <2 x float> %i.jn)
  %i.jr = extractelement <3 x float> %i.iw, i64 0
  %i.js = tail call float @llvm.fmuladd.f32(float %i.jr, float 0.000000e+00, float %i.je)
  %i.jt = extractelement <3 x float> %i.iw, i64 2
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.jt, float 0.000000e+00, float %i.js)
  %i.jv = extractelement <4 x float> %i.iu, i64 0
  %i.jw = fadd float %i.jv, %i.ju                 ; 2 uses
  %i.jx = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.jy = shufflevector <2 x float> %i.jq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jz = shufflevector <4 x float> %i.jx, <4 x float> %i.jy, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ka = insertelement <4 x float> %i.jz, float %i.jw, i64 3
  %i.kb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iu, <4 x float> zeroinitializer, <4 x float> %i.ka) ; 3 uses
  %i.kc = shufflevector <4 x float> %i.jj, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> <float -0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.ke = fadd <4 x float> %i.kd, zeroinitializer ; 2 uses
  %i.kf = shufflevector <4 x float> %i.jj, <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 1, i32 1>
  %i.kg = fadd <4 x float> %i.kf, zeroinitializer ; 2 uses
  %i.kh = shufflevector <4 x float> %i.jj, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> <float -0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.kj = fadd <4 x float> %i.ki, zeroinitializer ; 2 uses
  %i.kk = extractelement <4 x float> %i.kg, i64 1
  %i.kl = fmul float %i.kk, 0.000000e+00
  %i.km = extractelement <4 x float> %i.ke, i64 1
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.km, float 0.000000e+00, float %i.kl)
  %i.ko = extractelement <4 x float> %i.kj, i64 1
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.ko, float 0.000000e+00, float %i.kn)
  %i.kq = fadd float %i.kp, 1.000000e+00
  %i.kr = shufflevector <4 x float> %i.kb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.kr, ptr %3, align 4
  %i.ks = extractelement <4 x float> %i.kb, i64 2
  store float %i.ks, ptr %.sroa.5.0..sroa_idx, align 4
  store float %i.jw, ptr %.sroa.6.0..sroa_idx, align 4
  store float %i.kq, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !16
  %i.kt = fmul <4 x float> %i.kg, %i.hc
  %i.ku = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ke, <4 x float> %i.hf, <4 x float> %i.kt)
  %i.kv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kj, <4 x float> %i.hh, <4 x float> %i.ku)
  %i.kw = fadd <4 x float> %i.gt, %i.kv           ; 2 uses
  %i.kx = shufflevector <4 x float> %i.gz, <4 x float> %i.kw, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  %i.ky = fmul <4 x float> %i.kx, %i.hk
  %i.kz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hm, <4 x float> %i.ho, <4 x float> %i.ky)
  %i.la = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> %i.hq, <4 x float> %i.kz)
  %i.lb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hr, <4 x float> zeroinitializer, <4 x float> %i.la) ; 3 uses
  %i.lc = shufflevector <4 x float> %i.lb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.lc, ptr %.sroa.11.0..sroa_idx, align 4
  %i.ld = extractelement <4 x float> %i.lb, i64 2
  store float %i.ld, ptr %.sroa.13.0..sroa_idx, align 4
  store <4 x float> %i.kw, ptr %.sroa.14.0..sroa_idx, align 4
  %i.le = load float, ptr %2, align 4, !tbaa !10  ; 2 uses
  %i.lf = tail call float @llvm.fabs.f32(float %i.le)
  %i.lg = fcmp olt float %i.lf, f0x34000000
  %.sroa.0.0 = select i1 %i.lg, float 1.000000e-03, float %i.le
  %i.lh = load <2 x float>, ptr %i.gu, align 4, !tbaa !10 ; 2 uses
  %i.li = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lh)
  %i.lj = fcmp olt <2 x float> %i.li, splat (float f0x34000000)
  %i.lk = select <2 x i1> %i.lj, <2 x float> splat (float 1.000000e-03), <2 x float> %i.lh ; 2 uses
  %i.ll = insertelement <4 x float> poison, float %.sroa.0.0, i64 0
  %i.lm = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ln = fmul <4 x float> %i.kb, %i.lm
  store <4 x float> %i.ln, ptr %3, align 4, !tbaa !10
  %i.lo = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> zeroinitializer
  %i.lp = fmul <4 x float> %i.ip, %i.lo
  store <4 x float> %i.lp, ptr %.sroa.773.0..sroa_idx, align 4, !tbaa !10
  %i.lq = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lr = fmul <4 x float> %i.lb, %i.lq
  store <4 x float> %i.lr, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !10
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !10
  %i.lu = load <2 x float>, ptr %0, align 4, !tbaa !10
  store <2 x float> %i.lu, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !10
  store float %i.lt, ptr %.sroa.1775.0..sroa_idx, align 4, !tbaa !13
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 10 uses
  %9 = alloca %"struct.ImGuizmo::vec_t", align 4  ; 6 uses
  %10 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %11 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %12 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %13 = alloca %struct.ImVec2, align 8            ; 5 uses
  %14 = alloca %struct.ImVec2, align 8            ; 5 uses
  %15 = alloca %struct.ImVec2, align 8            ; 5 uses
  %16 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %i.d = alloca [512 x i8], align 16              ; 5 uses
  %17 = alloca %struct.ImVec2, align 8            ; 4 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.e = alloca [7 x i32], align 16               ; 20 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %19 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 5 uses
  %20 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 5 uses
  %21 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 7 uses
  %22 = alloca %struct.ImVec2, align 8            ; 4 uses
  %23 = alloca %struct.ImVec2, align 8            ; 5 uses
  %24 = alloca %struct.ImVec2, align 8            ; 4 uses
  %25 = alloca %struct.ImVec2, align 8            ; 4 uses
  %26 = alloca %struct.ImVec2, align 8            ; 4 uses
  %27 = alloca [4 x %struct.ImVec2], align 16     ; 8 uses
  %28 = alloca %struct.ImVec2, align 8            ; 5 uses
  %29 = alloca %struct.ImVec2, align 8            ; 7 uses
  %30 = alloca %struct.ImVec2, align 8            ; 4 uses
  %31 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.h = alloca [512 x i8], align 16              ; 5 uses
  %32 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 7 uses
  %33 = alloca %struct.ImVec2, align 8            ; 4 uses
  %34 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.i = alloca [7 x i32], align 16               ; 9 uses
  %35 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 5 uses
  %36 = alloca [64 x %struct.ImVec2], align 16    ; 7 uses
  %37 = alloca %"struct.ImGuizmo::vec_t", align 8 ; 7 uses
  %38 = alloca %struct.ImVec2, align 8            ; 4 uses
  %39 = alloca [65 x %struct.ImVec2], align 16    ; 8 uses
  %i.j = alloca [512 x i8], align 16              ; 5 uses
  %40 = alloca %struct.ImVec2, align 8            ; 4 uses
  %41 = alloca %struct.ImVec2, align 8            ; 4 uses
  %42 = alloca [3 x %"struct.ImGuizmo::vec_t"], align 16 ; 12 uses
  %i.k = alloca [3 x i32], align 4                ; 12 uses
  %43 = alloca [4 x %"struct.ImGuizmo::vec_t"], align 16 ; 18 uses
  %44 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 14 uses
  %45 = alloca %struct.ImVec2, align 8            ; 7 uses
  %46 = alloca %struct.ImVec2, align 8            ; 4 uses
  %47 = alloca %struct.ImVec2, align 8            ; 4 uses
  %48 = alloca %struct.ImVec2, align 8            ; 5 uses
  %49 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %i.l = alloca [2 x i32], align 4                ; 5 uses
  %50 = alloca %"struct.ImGuizmo::matrix_t", align 8 ; 17 uses
  %i.m = alloca [512 x i8], align 16              ; 5 uses
  %51 = alloca %struct.ImVec2, align 8            ; 4 uses
  %52 = alloca %struct.ImVec2, align 8            ; 4 uses
  %53 = alloca [7 x %"struct.ImGuizmo::vec_t"], align 16 ; 11 uses
  %i.n = alloca [3 x float], align 4              ; 6 uses
  %54 = alloca %"struct.ImGuizmo::vec_t", align 16 ; 9 uses
  %55 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 17 uses
  %56 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 6 uses
  %57 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %58 = alloca [7 x %"struct.ImGuizmo::vec_t"], align 16 ; 16 uses
  %59 = alloca [4 x %"struct.ImGuizmo::vec_t"], align 16 ; 8 uses
  %60 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 7 uses
  %61 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %62 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %63 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %64 = alloca %"struct.ImGuizmo::matrix_t", align 8 ; 9 uses
  store i32 %3, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 8), align 8, !tbaa !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), ptr noundef nonnull readonly align 4 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 76), ptr noundef nonnull readonly align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !71
  %i.o = icmp eq i32 %3, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), ptr noundef nonnull readonly align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !71
  %i.p = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !12 ; 3 uses
  %i.q = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 144), align 8, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.q, %i.q
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.r)
  %i.t = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.s)
  %i.v = tail call noundef float @sqrtf(float noundef %i.u) #20
  %i.w = fdiv float 1.000000e+00, %i.v
  %i.x = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 152), align 8, !tbaa !15
  %i.y = insertelement <4 x float> poison, float %i.w, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = insertelement <4 x float> poison, float %i.p, i64 0
  %i.ab = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x float> %i.aa, <4 x float> %i.ab, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ad = insertelement <4 x float> %i.ac, float %i.x, i64 3
  %i.ae = fmul <4 x float> %i.z, %i.ad
  store <4 x float> %i.ae, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10
  %i.af = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !12 ; 3 uses
  %i.ag = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 160), align 8, !tbaa !10 ; 4 uses
  %foldExtExtBinop193 = fmul <2 x float> %i.ag, %i.ag
  %i.ah = extractelement <2 x float> %foldExtExtBinop193, i64 0
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ah)
  %i.aj = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ai)
  %i.al = tail call noundef float @sqrtf(float noundef %i.ak) #20
  %i.am = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 168), align 8, !tbaa !15
  %i.an = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ao = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> %i.ao, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 3
  %i.ar = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !12 ; 3 uses
  %i.as = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 176), align 8, !tbaa !14 ; 3 uses
  %i.at = fmul float %i.as, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.at)
  %i.av = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13 ; 3 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.au)
  %i.ax = tail call noundef float @sqrtf(float noundef %i.aw) #20
  %i.ay = insertelement <2 x float> poison, float %i.al, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.ax, i64 1
  %i.ba = fdiv <2 x float> splat (float 1.000000e+00), %i.az ; 2 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 1 ; 4 uses
  %i.bc = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bd = fmul <4 x float> %i.bc, %i.aq
  store <4 x float> %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10
  %i.be = fmul float %i.ar, %i.bb
  store float %i.be, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !12
  %i.bf = fmul float %i.as, %i.bb
  store float %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 176), align 8, !tbaa !14
  %i.bg = fmul float %i.av, %i.bb
  store float %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13
  %i.bh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !15
  %i.bi = fmul float %i.bb, %i.bh
  br label %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit

bb.c:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 144), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 160), align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 164), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !13
  %i.bm = load <2 x float>, ptr %i.bj, align 4, !tbaa !10
  store <2 x float> %i.bm, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  store float %i.bl, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15
  br label %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit

_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi float [ %i.bi, %bb.b ], [ 0.000000e+00, %bb.c ]
  store float %.sink.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), ptr noundef nonnull readonly align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !71
  %i.bn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !12 ; 2 uses
  %i.bo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 272), align 8, !tbaa !14 ; 2 uses
  %i.bp = fmul float %i.bo, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bp)
  %i.br = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 276), align 4, !tbaa !13 ; 2 uses
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bq)
  %i.bt = tail call noundef float @sqrtf(float noundef %i.bs) #20
  %i.bu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !12 ; 2 uses
  %i.bv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 288), align 8, !tbaa !14 ; 2 uses
  %i.bw = fmul float %i.bv, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.bw)
  %i.by = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 292), align 4, !tbaa !13 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %i.ca = tail call noundef float @sqrtf(float noundef %i.bz) #20
  %i.cb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !12 ; 2 uses
  %i.cc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 304), align 8, !tbaa !14 ; 2 uses
  %i.cd = fmul float %i.cc, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.cd)
  %i.cf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 308), align 4, !tbaa !13 ; 2 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.ce)
  %i.ch = tail call noundef float @sqrtf(float noundef %i.cg) #20
  store float %i.bt, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 524), align 4, !tbaa !12
  store float %i.ca, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 528), align 8, !tbaa !14
  store float %i.ch, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 532), align 4, !tbaa !13
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 536), align 8, !tbaa !15
  %i.ci = tail call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i1 noundef zeroext false) ; 0 uses
  %i.cj = tail call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 332), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #20
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 76), ptr noundef nonnull align 4 dereferenceable(64) %62)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), ptr noundef nonnull align 4 dereferenceable(64) %62, i64 64, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #20
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), ptr noundef nonnull align 4 dereferenceable(64) %63)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), ptr noundef nonnull align 4 dereferenceable(64) %63, i64 64, i1 false), !tbaa.struct !71
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #20
  %i.ck = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %64, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), i1 noundef zeroext false) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %64, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 572), ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !17
  %i.cm = getelementptr inbounds nuw i8, ptr %64, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 556), ptr noundef nonnull align 8 dereferenceable(16) %64, i64 16, i1 false), !tbaa.struct !17
  %i.cn = getelementptr inbounds nuw i8, ptr %64, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 588), ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !17
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %64, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !10 ; 3 uses
  %i.co = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4
  %i.cp = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.cq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.cr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 244), align 4, !tbaa !16
  %i.cs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 2 uses
  %i.ct = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16 ; 2 uses
  %i.cu = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4
  %i.cv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 400), align 8, !tbaa !16 ; 2 uses
  %i.cw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 416), align 8, !tbaa !16 ; 2 uses
  %i.cx = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 432), align 8
  %i.cy = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 448), align 8
  %i.cz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16 ; 2 uses
  %i.da = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16 ; 2 uses
  %i.db = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.dc = fmul float %i.da, 0.000000e+00
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cz, float 0.000000e+00, float %i.dc)
  %i.de = shufflevector <1 x float> %i.db, <1 x float> poison, <2 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.dbx = fdiv float 1.000000e+00, %i.dbw        ; 3 uses
  %i.dby = fmul float %i.daw, %i.dbx              ; 5 uses
  %i.dbz = fmul float %i.czc, %i.dbx              ; 5 uses
  %i.dca = fmul float %i.cyw, %i.dbx              ; 5 uses
  %i.dcb = call float @sinf(float noundef %i.dbv) #20 ; 3 uses
  %i.dcc = call float @cosf(float noundef %i.dbv) #20 ; 4 uses
  %i.dcd = fsub float 1.000000e+00, %i.dcc        ; 6 uses
  %i.dce = fmul float %i.dby, %i.dby
  %i.dcf = call float @llvm.fmuladd.f32(float %i.dce, float %i.dcd, float %i.dcc)
  %i.dcg = fmul float %i.dbz, %i.dbz
  %i.dch = call float @llvm.fmuladd.f32(float %i.dcg, float %i.dcd, float %i.dcc)
  %i.dci = fmul float %i.dca, %i.dca
  %i.dcj = call float @llvm.fmuladd.f32(float %i.dci, float %i.dcd, float %i.dcc)
  %i.dck = fmul float %i.dby, %i.dbz
  %i.dcl = fmul float %i.dck, %i.dcd              ; 2 uses
  %i.dcm = fmul float %i.dbz, %i.dca
  %i.dcn = fmul float %i.dcm, %i.dcd              ; 2 uses
  %i.dco = fmul float %i.dca, %i.dby
  %i.dcp = fmul float %i.dco, %i.dcd              ; 2 uses
  %i.dcq = fmul float %i.dcb, %i.dby              ; 2 uses
  %i.dcr = fmul float %i.dcb, %i.dbz              ; 2 uses
  %i.dcs = fmul float %i.dcb, %i.dca              ; 2 uses
  %i.dct = fadd float %i.dcs, %i.dcl
  %i.dcu = fsub float %i.dcp, %i.dcr
  %i.dcv = fsub float %i.dcl, %i.dcs
  %i.dcw = fadd float %i.dcq, %i.dcn
  %i.dcx = fadd float %i.dcr, %i.dcp
  %i.dcy = fsub float %i.dcn, %i.dcq
  %i.dcz = fmul float %.sroa.8.0.copyload.i104, %i.dch
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i105

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i105: ; preds = %bb.eh, %bb.eg
  %.sroa.22.0.i = phi float [ %i.dcy, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.11.0.i = phi float [ %i.dcv, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.20.0.i = phi float [ %i.dcx, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.15.0.i = phi float [ %i.dcw, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.7.0.i = phi float [ %i.dcu, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.4.0.i = phi float [ %i.dct, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sink60.i.i106 = phi float [ %i.dcf, %bb.eh ], [ 1.000000e+00, %bb.eg ]
  %.sink59.i.i107 = phi float [ %i.dcz, %bb.eh ], [ %.sroa.8.0.copyload.i104, %bb.eg ]
  %.sink.i.i108 = phi float [ %i.dcj, %bb.eh ], [ 1.000000e+00, %bb.eg ]
  %i.dda = fmul float %.sroa.8.0.copyload.i104, %.sroa.11.0.i
  %i.ddb = call float @llvm.fmuladd.f32(float %i.dat, float %.sink60.i.i106, float %i.dda)
  %i.ddc = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %.sroa.20.0.i, float %i.ddb)
  %i.ddd = fadd float %i.ddc, 0.000000e+00
  %i.dde = call float @llvm.fmuladd.f32(float %i.dat, float %.sroa.4.0.i, float %.sink59.i.i107)
  %i.ddf = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %.sroa.22.0.i, float %i.dde)
  %i.ddg = fadd float %i.ddf, 0.000000e+00
  %i.ddh = fmul float %i.dar, %i.ddd
  %i.ddi = fmul float %i.dar, %i.ddg
  %i.ddj = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.ddh, i64 1
  %i.ddk = shufflevector <2 x float> %i.ddj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ddl = fadd <4 x float> %i.daz, %i.ddk
  %i.ddm = insertelement <2 x float> %i.cyx, float %.sroa.15.0.i, i64 0
  %i.ddn = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.ddi, i64 1
  %i.ddo = fadd <2 x float> %i.ddm, %i.ddn
  %i.ddp = shufflevector <2 x float> %i.ddo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ddq = fmul <4 x float> %i.dbc, %i.ddp
  %i.ddr = insertelement <4 x float> %i.czl, float %.sroa.7.0.i, i64 0
  %i.dds = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ddl, <4 x float> %i.ddr, <4 x float> %i.ddq) ; 3 uses
  %i.ddt = extractelement <4 x float> %i.dds, i64 0
  %i.ddu = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %.sink.i.i108, float %i.ddt)
  %i.ddv = fadd float %i.ddu, 0.000000e+00
  %i.ddw = fmul float %i.dar, %i.ddv
  %i.ddx = extractelement <4 x float> %i.dds, i64 3
  %i.ddy = fadd float %.sroa.22.0.copyload.i76.i, %i.ddw ; 2 uses
  %i.ddz = insertelement <2 x float> poison, float %i.ddy, i64 0
  %i.dea = shufflevector <2 x float> %i.ddz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.deb = shufflevector <4 x float> %i.dds, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dec = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dea, <2 x float> %i.day, <2 x float> %i.deb)
  %i.ded = fadd <2 x float> %i.cyq, %i.dec
  %i.dee = call float @llvm.fmuladd.f32(float %i.ddy, float %i.cys, float %i.ddx)
  %i.def = fadd float %i.cyt, %i.dee
  %i.deg = fdiv float 5.000000e-01, %i.def
  %i.deh = insertelement <2 x float> poison, float %i.deg, i64 0
  %i.dei = shufflevector <2 x float> %i.deh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dej = fmul <2 x float> %i.ded, %i.dei        ; 2 uses
  %i.dek = extractelement <2 x float> %i.dej, i64 1
  %i.del = fadd float %i.dek, 5.000000e-01
  %i.dem = insertelement <2 x float> %i.dej, float 1.000000e+00, i64 1
  %i.den = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.del, i64 1
  %i.deo = fsub <2 x float> %i.dem, %i.den
  %i.dep = fmul <2 x float> %i.cyu, %i.deo
  %i.deq = fadd <2 x float> %i.cyv, %i.dep
  %i.der = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %indvars.iv123.i
  store <2 x float> %i.deq, ptr %i.der, align 8, !tbaa !10
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next124.i, 64
  br i1 %exitcond126.not.i, label %bb.ef, label %bb.eg, !llvm.loop !67

_ZN8ImGuizmoL17DrawRotationGizmoEi.exit:          ; preds = %bb.dy, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

bb.ei:                                            ; preds = %bb.dp
  %i.des = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 11 uses
  %.not.i112 = icmp eq ptr %i.des, null
  br i1 %.not.i112, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.det = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.deu = trunc nuw i8 %i.det to i1
  br i1 %i.deu, label %bb.ek, label %.preheader.preheader.i.i113

.preheader.preheader.i.i113:                      ; preds = %bb.ej
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i114

bb.ek:                                            ; preds = %bb.ej
  %i.dev = icmp eq i32 %.0, 7                     ; 2 uses
  %i.dew = select i1 %i.dev, i32 -1978629889, i32 -1
  store i32 %i.dew, ptr %i.e, align 16, !tbaa !52
  br i1 %i.dev, label %.loopexit.loopexit.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.ek
  %i.dex = icmp eq i32 %.0, 1
  %i.dey = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  br i1 %i.dex, label %.split.1.thread61.i.i, label %bb.el

.split.1.thread61.i.i:                            ; preds = %.split.preheader.i.i
  store i32 -1978629889, ptr %i.dey, align 4, !tbaa !52
  %i.dez = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1627390122, ptr %i.dez, align 16, !tbaa !52
  br label %.thread63.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ek
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 -1978629889, ptr %i.dfb, align 4, !tbaa !52
  store <4 x i32> <i32 -16777046, i32 -16733696, i32 -5636096, i32 -1978629889>, ptr %i.dfa, align 4, !tbaa !52
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 -1978629889, ptr %i.dfc, align 8, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i114

bb.el:                                            ; preds = %.split.preheader.i.i
  store i32 -16777046, ptr %i.dey, align 4, !tbaa !52
  %i.dfd = icmp eq i32 %.0, 4
  %i.dfe = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.dfd, label %.split.1.thread.i.i, label %.split.1.i.i

.split.1.thread.i.i:                              ; preds = %bb.el
  store i32 -1978629889, ptr %i.dfe, align 16, !tbaa !52
  br label %.thread63.i.i

.split.1.i.i:                                     ; preds = %bb.el
  store i32 1627390122, ptr %i.dfe, align 16, !tbaa !52
  %i.dff = icmp eq i32 %.0, 2
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.dff, label %.split.2.thread64.i.i, label %bb.em

.split.2.thread64.i.i:                            ; preds = %.split.1.i.i
  store i32 -1978629889, ptr %i.dfg, align 8, !tbaa !52
  br label %.thread67.i.i

.thread63.i.i:                                    ; preds = %.split.1.thread.i.i, %.split.1.thread61.i.i
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 -16733696, ptr %i.dfh, align 8, !tbaa !52
  br label %.split.2.i.i

bb.em:                                            ; preds = %.split.1.i.i
  store i32 -16733696, ptr %i.dfg, align 8, !tbaa !52
  %i.dfi = icmp eq i32 %.0, 5
  br i1 %i.dfi, label %.thread67.i.i, label %.split.2.i.i

.split.2.i.i:                                     ; preds = %bb.em, %.thread63.i.i
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 1627433472, ptr %i.dfj, align 4, !tbaa !52
  %i.dfk = icmp eq i32 %.0, 3
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  br i1 %i.dfk, label %.thread65.i.i, label %bb.en

.thread65.i.i:                                    ; preds = %.split.2.i.i
  store i32 -1978629889, ptr %i.dfl, align 4, !tbaa !52
  br label %bb.eo

.thread67.i.i:                                    ; preds = %bb.em, %.split.2.thread64.i.i
  %.sink.i.i125 = phi i32 [ 1627433472, %.split.2.thread64.i.i ], [ -1978629889, %bb.em ]
  %i.dfm = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %.sink.i.i125, ptr %i.dfm, align 4, !tbaa !52
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 -5636096, ptr %i.dfn, align 4, !tbaa !52
  br label %bb.eo

bb.en:                                            ; preds = %.split.2.i.i
  store i32 -5636096, ptr %i.dfl, align 4, !tbaa !52
  %i.dfo = icmp eq i32 %.0, 6
  br i1 %i.dfo, label %.loopexit.loopexit51.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.thread67.i.i, %.thread65.i.i
  br label %.loopexit.loopexit51.i.i

.loopexit.loopexit51.i.i:                         ; preds = %bb.eo, %bb.en
  %i.dfp = phi i32 [ 1638531072, %bb.eo ], [ -1978629889, %bb.en ]
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.dfp, ptr %i.dfq, align 8, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i114

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i114: ; preds = %.loopexit.loopexit51.i.i, %.loopexit.loopexit.i.i, %.preheader.preheader.i.i113
  %.sroa.02.0.copyload.i.i115 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i.i116 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i.i117 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.dfr = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.dfs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.dft = fmul float %.sroa.12.0.copyload.i.i116, %i.dfs
  %i.dfu = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i115, float %i.dfr, float %i.dft)
  %i.dfv = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.dfw = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i117, float %i.dfv, float %i.dfu)
  %i.dfx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.dfy = fadd float %i.dfx, %i.dfw
  %i.dfz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.dga = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.dgb = fmul float %.sroa.12.0.copyload.i.i116, %i.dga
  %i.dgc = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i115, float %i.dfz, float %i.dgb)
  %i.dgd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.dge = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i117, float %i.dgd, float %i.dgc)
  %i.dgf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.dgg = fadd float %i.dgf, %i.dge
  %i.dgh = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.dgi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.dgj = fmul float %.sroa.12.0.copyload.i.i116, %i.dgi
  %i.dgk = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i115, float %i.dgh, float %i.dgj)
  %i.dgl = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.dgm = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i117, float %i.dgl, float %i.dgk)
  %i.dgn = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.dgo = fadd float %i.dgn, %i.dgm
  %i.dgp = fdiv float 5.000000e-01, %i.dgo        ; 2 uses
  %i.dgq = fmul float %i.dfy, %i.dgp
  %i.dgr = fmul float %i.dgg, %i.dgp
  %i.dgs = fadd float %i.dgr, 5.000000e-01
  %i.dgt = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dgq, i64 0
  %i.dgu = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dgs, i64 1
  %i.dgv = fsub <2 x float> %i.dgt, %i.dgu
  %i.dgw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.dgx = fmul <2 x float> %i.dgw, %i.dgv
  %i.dgy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.dgz = fadd <2 x float> %i.dgy, %i.dgx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.dha = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dhb = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.dhc = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.dhd = getelementptr inbounds nuw i8, ptr %27, i64 24
  br label %bb.eq

bb.ep:                                            ; preds = %bb.ev
  %65 = load i32, ptr %i.e, align 16, !tbaa !52
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), float noundef 6.000000e+00, i32 noundef %65, i32 noundef 32)
  %i.dhe = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dhf = trunc nuw i8 %i.dhe to i1
  br i1 %i.dhf, label %bb.ew, label %bb.ex

bb.eq:                                            ; preds = %bb.ev, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i114
  %indvars.iv.i118 = phi i64 [ 0, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i114 ], [ %indvars.iv.next.i119, %bb.ev ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.dhg = trunc nuw nsw i64 %indvars.iv.i118 to i32
  call fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef %i.dhg, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  %i.dhh = load i8, ptr %i.f, align 1, !tbaa !47, !range !33, !noundef !34
  %i.dhi = trunc nuw i8 %i.dhh to i1
  br i1 %i.dhi, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  %i.dhj = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %i.dhk = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %i.dhl = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %i.dhm = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.dhn = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.dho = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.dhp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.dhq = load <1 x float>, ptr %21, align 16
  %i.dhr = shufflevector <1 x float> %i.dhq, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dhs = fmul <2 x float> %i.dhr, <float 1.000000e-01, float 1.000000e+00>
  %i.dht = load <2 x float>, ptr %21, align 16
  %i.dhu = shufflevector <2 x float> %i.dht, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dhv = fmul <2 x float> %i.dhu, <float 1.000000e-01, float 1.000000e+00>
  %i.dhw = load <4 x float>, ptr %21, align 16
  %i.dhx = shufflevector <4 x float> %i.dhw, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dhy = fmul <2 x float> %i.dhx, <float 1.000000e-01, float 1.000000e+00>
  %i.dhz = shufflevector <1 x float> %i.dhj, <1 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dia = fmul <2 x float> %i.dhv, %i.dhz        ; 2 uses
  %i.dib = shufflevector <2 x float> %i.dia, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dic = fmul <2 x float> %i.dhs, %i.dhz        ; 2 uses
  %i.did = fmul <2 x float> %i.dhz, %i.dhy        ; 2 uses
  %i.die = shufflevector <1 x float> %i.dhl, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dif = fmul <2 x float> %i.dia, %i.die
  %i.dig = shufflevector <1 x float> %i.dhk, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dih = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dic, <2 x float> %i.dig, <2 x float> %i.dif)
  %i.dii = shufflevector <1 x float> %i.dhm, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dij = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.did, <2 x float> %i.dii, <2 x float> %i.dih)
  %i.dik = shufflevector <1 x float> %i.dhn, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dil = fadd <2 x float> %i.dik, %i.dij
  %i.dim = fdiv <2 x float> splat (float 5.000000e-01), %i.dil
  %i.din = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.dio = shufflevector <2 x float> %i.din, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dip = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.diq = shufflevector <2 x float> %i.dip, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dir = fmul <4 x float> %i.dib, %i.diq
  %i.dis = shufflevector <2 x float> %i.dic, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dit = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dis, <4 x float> %i.dio, <4 x float> %i.dir)
  %i.diu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.div = shufflevector <2 x float> %i.diu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.diw = shufflevector <2 x float> %i.did, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dix = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.diw, <4 x float> %i.div, <4 x float> %i.dit)
  %i.diy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.diz = shufflevector <2 x float> %i.diy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dja = fadd <4 x float> %i.diz, %i.dix
  %i.djb = shufflevector <2 x float> %i.dim, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.djc = fmul <4 x float> %i.dja, %i.djb        ; 4 uses
  %i.djd = extractelement <4 x float> %i.djc, i64 1
  %i.dje = fadd float %i.djd, 5.000000e-01
  %i.djf = shufflevector <4 x float> %i.djc, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.djg = insertelement <2 x float> %i.djf, float 1.000000e+00, i64 1
  %i.djh = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dje, i64 1
  %i.dji = fsub <2 x float> %i.djg, %i.djh
  %i.djj = fmul <2 x float> %i.dho, %i.dji
  %i.djk = fadd <2 x float> %i.dhp, %i.djj
  store <2 x float> %i.djk, ptr %22, align 8
  %i.djl = extractelement <4 x float> %i.djc, i64 3
  %i.djm = fadd float %i.djl, 5.000000e-01
  %i.djn = shufflevector <4 x float> %i.djc, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.djo = insertelement <2 x float> %i.djn, float 1.000000e+00, i64 1
  %i.djp = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.djm, i64 1
  %i.djq = fsub <2 x float> %i.djo, %i.djp
  %i.djr = fmul <2 x float> %i.dho, %i.djq
  %i.djs = fadd <2 x float> %i.dhp, %i.djr
  store <2 x float> %i.djs, ptr %23, align 8
  %i.djt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i118
  %i.dju = getelementptr inbounds nuw i8, ptr %i.djt, i64 4
  %i.djv = load i32, ptr %i.dju, align 4, !tbaa !52 ; 2 uses
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %23, i32 noundef %i.djv, float noundef 3.000000e+00)
  %i.djw = load <2 x float>, ptr %23, align 8, !tbaa !10 ; 3 uses
  %i.djx = fsub <2 x float> %i.dgz, %i.djw        ; 4 uses
  %foldExtExtBinop260 = fmul <2 x float> %i.djx, %i.djx
  %i.djy = extractelement <2 x float> %foldExtExtBinop260, i64 1
  %i.djz = extractelement <2 x float> %i.djx, i64 0 ; 2 uses
  %i.dka = call noundef float @llvm.fmuladd.f32(float %i.djz, float %i.djz, float %i.djy)
  %i.dkb = call float @sqrtf(float noundef %i.dka) #20
  %i.dkc = insertelement <2 x float> poison, float %i.dkb, i64 0
  %i.dkd = shufflevector <2 x float> %i.dkc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dke = fdiv <2 x float> %i.djx, %i.dkd
  %i.dkf = fmul <2 x float> %i.dke, splat (float 6.000000e+00) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  %i.dkg = fsub <2 x float> %i.djw, %i.dkf
  store <2 x float> %i.dkg, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.dkh = fadd <2 x float> %i.djw, %i.dkf        ; 3 uses
  %i.dki = shufflevector <2 x float> %i.dkf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.0.vec.insert.i83.i = fadd <2 x float> %i.dki, %i.dkh
  %i.dkj = shufflevector <2 x float> %i.dkf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dkk = fsub <2 x float> %i.dkh, %i.dkj        ; 2 uses
  %i.dkl = shufflevector <2 x float> %.sroa.0.0.vec.insert.i83.i, <2 x float> %i.dkk, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.dkl, ptr %25, align 8
  %shift265 = shufflevector <2 x float> %i.dkh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop266 = fadd <2 x float> %i.dkf, %shift265
  %.sroa.0.4.vec.insert.i86.i = shufflevector <2 x float> %i.dkk, <2 x float> %foldExtExtBinop266, <2 x i32> <i32 0, i32 2>
  store <2 x float> %.sroa.0.4.vec.insert.i86.i, ptr %26, align 8
  call void @_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %24, ptr noundef nonnull align 4 dereferenceable(8) %25, ptr noundef nonnull align 4 dereferenceable(8) %26, i32 noundef %i.djv)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.dkm = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %indvars.iv.i118
  %i.dkn = load float, ptr %i.dkm, align 4, !tbaa !10
  %i.dko = fcmp olt float %i.dkn, 0.000000e+00
  br i1 %i.dko, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  call fastcc void @_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE(ptr noundef nonnull align 4 dereferenceable(16) %21)
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.eq
  %i.dkp = load i8, ptr %i.g, align 1, !tbaa !47, !range !33, !noundef !34
  %i.dkq = trunc nuw i8 %i.dkp to i1
  br i1 %i.dkq, label %.preheader.i121, label %bb.ev

.preheader.i121:                                  ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  %i.dkr = load <4 x float>, ptr %19, align 16
  %i.dks = shufflevector <4 x float> %i.dkr, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.dkt = load float, ptr %i.dha, align 8, !tbaa !13
  %i.dku = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %i.dkv = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %i.dkw = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %i.dkx = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.dky = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.dkz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 4 uses
  %i.dla = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 4 uses
  %i.dlb = load <2 x float>, ptr %19, align 16, !tbaa !10 ; 2 uses
  %i.dlc = load <2 x float>, ptr %20, align 8, !tbaa !10 ; 2 uses
  %i.dld = shufflevector <2 x float> %i.dlb, <2 x float> %i.dlc, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.dle = fmul <4 x float> %i.dld, <float 8.000000e-01, float 5.000000e-01, float 5.000000e-01, float 8.000000e-01> ; 2 uses
  %i.dlf = shufflevector <4 x float> %i.dle, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dlg = fadd <4 x float> %i.dle, %i.dlf
  %i.dlh = shufflevector <1 x float> %i.dku, <1 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.dli = fmul <4 x float> %i.dlh, %i.dlg        ; 3 uses
  %i.dlj = shufflevector <2 x float> %i.dlb, <2 x float> %i.dlc, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.dlk = fmul <4 x float> %i.dlj, <float 8.000000e-01, float 5.000000e-01, float 5.000000e-01, float 8.000000e-01> ; 2 uses
  %i.dll = shufflevector <4 x float> %i.dlk, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dlm = fadd <4 x float> %i.dlk, %i.dll
  %i.dln = fmul <4 x float> %i.dlm, %i.dlh        ; 3 uses
  %i.dlo = insertelement <4 x float> %i.dks, float %i.dkt, i64 1
  %i.dlp = shufflevector <4 x float> %i.dlo, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dlq = fmul <4 x float> %i.dlp, <float 8.000000e-01, float 5.000000e-01, float 5.000000e-01, float 8.000000e-01> ; 2 uses
  %i.dlr = shufflevector <4 x float> %i.dlq, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.dls = fadd <4 x float> %i.dlq, %i.dlr
  %i.dlt = fmul <4 x float> %i.dlh, %i.dls        ; 3 uses
  %i.dlu = shufflevector <1 x float> %i.dkw, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dlv = fmul <4 x float> %i.dli, %i.dlu
  %i.dlw = shufflevector <1 x float> %i.dkv, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dlx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dln, <4 x float> %i.dlw, <4 x float> %i.dlv)
  %i.dly = shufflevector <1 x float> %i.dkx, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dlz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dlt, <4 x float> %i.dly, <4 x float> %i.dlx)
  %i.dma = shufflevector <1 x float> %i.dky, <1 x float> poison, <4 x i32> zeroinitializer
  %i.dmb = fadd <4 x float> %i.dma, %i.dlz
  %i.dmc = fdiv <4 x float> splat (float 5.000000e-01), %i.dmb ; 2 uses
  %i.dmd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 2 uses
  %i.dme = shufflevector <2 x float> %i.dmd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dmf = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16 ; 2 uses
  %i.dmg = shufflevector <2 x float> %i.dmf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dmh = shufflevector <4 x float> %i.dli, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dmi = fmul <4 x float> %i.dmh, %i.dmg
  %i.dmj = shufflevector <4 x float> %i.dln, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dmk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dmj, <4 x float> %i.dme, <4 x float> %i.dmi)
  %i.dml = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16 ; 2 uses
  %i.dmm = shufflevector <2 x float> %i.dml, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dmn = shufflevector <4 x float> %i.dlt, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dmo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dmn, <4 x float> %i.dmm, <4 x float> %i.dmk)
  %i.dmp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16 ; 2 uses
  %i.dmq = shufflevector <2 x float> %i.dmp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dmr = fadd <4 x float> %i.dmq, %i.dmo
  %i.dms = shufflevector <4 x float> %i.dmc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dmt = fmul <4 x float> %i.dmr, %i.dms        ; 3 uses
  %i.dmu = shufflevector <4 x float> %i.dmt, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dmv = insertelement <2 x float> %i.dmu, float 1.000000e+00, i64 1
  %i.dmw = shufflevector <4 x float> %i.dmt, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dmx = insertelement <2 x float> %i.dmw, float 1.000000e+00, i64 1
  %i.dmy = shufflevector <4 x float> %i.dli, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.dmz = shufflevector <2 x float> %i.dmf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
end_hunk_1
begin_hunk_2_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.doa = fmul <2 x float> %i.dkz, %i.dnz
  %i.dob = fadd <2 x float> %i.dla, %i.doa
  store <2 x float> %i.dob, ptr %i.dhc, align 16, !tbaa !10
  %i.doc = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %i.dnk, <2 x i32> <i32 5, i32 1>
  %i.dod = shufflevector <4 x float> %i.dno, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.doe = insertelement <2 x float> %i.dod, float -5.000000e-01, i64 0
  %i.dof = fsub <2 x float> %i.doc, %i.doe
  %i.dog = fmul <2 x float> %i.dkz, %i.dof
  %i.doh = fadd <2 x float> %i.dla, %i.dog
  store <2 x float> %i.doh, ptr %i.dhd, align 8, !tbaa !10
  %i.doi = getelementptr inbounds nuw [4 x i8], ptr @_ZN8ImGuizmoL14directionColorE, i64 %indvars.iv.i118
  %i.doj = load i32, ptr %i.doi, align 4, !tbaa !52
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull %27, i32 noundef 4, i32 noundef %i.doj, i32 noundef 1, float noundef 1.000000e+00)
  %i.dok = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i118
  %i.dol = getelementptr inbounds nuw i8, ptr %i.dok, i64 16
  %i.dom = load i32, ptr %i.dol, align 4, !tbaa !52
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull %27, i32 noundef 4, i32 noundef %i.dom)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.ev

bb.ev:                                            ; preds = %.preheader.i121, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, 3
  br i1 %exitcond.not.i120, label %bb.ep, label %bb.eq, !llvm.loop !68

bb.ew:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  %i.don = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 728), align 8
  %i.doo = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16 ; 2 uses
  %i.dop = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16 ; 2 uses
  %i.doq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16 ; 2 uses
  %i.dor = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16 ; 2 uses
  %i.dos = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16 ; 2 uses
  %i.dot = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %.sroa.22.0.copyload.i125.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.dou = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), align 8, !tbaa !10 ; 2 uses
  %i.dov = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.dow = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.dox = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16 ; 4 uses
  %i.doy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i124.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 2 uses
  %i.doz = shufflevector <2 x float> %i.dou, <2 x float> %i.dox, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.dpa = shufflevector <2 x float> %i.dox, <2 x float> %i.doy, <4 x i32> <i32 1, i32 poison, i32 poison, i32 3>
  %i.dpb = insertelement <4 x float> %i.dpa, float %i.dop, i64 1
  %i.dpc = insertelement <4 x float> %i.dpb, float %i.dor, i64 2
  %i.dpd = fmul <4 x float> %i.doz, %i.dpc
  %i.dpe = shufflevector <2 x float> %i.dou, <2 x float> %i.doy, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.dpf = shufflevector <2 x float> %i.dov, <2 x float> %i.dox, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dpg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dpe, <4 x float> %i.dpf, <4 x float> %i.dpd)
  %i.dph = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.dpi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.dpj = insertelement <4 x float> %i.don, float %.sroa.22.0.copyload.i125.i, i64 1
  %i.dpk = shufflevector <4 x float> %i.dpj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dpl = shufflevector <2 x float> %i.dph, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.dpm = insertelement <3 x float> %i.dpl, float %i.dos, i64 2
  %i.dpn = shufflevector <3 x float> %i.dpm, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dpo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dpk, <4 x float> %i.dpn, <4 x float> %i.dpg) ; 4 uses
  %i.dpp = extractelement <4 x float> %i.dpo, i64 0
  %i.dpq = fadd float %i.doo, %i.dpp
  %i.dpr = extractelement <4 x float> %i.dpo, i64 1
  %i.dps = fadd float %i.doq, %i.dpr
  %i.dpt = extractelement <4 x float> %i.dpo, i64 2
  %i.dpu = fadd float %i.dot, %i.dpt
  %i.dpv = fdiv float 5.000000e-01, %i.dpu        ; 2 uses
  %i.dpw = fmul float %i.dpq, %i.dpv
  %i.dpx = fmul float %i.dps, %i.dpv
  %i.dpy = fadd float %i.dpx, 5.000000e-01
  %i.dpz = extractelement <4 x float> %i.dpo, i64 3
  %i.dqa = fadd float %i.doo, %i.dpz
  %i.dqb = fmul float %i.dop, %.sroa.12.0.copyload.i124.i
  %i.dqc = extractelement <2 x float> %i.doy, i64 0 ; 2 uses
  %i.dqd = call float @llvm.fmuladd.f32(float %i.dqc, float %i.dow, float %i.dqb)
  %i.dqe = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i125.i, float %i.dpi, float %i.dqd)
  %i.dqf = fadd float %i.doq, %i.dqe
  %i.dqg = fmul float %i.dor, %.sroa.12.0.copyload.i124.i
  %i.dqh = extractelement <2 x float> %i.dox, i64 0
  %i.dqi = call float @llvm.fmuladd.f32(float %i.dqc, float %i.dqh, float %i.dqg)
  %i.dqj = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i125.i, float %i.dos, float %i.dqi)
  %i.dqk = fadd float %i.dot, %i.dqj
  %i.dql = fdiv float 5.000000e-01, %i.dqk        ; 2 uses
  %i.dqm = fmul float %i.dqa, %i.dql
  %i.dqn = fmul float %i.dqf, %i.dql
  %i.dqo = fadd float %i.dqn, 5.000000e-01
  %i.dqp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dpw, i64 0
  %i.dqq = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dpy, i64 1
  %i.dqr = fsub <2 x float> %i.dqp, %i.dqq
  %i.dqs = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.dqt = fmul <2 x float> %i.dqs, %i.dqr
  %i.dqu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  %i.dqv = fadd <2 x float> %i.dqu, %i.dqt        ; 2 uses
  store <2 x float> %i.dqv, ptr %28, align 8
  %i.dqw = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dqm, i64 0
  %i.dqx = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dqo, i64 1
  %i.dqy = fsub <2 x float> %i.dqw, %i.dqx
  %i.dqz = fmul <2 x float> %i.dqs, %i.dqy
  %i.dra = fadd <2 x float> %i.dqu, %i.dqz        ; 2 uses
  store <2 x float> %i.dra, ptr %29, align 8
  %i.drb = fsub <2 x float> %i.dra, %i.dqv        ; 4 uses
  %foldExtExtBinop268 = fmul <2 x float> %i.drb, %i.drb
  %i.drc = extractelement <2 x float> %foldExtExtBinop268, i64 1
  %i.drd = extractelement <2 x float> %i.drb, i64 0 ; 2 uses
  %i.dre = call float @llvm.fmuladd.f32(float %i.drd, float %i.drd, float %i.drc)
  %i.drf = fadd float %i.dre, 0.000000e+00
  %i.drg = call noundef float @sqrtf(float noundef %i.drf) #20
  %i.drh = fdiv float 1.000000e+00, %i.drg
  %i.dri = insertelement <2 x float> poison, float %i.drh, i64 0
  %i.drj = shufflevector <2 x float> %i.dri, <2 x float> poison, <2 x i32> zeroinitializer
  %i.drk = fmul <2 x float> %i.drj, %i.drb
  %i.drl = fmul <2 x float> %i.drk, splat (float 5.000000e+00) ; 2 uses
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %28, float noundef 6.000000e+00, i32 noundef -1431655766, i32 noundef 0, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %29, float noundef 6.000000e+00, i32 noundef -1431655766, i32 noundef 0, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  %i.drm = load <2 x float>, ptr %28, align 8, !tbaa !10
  %i.drn = fadd <2 x float> %i.drm, %i.drl
  store <2 x float> %i.drn, ptr %30, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #20
  %i.dro = load <2 x float>, ptr %29, align 8, !tbaa !10
  %i.drp = fsub <2 x float> %i.dro, %i.drl
  store <2 x float> %i.drp, ptr %31, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %30, ptr noundef nonnull align 4 dereferenceable(8) %31, i32 noundef -1431655766, float noundef 2.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #20
  %i.drq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  %i.drr = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 720), align 8, !tbaa !10
  %i.drs = fsub <2 x float> %i.drq, %i.drr
  %i.drt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10
  %i.dru = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 728), align 8, !tbaa !10
  %i.drv = fsub <2 x float> %i.drt, %i.dru
  store <2 x float> %i.drs, ptr %32, align 8
  %i.drw = getelementptr inbounds nuw i8, ptr %32, i64 8
  store <2 x float> %i.drv, ptr %i.drw, align 8
  %i.drx = add nsw i32 %.0, -1                    ; 2 uses
  %i.dry = mul nsw i32 %i.drx, 3
  %i.drz = sext i32 %i.drx to i64
  %i.dsa = getelementptr inbounds [8 x i8], ptr @_ZN8ImGuizmoL19translationInfoMaskE, i64 %i.drz
  %i.dsb = load ptr, ptr %i.dsa, align 8, !tbaa !79
  %i.dsc = sext i32 %i.dry to i64
  %i.dsd = getelementptr inbounds [4 x i8], ptr @_ZN8ImGuizmoL20translationInfoIndexE, i64 %i.dsc ; 3 uses
  %i.dse = load i32, ptr %i.dsd, align 4, !tbaa !52
  %i.dsf = sext i32 %i.dse to i64
  %i.dsg = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %i.dsf
  %i.dsh = load float, ptr %i.dsg, align 4, !tbaa !10
  %i.dsi = fpext float %i.dsh to double
  %i.dsj = getelementptr i8, ptr %i.dsd, i64 4
  %i.dsk = load i32, ptr %i.dsj, align 4, !tbaa !52
  %i.dsl = sext i32 %i.dsk to i64
  %i.dsm = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %i.dsl
  %i.dsn = load float, ptr %i.dsm, align 4, !tbaa !10
  %i.dso = fpext float %i.dsn to double
  %i.dsp = getelementptr i8, ptr %i.dsd, i64 8
  %i.dsq = load i32, ptr %i.dsp, align 4, !tbaa !52
  %i.dsr = sext i32 %i.dsq to i64
  %i.dss = getelementptr inbounds nuw [4 x i8], ptr %32, i64 %i.dsr
  %i.dst = load float, ptr %i.dss, align 4, !tbaa !10
  %i.dsu = fpext float %i.dst to double
  %i.dsv = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.h, i64 noundef 512, ptr noundef %i.dsb, double noundef %i.dsi, double noundef %i.dso, double noundef %i.dsu) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #20
  %i.dsw = load <2 x float>, ptr %29, align 8, !tbaa !10
  %i.dsx = fadd <2 x float> %i.dsw, splat (float 1.500000e+01)
  store <2 x float> %i.dsx, ptr %33, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %33, i32 noundef -16777216, ptr noundef nonnull %i.h, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #20
  %i.dsy = load <2 x float>, ptr %29, align 8, !tbaa !10
  %i.dsz = fadd <2 x float> %i.dsy, splat (float 1.400000e+01)
  store <2 x float> %i.dsz, ptr %34, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.des, ptr noundef nonnull align 4 dereferenceable(8) %34, i32 noundef -1, ptr noundef nonnull %i.h, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

bb.ey:                                            ; preds = %bb.dp
  %i.dta = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.dtb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.dtc = trunc nuw i8 %i.dtb to i1
  br i1 %i.dtc, label %bb.ez, label %.preheader.preheader.i.i126

.preheader.preheader.i.i126:                      ; preds = %bb.ey
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i127

bb.ez:                                            ; preds = %bb.ey
  %i.dtd = icmp eq i32 %.0, 15
  %i.dte = select i1 %i.dtd, i32 -1978629889, i32 -1
  store i32 %i.dte, ptr %i.a, align 16, !tbaa !52
  %i.dtf = icmp eq i32 %.0, 12
  %i.dtg = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br i1 %i.dtf, label %.thread73.i.i, label %bb.fa

.thread73.i.i:                                    ; preds = %bb.ez
  store i32 -1978629889, ptr %i.dtg, align 4, !tbaa !52
  %i.dth = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 -16733696, ptr %i.dth, align 8, !tbaa !52
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  store i32 -16777046, ptr %i.dtg, align 4, !tbaa !52
  %i.dti = icmp eq i32 %.0, 13
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.dti, label %.thread72.i.i, label %bb.fb

.thread72.i.i:                                    ; preds = %bb.fa
  store i32 -1978629889, ptr %i.dtj, align 8, !tbaa !52
  br label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 -16733696, ptr %i.dtj, align 8, !tbaa !52
  %i.dtk = icmp eq i32 %.0, 14
  br i1 %i.dtk, label %.loopexit.loopexit53.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %.thread72.i.i, %.thread73.i.i
  br label %.loopexit.loopexit53.i.i

.loopexit.loopexit53.i.i:                         ; preds = %bb.fc, %bb.fb
  %i.dtl = phi i32 [ -5636096, %bb.fc ], [ -1978629889, %bb.fb ]
  %i.dtm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.dtl, ptr %i.dtm, align 4, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i127

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i127: ; preds = %.loopexit.loopexit53.i.i, %.preheader.preheader.i.i126
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) @__const._ZN8ImGuizmoL14DrawScaleGizmoEi.scaleDisplay, i64 16, i1 false)
  %i.dtn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dto = trunc nuw i8 %i.dtn to i1
  br i1 %i.dto, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 760), i64 16, i1 false), !tbaa.struct !17
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i127
  %i.dtp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dtq = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fm
  %66 = load i32, ptr %i.a, align 16, !tbaa !52
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dta, ptr noundef nonnull align 4 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), float noundef 6.000000e+00, i32 noundef %66, i32 noundef 32)
  %i.dtr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dts = trunc nuw i8 %i.dtr to i1
  br i1 %i.dts, label %bb.fn, label %_ZN8ImGuizmoL14DrawScaleGizmoEi.exit

bb.fg:                                            ; preds = %bb.fm, %bb.fe
  %indvars.iv.i128 = phi i64 [ 0, %bb.fe ], [ %indvars.iv.next.i129, %bb.fm ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.dtt = trunc nuw nsw i64 %indvars.iv.i128 to i32
  call fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef %i.dtt, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  %i.dtu = load i8, ptr %i.b, align 1, !tbaa !47, !range !33, !noundef !34
  %i.dtv = trunc nuw i8 %i.dtu to i1
  br i1 %i.dtv, label %bb.fh, label %bb.fm

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.dtw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8, !tbaa !46 ; 4 uses
  %i.dtx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16 ; 2 uses
  %i.dty = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8, !tbaa !16 ; 2 uses
  %i.dtz = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8, !tbaa !16 ; 2 uses
  %i.dua = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 3 uses
  %i.dub = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.duc = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.i128
  %i.dud = load float, ptr %i.duc, align 4, !tbaa !10
  %i.due = load <2 x float>, ptr %12, align 8, !tbaa !10 ; 5 uses
  %i.duf = extractelement <2 x float> %i.due, i64 0
  %i.dug = fmul float %i.duf, 1.000000e-01
  %i.duh = extractelement <2 x float> %i.due, i64 1
  %i.dui = fmul float %i.duh, 1.000000e-01
  %i.duj = insertelement <2 x float> poison, float %i.dud, i64 0
  %i.duk = shufflevector <2 x float> %i.duj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dul = fmul <2 x float> %i.due, %i.duk        ; 3 uses
  %i.dum = load <2 x float>, ptr %i.dtp, align 8, !tbaa !10 ; 3 uses
  %i.dun = extractelement <2 x float> %i.dum, i64 0
  %i.duo = fmul float %i.dun, 1.000000e-01
  %i.dup = fmul float %i.duo, %i.dtw              ; 3 uses
  %i.duq = fmul <2 x float> %i.dum, %i.duk        ; 2 uses
  %i.dur = shufflevector <2 x float> %i.due, <2 x float> %i.dul, <2 x i32> <i32 1, i32 3>
  %i.dus = insertelement <2 x float> poison, float %i.dtw, i64 0
  %i.dut = shufflevector <2 x float> %i.dus, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.duu = fmul <2 x float> %i.dur, %i.dut        ; 4 uses
  %i.duv = shufflevector <2 x float> %i.due, <2 x float> %i.dul, <2 x i32> <i32 0, i32 2>
  %i.duw = fmul <2 x float> %i.duv, %i.dut        ; 4 uses
  %i.dux = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 2 uses
  %i.duy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 400), align 8, !tbaa !16 ; 2 uses
  %i.duz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16 ; 3 uses
  %i.dva = extractelement <2 x float> %i.duu, i64 0
  %i.dvb = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dui, i64 0
  %i.dvc = shufflevector <2 x float> %i.duu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dvd = insertelement <2 x float> %i.dvc, float %i.dtw, i64 0
  %i.dve = fmul <2 x float> %i.dvb, %i.dvd
  %i.dvf = shufflevector <2 x float> %i.dve, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dvg = extractelement <2 x float> %i.duw, i64 0
  %i.dvh = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dug, i64 0
  %i.dvi = shufflevector <2 x float> %i.duw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dvj = insertelement <2 x float> %i.dvi, float %i.dtw, i64 0
  %i.dvk = fmul <2 x float> %i.dvh, %i.dvj
  %i.dvl = shufflevector <2 x float> %i.dvk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dvm = shufflevector <2 x float> %i.dux, <2 x float> %i.duz, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dvn = shufflevector <2 x float> %i.dum, <2 x float> %i.duq, <2 x i32> <i32 0, i32 2>
  %i.dvo = fmul <2 x float> %i.dvn, %i.dut        ; 3 uses
  %i.dvp = insertelement <2 x float> poison, float %i.dtx, i64 0
  %i.dvq = shufflevector <2 x float> %i.dvp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dvr = fmul <2 x float> %i.duu, %i.dvq
  %i.dvs = shufflevector <2 x float> %i.duz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dvt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.duw, <2 x float> %i.dvs, <2 x float> %i.dvr)
  %i.dvu = insertelement <2 x float> poison, float %i.dty, i64 0
  %i.dvv = shufflevector <2 x float> %i.dvu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dvw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dvo, <2 x float> %i.dvv, <2 x float> %i.dvt)
  %i.dvx = insertelement <2 x float> poison, float %i.dtz, i64 0
  %i.dvy = shufflevector <2 x float> %i.dvx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dvz = fadd <2 x float> %i.dvy, %i.dvw
  %i.dwa = fdiv <2 x float> splat (float 5.000000e-01), %i.dvz ; 2 uses
  %i.dwb = extractelement <2 x float> %i.dwa, i64 0 ; 2 uses
  %i.dwc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16 ; 3 uses
  %i.dwd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 432), align 8, !tbaa !16 ; 2 uses
  %i.dwe = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 416), align 8, !tbaa !16
  %i.dwf = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16 ; 2 uses
  %i.dwg = shufflevector <2 x float> %i.duz, <2 x float> %i.dwf, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.dwh = insertelement <4 x float> %i.dwg, float %i.dtx, i64 2
  %i.dwi = shufflevector <4 x float> %i.dwh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dwj = fmul <4 x float> %i.dvf, %i.dwi
  %i.dwk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dvl, <4 x float> %i.dvm, <4 x float> %i.dwj) ; 4 uses
  %i.dwl = extractelement <4 x float> %i.dwk, i64 0
  %i.dwm = extractelement <2 x float> %i.dwc, i64 0
  %i.dwn = call float @llvm.fmuladd.f32(float %i.dup, float %i.dwm, float %i.dwl)
  %i.dwo = extractelement <4 x float> %i.dwk, i64 1
  %i.dwp = call float @llvm.fmuladd.f32(float %i.dup, float %i.dwd, float %i.dwo)
  %i.dwq = extractelement <4 x float> %i.dwk, i64 2
  %i.dwr = call float @llvm.fmuladd.f32(float %i.dup, float %i.dty, float %i.dwq)
  %i.dws = fadd float %i.dtz, %i.dwr
  %i.dwt = fdiv float 5.000000e-01, %i.dws        ; 2 uses
  %i.dwu = fmul float %i.dva, %i.dwe
  %i.dwv = call float @llvm.fmuladd.f32(float %i.dvg, float %i.duy, float %i.dwu)
  %i.dww = shufflevector <2 x float> %i.dvo, <2 x float> %i.duw, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.dwx = shufflevector <2 x float> %i.dux, <2 x float> %i.dwc, <4 x i32> <i32 2, i32 3, i32 0, i32 poison>
  %i.dwy = insertelement <4 x float> %i.dwx, float %i.duy, i64 3
  %i.dwz = shufflevector <4 x float> %i.dwk, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.dxa = insertelement <4 x float> %i.dwz, float %i.dwv, i64 1
  %i.dxb = shufflevector <2 x float> %i.dwf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dxc = shufflevector <2 x float> %i.duu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.dxd = fmul <4 x float> %i.dxb, %i.dxc
  %i.dxe = shufflevector <4 x float> %i.dxa, <4 x float> %i.dxd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dxf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dww, <4 x float> %i.dwy, <4 x float> %i.dxe) ; 3 uses
  %i.dxg = extractelement <4 x float> %i.dxf, i64 0
  %i.dxh = extractelement <4 x float> %i.dxf, i64 1
  %i.dxi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16 ; 3 uses
  %i.dxj = extractelement <2 x float> %i.dxi, i64 0 ; 2 uses
  %i.dxk = fadd float %i.dxj, %i.dwn
  %i.dxl = extractelement <2 x float> %i.dxi, i64 1 ; 2 uses
  %i.dxm = fadd float %i.dxl, %i.dwp
  %i.dxn = fmul float %i.dxk, %i.dwt
  %i.dxo = fmul float %i.dxm, %i.dwt
  %i.dxp = fadd float %i.dxo, 5.000000e-01
  %i.dxq = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dxn, i64 0
  %i.dxr = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dxp, i64 1
  %i.dxs = fsub <2 x float> %i.dxq, %i.dxr
  %i.dxt = fmul <2 x float> %i.dua, %i.dxs
  %i.dxu = fadd <2 x float> %i.dub, %i.dxt
  store <2 x float> %i.dxu, ptr %13, align 8
  %i.dxv = fadd float %i.dxj, %i.dxg
  %i.dxw = fadd float %i.dxl, %i.dxh
  %i.dxx = fmul float %i.dxv, %i.dwb
  %i.dxy = fmul float %i.dxw, %i.dwb
  %i.dxz = fadd float %i.dxy, 5.000000e-01
  %i.dya = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.dxx, i64 0
  %i.dyb = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dxz, i64 1
  %i.dyc = fsub <2 x float> %i.dya, %i.dyb
  %i.dyd = fmul <2 x float> %i.dua, %i.dyc
  %i.dye = fadd <2 x float> %i.dub, %i.dyd
  store <2 x float> %i.dye, ptr %14, align 8
  %i.dyf = shufflevector <2 x float> %i.dvo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dyg = insertelement <2 x float> %i.dwc, float %i.dwd, i64 1
  %i.dyh = shufflevector <4 x float> %i.dxf, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.dyi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dyf, <2 x float> %i.dyg, <2 x float> %i.dyh)
  %i.dyj = fadd <2 x float> %i.dxi, %i.dyi
  %i.dyk = shufflevector <2 x float> %i.dwa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dyl = fmul <2 x float> %i.dyj, %i.dyk        ; 2 uses
  %i.dym = extractelement <2 x float> %i.dyl, i64 1
  %i.dyn = fadd float %i.dym, 5.000000e-01
  %i.dyo = insertelement <2 x float> %i.dyl, float 1.000000e+00, i64 1
  %i.dyp = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dyn, i64 1
  %i.dyq = fsub <2 x float> %i.dyo, %i.dyp
  %i.dyr = fmul <2 x float> %i.dua, %i.dyq
  %i.dys = fadd <2 x float> %i.dub, %i.dyr
  store <2 x float> %i.dys, ptr %15, align 8
  %i.dyt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.dyu = trunc nuw i8 %i.dyt to i1
  br i1 %i.dyu, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.dta, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef -12566464, float noundef 3.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dta, ptr noundef nonnull align 4 dereferenceable(8) %14, float noundef 6.000000e+00, i32 noundef -12566464, i32 noundef 0)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.dyv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i128
  %i.dyw = getelementptr inbounds nuw i8, ptr %i.dyv, i64 4
  %i.dyx = load i32, ptr %i.dyw, align 4, !tbaa !52 ; 2 uses
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.dta, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %15, i32 noundef %i.dyx, float noundef 3.000000e+00)
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dta, ptr noundef nonnull align 4 dereferenceable(8) %15, float noundef 6.000000e+00, i32 noundef %i.dyx, i32 noundef 0)
  %i.dyy = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 804), i64 %indvars.iv.i128
  %i.dyz = load float, ptr %i.dyy, align 4, !tbaa !10
  %i.dza = fcmp olt float %i.dyz, 0.000000e+00
  br i1 %i.dza, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store <2 x float> %i.dul, ptr %16, align 8
  store <2 x float> %i.duq, ptr %i.dtq, align 8
  call fastcc void @_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE(ptr noundef nonnull align 4 dereferenceable(16) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %indvars.iv.next.i129 = add nuw nsw i64 %indvars.iv.i128, 1 ; 2 uses
  %exitcond.not.i130 = icmp eq i64 %indvars.iv.next.i129, 3
  br i1 %exitcond.not.i130, label %bb.ff, label %bb.fg, !llvm.loop !69

bb.fn:                                            ; preds = %bb.ff
  %.sroa.02.0.copyload.i66.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i67.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i68.i = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
end_hunk_2
