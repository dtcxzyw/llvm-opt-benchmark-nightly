Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/edge_se3?download=true
inline.NumInlined: 6649
inline.NumDeleted: 3469
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN3g2o8internal22computeEdgeSE3GradientIN5Eigen3MapINS2_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS2_6StrideILi0ELi0EEEEEEEvRNS2_9TransformIdLi3ELi1ELi0EEERKNS2_10MatrixBaseIT_EESG_RKSA_SI_SI_:bb.a
  %i.hc = fmul <2 x double> %.sroa.32.40.vec.insert, %i.hb
  %i.hd = fadd <2 x double> %i.ha, %i.hc
  %i.he = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hg = fmul <2 x double> %.sroa.62.72.vec.insert, %i.hf
  %i.hh = fadd <2 x double> %i.hg, %i.hd          ; 3 uses
  %i.hi = fmul double %i.o, %.sroa.20247.64.vec.extract
  %i.hj = fmul double %i.u, %.sroa.20247.72.vec.extract
  %i.hk = fmul double %i.y, %i.ey
  %i.hl = fadd double %i.hk, %i.hj
  %i.hm = fadd double %i.hi, %i.hl                ; 2 uses
  %.sroa.29.96.vec.extract = extractelement <2 x double> %i.fv, i64 0 ; 2 uses
  %i.hn = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x double> %.sroa.0.8.vec.insert, %i.hn
  %.sroa.29.104.vec.extract = extractelement <2 x double> %i.fv, i64 1
  %i.hp = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hq = fmul <2 x double> %.sroa.32.40.vec.insert, %i.hp
  %i.hr = fadd <2 x double> %i.ho, %i.hq
  %i.hs = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = fmul <2 x double> %.sroa.62.72.vec.insert, %i.ht
  %i.hv = fadd <2 x double> %i.hu, %i.hr
  %i.hw = fmul double %i.o, %.sroa.29.96.vec.extract
  %i.hx = fmul double %i.u, %.sroa.29.104.vec.extract
  %i.hy = fmul double %i.y, %i.fw
  %i.hz = fadd double %i.hy, %i.hx
  %i.ia = fadd double %i.hw, %i.hz
  %i.ib = fadd <2 x double> %i.aq, %i.hv
  %i.ic = fadd double %i.aw, %i.ia
  %.sroa.4145.24.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.gk, i64 0
  %.sroa.9.56.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.gy, i64 0
  %.sroa.14149.88.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hm, i64 0
  %.sroa.19151.120.vec.insert = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.ic, i64 0
  store <2 x double> %i.gf, ptr %0, align 16, !tbaa !49
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store <2 x double> %.sroa.4145.24.vec.insert, ptr %i.id, align 16, !tbaa !49
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store <2 x double> %i.gt, ptr %i.ie, align 16, !tbaa !49
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store <2 x double> %.sroa.9.56.vec.insert, ptr %i.if, align 16, !tbaa !49
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store <2 x double> %i.hh, ptr %i.ig, align 16, !tbaa !49
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store <2 x double> %.sroa.14149.88.vec.insert, ptr %i.ih, align 16, !tbaa !49
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> %i.ib, ptr %i.ii, align 16, !tbaa !49
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> %.sroa.19151.120.vec.insert, ptr %i.ij, align 16, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %bc508 = bitcast <2 x double> %i.gf to <2 x i64>
  %i.ik = extractelement <2 x i64> %bc508, i64 0
  store i64 %i.ik, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.il = extractelement <2 x double> %i.gf, i64 1
  store double %i.il, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store double %i.gk, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %bc510 = bitcast <2 x double> %i.gt to <2 x i64>
  %i.im = extractelement <2 x i64> %bc510, i64 0
  store i64 %i.im, ptr %i.d, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.in = extractelement <2 x double> %i.gt, i64 1
  store double %i.in, ptr %i.e, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store double %i.gy, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %bc512 = bitcast <2 x double> %i.hh to <2 x i64>
  %i.io = extractelement <2 x i64> %bc512, i64 0
  store i64 %i.io, ptr %i.g, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.ip = extractelement <2 x double> %i.hh, i64 1
  store double %i.ip, ptr %i.h, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store double %i.hm, ptr %i.i, align 8, !tbaa !10
  call void @_ZN3g2o8internal13compute_dq_dRERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS6_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(216) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.iq = load ptr, ptr %1, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.iq, i8 0, i64 288, i1 false)
  %i.ir = load ptr, ptr %2, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.ir, i8 0, i64 288, i1 false)
  %i.is = load ptr, ptr %1, align 8, !tbaa !75, !noalias !234 ; 6 uses
  store <2 x double> %i.aa, ptr %i.is, align 1, !tbaa !49
  %i.it = getelementptr i8, ptr %i.is, i64 16
  %i.iu = fneg double %i.o
  store double %i.iu, ptr %i.it, align 8, !tbaa !10
  %i.iv = getelementptr i8, ptr %i.is, i64 48
  %i.iw = fneg <2 x double> %.sroa.32.40.vec.insert
  store <2 x double> %i.iw, ptr %i.iv, align 8, !tbaa !49
  %i.ix = getelementptr i8, ptr %i.is, i64 64
  %i.iy = fneg double %i.u
  store double %i.iy, ptr %i.ix, align 8, !tbaa !10
  %i.iz = getelementptr i8, ptr %i.is, i64 96
  %i.ja = fneg <2 x double> %.sroa.62.72.vec.insert
  store <2 x double> %i.ja, ptr %i.iz, align 8, !tbaa !49
  %i.jb = getelementptr i8, ptr %i.is, i64 112
  store double %i.ar, ptr %i.jb, align 8, !tbaa !10
  %i.jc = load ptr, ptr %2, align 8, !tbaa !75, !noalias !235 ; 6 uses
  %i.jd = load <2 x double>, ptr %0, align 16, !tbaa !49
  store <2 x double> %i.jd, ptr %i.jc, align 1, !tbaa !49
  %i.je = getelementptr i8, ptr %i.jc, i64 16
  %i.jf = load double, ptr %i.id, align 16, !tbaa !10
  store double %i.jf, ptr %i.je, align 8, !tbaa !10
  %i.jg = getelementptr i8, ptr %i.jc, i64 48
  %i.jh = load <2 x double>, ptr %i.ie, align 16, !tbaa !49
  store <2 x double> %i.jh, ptr %i.jg, align 8, !tbaa !49
  %i.ji = getelementptr i8, ptr %i.jc, i64 64
  %i.jj = load double, ptr %i.if, align 16, !tbaa !10
  store double %i.jj, ptr %i.ji, align 8, !tbaa !10
  %i.jk = getelementptr i8, ptr %i.jc, i64 96
  %i.jl = load <2 x double>, ptr %i.ig, align 16, !tbaa !49
  store <2 x double> %i.jl, ptr %i.jk, align 8, !tbaa !49
  %i.jm = getelementptr i8, ptr %i.jc, i64 112
  %i.jn = load double, ptr %i.ih, align 16, !tbaa !10
  store double %i.jn, ptr %i.jm, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0258)
  %i.jo = fmul double %.sroa.29.96.vec.extract, 2.000000e+00 ; 4 uses
  %i.jp = fneg double %i.jo
  %i.jq = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jr = insertelement <2 x double> %i.jq, double %i.fw, i64 1
  %i.js = fmul <2 x double> %i.jr, splat (double 2.000000e+00) ; 4 uses
  %i.jt = insertelement <2 x double> %i.js, double 0.000000e+00, i64 0
  store <2 x double> %i.jt, ptr %.sroa.0258, align 16, !tbaa !10
  %i.ju = fneg <2 x double> %i.js
  %.sroa.0258.16..sroa_idx551 = getelementptr inbounds nuw i8, ptr %.sroa.0258, i64 16
  store <2 x double> %i.ju, ptr %.sroa.0258.16..sroa_idx551, align 16, !tbaa !10
  %i.jv = load ptr, ptr %1, align 8, !tbaa !75, !noalias !236 ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 144
  %i.jx = fmul <2 x double> %.sroa.0.8.vec.insert, zeroinitializer
  %.sroa.0258.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0258, i64 8
  %.sroa.0258.8..sroa.0258.8..sroa.0258.8..sroa.0258.8. = load <2 x double>, ptr %.sroa.0258.8..sroa_idx, align 8 ; 2 uses
  %i.jy = shufflevector <2 x double> %.sroa.0258.8..sroa.0258.8..sroa.0258.8..sroa.0258.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.jz = fmul <2 x double> %.sroa.32.40.vec.insert, %i.jy
  %i.ka = fadd <2 x double> %i.jx, %i.jz
  %.sroa.0258.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0258, i64 16
  %.sroa.0258.16..sroa.0258.16..sroa.0258.16..sroa.0258.16. = load <2 x double>, ptr %.sroa.0258.16..sroa_idx, align 16 ; 4 uses
  %i.kb = shufflevector <2 x double> %.sroa.0258.16..sroa.0258.16..sroa.0258.16..sroa.0258.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x double> %.sroa.62.72.vec.insert, %i.kb
  %i.kd = fadd <2 x double> %i.ka, %i.kc
  %i.ke = fmul double %i.o, 0.000000e+00
  %i.kf = extractelement <2 x double> %.sroa.0258.8..sroa.0258.8..sroa.0258.8..sroa.0258.8., i64 0
  %i.kg = fmul double %i.u, %i.kf
  %i.kh = extractelement <2 x double> %.sroa.0258.16..sroa.0258.16..sroa.0258.16..sroa.0258.16., i64 0
  %i.ki = fmul double %i.y, %i.kh
  %i.kj = fadd double %i.kg, %i.ki
  %i.kk = fadd double %i.ke, %i.kj
  %i.kl = extractelement <2 x double> %.sroa.0258.16..sroa.0258.16..sroa.0258.16..sroa.0258.16., i64 1
  %i.km = shufflevector <2 x double> %.sroa.0258.16..sroa.0258.16..sroa.0258.16..sroa.0258.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kn = fmul <2 x double> %.sroa.0.8.vec.insert, %i.km
  %i.ko = fmul <2 x double> %.sroa.32.40.vec.insert, zeroinitializer ; 3 uses
  %i.kp = fadd <2 x double> %i.ko, %i.kn
  %i.kq = insertelement <2 x double> poison, double %i.jo, i64 0
  %i.kr = shufflevector <2 x double> %i.kq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ks = fmul <2 x double> %.sroa.62.72.vec.insert, %i.kr
  %i.kt = fadd <2 x double> %i.ks, %i.kp
  %i.ku = fmul double %i.o, %i.kl
  %i.kv = fmul double %i.u, 0.000000e+00          ; 3 uses
  %i.kw = fmul double %i.y, %i.jo
  %i.kx = fadd double %i.kv, %i.kw
  %i.ky = fadd double %i.kx, %i.ku
  %i.kz = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = fmul <2 x double> %.sroa.0.8.vec.insert, %i.kz
  %i.lb = insertelement <2 x double> poison, double %i.jp, i64 0
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ld = fmul <2 x double> %.sroa.32.40.vec.insert, %i.lc
  %i.le = fadd <2 x double> %i.la, %i.ld
  %i.lf = fmul <2 x double> %.sroa.62.72.vec.insert, zeroinitializer ; 3 uses
  %i.lg = fadd <2 x double> %i.lf, %i.le
  %i.lh = extractelement <2 x double> %i.js, i64 0
  %i.li = fmul double %i.o, %i.lh
  %i.lj = fmul double %i.y, 0.000000e+00          ; 3 uses
  %i.lk = fmul double %i.u, %i.jo
  %i.ll = fsub double %i.lj, %i.lk
  %i.lm = fadd double %i.li, %i.ll
  store <2 x double> %i.kd, ptr %i.jw, align 1, !tbaa !49
  %i.ln = getelementptr i8, ptr %i.jv, i64 160
  store double %i.kk, ptr %i.ln, align 8, !tbaa !10
  %i.lo = getelementptr i8, ptr %i.jv, i64 192
  store <2 x double> %i.kt, ptr %i.lo, align 8, !tbaa !49
  %i.lp = getelementptr i8, ptr %i.jv, i64 208
  store double %i.ky, ptr %i.lp, align 8, !tbaa !10
  %i.lq = getelementptr i8, ptr %i.jv, i64 240
  store <2 x double> %i.lg, ptr %i.lq, align 8, !tbaa !49
  %i.lr = getelementptr i8, ptr %i.jv, i64 256
  store double %i.lm, ptr %i.lr, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0258)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0274)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0338)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0406)
  %i.ls = fmul double %.sroa.0236.8.vec.extract, 2.000000e+00 ; 2 uses
  %i.lt = fmul double %.sroa.11.40.vec.extract, 2.000000e+00 ; 5 uses
  %i.lu = fmul double %.sroa.20247.72.vec.extract, 2.000000e+00 ; 4 uses
  %i.lv = fmul double %i.dg, 2.000000e+00         ; 2 uses
  %17 = fmul double %i.ec, 2.000000e+00           ; 4 uses
  %18 = fmul double %i.ey, 2.000000e+00           ; 4 uses
  store double 0.000000e+00, ptr %.sroa.0274, align 16, !tbaa !10, !noalias !237
  %.sroa.0274.8..sroa_idx546.a = getelementptr inbounds nuw i8, ptr %.sroa.0274, i64 24
  store double 0.000000e+00, ptr %.sroa.0274.8..sroa_idx546.a, align 8, !tbaa !10
  %.sroa.0274.8..sroa_idx546 = getelementptr inbounds nuw i8, ptr %.sroa.0274, i64 8
  store double %i.lv, ptr %.sroa.0274.8..sroa_idx546, align 8, !tbaa !10
  %19 = fneg double %i.ls
  %.sroa.0274.16..sroa_idx549 = getelementptr inbounds nuw i8, ptr %.sroa.0274, i64 16
  store double %19, ptr %.sroa.0274.16..sroa_idx549, align 16, !tbaa !10
  %i.lw = fneg double %i.lt
  %i.lx = fneg double %i.lu
  %20 = fmul double %.sroa.0236.0.vec.extract, 2.000000e+00 ; 2 uses
  %i.ly = fneg double %i.lv
  store double %i.ly, ptr %.sroa.0338, align 16, !tbaa !10, !noalias !238
  %i.lz = fneg double %17                         ; 2 uses
  %.sroa.0338.24..sroa_idx544 = getelementptr inbounds nuw i8, ptr %.sroa.0338, i64 24
  store double %i.lz, ptr %.sroa.0338.24..sroa_idx544, align 8, !tbaa !10
  %i.ma = fneg double %18
  %.sroa.0338.8..sroa_idx540 = getelementptr inbounds nuw i8, ptr %.sroa.0338, i64 8
  store double 0.000000e+00, ptr %.sroa.0338.8..sroa_idx540, align 8, !tbaa !10
  %.sroa.0338.16..sroa_idx543 = getelementptr inbounds nuw i8, ptr %.sroa.0338, i64 16
  store double %20, ptr %.sroa.0338.16..sroa_idx543, align 16, !tbaa !10
  store double %i.ls, ptr %.sroa.0406, align 16, !tbaa !10, !noalias !239
  %.sroa.0406.24..sroa_idx537 = getelementptr inbounds nuw i8, ptr %.sroa.0406, i64 24
  store double %i.lt, ptr %.sroa.0406.24..sroa_idx537, align 8, !tbaa !10
  %i.mb = fneg double %20
  %.sroa.0406.8..sroa_idx534 = getelementptr inbounds nuw i8, ptr %.sroa.0406, i64 8
  store double %i.mb, ptr %.sroa.0406.8..sroa_idx534, align 8, !tbaa !10
  %i.mc = shufflevector <2 x double> %i.dx, <2 x double> %i.et, <2 x i32> <i32 0, i32 2>
  %i.md = fmul <2 x double> %i.mc, splat (double 2.000000e+00) ; 5 uses
  %i.me = fneg <2 x double> %i.md                 ; 2 uses
  %.sroa.0406.16..sroa_idx536 = getelementptr inbounds nuw i8, ptr %.sroa.0406, i64 16
  store double 0.000000e+00, ptr %.sroa.0406.16..sroa_idx536, align 16, !tbaa !10
  %.sroa.0274.0..sroa.0274.0..sroa.0274.0..sroa.0274.0. = load <2 x double>, ptr %.sroa.0274, align 16 ; 2 uses
  %i.mf = shufflevector <2 x double> %.sroa.0274.0..sroa.0274.0..sroa.0274.0..sroa.0274.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.mg = fmul <2 x double> %.sroa.0.8.vec.insert, %i.mf
  %.sroa.0274.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0274, i64 8
  %.sroa.0274.8..sroa.0274.8..sroa.0274.8..sroa.0274.8. = load <2 x double>, ptr %.sroa.0274.8..sroa_idx, align 8 ; 2 uses
  %i.mh = shufflevector <2 x double> %.sroa.0274.8..sroa.0274.8..sroa.0274.8..sroa.0274.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.mi = fmul <2 x double> %.sroa.32.40.vec.insert, %i.mh
  %i.mj = fadd <2 x double> %i.mg, %i.mi
  %.sroa.0274.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0274, i64 16
  %.sroa.0274.16..sroa.0274.16..sroa.0274.16..sroa.0274.16. = load <2 x double>, ptr %.sroa.0274.16..sroa_idx, align 16 ; 2 uses
  %i.mk = shufflevector <2 x double> %.sroa.0274.16..sroa.0274.16..sroa.0274.16..sroa.0274.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ml = fmul <2 x double> %.sroa.62.72.vec.insert, %i.mk
  %i.mm = fadd <2 x double> %i.mj, %i.ml
  store <2 x double> %i.mm, ptr %i.j, align 16, !tbaa !49
  %i.mn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.mo = extractelement <2 x double> %.sroa.0274.0..sroa.0274.0..sroa.0274.0..sroa.0274.0., i64 0
  %i.mp = fmul double %i.o, %i.mo
  %i.mq = extractelement <2 x double> %.sroa.0274.8..sroa.0274.8..sroa.0274.8..sroa.0274.8., i64 0
  %i.mr = fmul double %i.u, %i.mq
  %i.ms = extractelement <2 x double> %.sroa.0274.16..sroa.0274.16..sroa.0274.16..sroa.0274.16., i64 0
  %i.mt = fmul double %i.y, %i.ms
  %i.mu = fadd double %i.mr, %i.mt
  %i.mv = fadd double %i.mp, %i.mu
  store double %i.mv, ptr %i.mn, align 16, !tbaa !10
  %i.mw = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.mx = fmul <2 x double> %.sroa.0.8.vec.insert, zeroinitializer ; 2 uses
  %i.my = insertelement <2 x double> poison, double %17, i64 0
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer
  %i.na = fmul <2 x double> %.sroa.32.40.vec.insert, %i.mz
  %i.nb = fadd <2 x double> %i.mx, %i.na
  %i.nc = insertelement <2 x double> poison, double %i.lw, i64 0
  %i.nd = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ne = fmul <2 x double> %.sroa.62.72.vec.insert, %i.nd
  %i.nf = fadd <2 x double> %i.nb, %i.ne
  store <2 x double> %i.nf, ptr %i.mw, align 8, !tbaa !49
  %i.ng = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.nh = fmul double %i.o, 0.000000e+00          ; 2 uses
  %i.ni = fmul double %i.u, %17
  %i.nj = fmul double %i.y, %i.lt
  %i.nk = fsub double %i.ni, %i.nj
  %i.nl = fadd double %i.nh, %i.nk
  store double %i.nl, ptr %i.ng, align 8, !tbaa !10
  %i.nm = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.nn = insertelement <2 x double> poison, double %18, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = fmul <2 x double> %.sroa.32.40.vec.insert, %i.no
  %i.nq = fadd <2 x double> %i.mx, %i.np
  %i.nr = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.ns = shufflevector <2 x double> %i.nr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nt = fmul <2 x double> %.sroa.62.72.vec.insert, %i.ns
  %i.nu = fadd <2 x double> %i.nq, %i.nt
  store <2 x double> %i.nu, ptr %i.nm, align 16, !tbaa !49
  %i.nv = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.nw = fmul double %i.u, %18
  %i.nx = fmul double %i.y, %i.lu
  %i.ny = fsub double %i.nw, %i.nx
  %i.nz = fadd double %i.nh, %i.ny
  store double %i.nz, ptr %i.nv, align 16, !tbaa !10
  %i.oa = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %.sroa.0338.0..sroa.0338.0..sroa.0338.0..sroa.0338.0. = load <2 x double>, ptr %.sroa.0338, align 16 ; 2 uses
  %i.ob = shufflevector <2 x double> %.sroa.0338.0..sroa.0338.0..sroa.0338.0..sroa.0338.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = fmul <2 x double> %.sroa.0.8.vec.insert, %i.ob
  %.sroa.0338.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0338, i64 8
  %.sroa.0338.8..sroa.0338.8..sroa.0338.8..sroa.0338.8. = load <2 x double>, ptr %.sroa.0338.8..sroa_idx, align 8 ; 2 uses
  %i.od = shufflevector <2 x double> %.sroa.0338.8..sroa.0338.8..sroa.0338.8..sroa.0338.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = fmul <2 x double> %.sroa.32.40.vec.insert, %i.od
  %i.of = fadd <2 x double> %i.oc, %i.oe
  %.sroa.0338.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0338, i64 16
  %.sroa.0338.16..sroa.0338.16..sroa.0338.16..sroa.0338.16. = load <2 x double>, ptr %.sroa.0338.16..sroa_idx, align 16 ; 2 uses
  %i.og = shufflevector <2 x double> %.sroa.0338.16..sroa.0338.16..sroa.0338.16..sroa.0338.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.oh = fmul <2 x double> %.sroa.62.72.vec.insert, %i.og
  %i.oi = fadd <2 x double> %i.of, %i.oh
  store <2 x double> %i.oi, ptr %i.oa, align 8, !tbaa !49
  %i.oj = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 2 uses
  %i.ok = extractelement <2 x double> %.sroa.0338.0..sroa.0338.0..sroa.0338.0..sroa.0338.0., i64 0
  %i.ol = fmul double %i.o, %i.ok
  %i.om = extractelement <2 x double> %.sroa.0338.8..sroa.0338.8..sroa.0338.8..sroa.0338.8., i64 0
  %i.on = fmul double %i.u, %i.om
  %i.oo = extractelement <2 x double> %.sroa.0338.16..sroa.0338.16..sroa.0338.16..sroa.0338.16., i64 0
  %i.op = fmul double %i.y, %i.oo
  %i.oq = fadd double %i.on, %i.op
  %i.or = fadd double %i.ol, %i.oq
  store double %i.or, ptr %i.oj, align 8, !tbaa !10
  %i.os = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.ot = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.ou = shufflevector <2 x double> %i.ot, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ov = fmul <2 x double> %.sroa.0.8.vec.insert, %i.ou
  %i.ow = fadd <2 x double> %i.ko, %i.ov
  %i.ox = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oy = fmul <2 x double> %.sroa.62.72.vec.insert, %i.ox
  %i.oz = fadd <2 x double> %i.ow, %i.oy
  store <2 x double> %i.oz, ptr %i.os, align 16, !tbaa !49
  %i.pa = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  %i.pb = extractelement <2 x double> %i.md, i64 0 ; 2 uses
  %i.pc = fmul double %i.y, %i.pb
  %i.pd = fadd double %i.kv, %i.pc
  %i.pe = fmul double %i.o, %17
  %i.pf = fsub double %i.pd, %i.pe
  store double %i.pf, ptr %i.pa, align 16, !tbaa !10
  %i.pg = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 2 uses
  %i.ph = insertelement <2 x double> poison, double %i.ma, i64 0
  %i.pi = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pj = fmul <2 x double> %.sroa.0.8.vec.insert, %i.pi
  %i.pk = fadd <2 x double> %i.ko, %i.pj
  %i.pl = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pm = fmul <2 x double> %.sroa.62.72.vec.insert, %i.pl
  %i.pn = fadd <2 x double> %i.pk, %i.pm
  store <2 x double> %i.pn, ptr %i.pg, align 8, !tbaa !49
  %i.po = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 2 uses
  %i.pp = extractelement <2 x double> %i.md, i64 1 ; 2 uses
  %i.pq = fmul double %i.y, %i.pp
  %i.pr = fadd double %i.kv, %i.pq
  %i.ps = fmul double %i.o, %18
  %i.pt = fsub double %i.pr, %i.ps
  store double %i.pt, ptr %i.po, align 8, !tbaa !10
  %i.pu = getelementptr inbounds nuw i8, ptr %i.j, i64 144 ; 2 uses
  %.sroa.0406.0..sroa.0406.0..sroa.0406.0..sroa.0406.0. = load <2 x double>, ptr %.sroa.0406, align 16 ; 2 uses
  %i.pv = shufflevector <2 x double> %.sroa.0406.0..sroa.0406.0..sroa.0406.0..sroa.0406.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.pw = fmul <2 x double> %.sroa.0.8.vec.insert, %i.pv
  %.sroa.0406.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406, i64 8
  %.sroa.0406.8..sroa.0406.8..sroa.0406.8..sroa.0406.8. = load <2 x double>, ptr %.sroa.0406.8..sroa_idx, align 8 ; 2 uses
  %i.px = shufflevector <2 x double> %.sroa.0406.8..sroa.0406.8..sroa.0406.8..sroa.0406.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.py = fmul <2 x double> %.sroa.32.40.vec.insert, %i.px
  %i.pz = fadd <2 x double> %i.pw, %i.py
  %.sroa.0406.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406, i64 16
  %.sroa.0406.16..sroa.0406.16..sroa.0406.16..sroa.0406.16. = load <2 x double>, ptr %.sroa.0406.16..sroa_idx, align 16 ; 2 uses
  %i.qa = shufflevector <2 x double> %.sroa.0406.16..sroa.0406.16..sroa.0406.16..sroa.0406.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.qb = fmul <2 x double> %.sroa.62.72.vec.insert, %i.qa
  %i.qc = fadd <2 x double> %i.pz, %i.qb
  store <2 x double> %i.qc, ptr %i.pu, align 16, !tbaa !49
  %i.qd = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  %i.qe = extractelement <2 x double> %.sroa.0406.0..sroa.0406.0..sroa.0406.0..sroa.0406.0., i64 0
  %i.qf = fmul double %i.o, %i.qe
  %i.qg = extractelement <2 x double> %.sroa.0406.8..sroa.0406.8..sroa.0406.8..sroa.0406.8., i64 0
  %i.qh = fmul double %i.u, %i.qg
  %i.qi = extractelement <2 x double> %.sroa.0406.16..sroa.0406.16..sroa.0406.16..sroa.0406.16., i64 0
  %i.qj = fmul double %i.y, %i.qi
  %i.qk = fadd double %i.qh, %i.qj
  %i.ql = fadd double %i.qf, %i.qk
  store double %i.ql, ptr %i.qd, align 16, !tbaa !10
  %i.qm = getelementptr inbounds nuw i8, ptr %i.j, i64 168 ; 2 uses
  %i.qn = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.qo = shufflevector <2 x double> %i.qn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qp = fmul <2 x double> %.sroa.0.8.vec.insert, %i.qo
  %i.qq = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qr = fmul <2 x double> %.sroa.32.40.vec.insert, %i.qq
  %i.qs = fadd <2 x double> %i.qp, %i.qr
  %i.qt = fadd <2 x double> %i.lf, %i.qs
  store <2 x double> %i.qt, ptr %i.qm, align 8, !tbaa !49
  %i.qu = getelementptr inbounds nuw i8, ptr %i.j, i64 184 ; 2 uses
  %i.qv = fmul double %i.o, %i.lt
  %i.qw = fmul double %i.u, %i.pb
  %i.qx = fsub double %i.lj, %i.qw
  %i.qy = fadd double %i.qv, %i.qx
  store double %i.qy, ptr %i.qu, align 8, !tbaa !10
  %i.qz = getelementptr inbounds nuw i8, ptr %i.j, i64 192 ; 2 uses
  %i.ra = insertelement <2 x double> poison, double %i.lu, i64 0
  %i.rb = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rc = fmul <2 x double> %.sroa.0.8.vec.insert, %i.rb
  %i.rd = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.re = fmul <2 x double> %.sroa.32.40.vec.insert, %i.rd
  %i.rf = fadd <2 x double> %i.rc, %i.re
  %i.rg = fadd <2 x double> %i.lf, %i.rf
  store <2 x double> %i.rg, ptr %i.qz, align 16, !tbaa !49
  %i.rh = getelementptr inbounds nuw i8, ptr %i.j, i64 208 ; 2 uses
  %i.ri = fmul double %i.o, %i.lu
  %i.rj = fmul double %i.u, %i.pp
  %i.rk = fsub double %i.lj, %i.rj
  %i.rl = fadd double %i.ri, %i.rk
  store double %i.rl, ptr %i.rh, align 16, !tbaa !10
  %i.rm = load ptr, ptr %1, align 8, !tbaa !75, !noalias !240 ; 6 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ro = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr %i.j, ptr %i.ro, align 8
  store ptr %16, ptr %11, align 8, !tbaa !241
  %i.rp = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %16, ptr %i.rp, align 8, !tbaa !242
  %i.rq = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.j, ptr %i.rq, align 8, !tbaa !81
  %i.rr = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 9, ptr %i.rr, align 8, !tbaa !243
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store ptr %15, ptr %12, align 8, !tbaa !242
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr %12, ptr %13, align 8, !tbaa !244
  %i.rs = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %11, ptr %i.rs, align 8, !tbaa !245
  %i.rt = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %14, ptr %i.rt, align 8, !tbaa !246
  %i.ru = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %15, ptr %i.ru, align 8, !tbaa !247
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS3_INS_7ProductINS4_IdLi3ELi9ELi0ELi3ELi9EEENS_3MapINS4_IdLi9ELi3ELi0ELi9ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_9assign_opIddEEEELi4ELi1EE3runERSI_(ptr noundef nonnull align 8 dereferenceable(32) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.rv = load <2 x double>, ptr %15, align 16, !tbaa !49
  store <2 x double> %i.rv, ptr %i.rn, align 1, !tbaa !49
  %i.rw = getelementptr i8, ptr %i.rm, i64 184
  %i.rx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ry = load double, ptr %i.rx, align 16, !tbaa !10
  store double %i.ry, ptr %i.rw, align 8, !tbaa !10
  %i.rz = getelementptr i8, ptr %i.rm, i64 216
  %i.sa = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.sb = load <2 x double>, ptr %i.sa, align 8, !tbaa !49
  store <2 x double> %i.sb, ptr %i.rz, align 8, !tbaa !49
  %i.sc = getelementptr i8, ptr %i.rm, i64 232
  %i.sd = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.se = load double, ptr %i.sd, align 8, !tbaa !10
  store double %i.se, ptr %i.sc, align 8, !tbaa !10
  %i.sf = getelementptr i8, ptr %i.rm, i64 264
  %i.sg = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.sh = load <2 x double>, ptr %i.sg, align 16, !tbaa !49
  store <2 x double> %i.sh, ptr %i.sf, align 8, !tbaa !49
  %i.si = getelementptr i8, ptr %i.rm, i64 280
  %i.sj = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.sk = load double, ptr %i.sj, align 16, !tbaa !10
  store double %i.sk, ptr %i.si, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  store <2 x double> <double 0.000000e+00, double -0.000000e+00>, ptr %.sroa.0274, align 16, !tbaa !10
  %.sroa.0274.16..sroa_idx548 = getelementptr inbounds nuw i8, ptr %.sroa.0274, i64 16
  store <2 x double> zeroinitializer, ptr %.sroa.0274.16..sroa_idx548, align 16, !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0338, i8 0, i64 16, i1 false)
  %.sroa.0338.16..sroa_idx542 = getelementptr inbounds nuw i8, ptr %.sroa.0338, i64 16
  store <2 x double> <double -2.000000e+00, double 0.000000e+00>, ptr %.sroa.0338.16..sroa_idx542, align 16, !tbaa !10
  store double -0.000000e+00, ptr %.sroa.0406, align 16, !tbaa !10, !noalias !248
  %.sroa.0406.24..sroa_idx538 = getelementptr inbounds nuw i8, ptr %.sroa.0406, i64 24
  store double -2.000000e+00, ptr %.sroa.0406.24..sroa_idx538, align 8, !tbaa !10
  %.sroa.0406.8..sroa_idx533 = getelementptr inbounds nuw i8, ptr %.sroa.0406, i64 8
  store <2 x double> <double 2.000000e+00, double 0.000000e+00>, ptr %.sroa.0406.8..sroa_idx533, align 8, !tbaa !10
  %i.sl = load <2 x double>, ptr %0, align 16, !tbaa !49 ; 5 uses
  %.sroa.0274.0..sroa.0274.0..sroa.0274.0..sroa.0274.0.275 = load <2 x double>, ptr %.sroa.0274, align 16 ; 2 uses
  %i.sm = shufflevector <2 x double> %.sroa.0274.0..sroa.0274.0..sroa.0274.0..sroa.0274.0.275, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sn = fmul <2 x double> %i.sl, %i.sm
  %i.so = load <2 x double>, ptr %i.ie, align 16, !tbaa !49 ; 5 uses
  %.sroa.0274.8..sroa_idx545 = getelementptr inbounds nuw i8, ptr %.sroa.0274, i64 8
  %.sroa.0274.8..sroa.0274.8..sroa.0274.8..sroa.0274.8.279 = load <2 x double>, ptr %.sroa.0274.8..sroa_idx545, align 8 ; 2 uses
  %i.sp = shufflevector <2 x double> %.sroa.0274.8..sroa.0274.8..sroa.0274.8..sroa.0274.8.279, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sq = fmul <2 x double> %i.so, %i.sp
  %i.sr = fadd <2 x double> %i.sn, %i.sq
  %i.ss = load <2 x double>, ptr %i.ig, align 16, !tbaa !49 ; 6 uses
  %.sroa.0274.16..sroa_idx547 = getelementptr inbounds nuw i8, ptr %.sroa.0274, i64 16
  %.sroa.0274.16..sroa.0274.16..sroa.0274.16..sroa.0274.16.287 = load <2 x double>, ptr %.sroa.0274.16..sroa_idx547, align 16 ; 2 uses
  %i.st = shufflevector <2 x double> %.sroa.0274.16..sroa.0274.16..sroa.0274.16..sroa.0274.16.287, <2 x double> poison, <2 x i32> zeroinitializer
  %i.su = fmul <2 x double> %i.ss, %i.st
  %i.sv = fadd <2 x double> %i.sr, %i.su
  store <2 x double> %i.sv, ptr %i.j, align 16, !tbaa !49
  %i.sw = load double, ptr %i.id, align 16, !tbaa !10 ; 5 uses
  %i.sx = extractelement <2 x double> %.sroa.0274.0..sroa.0274.0..sroa.0274.0..sroa.0274.0.275, i64 0
  %i.sy = fmul double %i.sw, %i.sx
  %i.sz = load double, ptr %i.if, align 16, !tbaa !10 ; 5 uses
  %i.ta = extractelement <2 x double> %.sroa.0274.8..sroa.0274.8..sroa.0274.8..sroa.0274.8.279, i64 0
  %i.tb = fmul double %i.sz, %i.ta
  %i.tc = load double, ptr %i.ih, align 16, !tbaa !10 ; 5 uses
  %i.td = extractelement <2 x double> %.sroa.0274.16..sroa.0274.16..sroa.0274.16..sroa.0274.16.287, i64 0
  %i.te = fmul double %i.tc, %i.td
  %i.tf = fadd double %i.tb, %i.te
  %i.tg = fadd double %i.sy, %i.tf
  store double %i.tg, ptr %i.mn, align 16, !tbaa !10
  %i.th = fmul <2 x double> %i.sl, zeroinitializer ; 4 uses
  %i.ti = fmul <2 x double> %i.so, zeroinitializer ; 5 uses
  %i.tj = fsub <2 x double> %i.th, %i.ti
  %i.tk = fmul <2 x double> %i.ss, splat (double 2.000000e+00)
  %i.tl = fadd <2 x double> %i.tj, %i.tk
  store <2 x double> %i.tl, ptr %i.mw, align 8, !tbaa !49
  %i.tm = fmul double %i.sw, 0.000000e+00         ; 4 uses
  %i.tn = fmul double %i.sz, 0.000000e+00         ; 3 uses
  %i.to = fmul double %i.tc, 2.000000e+00
  %i.tp = fsub double %i.to, %i.tn
  %i.tq = fadd double %i.tm, %i.tp
  store double %i.tq, ptr %i.ng, align 8, !tbaa !10
  %i.tr = fmul <2 x double> %i.so, splat (double 2.000000e+00)
  %i.ts = fsub <2 x double> %i.th, %i.tr
  %i.tt = fmul <2 x double> %i.ss, zeroinitializer ; 3 uses
  %i.tu = fadd <2 x double> %i.ts, %i.tt
  store <2 x double> %i.tu, ptr %i.nm, align 16, !tbaa !49
  %i.tv = fmul double %i.sz, 2.000000e+00
  %i.tw = fmul double %i.tc, 0.000000e+00         ; 3 uses
  %i.tx = fsub double %i.tw, %i.tv
  %i.ty = fadd double %i.tm, %i.tx
  store double %i.ty, ptr %i.nv, align 16, !tbaa !10
  %.sroa.0338.0..sroa.0338.0..sroa.0338.0..sroa.0338.0.339 = load <2 x double>, ptr %.sroa.0338, align 16 ; 2 uses
  %i.tz = shufflevector <2 x double> %.sroa.0338.0..sroa.0338.0..sroa.0338.0..sroa.0338.0.339, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ua = fmul <2 x double> %i.sl, %i.tz
  %.sroa.0338.8..sroa_idx539 = getelementptr inbounds nuw i8, ptr %.sroa.0338, i64 8
  %.sroa.0338.8..sroa.0338.8..sroa.0338.8..sroa.0338.8.343 = load <2 x double>, ptr %.sroa.0338.8..sroa_idx539, align 8 ; 2 uses
  %i.ub = shufflevector <2 x double> %.sroa.0338.8..sroa.0338.8..sroa.0338.8..sroa.0338.8.343, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uc = fmul <2 x double> %i.so, %i.ub
  %i.ud = fadd <2 x double> %i.ua, %i.uc
  %.sroa.0338.16..sroa_idx541 = getelementptr inbounds nuw i8, ptr %.sroa.0338, i64 16
  %.sroa.0338.16..sroa.0338.16..sroa.0338.16..sroa.0338.16.351 = load <2 x double>, ptr %.sroa.0338.16..sroa_idx541, align 16 ; 2 uses
  %i.ue = shufflevector <2 x double> %.sroa.0338.16..sroa.0338.16..sroa.0338.16..sroa.0338.16.351, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uf = fmul <2 x double> %i.ss, %i.ue
  %i.ug = fadd <2 x double> %i.ud, %i.uf
  store <2 x double> %i.ug, ptr %i.oa, align 8, !tbaa !49
  %i.uh = extractelement <2 x double> %.sroa.0338.0..sroa.0338.0..sroa.0338.0..sroa.0338.0.339, i64 0
  %i.ui = fmul double %i.sw, %i.uh
  %i.uj = extractelement <2 x double> %.sroa.0338.8..sroa.0338.8..sroa.0338.8..sroa.0338.8.343, i64 0
  %i.uk = fmul double %i.sz, %i.uj
  %i.ul = extractelement <2 x double> %.sroa.0338.16..sroa.0338.16..sroa.0338.16..sroa.0338.16.351, i64 0
  %i.um = fmul double %i.tc, %i.ul
  %i.un = fadd double %i.uk, %i.um
  %i.uo = fadd double %i.ui, %i.un
  store double %i.uo, ptr %i.oj, align 8, !tbaa !10
  %i.up = fadd <2 x double> %i.th, %i.ti
  %i.uq = fmul <2 x double> %i.ss, splat (double -0.000000e+00) ; 2 uses
  %i.ur = fadd <2 x double> %i.up, %i.uq
  store <2 x double> %i.ur, ptr %i.os, align 16, !tbaa !49
  %i.us = fsub double %i.tn, %i.tw                ; 2 uses
  %i.ut = fadd double %i.tm, %i.us
  store double %i.ut, ptr %i.pa, align 16, !tbaa !10
  %i.uu = fmul <2 x double> %i.sl, splat (double 2.000000e+00) ; 2 uses
  %i.uv = fadd <2 x double> %i.uu, %i.ti
  %i.uw = fadd <2 x double> %i.uv, %i.uq
  store <2 x double> %i.uw, ptr %i.pg, align 8, !tbaa !49
  %i.ux = fmul double %i.sw, 2.000000e+00         ; 2 uses
  %i.uy = fadd double %i.ux, %i.us
  store double %i.uy, ptr %i.po, align 8, !tbaa !10
  %.sroa.0406.0..sroa.0406.0..sroa.0406.0..sroa.0406.0.407 = load <2 x double>, ptr %.sroa.0406, align 16 ; 2 uses
  %i.uz = shufflevector <2 x double> %.sroa.0406.0..sroa.0406.0..sroa.0406.0..sroa.0406.0.407, <2 x double> poison, <2 x i32> zeroinitializer
  %i.va = fmul <2 x double> %i.sl, %i.uz
  %.sroa.0406.8..sroa_idx532 = getelementptr inbounds nuw i8, ptr %.sroa.0406, i64 8
  %.sroa.0406.8..sroa.0406.8..sroa.0406.8..sroa.0406.8.411 = load <2 x double>, ptr %.sroa.0406.8..sroa_idx532, align 8 ; 2 uses
  %i.vb = shufflevector <2 x double> %.sroa.0406.8..sroa.0406.8..sroa.0406.8..sroa.0406.8.411, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vc = fmul <2 x double> %i.so, %i.vb
  %i.vd = fadd <2 x double> %i.va, %i.vc
  %.sroa.0406.16..sroa_idx535 = getelementptr inbounds nuw i8, ptr %.sroa.0406, i64 16
  %.sroa.0406.16..sroa.0406.16..sroa.0406.16..sroa.0406.16.419 = load <2 x double>, ptr %.sroa.0406.16..sroa_idx535, align 16 ; 2 uses
  %i.ve = shufflevector <2 x double> %.sroa.0406.16..sroa.0406.16..sroa.0406.16..sroa.0406.16.419, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vf = fmul <2 x double> %i.ss, %i.ve
  %i.vg = fadd <2 x double> %i.vd, %i.vf
  store <2 x double> %i.vg, ptr %i.pu, align 16, !tbaa !49
  %i.vh = extractelement <2 x double> %.sroa.0406.0..sroa.0406.0..sroa.0406.0..sroa.0406.0.407, i64 0
  %i.vi = fmul double %i.sw, %i.vh
  %i.vj = extractelement <2 x double> %.sroa.0406.8..sroa.0406.8..sroa.0406.8..sroa.0406.8.411, i64 0
  %i.vk = fmul double %i.sz, %i.vj
  %i.vl = extractelement <2 x double> %.sroa.0406.16..sroa.0406.16..sroa.0406.16..sroa.0406.16.419, i64 0
  %i.vm = fmul double %i.tc, %i.vl
  %i.vn = fadd double %i.vk, %i.vm
  %i.vo = fadd double %i.vi, %i.vn
  store double %i.vo, ptr %i.qd, align 16, !tbaa !10
  %i.vp = fsub <2 x double> %i.ti, %i.uu
  %i.vq = fadd <2 x double> %i.vp, %i.tt
  store <2 x double> %i.vq, ptr %i.qm, align 8, !tbaa !49
  %i.vr = fadd double %i.tn, %i.tw                ; 2 uses
  %i.vs = fsub double %i.vr, %i.ux
  store double %i.vs, ptr %i.qu, align 8, !tbaa !10
  %i.vt = fsub <2 x double> %i.ti, %i.th
  %i.vu = fadd <2 x double> %i.vt, %i.tt
  store <2 x double> %i.vu, ptr %i.qz, align 16, !tbaa !49
  %i.vv = fsub double %i.vr, %i.tm
  store double %i.vv, ptr %i.rh, align 16, !tbaa !10
  %i.vw = load ptr, ptr %2, align 8, !tbaa !75, !noalias !249 ; 6 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.vy = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %i.j, ptr %i.vy, align 8
  store ptr %16, ptr %6, align 8, !tbaa !241
  %i.vz = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %16, ptr %i.vz, align 8, !tbaa !242
  %i.wa = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_0
