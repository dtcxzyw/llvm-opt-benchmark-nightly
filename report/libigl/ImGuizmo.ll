Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ImGuizmo?download=true
inline.NumInlined: 554
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8ImGuizmo29RecomposeMatrixFromComponentsEPKfS1_S1_Pf:.preheader.preheader
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %i.fn, <4 x float> %i.fu)
  %i.fy = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> %i.fr, <4 x float> %i.fx) ; 4 uses
  %i.ga = extractelement <4 x float> %i.fz, i64 0
  %i.gb = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gc = fmul <4 x float> %i.gb, %i.fg
  %i.gd = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.fn, <4 x float> %i.gc)
  %i.gf = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> %i.fr, <4 x float> %i.ge) ; 4 uses
  %i.gh = extractelement <4 x float> %i.gg, i64 0
  %i.gi = extractelement <4 x float> %i.gg, i64 1
  %i.gj = insertelement <4 x float> poison, float %.sroa.43.0, i64 0
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.cz, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gl = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %.sroa.75.0, i64 3
  %i.gm = shufflevector <2 x float> %i.da, <2 x float> %i.cy, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.gn = shufflevector <4 x float> %i.fc, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %i.go = shufflevector <4 x float> %i.fa, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 2>
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
  %i.gp = shufflevector <4 x float> %i.gg, <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 3, i32 5, i32 6, i32 7>
  %i.gq = fadd <4 x float> %i.gp, zeroinitializer ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gs = fadd float %i.gh, 0.000000e+00          ; 2 uses
  %i.gt = fadd float %i.gi, 0.000000e+00
  %i.gu = shufflevector <4 x float> %i.gg, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.gv = fadd <4 x float> %i.gu, zeroinitializer ; 2 uses
  %i.gw = insertelement <4 x float> poison, float %i.gt, i64 0 ; 2 uses
  %i.gx = insertelement <4 x float> %i.gw, float %.sroa.75.0, i64 1
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ha = insertelement <4 x float> poison, float %i.gs, i64 0
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> %i.fc, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hd = shufflevector <4 x float> %i.gv, <4 x float> %i.fa, <4 x i32> <i32 0, i32 6, i32 7, i32 poison>
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hf = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.sroa.75.0, i64 0
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> %i.fb, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.hi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.gs, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.hk = insertelement <4 x float> %i.fc, float -0.000000e+00, i64 3
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.hm = shufflevector <4 x float> %i.fa, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 3, i32 poison, i32 7>
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> %i.fb, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.ho = shufflevector <4 x float> %i.gq, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.hp = fadd float %i.ga, 0.000000e+00          ; 2 uses
  %i.hq = shufflevector <4 x float> %i.fz, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.hr = fadd <4 x float> %i.hq, zeroinitializer ; 2 uses
  %i.hs = shufflevector <4 x float> %i.fz, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.ht = fadd <4 x float> %i.hs, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  %i.hu = fadd <4 x float> %i.fz, <float poison, float 0.000000e+00, float poison, float 0.000000e+00> ; 2 uses
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 3> ; 2 uses
  %i.hw = extractelement <4 x float> %i.hu, i64 1
  %i.hx = fmul float %i.hw, 0.000000e+00
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hp, float 0.000000e+00, float %i.hx)
  %i.hz = extractelement <4 x float> %i.hr, i64 0
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hz, float 0.000000e+00, float %i.hy)
  %i.ib = insertelement <4 x float> poison, float %.sroa.75.0, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> %i.fb, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ie = insertelement <4 x float> %i.id, float %i.ia, i64 3 ; 2 uses
  %i.if = fmul <4 x float> %i.hv, %i.ie
  %i.ig = fadd <4 x float> %i.hv, %i.ie           ; 2 uses
  %i.ih = shufflevector <4 x float> %i.if, <4 x float> %i.ig, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ii = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hp, i64 0
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ik = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ij, <4 x float> %i.hl, <4 x float> %i.ih)
  %i.il = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hr, <4 x float> %i.hn, <4 x float> %i.ik)
  %i.im = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ht, <4 x float> zeroinitializer, <4 x float> %i.il) ; 3 uses
  %i.in = shufflevector <4 x float> %i.im, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.in, ptr %.sroa.773.0..sroa_idx, align 4, !tbaa !16
  %i.io = extractelement <4 x float> %i.im, i64 2
  store float %i.io, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !16
  %i.ip = extractelement <4 x float> %i.ig, i64 3
  store float %i.ip, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !16
  %i.iq = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 3, i32 3, i32 7>
  %i.ir = fadd <4 x float> %i.iq, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.is = shufflevector <4 x float> %i.fs, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.it = fadd <3 x float> %i.is, zeroinitializer ; 7 uses
  %i.iu = shufflevector <3 x float> %i.it, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.iv = shufflevector <4 x float> %i.gk, <4 x float> %i.iu, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.iw = fmul <4 x float> %i.iv, %i.gl
  %i.ix = shufflevector <3 x float> %i.it, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iy = shufflevector <4 x float> %i.fb, <4 x float> %i.fa, <2 x i32> <i32 0, i32 4>
  %i.iz = fmul <2 x float> %i.ix, %i.iy
  %i.ja = extractelement <3 x float> %i.it, i64 1
  %i.jb = fmul float %i.ja, 0.000000e+00
  %i.jc = shufflevector <4 x float> %i.gm, <4 x float> %i.iu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.jd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jc, <4 x float> %i.gn, <4 x float> %i.iw)
  %i.je = shufflevector <4 x float> %i.fk, <4 x float> %i.iu, <4 x i32> <i32 poison, i32 poison, i32 2, i32 6>
  %i.jf = shufflevector <4 x float> %i.cx, <4 x float> %i.je, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jf, <4 x float> %i.go, <4 x float> %i.jd) ; 4 uses
  %i.jh = shufflevector <3 x float> %i.it, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ji = shufflevector <4 x float> %i.fa, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.jj = insertelement <2 x float> %i.ji, float %.sroa.68.0, i64 0
  %i.jk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.jj, <2 x float> %i.iz)
  %i.jl = shufflevector <3 x float> %i.it, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jm = shufflevector <4 x float> %i.fa, <4 x float> %i.fb, <2 x i32> <i32 3, i32 5>
  %i.jn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.jm, <2 x float> %i.jk)
  %i.jo = extractelement <3 x float> %i.it, i64 0
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jo, float 0.000000e+00, float %i.jb)
  %i.jq = extractelement <3 x float> %i.it, i64 2
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.jq, float 0.000000e+00, float %i.jp)
  %i.js = extractelement <4 x float> %i.ir, i64 0
  %i.jt = fadd float %i.js, %i.jr                 ; 2 uses
  %i.ju = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.jv = shufflevector <2 x float> %i.jn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jw = shufflevector <4 x float> %i.ju, <4 x float> %i.jv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.jx = insertelement <4 x float> %i.jw, float %i.jt, i64 3
  %i.jy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ir, <4 x float> zeroinitializer, <4 x float> %i.jx) ; 3 uses
  %i.jz = shufflevector <4 x float> %i.jg, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> <float -0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.kb = fadd <4 x float> %i.ka, zeroinitializer ; 2 uses
  %i.kc = shufflevector <4 x float> %i.jg, <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 1, i32 1>
  %i.kd = fadd <4 x float> %i.kc, zeroinitializer ; 2 uses
  %i.ke = shufflevector <4 x float> %i.jg, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> <float -0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.kg = fadd <4 x float> %i.kf, zeroinitializer ; 2 uses
  %i.kh = extractelement <4 x float> %i.kd, i64 1
  %i.ki = fmul float %i.kh, 0.000000e+00
  %i.kj = extractelement <4 x float> %i.kb, i64 1
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.kj, float 0.000000e+00, float %i.ki)
  %i.kl = extractelement <4 x float> %i.kg, i64 1
  %i.km = tail call float @llvm.fmuladd.f32(float %i.kl, float 0.000000e+00, float %i.kk)
  %i.kn = fadd float %i.km, 1.000000e+00
  %i.ko = shufflevector <4 x float> %i.jy, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ko, ptr %3, align 4, !tbaa !16
  %i.kp = extractelement <4 x float> %i.jy, i64 2
  store float %i.kp, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !16
  store float %i.jt, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !16
  store float %i.kn, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !16
  %i.kq = fmul <4 x float> %i.kd, %i.gz
  %i.kr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kb, <4 x float> %i.hc, <4 x float> %i.kq)
  %i.ks = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kg, <4 x float> %i.he, <4 x float> %i.kr)
  %i.kt = fadd <4 x float> %i.gq, %i.ks           ; 2 uses
  %i.ku = shufflevector <4 x float> %i.gw, <4 x float> %i.kt, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  %i.kv = fmul <4 x float> %i.ku, %i.hh
  %i.kw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hj, <4 x float> %i.hl, <4 x float> %i.kv)
  %i.kx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> %i.hn, <4 x float> %i.kw)
  %i.ky = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> zeroinitializer, <4 x float> %i.kx) ; 3 uses
  %i.kz = shufflevector <4 x float> %i.ky, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.kz, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !16
  %i.la = extractelement <4 x float> %i.ky, i64 2
  store float %i.la, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !16
  store <4 x float> %i.kt, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !16
  %i.lb = load float, ptr %2, align 4, !tbaa !10  ; 2 uses
  %i.lc = tail call float @llvm.fabs.f32(float %i.lb)
  %i.ld = fcmp olt float %i.lc, f0x34000000
  %.sroa.0.0 = select i1 %i.ld, float 1.000000e-03, float %i.lb
  %i.le = load <2 x float>, ptr %i.gr, align 4, !tbaa !10 ; 2 uses
  %i.lf = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.le)
  %i.lg = fcmp olt <2 x float> %i.lf, splat (float f0x34000000)
  %i.lh = select <2 x i1> %i.lg, <2 x float> splat (float 1.000000e-03), <2 x float> %i.le ; 2 uses
  %i.li = insertelement <4 x float> poison, float %.sroa.0.0, i64 0
  %i.lj = shufflevector <4 x float> %i.li, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lk = fmul <4 x float> %i.jy, %i.lj
  store <4 x float> %i.lk, ptr %3, align 4, !tbaa !10
  %i.ll = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> zeroinitializer
  %i.lm = fmul <4 x float> %i.im, %i.ll
  store <4 x float> %i.lm, ptr %.sroa.773.0..sroa_idx, align 4, !tbaa !10
  %i.ln = shufflevector <2 x float> %i.lh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lo = fmul <4 x float> %i.ky, %i.ln
  store <4 x float> %i.lo, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !10
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !10
  %i.lr = load <2 x float>, ptr %0, align 4, !tbaa !10
  store <2 x float> %i.lr, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !10
  store float %i.lq, ptr %.sroa.1775.0..sroa_idx, align 4, !tbaa !13
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #13 {
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
  %55 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 8 uses
  %56 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 6 uses
  %57 = alloca %"struct.ImGuizmo::vec_t", align 4 ; 3 uses
  %58 = alloca [7 x %"struct.ImGuizmo::vec_t"], align 16 ; 16 uses
  %59 = alloca [4 x %"struct.ImGuizmo::vec_t"], align 16 ; 8 uses
  %60 = alloca %"struct.ImGuizmo::matrix_t", align 16 ; 7 uses
  %61 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %62 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %63 = alloca %"struct.ImGuizmo::matrix_t", align 4 ; 4 uses
  %64 = alloca %"struct.ImGuizmo::matrix_t", align 8 ; 9 uses
  store i32 %3, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 8), align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), ptr noundef nonnull readonly align 4 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 76), ptr noundef nonnull readonly align 4 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !70
  %i.o = icmp eq i32 %3, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), ptr noundef nonnull readonly align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !70
  %i.p = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10 ; 3 uses
  %i.q = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 144), align 8, !tbaa !14 ; 2 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = extractelement <4 x float> %i.p, i64 0   ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %i.u = extractelement <4 x float> %i.p, i64 2   ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.v)
  %i.w = fdiv float 1.000000e+00, %sqrt.i.i.i.i
  %i.x = insertelement <4 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul <4 x float> %i.y, %i.p
  store <4 x float> %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !10
  %i.aa = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10 ; 3 uses
  %i.ab = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 160), align 8, !tbaa !14
  %i.ac = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13 ; 2 uses
  %i.ad = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !10 ; 3 uses
  %i.ae = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 176), align 8, !tbaa !14
  %i.af = insertelement <2 x float> %i.ad, float %i.ab, i64 0 ; 2 uses
  %i.ag = fmul <2 x float> %i.af, %i.af
  %i.ah = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> %i.ad, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ai, <2 x float> %i.ag)
  %i.ak = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.al = insertelement <2 x float> %i.ak, float %i.ac, i64 1 ; 2 uses
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.al, <2 x float> %i.aj)
  %i.an = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.am)
  %i.ao = fdiv <2 x float> splat (float 1.000000e+00), %i.an ; 2 uses
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fmul <4 x float> %i.ap, %i.aa
  store <4 x float> %i.aq, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 156), align 4, !tbaa !10
  %i.ar = extractelement <2 x float> %i.ao, i64 1 ; 4 uses
  %i.as = extractelement <2 x float> %i.ad, i64 0
  %i.at = fmul float %i.as, %i.ar
  store float %i.at, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 172), align 4, !tbaa !12
  %i.au = fmul float %i.ae, %i.ar
  store float %i.au, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 176), align 8, !tbaa !14
  %i.av = fmul float %i.ac, %i.ar
  store float %i.av, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13
  %i.aw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !15
  %i.ax = fmul float %i.ar, %i.aw
  br label %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit

bb.c:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), align 4, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 144), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 160), align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 164), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 180), align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ba = load float, ptr %i.az, align 4, !tbaa !13
  %i.bb = load <2 x float>, ptr %i.ay, align 4, !tbaa !10
  store <2 x float> %i.bb, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10
  store float %i.ba, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !13
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 200), align 8, !tbaa !15
  br label %_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit

_ZN8ImGuizmoL14ComputeContextEPKfS1_PfNS_4MODEE.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi float [ %i.ax, %bb.b ], [ 0.000000e+00, %bb.c ]
  store float %.sink.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 184), align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), ptr noundef nonnull readonly align 4 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !70
  %i.bc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 276), align 4
  %i.bd = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 292), align 4, !tbaa !13
  %i.be = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 300), align 4, !tbaa !12 ; 2 uses
  %i.bf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 304), align 8, !tbaa !14 ; 2 uses
  %i.bg = fmul float %i.bf, %i.bf
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bg)
  %i.bi = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 308), align 4, !tbaa !13 ; 2 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.bh)
  %sqrt.i12.i = tail call noundef float @llvm.sqrt.f32(float %i.bj)
  %i.bk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), align 4, !tbaa !10 ; 2 uses
  %i.bl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 284), align 4, !tbaa !10 ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bn = fmul <2 x float> %i.bm, %i.bm
  %i.bo = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.bo, <2 x float> %i.bn)
  %i.bq = insertelement <2 x float> %i.bc, float %i.bd, i64 1 ; 2 uses
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bq, <2 x float> %i.bp)
  %i.bs = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.br)
  store <2 x float> %i.bs, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 524), align 4, !tbaa !10
  store float %sqrt.i12.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 532), align 4, !tbaa !13
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 536), align 8, !tbaa !15
  %i.bt = tail call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), i1 noundef zeroext false) ; 0 uses
  %i.bu = tail call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 332), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 268), i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 76), ptr noundef nonnull align 4 dereferenceable(64) %62)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), ptr noundef nonnull align 4 dereferenceable(64) %62, i64 64, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #19
  call void @_ZN8ImGuizmo21FPU_MatrixF_x_MatrixFEPKfS1_Pf(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 140), ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), ptr noundef nonnull align 4 dereferenceable(64) %63)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), ptr noundef nonnull align 4 dereferenceable(64) %63, i64 64, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #19
  %i.bv = call noundef float @_ZN8ImGuizmo8matrix_t7InverseERKS0_b(ptr noundef nonnull align 4 dereferenceable(64) %64, ptr noundef nonnull align 4 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 12), i1 noundef zeroext false) ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %64, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 572), ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !tbaa.struct !17
  %i.bx = getelementptr inbounds nuw i8, ptr %64, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 540), ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 556), ptr noundef nonnull align 8 dereferenceable(16) %64, i64 16, i1 false), !tbaa.struct !17
  %i.by = getelementptr inbounds nuw i8, ptr %64, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 588), ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !tbaa.struct !17
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %64, i64 8
  %.sroa.8.0.copyload.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !10
  %i.bz = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.ca = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 220), align 4, !tbaa !16
  %i.cb = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 416), align 8, !tbaa !16 ; 2 uses
  %i.cc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8, !tbaa !16
  %i.cd = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.ce = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 204), align 4, !tbaa !16
  %i.cf = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 236), align 4, !tbaa !16
  %i.cg = load <2 x float>, ptr %64, align 8, !tbaa !10 ; 2 uses
  %i.ch = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 224), align 8
  %i.ci = insertelement <2 x float> %i.cg, float %i.cb, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ck = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.ca, i64 1
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cm = fmul <4 x float> %i.cj, %i.cl
  %i.cn = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 208), align 8
  %i.co = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.ce, i64 1
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 240), align 8
  %i.cr = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.cf, i64 1
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ct = shufflevector <1 x float> %i.cd, <1 x float> poison, <2 x i32> zeroinitializer
  %i.cu = shufflevector <1 x float> %i.bz, <1 x float> poison, <2 x i32> zeroinitializer
  %i.cv = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8, !tbaa !16 ; 2 uses
  %i.cw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.cx = fmul float %i.cw, 0.000000e+00
  %i.cy = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16 ; 3 uses
  %i.cz = extractelement <2 x float> %i.cy, i64 0
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> %i.cg, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.da, <4 x float> %i.cp, <4 x float> %i.cm)
  %i.dc = shufflevector <2 x float> %i.cv, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.dd = insertelement <3 x float> %i.dc, float %i.cc, i64 0
  %i.de = insertelement <3 x float> %i.dd, float %i.cb, i64 2
  %i.df = shufflevector <3 x float> %i.de, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
end_hunk_0
begin_hunk_1_@_ZN8ImGuizmo10ManipulateEPKfS1_NS_9OPERATIONENS_4MODEEPfS4_S4_S4_S4_:bb.a
  %i.cwn = shufflevector <4 x float> %i.cwl, <4 x float> %i.cwm, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.cwo = shufflevector <2 x float> %i.cwb, <2 x float> %i.cwe, <4 x i32> <i32 0, i32 0, i32 poison, i32 2>
  %i.cwp = shufflevector <4 x float> %i.cwo, <4 x float> %i.cwn, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.cwq = fmul <4 x float> %i.cwp, %i.cwn        ; 4 uses
  %i.cwr = extractelement <4 x float> %i.cwq, i64 1
  %i.cws = fadd float %i.cwr, 5.000000e-01
  %i.cwt = shufflevector <4 x float> %i.cwq, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cwu = insertelement <2 x float> %i.cwt, float 1.000000e+00, i64 1
  %i.cwv = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.cws, i64 1
  %i.cww = fsub <2 x float> %i.cwu, %i.cwv
  %i.cwx = fmul <2 x float> %i.cun, %i.cww
  %i.cwy = fadd <2 x float> %i.cuo, %i.cwx
  store <2 x float> %i.cwy, ptr %39, align 16, !tbaa !10
  %i.cwz = shufflevector <4 x float> %i.cwm, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cxa = shufflevector <2 x float> %i.cwe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cxb = extractelement <2 x float> %i.cvw, i64 0 ; 2 uses
  %i.cxc = shufflevector <2 x float> %i.cvw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cxd = shufflevector <2 x float> %i.cur, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cxe = shufflevector <2 x float> %i.cwe, <2 x float> %i.cwz, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cxf = shufflevector <2 x float> %i.cwe, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cxg = fmul <4 x float> %i.cxe, %i.cxf        ; 2 uses
  %i.cxh = shufflevector <2 x float> %i.cuw, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.cxi = insertelement <2 x float> %i.cvj, float %i.cvk, i64 1
  %i.cxj = extractelement <4 x float> %i.cwq, i64 2
  %i.cxk = shufflevector <4 x float> %i.cwm, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cxl = shufflevector <4 x float> %i.cxk, <4 x float> %i.cxa, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cxm = shufflevector <4 x float> %i.cxl, <4 x float> %i.cwq, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.cxn = shufflevector <4 x float> %i.cxm, <4 x float> %i.cxg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cxo = shufflevector <4 x float> %i.cxg, <4 x float> %i.cxa, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.cxp = shufflevector <2 x float> %i.cvw, <2 x float> %i.cuq, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.cxq = insertelement <4 x float> %i.cxh, float %i.cuk, i64 3
  %i.cxr = shufflevector <4 x float> %i.cxq, <4 x float> %i.cxc, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.cxs = shufflevector <4 x float> %i.cxr, <4 x float> %i.cxd, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %bb.eg

bb.ef:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124
  call void @_ZN10ImDrawList19AddConvexPolyFilledEPK6ImVec2ij(ptr noundef nonnull align 8 dereferenceable(196) %i.cmq, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -2146402049)
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196) %i.cmq, ptr noundef nonnull %39, i32 noundef 64, i32 noundef -15695617, i32 noundef 1, float noundef 2.000000e+00)
  %i.cxt = getelementptr inbounds nuw i8, ptr %39, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %i.cxu = sext i32 %.0 to i64
  %i.cxv = getelementptr [8 x i8], ptr @_ZN8ImGuizmoL16rotationInfoMaskE, i64 %i.cxu
  %i.cxw = getelementptr i8, ptr %i.cxv, i64 -64
  %i.cxx = load ptr, ptr %i.cxw, align 8, !tbaa !79
  %i.cxy = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 752), align 8, !tbaa !73 ; 2 uses
  %i.cxz = fdiv float %i.cxy, f0x40490FDB
  %i.cya = fmul float %i.cxz, 1.800000e+02
  %i.cyb = fpext float %i.cya to double
  %i.cyc = fpext float %i.cxy to double
  %i.cyd = load <2 x float>, ptr %i.cxt, align 8, !tbaa !10 ; 2 uses
  %i.cye = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.j, i64 noundef 512, ptr noundef %i.cxx, double noundef %i.cyb, double noundef %i.cyc) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  %i.cyf = fadd <2 x float> %i.cyd, splat (float 1.500000e+01)
  store <2 x float> %i.cyf, ptr %40, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cmq, ptr noundef nonnull align 4 dereferenceable(8) %40, i32 noundef -16777216, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  %i.cyg = fadd <2 x float> %i.cyd, splat (float 1.400000e+01)
  store <2 x float> %i.cyg, ptr %41, align 8, !tbaa !10
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196) %i.cmq, ptr noundef nonnull align 4 dereferenceable(8) %41, i32 noundef -1, ptr noundef nonnull %i.j, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %_ZN8ImGuizmoL17DrawRotationGizmoEi.exit

bb.eg:                                            ; preds = %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124, %bb.ee
  %indvars.iv123.i = phi i64 [ 1, %bb.ee ], [ %indvars.iv.next124.i, %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124 ] ; 3 uses
  br i1 %i.cvt, label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.cyh = trunc i64 %indvars.iv123.i to i32
  %i.cyi = add i32 %i.cyh, -1
  %i.cyj = uitofp i32 %i.cyi to float
  %i.cyk = fdiv nnan float %i.cyj, 6.300000e+01
  %i.cyl = fmul float %i.cvy, %i.cyk              ; 2 uses
  %i.cym = call float @sinf(float noundef %i.cyl) #19
  %i.cyn = call float @cosf(float noundef %i.cyl) #19 ; 3 uses
  %i.cyo = fsub float 1.000000e+00, %i.cyn        ; 3 uses
  %i.cyp = call float @llvm.fmuladd.f32(float %i.cxj, float %i.cyo, float %i.cyn)
  %i.cyq = insertelement <2 x float> poison, float %i.cyo, i64 0
  %i.cyr = shufflevector <2 x float> %i.cyq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cys = insertelement <2 x float> poison, float %i.cyn, i64 0
  %i.cyt = shufflevector <2 x float> %i.cys, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cyu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cwf, <2 x float> %i.cyr, <2 x float> %i.cyt)
  %i.cyv = insertelement <4 x float> poison, float %i.cym, i64 0
  %i.cyw = insertelement <4 x float> %i.cyv, float %i.cyo, i64 1 ; 2 uses
  %i.cyx = shufflevector <4 x float> %i.cyw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cyy = fmul <4 x float> %i.cxn, %i.cyx        ; 4 uses
  %i.cyz = shufflevector <4 x float> %i.cyw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.cza = fmul <4 x float> %i.cxo, %i.cyz        ; 4 uses
  %foldExtExtBinop273 = fsub <4 x float> %i.cza, %i.cyy
  %i.czb = extractelement <4 x float> %foldExtExtBinop273, i64 0
  %foldExtExtBinop275 = fsub <4 x float> %i.cyy, %i.cza
  %i.czc = extractelement <4 x float> %foldExtExtBinop275, i64 2
  %i.czd = fadd <4 x float> %i.cyy, %i.cza
  %i.cze = fsub <4 x float> %i.cyy, %i.cza
  %i.czf = shufflevector <4 x float> %i.czd, <4 x float> %i.cze, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.czg = fmul float %.sroa.8.0.copyload.i122, %i.cyp
  br label %_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124

_ZN8ImGuizmo8matrix_t12RotationAxisERKNS_5vec_tEf.exit.i124: ; preds = %bb.eh, %bb.eg
  %.sroa.11.0.i = phi float [ %i.czc, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sroa.7.0.i = phi float [ %i.czb, %bb.eh ], [ 0.000000e+00, %bb.eg ]
  %.sink59.i.i126 = phi float [ %i.czg, %bb.eh ], [ %.sroa.8.0.copyload.i122, %bb.eg ]
  %i.czh = phi <4 x float> [ %i.czf, %bb.eh ], [ zeroinitializer, %bb.eg ] ; 4 uses
  %i.czi = phi <2 x float> [ %i.cyu, %bb.eh ], [ splat (float 1.000000e+00), %bb.eg ] ; 2 uses
  %i.czj = fmul float %.sroa.8.0.copyload.i122, %.sroa.11.0.i
  %i.czk = extractelement <2 x float> %i.czi, i64 0
  %i.czl = call float @llvm.fmuladd.f32(float %i.cxb, float %i.czk, float %i.czj)
  %i.czm = extractelement <4 x float> %i.czh, i64 0
  %i.czn = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.czm, float %i.czl)
  %i.czo = fadd float %i.czn, 0.000000e+00
  %i.czp = extractelement <4 x float> %i.czh, i64 2
  %i.czq = call float @llvm.fmuladd.f32(float %i.cxb, float %i.czp, float %.sink59.i.i126)
  %i.czr = extractelement <4 x float> %i.czh, i64 3
  %i.czs = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.czr, float %i.czq)
  %i.czt = fadd float %i.czs, 0.000000e+00
  %i.czu = extractelement <2 x float> %i.czi, i64 1
  %i.czv = fmul float %i.cvx, %i.czo
  %i.czw = fmul float %i.cvx, %i.czt
  %i.czx = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.czv, i64 1
  %i.czy = shufflevector <2 x float> %i.czx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.czz = fadd <4 x float> %i.cxp, %i.czy
  %i.daa = shufflevector <4 x float> %i.czh, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dab = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.czw, i64 1
  %i.dac = shufflevector <2 x float> %i.daa, <2 x float> %i.cuq, <4 x i32> <i32 0, i32 3, i32 3, i32 3>
  %i.dad = shufflevector <2 x float> %i.dab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.dae = fadd <4 x float> %i.dac, %i.dad
  %i.daf = fmul <4 x float> %i.cxs, %i.dae
  %i.dag = insertelement <4 x float> %i.cve, float %.sroa.7.0.i, i64 0
  %i.dah = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.czz, <4 x float> %i.dag, <4 x float> %i.daf) ; 3 uses
  %i.dai = extractelement <4 x float> %i.dah, i64 0
  %i.daj = call float @llvm.fmuladd.f32(float %.sroa.13.0.copyload.i, float %i.czu, float %i.dai)
  %i.dak = fadd float %i.daj, 0.000000e+00
  %i.dal = fmul float %i.cvx, %i.dak
  %i.dam = extractelement <4 x float> %i.dah, i64 3
  %i.dan = fadd float %.sroa.22.0.copyload.i76.i, %i.dal ; 2 uses
  %i.dao = insertelement <2 x float> poison, float %i.dan, i64 0
  %i.dap = shufflevector <2 x float> %i.dao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.daq = shufflevector <4 x float> %i.dah, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dar = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dap, <2 x float> %i.cxi, <2 x float> %i.daq)
  %i.das = fadd <2 x float> %i.cuj, %i.dar
  %i.dat = call float @llvm.fmuladd.f32(float %i.dan, float %i.cul, float %i.dam)
  %i.dau = fadd float %i.cum, %i.dat
  %i.dav = fdiv float 5.000000e-01, %i.dau
  %i.daw = insertelement <2 x float> poison, float %i.dav, i64 0
  %i.dax = shufflevector <2 x float> %i.daw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.day = fmul <2 x float> %i.das, %i.dax        ; 2 uses
  %i.daz = extractelement <2 x float> %i.day, i64 1
  %i.dba = fadd float %i.daz, 5.000000e-01
  %i.dbb = insertelement <2 x float> %i.day, float 1.000000e+00, i64 1
  %i.dbc = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dba, i64 1
  %i.dbd = fsub <2 x float> %i.dbb, %i.dbc
  %i.dbe = fmul <2 x float> %i.cun, %i.dbd
  %i.dbf = fadd <2 x float> %i.cuo, %i.dbe
  %i.dbg = getelementptr inbounds nuw [8 x i8], ptr %39, i64 %indvars.iv123.i
  store <2 x float> %i.dbf, ptr %i.dbg, align 8, !tbaa !10
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next124.i, 64
  br i1 %exitcond126.not.i, label %bb.ef, label %bb.eg, !llvm.loop !66

_ZN8ImGuizmoL17DrawRotationGizmoEi.exit:          ; preds = %bb.dy, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  br label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit

bb.ei:                                            ; preds = %bb.dp
  %i.dbh = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31 ; 11 uses
  %.not.i131 = icmp eq ptr %i.dbh, null
  br i1 %.not.i131, label %_ZN8ImGuizmoL20DrawTranslationGizmoEi.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.dbi = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50, !range !33, !noundef !34
  %i.dbj = trunc nuw i8 %i.dbi to i1
  br i1 %i.dbj, label %bb.ek, label %.preheader.preheader.i.i132

.preheader.preheader.i.i132:                      ; preds = %bb.ej
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, i8 -103, i64 28, i1 false), !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133

bb.ek:                                            ; preds = %bb.ej
  %i.dbk = icmp eq i32 %.0, 7                     ; 2 uses
  %i.dbl = select i1 %i.dbk, i32 -1978629889, i32 -1
  store i32 %i.dbl, ptr %i.e, align 16, !tbaa !52
  br i1 %i.dbk, label %.loopexit.loopexit.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.ek
  %i.dbm = icmp eq i32 %.0, 1
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  br i1 %i.dbm, label %.split.1.thread61.i.i, label %bb.el

.split.1.thread61.i.i:                            ; preds = %.split.preheader.i.i
  store i32 -1978629889, ptr %i.dbn, align 4, !tbaa !52
  %i.dbo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1627390122, ptr %i.dbo, align 16, !tbaa !52
  br label %.thread63.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.ek
  %i.dbp = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 -1978629889, ptr %i.dbq, align 4, !tbaa !52
  store <4 x i32> <i32 -16777046, i32 -16733696, i32 -5636096, i32 -1978629889>, ptr %i.dbp, align 4, !tbaa !52
  %i.dbr = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 -1978629889, ptr %i.dbr, align 8, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133

bb.el:                                            ; preds = %.split.preheader.i.i
  store i32 -16777046, ptr %i.dbn, align 4, !tbaa !52
  %i.dbs = icmp eq i32 %.0, 4
  %i.dbt = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.dbs, label %.split.1.thread.i.i, label %.split.1.i.i

.split.1.thread.i.i:                              ; preds = %bb.el
  store i32 -1978629889, ptr %i.dbt, align 16, !tbaa !52
  br label %.thread63.i.i

.split.1.i.i:                                     ; preds = %bb.el
  store i32 1627390122, ptr %i.dbt, align 16, !tbaa !52
  %i.dbu = icmp eq i32 %.0, 2
  %i.dbv = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.dbu, label %.split.2.thread64.i.i, label %bb.em

.split.2.thread64.i.i:                            ; preds = %.split.1.i.i
  store i32 -1978629889, ptr %i.dbv, align 8, !tbaa !52
  br label %.thread67.i.i

.thread63.i.i:                                    ; preds = %.split.1.thread.i.i, %.split.1.thread61.i.i
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 -16733696, ptr %i.dbw, align 8, !tbaa !52
  br label %.split.2.i.i

bb.em:                                            ; preds = %.split.1.i.i
  store i32 -16733696, ptr %i.dbv, align 8, !tbaa !52
  %i.dbx = icmp eq i32 %.0, 5
  br i1 %i.dbx, label %.thread67.i.i, label %.split.2.i.i

.split.2.i.i:                                     ; preds = %bb.em, %.thread63.i.i
  %i.dby = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 1627433472, ptr %i.dby, align 4, !tbaa !52
  %i.dbz = icmp eq i32 %.0, 3
  %i.dca = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  br i1 %i.dbz, label %.thread65.i.i, label %bb.en

.thread65.i.i:                                    ; preds = %.split.2.i.i
  store i32 -1978629889, ptr %i.dca, align 4, !tbaa !52
  br label %bb.eo

.thread67.i.i:                                    ; preds = %bb.em, %.split.2.thread64.i.i
  %.sink.i.i146 = phi i32 [ 1627433472, %.split.2.thread64.i.i ], [ -1978629889, %bb.em ]
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %.sink.i.i146, ptr %i.dcb, align 4, !tbaa !52
  %i.dcc = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 -5636096, ptr %i.dcc, align 4, !tbaa !52
  br label %bb.eo

bb.en:                                            ; preds = %.split.2.i.i
  store i32 -5636096, ptr %i.dca, align 4, !tbaa !52
  %i.dcd = icmp eq i32 %.0, 6
  br i1 %i.dcd, label %.loopexit.loopexit51.i.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.thread67.i.i, %.thread65.i.i
  br label %.loopexit.loopexit51.i.i

.loopexit.loopexit51.i.i:                         ; preds = %bb.eo, %bb.en
  %i.dce = phi i32 [ 1638531072, %bb.eo ], [ -1978629889, %bb.en ]
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %i.dce, ptr %i.dcf, align 8, !tbaa !52
  br label %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133

_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133: ; preds = %.loopexit.loopexit51.i.i, %.loopexit.loopexit.i.i, %.preheader.preheader.i.i132
  %.sroa.02.0.copyload.i.i134 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 188), align 4, !tbaa !10 ; 3 uses
  %.sroa.12.0.copyload.i.i135 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 192), align 8, !tbaa !10 ; 3 uses
  %.sroa.22.0.copyload.i.i136 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 196), align 4, !tbaa !10 ; 3 uses
  %i.dcg = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 460), align 4, !tbaa !16
  %i.dch = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 476), align 4, !tbaa !16
  %i.dci = fmul float %.sroa.12.0.copyload.i.i135, %i.dch
  %i.dcj = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i134, float %i.dcg, float %i.dci)
  %i.dck = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 492), align 4, !tbaa !16
  %i.dcl = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i136, float %i.dck, float %i.dcj)
  %i.dcm = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 508), align 4, !tbaa !16
  %i.dcn = fadd float %i.dcm, %i.dcl
  %i.dco = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 464), align 8, !tbaa !16
  %i.dcp = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 480), align 8, !tbaa !16
  %i.dcq = fmul float %.sroa.12.0.copyload.i.i135, %i.dcp
  %i.dcr = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i134, float %i.dco, float %i.dcq)
  %i.dcs = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 496), align 8, !tbaa !16
  %i.dct = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i136, float %i.dcs, float %i.dcr)
  %i.dcu = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 512), align 8, !tbaa !16
  %i.dcv = fadd float %i.dcu, %i.dct
  %i.dcw = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 472), align 8, !tbaa !16
  %i.dcx = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 488), align 8, !tbaa !16
  %i.dcy = fmul float %.sroa.12.0.copyload.i.i135, %i.dcx
  %i.dcz = call float @llvm.fmuladd.f32(float %.sroa.02.0.copyload.i.i134, float %i.dcw, float %i.dcy)
  %i.dda = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 504), align 8, !tbaa !16
  %i.ddb = call float @llvm.fmuladd.f32(float %.sroa.22.0.copyload.i.i136, float %i.dda, float %i.dcz)
  %i.ddc = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 520), align 8, !tbaa !16
  %i.ddd = fadd float %i.ddc, %i.ddb
  %i.dde = fdiv float 5.000000e-01, %i.ddd        ; 2 uses
  %i.ddf = fmul float %i.dcn, %i.dde
  %i.ddg = fmul float %i.dcv, %i.dde
  %i.ddh = fadd float %i.ddg, 5.000000e-01
  %i.ddi = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ddf, i64 0
  %i.ddj = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.ddh, i64 1
  %i.ddk = fsub <2 x float> %i.ddi, %i.ddj
  %i.ddl = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10
  %i.ddm = fmul <2 x float> %i.ddl, %i.ddk
  %i.ddn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10
  %i.ddo = fadd <2 x float> %i.ddn, %i.ddm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.ddp = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ddq = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ddr = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.dds = getelementptr inbounds nuw i8, ptr %27, i64 24
  br label %bb.eq

bb.ep:                                            ; preds = %bb.ev
  %i.ddt = load i32, ptr %i.e, align 16, !tbaa !52
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196) %i.dbh, ptr noundef nonnull align 4 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), float noundef 6.000000e+00, i32 noundef %i.ddt, i32 noundef 32)
  %i.ddu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32, !range !33, !noundef !34
  %i.ddv = trunc nuw i8 %i.ddu to i1
  br i1 %i.ddv, label %bb.ew, label %bb.ex

bb.eq:                                            ; preds = %bb.ev, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133
  %indvars.iv.i137 = phi i64 [ 0, %_ZN8ImGuizmoL13ComputeColorsEPjiNS_9OPERATIONE.exit.i133 ], [ %indvars.iv.next.i138, %bb.ev ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.ddw = trunc nuw nsw i64 %indvars.iv.i137 to i32
  call fastcc void @_ZN8ImGuizmoL30ComputeTripodAxisAndVisibilityEiRNS_5vec_tES1_S1_RbS2_(i32 noundef %i.ddw, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  %i.ddx = load i8, ptr %i.f, align 1, !tbaa !47, !range !33, !noundef !34
  %i.ddy = trunc nuw i8 %i.ddx to i1
  br i1 %i.ddy, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.ddz = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %i.dea = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %i.deb = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %i.dec = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.ded = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.dee = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.def = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.deg = load <1 x float>, ptr %21, align 16
  %i.deh = shufflevector <1 x float> %i.deg, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dei = fmul <2 x float> %i.deh, <float 1.000000e-01, float 1.000000e+00>
  %i.dej = load <2 x float>, ptr %21, align 16
  %i.dek = shufflevector <2 x float> %i.dej, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.del = fmul <2 x float> %i.dek, <float 1.000000e-01, float 1.000000e+00>
  %i.dem = load <4 x float>, ptr %21, align 16
  %i.den = shufflevector <4 x float> %i.dem, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.deo = fmul <2 x float> %i.den, <float 1.000000e-01, float 1.000000e+00>
  %i.dep = shufflevector <1 x float> %i.ddz, <1 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.deq = fmul <2 x float> %i.del, %i.dep        ; 2 uses
  %i.der = shufflevector <2 x float> %i.deq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.des = fmul <2 x float> %i.dei, %i.dep        ; 2 uses
  %i.det = fmul <2 x float> %i.dep, %i.deo        ; 2 uses
  %i.deu = shufflevector <1 x float> %i.deb, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dev = fmul <2 x float> %i.deq, %i.deu
  %i.dew = shufflevector <1 x float> %i.dea, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dex = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.des, <2 x float> %i.dew, <2 x float> %i.dev)
  %i.dey = shufflevector <1 x float> %i.dec, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dez = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.det, <2 x float> %i.dey, <2 x float> %i.dex)
  %i.dfa = shufflevector <1 x float> %i.ded, <1 x float> poison, <2 x i32> zeroinitializer
  %i.dfb = fadd <2 x float> %i.dfa, %i.dez
  %i.dfc = fdiv <2 x float> splat (float 5.000000e-01), %i.dfb
  %i.dfd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.dfe = shufflevector <2 x float> %i.dfd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dff = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.dfg = shufflevector <2 x float> %i.dff, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dfh = fmul <4 x float> %i.der, %i.dfg
  %i.dfi = shufflevector <2 x float> %i.des, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dfj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dfi, <4 x float> %i.dfe, <4 x float> %i.dfh)
  %i.dfk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.dfl = shufflevector <2 x float> %i.dfk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dfm = shufflevector <2 x float> %i.det, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dfn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dfm, <4 x float> %i.dfl, <4 x float> %i.dfj)
  %i.dfo = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.dfp = shufflevector <2 x float> %i.dfo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dfq = fadd <4 x float> %i.dfp, %i.dfn
  %i.dfr = shufflevector <2 x float> %i.dfc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dfs = fmul <4 x float> %i.dfq, %i.dfr        ; 4 uses
  %i.dft = extractelement <4 x float> %i.dfs, i64 1
  %i.dfu = fadd float %i.dft, 5.000000e-01
  %i.dfv = shufflevector <4 x float> %i.dfs, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dfw = insertelement <2 x float> %i.dfv, float 1.000000e+00, i64 1
  %i.dfx = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dfu, i64 1
  %i.dfy = fsub <2 x float> %i.dfw, %i.dfx
  %i.dfz = fmul <2 x float> %i.dee, %i.dfy
  %i.dga = fadd <2 x float> %i.def, %i.dfz
  store <2 x float> %i.dga, ptr %22, align 8
  %i.dgb = extractelement <4 x float> %i.dfs, i64 3
  %i.dgc = fadd float %i.dgb, 5.000000e-01
  %i.dgd = shufflevector <4 x float> %i.dfs, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dge = insertelement <2 x float> %i.dgd, float 1.000000e+00, i64 1
  %i.dgf = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.dgc, i64 1
  %i.dgg = fsub <2 x float> %i.dge, %i.dgf
  %i.dgh = fmul <2 x float> %i.dee, %i.dgg
  %i.dgi = fadd <2 x float> %i.def, %i.dgh
  store <2 x float> %i.dgi, ptr %23, align 8
  %i.dgj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i137
end_hunk_1
begin_hunk_2_@_ZN8ImGuizmoL11ComputeSnapERNS_5vec_tEPf:bb.a
  %i.l = select i1 %i.k, float -1.000000e+00, float 1.000000e+00
  %i.m = tail call float @llvm.fmuladd.f32(float %i.a, float %i.l, float %i.j)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.c
  %.sink.i = phi float [ %i.h, %bb.c ], [ %i.m, %bb.e ]
  store float %.sink.i, ptr %0, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit

_ZN8ImGuizmoL11ComputeSnapEPff.exit:              ; preds = %bb.a, %bb.d, %.sink.split.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !10 ; 4 uses
  %i.q = fcmp ugt float %i.p, f0x34000000
  br i1 %i.q, label %bb.f, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

bb.f:                                             ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit
  %i.r = load float, ptr %i.n, align 4, !tbaa !10 ; 4 uses
  %i.s = tail call float @fmodf(float noundef %i.r, float noundef %i.p) #19 ; 3 uses
  %i.t = tail call float @llvm.fabs.f32(float %i.s)
  %i.u = fdiv float %i.t, %i.p                    ; 2 uses
  %i.v = fcmp olt float %i.u, 5.000000e-01
  br i1 %i.v, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = fcmp ogt float %i.u, 5.000000e-01
  br i1 %i.w, label %bb.h, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

bb.h:                                             ; preds = %bb.g
  %i.x = fsub float %i.r, %i.s
  %i.y = fcmp olt float %i.r, 0.000000e+00
  %i.z = select i1 %i.y, float -1.000000e+00, float 1.000000e+00
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.p, float %i.z, float %i.x)
  br label %.sink.split.i.1

bb.i:                                             ; preds = %bb.f
  %i.ab = fsub float %i.r, %i.s
  br label %.sink.split.i.1

.sink.split.i.1:                                  ; preds = %bb.i, %bb.h
  %.sink.i.1 = phi float [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  store float %.sink.i.1, ptr %i.n, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1

_ZN8ImGuizmoL11ComputeSnapEPff.exit.1:            ; preds = %.sink.split.i.1, %bb.g, %_ZN8ImGuizmoL11ComputeSnapEPff.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !10 ; 4 uses
  %i.af = fcmp ugt float %i.ae, f0x34000000
  br i1 %i.af, label %bb.j, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

bb.j:                                             ; preds = %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !10 ; 4 uses
  %i.ah = tail call float @fmodf(float noundef %i.ag, float noundef %i.ae) #19 ; 3 uses
  %i.ai = tail call float @llvm.fabs.f32(float %i.ah)
  %i.aj = fdiv float %i.ai, %i.ae                 ; 2 uses
  %i.ak = fcmp olt float %i.aj, 5.000000e-01
  br i1 %i.ak, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = fcmp ogt float %i.aj, 5.000000e-01
  br i1 %i.al, label %bb.l, label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

bb.l:                                             ; preds = %bb.k
  %i.am = fsub float %i.ag, %i.ah
  %i.an = fcmp olt float %i.ag, 0.000000e+00
  %i.ao = select i1 %i.an, float -1.000000e+00, float 1.000000e+00
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ao, float %i.am)
  br label %.sink.split.i.2

bb.m:                                             ; preds = %bb.j
  %i.aq = fsub float %i.ag, %i.ah
  br label %.sink.split.i.2

.sink.split.i.2:                                  ; preds = %bb.m, %bb.l
  %.sink.i.2 = phi float [ %i.aq, %bb.m ], [ %i.ap, %bb.l ]
  store float %.sink.i.2, ptr %i.ac, align 4, !tbaa !10
  br label %_ZN8ImGuizmoL11ComputeSnapEPff.exit.2

_ZN8ImGuizmoL11ComputeSnapEPff.exit.2:            ; preds = %.sink.split.i.2, %bb.k, %_ZN8ImGuizmoL11ComputeSnapEPff.exit.1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

declare void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare noundef i32 @_Z14ImFormatStringPcmPKcz(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #11

declare void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

declare void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #11

declare void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #11

declare void @_ZN10ImDrawList17AddTriangleFilledERK6ImVec2S2_S2_j(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8ImGuizmoL15DrawHatchedAxisERKNS_5vec_tE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #13 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.052 = phi i32 [ 1, %bb.a ], [ %i.bx, %bb.c ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.c = shl nuw nsw i32 %.052, 1                 ; 2 uses
  %i.d = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 664), align 8
  %i.e = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 408), align 8
  %i.f = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 424), align 8
  %i.g = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 440), align 8
  %i.h = load <1 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 456), align 8
  %i.i = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 972), align 4, !tbaa !10 ; 2 uses
  %i.j = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), align 4, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.k = or disjoint i32 %i.c, 1
  %i.l = load <1 x float>, ptr %0, align 4
  %i.m = shufflevector <1 x float> %i.l, <1 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.n = load float, ptr %i.a, align 4, !tbaa !14
  %i.o = load float, ptr %i.b, align 4, !tbaa !13
  %i.p = insertelement <3 x float> %i.m, float %i.n, i64 1
  %i.q = insertelement <3 x float> %i.p, float %i.o, i64 2
  %i.r = fmul <3 x float> %i.q, splat (float 5.000000e-02) ; 3 uses
  %i.s = uitofp nneg i32 %i.c to float
  %i.t = uitofp nneg i32 %i.k to float
  %i.u = shufflevector <3 x float> %i.r, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = insertelement <2 x float> poison, float %i.s, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.t, i64 1 ; 3 uses
  %i.x = fmul <2 x float> %i.u, %i.w
  %i.y = shufflevector <1 x float> %i.d, <1 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = fmul <2 x float> %i.y, %i.x              ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ab = shufflevector <3 x float> %i.r, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.ab, %i.w
  %i.ad = fmul <2 x float> %i.ac, %i.y            ; 2 uses
  %i.ae = shufflevector <3 x float> %i.r, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.af = fmul <2 x float> %i.ae, %i.w
  %i.ag = fmul <2 x float> %i.y, %i.af            ; 2 uses
  %i.ah = shufflevector <1 x float> %i.f, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.z, %i.ah
  %i.aj = shufflevector <1 x float> %i.e, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ak = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.aj, <2 x float> %i.ai)
  %i.al = shufflevector <1 x float> %i.g, <1 x float> poison, <2 x i32> zeroinitializer
  %i.am = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.al, <2 x float> %i.ak)
  %i.an = shufflevector <1 x float> %i.h, <1 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fadd <2 x float> %i.an, %i.am
  %i.ap = fdiv <2 x float> splat (float 5.000000e-01), %i.ao
  %i.aq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 396), align 4, !tbaa !16
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.as = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 412), align 4, !tbaa !16
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.au = fmul <4 x float> %i.aa, %i.at
  %i.av = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %i.ar, <4 x float> %i.au)
  %i.ax = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 428), align 4, !tbaa !16
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.az = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ba = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.ay, <4 x float> %i.aw)
  %i.bb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 444), align 4, !tbaa !16
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bd = fadd <4 x float> %i.bc, %i.ba
  %i.be = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bf = fmul <4 x float> %i.bd, %i.be           ; 4 uses
  %i.bg = extractelement <4 x float> %i.bf, i64 1
  %i.bh = fadd float %i.bg, 5.000000e-01
  %i.bi = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float 1.000000e+00, i64 1
  %i.bk = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bh, i64 1
  %i.bl = fsub <2 x float> %i.bj, %i.bk
  %i.bm = fmul <2 x float> %i.i, %i.bl
  %i.bn = fadd <2 x float> %i.j, %i.bm
  store <2 x float> %i.bn, ptr %1, align 8
  %i.bo = extractelement <4 x float> %i.bf, i64 3
  %i.bp = fadd float %i.bo, 5.000000e-01
  %i.bq = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.br = insertelement <2 x float> %i.bq, float 1.000000e+00, i64 1
  %i.bs = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.bp, i64 1
  %i.bt = fsub <2 x float> %i.br, %i.bs
  %i.bu = fmul <2 x float> %i.i, %i.bt
  %i.bv = fadd <2 x float> %i.j, %i.bu
  store <2 x float> %i.bv, ptr %2, align 8
  %i.bw = load ptr, ptr @_ZN8ImGuizmoL8gContextE, align 8, !tbaa !31
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(196) %i.bw, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -2147483648, float noundef 6.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.bx = add nuw nsw i32 %.052, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, 10
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !82
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_ImGuizmo.cpp() #18 section ".text.startup" {
bb.a:
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 684), align 4, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 640), i8 0, i64 24, i1 false)
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 685), align 1, !tbaa !50
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 892), align 4, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 964), i8 0, i64 24, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 988), align 4, !tbaa !29
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL8gContextE, i64 992), align 8, !tbaa !30
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr @_ZN8ImGuizmoL14directionUnaryE, align 16
  store <2 x float> zeroinitializer, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 8), align 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 16), align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8ImGuizmoL14directionUnaryE, i64 40), align 8
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZN8ImGuizmoL14directionUnaryE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.sqrt.v3f32(<3 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTSN8ImGuizmo5vec_tE", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !9, i64 8}
!14 = !{!11, !9, i64 4}
!15 = !{!11, !9, i64 12}
!16 = !{!5, !5, i64 0}
!17 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 4, !10}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 _ZTS10ImDrawList", !18, i64 0}
!20 = !{!"_ZTSN8ImGuizmo4MODEE", !5, i64 0}
!21 = !{!"_ZTSN8ImGuizmo8matrix_tE", !5, i64 0}
!22 = !{!"_ZTS6ImVec2", !9, i64 0, !9, i64 4}
!23 = !{!"bool", !5, i64 0}
!24 = !{!"_ZTSN8ImGuizmo7ContextE", !19, i64 0, !20, i64 8, !21, i64 12, !21, i64 76, !21, i64 140, !21, i64 204, !21, i64 268, !21, i64 332, !21, i64 396, !21, i64 460, !11, i64 524, !11, i64 540, !11, i64 556, !11, i64 572, !11, i64 588, !11, i64 604, !11, i64 620, !9, i64 636, !22, i64 640, !22, i64 648, !22, i64 656, !9, i64 664, !11, i64 668, !23, i64 684, !23, i64 685, !11, i64 688, !11, i64 704, !11, i64 720, !11, i64 736, !9, i64 752, !9, i64 756, !11, i64 760, !11, i64 776, !9, i64 792, !5, i64 796, !5, i64 799, !5, i64 804, !11, i64 816, !11, i64 832, !11, i64 848, !11, i64 864, !6, i64 880, !5, i64 884, !23, i64 892, !21, i64 896, !6, i64 960, !9, i64 964, !9, i64 968, !9, i64 972, !9, i64 976, !9, i64 980, !9, i64 984, !9, i64 988, !23, i64 992}
!25 = !{!24, !9, i64 972}
!26 = !{!24, !9, i64 976}
!27 = !{!24, !9, i64 980}
!28 = !{!24, !9, i64 984}
!29 = !{!24, !9, i64 988}
!30 = !{!24, !23, i64 992}
!31 = !{!24, !19, i64 0}
!32 = !{!24, !23, i64 684}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!"p1 omnipotent char", !18, i64 0}
!36 = !{!"p1 _ZTS11ImFontAtlas", !18, i64 0}
!37 = !{!"p1 _ZTS6ImFont", !18, i64 0}
!38 = !{!"short", !5, i64 0}
!39 = !{!"p1 short", !18, i64 0}
!40 = !{!"_ZTS8ImVectorItE", !6, i64 0, !6, i64 4, !39, i64 8}
!41 = !{!"_ZTS7ImGuiIO", !6, i64 0, !6, i64 4, !22, i64 8, !9, i64 16, !9, i64 20, !35, i64 24, !35, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !5, i64 52, !9, i64 140, !9, i64 144, !18, i64 152, !36, i64 160, !9, i64 168, !23, i64 172, !37, i64 176, !22, i64 184, !23, i64 192, !23, i64 193, !23, i64 194, !23, i64 195, !23, i64 196, !23, i64 197, !9, i64 200, !35, i64 208, !35, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !22, i64 288, !5, i64 296, !9, i64 304, !9, i64 308, !23, i64 312, !23, i64 313, !23, i64 314, !23, i64 315, !5, i64 316, !5, i64 828, !23, i64 908, !23, i64 909, !23, i64 910, !23, i64 911, !23, i64 912, !23, i64 913, !23, i64 914, !9, i64 916, !6, i64 920, !6, i64 924, !6, i64 928, !6, i64 932, !6, i64 936, !22, i64 940, !23, i64 948, !6, i64 952, !6, i64 956, !22, i64 960, !5, i64 968, !5, i64 1008, !5, i64 1048, !5, i64 1053, !5, i64 1058, !5, i64 1063, !5, i64 1068, !5, i64 1073, !5, i64 1080, !5, i64 1100, !5, i64 1120, !5, i64 1160, !5, i64 1180, !5, i64 3228, !5, i64 5276, !5, i64 5356, !9, i64 5436, !23, i64 5440, !38, i64 5442, !40, i64 5448}
!42 = !{!41, !9, i64 288}
!43 = !{!24, !9, i64 648}
!44 = !{!41, !9, i64 292}
!45 = !{!24, !9, i64 652}
!46 = !{!24, !9, i64 664}
!47 = !{!23, !23, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!24, !9, i64 636}
!50 = !{!24, !23, i64 685}
!51 = !{!24, !23, i64 892}
!52 = !{!6, !6, i64 0}
!53 = !{!"branch_weights", i32 1, i32 1048575}
!54 = !{!24, !9, i64 964}
!55 = !{!24, !9, i64 968}
!56 = distinct !{!56, !48}
!57 = !{!24, !9, i64 640}
!58 = !{!24, !9, i64 644}
!59 = distinct !{!59, !48}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = distinct !{!62, !48}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = distinct !{!68, !48}
!69 = !{!24, !20, i64 8}
!70 = !{i64 0, i64 64, !16}
!71 = !{!24, !6, i64 960}
!72 = !{!24, !9, i64 756}
!73 = !{!24, !9, i64 752}
!74 = !{!24, !9, i64 792}
!75 = !{!24, !6, i64 880}
!76 = !{!"branch_weights", i32 1, i32 2}
!77 = !{!22, !9, i64 0}
!78 = !{!22, !9, i64 4}
!79 = !{!35, !35, i64 0}
!80 = distinct !{!80, !48}
!81 = distinct !{!81, !48}
!82 = distinct !{!82, !48}
end_hunk_2
