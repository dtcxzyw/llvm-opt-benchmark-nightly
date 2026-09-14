Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3_prior?download=true
inline.NumInlined: 6725
inline.NumDeleted: 3505
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3g2o8internal27computeEdgeSE3PriorGradientIN5Eigen3MapINS2_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS2_6StrideILi0ELi0EEEEEEEvRNS2_9TransformIdLi3ELi1ELi0EEERKNS2_10MatrixBaseIT_EERKSA_SI_SI_:bb.a
  %i.gc = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = fmul <2 x double> %i.bm, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !10, !noalias !212 ; 2 uses
  %i.gh = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = fmul <2 x double> %i.ci, %i.gi
  %i.gk = fadd <2 x double> %i.ge, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.gm = load double, ptr %i.gl, align 16, !tbaa !10, !noalias !212 ; 2 uses
  %i.gn = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = fmul <2 x double> %i.de, %i.go
  %i.gq = fadd <2 x double> %i.gk, %i.gp          ; 3 uses
  %i.gr = fmul double %i.br, %i.gb
  %i.gs = fmul double %i.cn, %i.gg
  %i.gt = fmul double %i.dj, %i.gm
  %i.gu = fadd double %i.gs, %i.gt
  %i.gv = fadd double %i.gr, %i.gu                ; 2 uses
  %i.gw = load double, ptr %i.ei, align 16, !tbaa !10, !noalias !212 ; 2 uses
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gz = fmul <2 x double> %i.bm, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !10, !noalias !212 ; 2 uses
  %i.hc = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x double> %i.ci, %i.hd
  %i.hf = fadd <2 x double> %i.gz, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.hh = load double, ptr %i.hg, align 16, !tbaa !10, !noalias !212 ; 2 uses
  %i.hi = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x double> %i.de, %i.hj
  %i.hl = fadd <2 x double> %i.hf, %i.hk
  %i.hm = fmul double %i.br, %i.gw
  %i.hn = fmul double %i.cn, %i.hb
  %i.ho = fmul double %i.dj, %i.hh
  %i.hp = fadd double %i.hn, %i.ho
  %i.hq = fadd double %i.hm, %i.hp
  %i.hr = fadd <2 x double> %i.eg, %i.hl
  %i.hs = fadd double %i.eh, %i.hq
  %.sroa.477.24.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.fd, i64 0
  %.sroa.9.56.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.fz, i64 0
  %.sroa.1482.88.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.gv, i64 0
  %.sroa.19.120.vec.insert = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.hs, i64 0
  store <2 x double> %i.ey, ptr %0, align 16, !tbaa !49
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %.sroa.477.24.vec.insert, ptr %i.ht, align 16, !tbaa !49
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.fu, ptr %i.hu, align 16, !tbaa !49
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %.sroa.9.56.vec.insert, ptr %i.hv, align 16, !tbaa !49
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.gq, ptr %i.hw, align 16, !tbaa !49
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> %.sroa.1482.88.vec.insert, ptr %i.hx, align 16, !tbaa !49
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> %i.hr, ptr %i.hy, align 16, !tbaa !49
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> %.sroa.19.120.vec.insert, ptr %i.hz, align 16, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %bc259 = bitcast <2 x double> %i.ey to <2 x i64>
  %i.ia = extractelement <2 x i64> %bc259, i64 0
  store i64 %i.ia, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ib = extractelement <2 x double> %i.ey, i64 1
  store double %i.ib, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store double %i.fd, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %bc261 = bitcast <2 x double> %i.fu to <2 x i64>
  %i.ic = extractelement <2 x i64> %bc261, i64 0
  store i64 %i.ic, ptr %i.d, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.id = extractelement <2 x double> %i.fu, i64 1
  store double %i.id, ptr %i.e, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store double %i.fz, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %bc263 = bitcast <2 x double> %i.gq to <2 x i64>
  %i.ie = extractelement <2 x i64> %bc263, i64 0
  store i64 %i.ie, ptr %i.g, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.if = extractelement <2 x double> %i.gq, i64 1
  store double %i.if, ptr %i.h, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store double %i.gv, ptr %i.i, align 8, !tbaa !10
  call void @_ZN3g2o8internal13compute_dq_dRERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS6_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(216) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ig = load ptr, ptr %1, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.ig, i8 0, i64 288, i1 false)
  %i.ih = load ptr, ptr %1, align 8, !tbaa !121, !noalias !213 ; 6 uses
  store <2 x double> %i.bm, ptr %i.ih, align 1, !tbaa !49
  %i.ii = getelementptr i8, ptr %i.ih, i64 16
  store double %i.br, ptr %i.ii, align 8, !tbaa !10
  %i.ij = getelementptr i8, ptr %i.ih, i64 48
  store <2 x double> %i.ci, ptr %i.ij, align 8, !tbaa !49
  %i.ik = getelementptr i8, ptr %i.ih, i64 64
  store double %i.cn, ptr %i.ik, align 8, !tbaa !10
  %i.il = getelementptr i8, ptr %i.ih, i64 96
  store <2 x double> %i.de, ptr %i.il, align 8, !tbaa !49
  %i.im = getelementptr i8, ptr %i.ih, i64 112
  store double %i.dj, ptr %i.im, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0161)
  %i.in = load double, ptr %i.ei, align 16, !tbaa !10
  %i.io = fmul double %i.in, 2.000000e+00         ; 4 uses
  store double 0.000000e+00, ptr %.sroa.0161, align 16, !tbaa !10, !noalias !214
  %i.ip = load <2 x double>, ptr %i.ha, align 8, !tbaa !10
  %i.iq = fmul <2 x double> %i.ip, splat (double 2.000000e+00) ; 3 uses
  %i.ir = extractelement <2 x double> %i.iq, i64 0 ; 2 uses
  %i.is = fneg double %i.ir
  %i.it = extractelement <2 x double> %i.iq, i64 1
  %i.iu = fneg double %i.it
  %.sroa.0161.8..sroa_idx279 = getelementptr inbounds nuw i8, ptr %.sroa.0161, i64 8
  store double %i.iu, ptr %.sroa.0161.8..sroa_idx279, align 8, !tbaa !10
  %.sroa.0161.16..sroa_idx280 = getelementptr inbounds nuw i8, ptr %.sroa.0161, i64 16
  store <2 x double> %i.iq, ptr %.sroa.0161.16..sroa_idx280, align 16, !tbaa !10
  %i.iv = fneg double %i.io
  %i.iw = load ptr, ptr %1, align 8, !tbaa !121, !noalias !215 ; 6 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 144
  %.sroa.0161.0..sroa.0161.0..sroa.0161.0..sroa.0161.0. = load <2 x double>, ptr %.sroa.0161, align 16 ; 2 uses
  %i.iy = shufflevector <2 x double> %.sroa.0161.0..sroa.0161.0..sroa.0161.0..sroa.0161.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x double> %i.bm, %i.iy
  %.sroa.0161.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0161, i64 8
  %.sroa.0161.8..sroa.0161.8..sroa.0161.8..sroa.0161.8. = load <2 x double>, ptr %.sroa.0161.8..sroa_idx, align 8 ; 2 uses
  %i.ja = shufflevector <2 x double> %.sroa.0161.8..sroa.0161.8..sroa.0161.8..sroa.0161.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x double> %i.ci, %i.ja
  %i.jc = fadd <2 x double> %i.iz, %i.jb
  %.sroa.0161.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0161, i64 16
  %.sroa.0161.16..sroa.0161.16..sroa.0161.16..sroa.0161.16. = load <2 x double>, ptr %.sroa.0161.16..sroa_idx, align 16 ; 4 uses
  %i.jd = shufflevector <2 x double> %.sroa.0161.16..sroa.0161.16..sroa.0161.16..sroa.0161.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = fmul <2 x double> %i.de, %i.jd
  %i.jf = fadd <2 x double> %i.jc, %i.je
  %i.jg = extractelement <2 x double> %.sroa.0161.0..sroa.0161.0..sroa.0161.0..sroa.0161.0., i64 0
  %i.jh = fmul double %i.br, %i.jg
  %i.ji = extractelement <2 x double> %.sroa.0161.8..sroa.0161.8..sroa.0161.8..sroa.0161.8., i64 0
  %i.jj = fmul double %i.cn, %i.ji
  %i.jk = extractelement <2 x double> %.sroa.0161.16..sroa.0161.16..sroa.0161.16..sroa.0161.16., i64 0
  %i.jl = fmul double %i.dj, %i.jk
  %i.jm = fadd double %i.jj, %i.jl
  %i.jn = fadd double %i.jh, %i.jm
  %i.jo = extractelement <2 x double> %.sroa.0161.16..sroa.0161.16..sroa.0161.16..sroa.0161.16., i64 1
  %i.jp = shufflevector <2 x double> %.sroa.0161.16..sroa.0161.16..sroa.0161.16..sroa.0161.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jq = fmul <2 x double> %i.bm, %i.jp
  %i.jr = fmul <2 x double> %i.ci, zeroinitializer ; 3 uses
  %i.js = fadd <2 x double> %i.jr, %i.jq
  %i.jt = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x double> %i.de, %i.ju
  %i.jw = fadd <2 x double> %i.jv, %i.js
  %i.jx = fmul double %i.br, %i.jo
  %i.jy = fmul double %i.cn, 0.000000e+00         ; 3 uses
  %i.jz = fmul double %i.dj, %i.io
  %i.ka = fsub double %i.jy, %i.jz
  %i.kb = fadd double %i.ka, %i.jx
  %i.kc = insertelement <2 x double> poison, double %i.is, i64 0
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = fmul <2 x double> %i.bm, %i.kd
  %i.kf = insertelement <2 x double> poison, double %i.io, i64 0
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x double> %i.ci, %i.kg
  %i.ki = fadd <2 x double> %i.kh, %i.ke
  %i.kj = fmul <2 x double> %i.de, zeroinitializer ; 3 uses
  %i.kk = fadd <2 x double> %i.kj, %i.ki
  %i.kl = fmul double %i.cn, %i.io
  %i.km = fmul double %i.dj, 0.000000e+00         ; 3 uses
  %i.kn = fadd double %i.km, %i.kl
  %i.ko = fmul double %i.br, %i.ir
  %i.kp = fsub double %i.kn, %i.ko
  store <2 x double> %i.jf, ptr %i.ix, align 1, !tbaa !49
  %i.kq = getelementptr i8, ptr %i.iw, i64 160
  store double %i.jn, ptr %i.kq, align 8, !tbaa !10
  %i.kr = getelementptr i8, ptr %i.iw, i64 192
  store <2 x double> %i.jw, ptr %i.kr, align 8, !tbaa !49
  %i.ks = getelementptr i8, ptr %i.iw, i64 208
  store double %i.kb, ptr %i.ks, align 8, !tbaa !10
  %i.kt = getelementptr i8, ptr %i.iw, i64 240
  store <2 x double> %i.kk, ptr %i.kt, align 8, !tbaa !49
  %i.ku = getelementptr i8, ptr %i.iw, i64 256
  store double %i.kp, ptr %i.ku, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0171)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0219)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0232)
  %i.kv = load double, ptr %4, align 16, !tbaa !10
  %i.kw = load double, ptr %i.fe, align 16, !tbaa !10
  %i.kx = load double, ptr %i.ga, align 16, !tbaa !10
  %i.ky = load double, ptr %i.en, align 8, !tbaa !10
  %11 = fmul double %i.ky, 2.000000e+00           ; 2 uses
  %i.kz = load double, ptr %i.fj, align 8, !tbaa !10
  %12 = fmul double %i.kz, 2.000000e+00           ; 3 uses
  %i.la = load double, ptr %i.gf, align 8, !tbaa !10
  %i.lb = load double, ptr %i.et, align 16, !tbaa !10
  %i.lc = fmul double %i.lb, 2.000000e+00         ; 2 uses
  %i.ld = load double, ptr %i.fp, align 16, !tbaa !10
  %i.le = fmul double %i.ld, 2.000000e+00         ; 3 uses
  %i.lf = load double, ptr %i.gl, align 16, !tbaa !10
  %i.lg = fmul double %i.lf, 2.000000e+00         ; 4 uses
  store double 0.000000e+00, ptr %.sroa.0171, align 16, !tbaa !10, !noalias !216
  %.sroa.0171.24..sroa_idx278 = getelementptr inbounds nuw i8, ptr %.sroa.0171, i64 24
  store double 0.000000e+00, ptr %.sroa.0171.24..sroa_idx278, align 8, !tbaa !10
  %i.lh = fneg double %i.lc
  %.sroa.0171.8..sroa_idx276 = getelementptr inbounds nuw i8, ptr %.sroa.0171, i64 8
  store double %i.lh, ptr %.sroa.0171.8..sroa_idx276, align 8, !tbaa !10
  %i.li = fneg double %i.le
  %i.lj = fneg double %i.lg
  %.sroa.0171.16..sroa_idx277 = getelementptr inbounds nuw i8, ptr %.sroa.0171, i64 16
  store double %11, ptr %.sroa.0171.16..sroa_idx277, align 16, !tbaa !10
  %i.lk = fmul double %i.la, 2.000000e+00         ; 4 uses
  %i.ll = fmul double %i.kx, 2.000000e+00         ; 4 uses
  %i.lm = fmul double %i.kw, 2.000000e+00         ; 4 uses
  %i.ln = fmul double %i.kv, 2.000000e+00         ; 2 uses
  store double %i.lc, ptr %.sroa.0219, align 16, !tbaa !10, !noalias !217
  %.sroa.0219.24..sroa_idx275 = getelementptr inbounds nuw i8, ptr %.sroa.0219, i64 24
  store double %i.le, ptr %.sroa.0219.24..sroa_idx275, align 8, !tbaa !10
  %.sroa.0219.8..sroa_idx273 = getelementptr inbounds nuw i8, ptr %.sroa.0219, i64 8
  store double 0.000000e+00, ptr %.sroa.0219.8..sroa_idx273, align 8, !tbaa !10
  %i.lo = fneg double %i.ln
  %.sroa.0219.16..sroa_idx274 = getelementptr inbounds nuw i8, ptr %.sroa.0219, i64 16
  store double %i.lo, ptr %.sroa.0219.16..sroa_idx274, align 16, !tbaa !10
  %i.lp = fneg double %i.lm
  %i.lq = fneg double %i.ll
  %i.lr = fneg double %11
  store double %i.lr, ptr %.sroa.0232, align 16, !tbaa !10, !noalias !218
  %i.ls = fneg double %12
  %.sroa.0232.24..sroa_idx272 = getelementptr inbounds nuw i8, ptr %.sroa.0232, i64 24
  store double %i.ls, ptr %.sroa.0232.24..sroa_idx272, align 8, !tbaa !10
  %i.lt = fneg double %i.lk
  %.sroa.0232.8..sroa_idx270 = getelementptr inbounds nuw i8, ptr %.sroa.0232, i64 8
  store double %i.ln, ptr %.sroa.0232.8..sroa_idx270, align 8, !tbaa !10
  %.sroa.0232.16..sroa_idx271 = getelementptr inbounds nuw i8, ptr %.sroa.0232, i64 16
  store double 0.000000e+00, ptr %.sroa.0232.16..sroa_idx271, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %.sroa.0171.0..sroa.0171.0..sroa.0171.0..sroa.0171.0. = load <2 x double>, ptr %.sroa.0171, align 16 ; 2 uses
  %i.lu = shufflevector <2 x double> %.sroa.0171.0..sroa.0171.0..sroa.0171.0..sroa.0171.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = fmul <2 x double> %i.bm, %i.lu
  %.sroa.0171.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0171, i64 8
  %.sroa.0171.8..sroa.0171.8..sroa.0171.8..sroa.0171.8. = load <2 x double>, ptr %.sroa.0171.8..sroa_idx, align 8 ; 2 uses
  %i.lw = shufflevector <2 x double> %.sroa.0171.8..sroa.0171.8..sroa.0171.8..sroa.0171.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.lx = fmul <2 x double> %i.ci, %i.lw
  %i.ly = fadd <2 x double> %i.lv, %i.lx
  %.sroa.0171.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0171, i64 16
  %.sroa.0171.16..sroa.0171.16..sroa.0171.16..sroa.0171.16. = load <2 x double>, ptr %.sroa.0171.16..sroa_idx, align 16 ; 2 uses
  %i.lz = shufflevector <2 x double> %.sroa.0171.16..sroa.0171.16..sroa.0171.16..sroa.0171.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ma = fmul <2 x double> %i.de, %i.lz
  %i.mb = fadd <2 x double> %i.ly, %i.ma
  %i.mc = extractelement <2 x double> %.sroa.0171.0..sroa.0171.0..sroa.0171.0..sroa.0171.0., i64 0
  %i.md = fmul double %i.br, %i.mc
  %i.me = extractelement <2 x double> %.sroa.0171.8..sroa.0171.8..sroa.0171.8..sroa.0171.8., i64 0
  %i.mf = fmul double %i.cn, %i.me
  %i.mg = extractelement <2 x double> %.sroa.0171.16..sroa.0171.16..sroa.0171.16..sroa.0171.16., i64 0
  %i.mh = fmul double %i.dj, %i.mg
  %i.mi = fadd double %i.mf, %i.mh
  %i.mj = fadd double %i.md, %i.mi
  store double %i.mj, ptr %.sroa.8, align 16, !tbaa !10
  %i.mk = fmul <2 x double> %i.bm, zeroinitializer ; 2 uses
  %i.ml = insertelement <2 x double> poison, double %i.li, i64 0
  %i.mm = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mn = fmul <2 x double> %i.ci, %i.mm
  %i.mo = fadd <2 x double> %i.mk, %i.mn
  %i.mp = insertelement <2 x double> poison, double %12, i64 0
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mr = fmul <2 x double> %i.de, %i.mq
  %i.ms = fadd <2 x double> %i.mr, %i.mo
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 8
  store <2 x double> %i.ms, ptr %.sroa.8.8..sroa_idx, align 8, !tbaa !49
  %i.mt = fmul double %i.br, 0.000000e+00         ; 2 uses
  %i.mu = fmul double %i.dj, %12
  %i.mv = fmul double %i.cn, %i.le
  %i.mw = fsub double %i.mu, %i.mv
  %i.mx = fadd double %i.mt, %i.mw
  %.sroa.8.24..sroa_idx269 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 24
  store double %i.mx, ptr %.sroa.8.24..sroa_idx269, align 8, !tbaa !10
  %i.my = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer
  %i.na = fmul <2 x double> %i.ci, %i.mz
  %i.nb = fadd <2 x double> %i.mk, %i.na
  %i.nc = insertelement <2 x double> poison, double %i.lk, i64 0
  %i.nd = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ne = fmul <2 x double> %i.de, %i.nd
  %i.nf = fadd <2 x double> %i.ne, %i.nb
  %i.ng = fmul double %i.dj, %i.lk
  %i.nh = fmul double %i.cn, %i.lg
  %i.ni = fsub double %i.ng, %i.nh
  %i.nj = fadd double %i.mt, %i.ni
  store <2 x double> %i.mb, ptr %i.j, align 16, !tbaa !49
  %i.nk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16.202 = load <2 x double>, ptr %.sroa.8, align 16, !tbaa !49
  store <2 x double> %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16.202, ptr %i.nk, align 16, !tbaa !49
  %i.nl = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.8.16..sroa_idx268 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 16
  %.sroa.8.16..sroa.8.16..sroa.8.16..sroa.8.32.208 = load <2 x double>, ptr %.sroa.8.16..sroa_idx268, align 16, !tbaa !49
  store <2 x double> %.sroa.8.16..sroa.8.16..sroa.8.16..sroa.8.32.208, ptr %i.nl, align 16, !tbaa !49
  %i.nm = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store <2 x double> %i.nf, ptr %i.nm, align 16, !tbaa !49
  %i.nn = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store double %i.nj, ptr %i.nn, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %.sroa.0219.0..sroa.0219.0..sroa.0219.0..sroa.0219.0. = load <2 x double>, ptr %.sroa.0219, align 16 ; 2 uses
  %i.no = shufflevector <2 x double> %.sroa.0219.0..sroa.0219.0..sroa.0219.0..sroa.0219.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = fmul <2 x double> %i.bm, %i.no
  %.sroa.0219.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0219, i64 8
  %.sroa.0219.8..sroa.0219.8..sroa.0219.8..sroa.0219.8. = load <2 x double>, ptr %.sroa.0219.8..sroa_idx, align 8 ; 2 uses
  %i.nq = shufflevector <2 x double> %.sroa.0219.8..sroa.0219.8..sroa.0219.8..sroa.0219.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.nr = fmul <2 x double> %i.ci, %i.nq
  %i.ns = fadd <2 x double> %i.np, %i.nr
  %.sroa.0219.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0219, i64 16
  %.sroa.0219.16..sroa.0219.16..sroa.0219.16..sroa.0219.16. = load <2 x double>, ptr %.sroa.0219.16..sroa_idx, align 16 ; 4 uses
  %i.nt = shufflevector <2 x double> %.sroa.0219.16..sroa.0219.16..sroa.0219.16..sroa.0219.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.nu = fmul <2 x double> %i.de, %i.nt
  %i.nv = fadd <2 x double> %i.ns, %i.nu
  %i.nw = extractelement <2 x double> %.sroa.0219.0..sroa.0219.0..sroa.0219.0..sroa.0219.0., i64 0
  %i.nx = fmul double %i.br, %i.nw
  %i.ny = extractelement <2 x double> %.sroa.0219.8..sroa.0219.8..sroa.0219.8..sroa.0219.8., i64 0
  %i.nz = fmul double %i.cn, %i.ny
  %i.oa = extractelement <2 x double> %.sroa.0219.16..sroa.0219.16..sroa.0219.16..sroa.0219.16., i64 0
  %i.ob = fmul double %i.dj, %i.oa
  %i.oc = fadd double %i.nz, %i.ob
  %i.od = fadd double %i.nx, %i.oc
  store double %i.od, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !10
  %i.oe = extractelement <2 x double> %.sroa.0219.16..sroa.0219.16..sroa.0219.16..sroa.0219.16., i64 1
  %i.of = shufflevector <2 x double> %.sroa.0219.16..sroa.0219.16..sroa.0219.16..sroa.0219.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.og = fmul <2 x double> %i.bm, %i.of
  %i.oh = fadd <2 x double> %i.jr, %i.og
  %i.oi = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.oj = shufflevector <2 x double> %i.oi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ok = fmul <2 x double> %i.de, %i.oj
  %i.ol = fadd <2 x double> %i.ok, %i.oh
  %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 8
  store <2 x double> %i.ol, ptr %.sroa.4.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !49
  %i.om = fmul double %i.br, %i.oe
  %i.on = fmul double %i.dj, %i.lm
  %i.oo = fsub double %i.jy, %i.on
  %i.op = fadd double %i.oo, %i.om
  %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 24
  store double %i.op, ptr %.sroa.4.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !10
  %i.oq = insertelement <2 x double> poison, double %i.lg, i64 0
  %i.or = shufflevector <2 x double> %i.oq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.os = fmul <2 x double> %i.bm, %i.or
  %i.ot = fadd <2 x double> %i.jr, %i.os
  %i.ou = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.ov = shufflevector <2 x double> %i.ou, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ow = fmul <2 x double> %i.de, %i.ov
  %i.ox = fadd <2 x double> %i.ow, %i.ot
  %i.oy = fmul double %i.br, %i.lg
  %i.oz = fmul double %i.dj, %i.ll
  %i.pa = fsub double %i.jy, %i.oz
  %i.pb = fadd double %i.pa, %i.oy
  %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i, align 16, !tbaa !49
  %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 16
  %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store <2 x double> %i.nv, ptr %i.pc, align 8, !tbaa !49
  %i.pd = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store <2 x double> %.sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i, ptr %i.pd, align 8, !tbaa !49
  %i.pe = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store <2 x double> %.sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i, ptr %i.pe, align 8, !tbaa !49
  %i.pf = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store <2 x double> %i.ox, ptr %i.pf, align 8, !tbaa !49
  %i.pg = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store double %i.pb, ptr %i.pg, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i14)
  %.sroa.0232.0..sroa.0232.0..sroa.0232.0..sroa.0232.0. = load <2 x double>, ptr %.sroa.0232, align 16 ; 2 uses
  %i.ph = shufflevector <2 x double> %.sroa.0232.0..sroa.0232.0..sroa.0232.0..sroa.0232.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.pi = fmul <2 x double> %i.bm, %i.ph
  %.sroa.0232.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0232, i64 8
  %.sroa.0232.8..sroa.0232.8..sroa.0232.8..sroa.0232.8. = load <2 x double>, ptr %.sroa.0232.8..sroa_idx, align 8 ; 2 uses
  %i.pj = shufflevector <2 x double> %.sroa.0232.8..sroa.0232.8..sroa.0232.8..sroa.0232.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.pk = fmul <2 x double> %i.ci, %i.pj
  %i.pl = fadd <2 x double> %i.pi, %i.pk
  %.sroa.0232.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0232, i64 16
  %.sroa.0232.16..sroa.0232.16..sroa.0232.16..sroa.0232.16. = load <2 x double>, ptr %.sroa.0232.16..sroa_idx, align 16 ; 4 uses
  %i.pm = shufflevector <2 x double> %.sroa.0232.16..sroa.0232.16..sroa.0232.16..sroa.0232.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.pn = fmul <2 x double> %i.de, %i.pm
  %i.po = fadd <2 x double> %i.pl, %i.pn
  %i.pp = extractelement <2 x double> %.sroa.0232.0..sroa.0232.0..sroa.0232.0..sroa.0232.0., i64 0
  %i.pq = fmul double %i.br, %i.pp
  %i.pr = extractelement <2 x double> %.sroa.0232.8..sroa.0232.8..sroa.0232.8..sroa.0232.8., i64 0
  %i.ps = fmul double %i.cn, %i.pr
  %i.pt = extractelement <2 x double> %.sroa.0232.16..sroa.0232.16..sroa.0232.16..sroa.0232.16., i64 0
  %i.pu = fmul double %i.dj, %i.pt
  %i.pv = fadd double %i.ps, %i.pu
  %i.pw = fadd double %i.pq, %i.pv
  store double %i.pw, ptr %.sroa.4.i.i.i.i14, align 16, !tbaa !10
  %i.px = extractelement <2 x double> %.sroa.0232.16..sroa.0232.16..sroa.0232.16..sroa.0232.16., i64 1
  %i.py = shufflevector <2 x double> %.sroa.0232.16..sroa.0232.16..sroa.0232.16..sroa.0232.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pz = fmul <2 x double> %i.bm, %i.py
  %i.qa = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.qb = shufflevector <2 x double> %i.qa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qc = fmul <2 x double> %i.ci, %i.qb
  %i.qd = fadd <2 x double> %i.qc, %i.pz
  %i.qe = fadd <2 x double> %i.kj, %i.qd
  %.sroa.4.i.i.i.i14.8.i.i.i.i14.8.i.i.i.i14.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i14, i64 8
  store <2 x double> %i.qe, ptr %.sroa.4.i.i.i.i14.8.i.i.i.i14.8.i.i.i.i14.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !49
  %i.qf = fmul double %i.br, %i.px
  %i.qg = fmul double %i.cn, %i.lm
  %i.qh = fadd double %i.km, %i.qg
  %i.qi = fadd double %i.qh, %i.qf
  %.sroa.4.i.i.i.i14.24.i.i.i.i14.24.i.i.i.i14.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i14, i64 24
  store double %i.qi, ptr %.sroa.4.i.i.i.i14.24.i.i.i.i14.24.i.i.i.i14.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !10
  %i.qj = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.qk = shufflevector <2 x double> %i.qj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ql = fmul <2 x double> %i.bm, %i.qk
  %i.qm = insertelement <2 x double> poison, double %i.ll, i64 0
  %i.qn = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qo = fmul <2 x double> %i.ci, %i.qn
  %i.qp = fadd <2 x double> %i.qo, %i.ql
  %i.qq = fadd <2 x double> %i.kj, %i.qp
  %i.qr = fmul double %i.cn, %i.ll
  %i.qs = fadd double %i.km, %i.qr
  %i.qt = fmul double %i.br, %i.lk
  %i.qu = fsub double %i.qs, %i.qt
  %.sroa.4.i.i.i.i14.0..sroa.4.i.i.i.i14.0..sroa.4.i.i.i.i14.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i18 = load <2 x double>, ptr %.sroa.4.i.i.i.i14, align 16, !tbaa !49
  %.sroa.4.i.i.i.i14.16.i.i.i.i14.16.i.i.i.i14.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i14, i64 16
  %.sroa.4.i.i.i.i14.16..sroa.4.i.i.i.i14.16..sroa.4.i.i.i.i14.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i20 = load <2 x double>, ptr %.sroa.4.i.i.i.i14.16.i.i.i.i14.16.i.i.i.i14.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i14)
  %i.qv = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store <2 x double> %i.po, ptr %i.qv, align 16, !tbaa !49
  %i.qw = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store <2 x double> %.sroa.4.i.i.i.i14.0..sroa.4.i.i.i.i14.0..sroa.4.i.i.i.i14.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i18, ptr %i.qw, align 16, !tbaa !49
  %i.qx = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  store <2 x double> %.sroa.4.i.i.i.i14.16..sroa.4.i.i.i.i14.16..sroa.4.i.i.i.i14.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i20, ptr %i.qx, align 16, !tbaa !49
  %i.qy = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  store <2 x double> %i.qq, ptr %i.qy, align 16, !tbaa !49
  %i.qz = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  store double %i.qu, ptr %i.qz, align 16, !tbaa !10
  %i.ra = load ptr, ptr %1, align 8, !tbaa !121, !noalias !219 ; 6 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.rc = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.j, ptr %i.rc, align 8
  store ptr %10, ptr %5, align 8, !tbaa !220
  %i.rd = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %10, ptr %i.rd, align 8, !tbaa !221
  %i.re = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.j, ptr %i.re, align 8, !tbaa !127
  %i.rf = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 9, ptr %i.rf, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %9, ptr %6, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %6, ptr %7, align 8, !tbaa !223
  %i.rg = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.rg, align 8, !tbaa !224
  %i.rh = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.rh, align 8, !tbaa !225
  %i.ri = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %9, ptr %i.ri, align 8, !tbaa !226
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS3_INS_7ProductINS4_IdLi3ELi9ELi0ELi3ELi9EEENS_3MapINS4_IdLi9ELi3ELi0ELi9ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_9assign_opIddEEEELi4ELi1EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.rj = load <2 x double>, ptr %9, align 16, !tbaa !49
  store <2 x double> %i.rj, ptr %i.rb, align 1, !tbaa !49
  %i.rk = getelementptr i8, ptr %i.ra, i64 184
  %i.rl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.rm = load double, ptr %i.rl, align 16, !tbaa !10
  store double %i.rm, ptr %i.rk, align 8, !tbaa !10
  %i.rn = getelementptr i8, ptr %i.ra, i64 216
  %i.ro = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.rp = load <2 x double>, ptr %i.ro, align 8, !tbaa !49
  store <2 x double> %i.rp, ptr %i.rn, align 8, !tbaa !49
  %i.rq = getelementptr i8, ptr %i.ra, i64 232
  %i.rr = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !10
  store double %i.rs, ptr %i.rq, align 8, !tbaa !10
  %i.rt = getelementptr i8, ptr %i.ra, i64 264
  %i.ru = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.rv = load <2 x double>, ptr %i.ru, align 16, !tbaa !49
  store <2 x double> %i.rv, ptr %i.rt, align 8, !tbaa !49
  %i.rw = getelementptr i8, ptr %i.ra, i64 280
  %i.rx = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ry = load double, ptr %i.rx, align 16, !tbaa !10
  store double %i.ry, ptr %i.rw, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0232)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0219)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0171)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3g2o12EdgeSE3Prior23setMeasurementFromStateEv(ptr noundef nonnull align 16 dereferenceable(816) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.d = load ptr, ptr %0, align 16, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 16 dereferenceable(816) %0, ptr noundef nonnull align 16 dereferenceable(128) %i.c)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o12EdgeSE3Prior15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS4_ESaIS4_EEPNS_16OptimizableGraph6VertexE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(816) %0, ptr nofree nonnull readnone align 1 captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !105 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !10, !noalias !234
  %.sroa.060.0.vec.insert = insertelement <2 x double> poison, double %i.g, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load double, ptr %i.h, align 8, !tbaa !10, !noalias !234
  %.sroa.060.8.vec.insert = insertelement <2 x double> %.sroa.060.0.vec.insert, double %i.i, i64 1 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.k = load double, ptr %i.j, align 8, !tbaa !10, !noalias !234 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !10, !noalias !234
  %.sroa.10.32.vec.insert = insertelement <2 x double> poison, double %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.o = load double, ptr %i.n, align 8, !tbaa !10, !noalias !234
  %.sroa.10.40.vec.insert = insertelement <2 x double> %.sroa.10.32.vec.insert, double %i.o, i64 1 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.q = load double, ptr %i.p, align 8, !tbaa !10, !noalias !234 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !10, !noalias !234
  %.sroa.18.64.vec.insert = insertelement <2 x double> poison, double %i.s, i64 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.u = load double, ptr %i.t, align 8, !tbaa !10, !noalias !234
  %.sroa.18.72.vec.insert = insertelement <2 x double> %.sroa.18.64.vec.insert, double %i.u, i64 1 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.w = load double, ptr %i.v, align 8, !tbaa !10, !noalias !234 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.y = fneg <2 x double> %.sroa.060.8.vec.insert
  %i.z = load double, ptr %i.x, align 8, !tbaa !10, !noalias !234 ; 2 uses
  %i.aa = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x double> %i.ab, %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !10, !noalias !234 ; 2 uses
  %i.af = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fmul <2 x double> %.sroa.10.40.vec.insert, %i.ag
  %i.ai = fsub <2 x double> %i.ac, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !10, !noalias !234 ; 2 uses
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x double> %.sroa.18.72.vec.insert, %i.am
  %i.ao = fsub <2 x double> %i.ai, %i.an
  %i.ap = fneg double %i.w
  %i.aq = fmul double %i.ak, %i.ap
  %i.ar = fmul double %i.q, %i.ae
  %i.as = fsub double %i.aq, %i.ar
  %i.at = fmul double %i.k, %i.z
  %i.au = fsub double %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aw = load double, ptr %i.av, align 16, !tbaa !10, !noalias !235 ; 2 uses
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %.sroa.060.8.vec.insert, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !10, !noalias !235 ; 2 uses
  %i.bc = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %.sroa.10.40.vec.insert, %i.bd
  %i.bf = fadd <2 x double> %i.az, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bh = load double, ptr %i.bg, align 16, !tbaa !10, !noalias !235 ; 2 uses
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %.sroa.18.72.vec.insert, %i.bj
  %i.bl = fadd <2 x double> %i.bf, %i.bk
  %i.bm = fmul double %i.k, %i.aw
  %i.bn = fmul double %i.q, %i.bb
  %i.bo = fmul double %i.w, %i.bh
  %i.bp = fadd double %i.bn, %i.bo
  %i.bq = fadd double %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bs = load double, ptr %i.br, align 16, !tbaa !10, !noalias !235 ; 2 uses
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %.sroa.060.8.vec.insert, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !10, !noalias !235 ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x double> %.sroa.10.40.vec.insert, %i.bz
  %i.cb = fadd <2 x double> %i.bv, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cd = load double, ptr %i.cc, align 16, !tbaa !10, !noalias !235 ; 2 uses
  %i.ce = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cg = fmul <2 x double> %.sroa.18.72.vec.insert, %i.cf
  %i.ch = fadd <2 x double> %i.cb, %i.cg
  %i.ci = fmul double %i.k, %i.bs
  %i.cj = fmul double %i.q, %i.bx
  %i.ck = fmul double %i.w, %i.cd
  %i.cl = fadd double %i.cj, %i.ck
  %i.cm = fadd double %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.co = load double, ptr %i.cn, align 16, !tbaa !10, !noalias !235 ; 2 uses
  %i.cp = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x double> %.sroa.060.8.vec.insert, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !10, !noalias !235 ; 2 uses
  %i.cu = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x double> %.sroa.10.40.vec.insert, %i.cv
  %i.cx = fadd <2 x double> %i.cr, %i.cw
end_hunk_0
