Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/solver?download=true
inline.NumInlined: 218
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@b3FinalizeBodiesTask:bb.a
  %i.gf = fadd float %i.ge, %i.gd
  %sqrt.i317 = call float @llvm.sqrt.f32(float %i.gf)
  %i.gg = fadd float %sqrt.i314, %sqrt.i317       ; 3 uses
  %i.gh = fcmp olt <2 x float> %i.ct, zeroinitializer
  %i.gi = fneg <2 x float> %i.ct
  %i.gj = extractelement <2 x float> %i.cw, i64 0 ; 2 uses
  %i.gk = fneg float %i.gj
  %.sroa.089.0.copyload = load <2 x float>, ptr %i.dj, align 4 ; 2 uses
  %.sroa.290.0.copyload = load float, ptr %.sroa.2144.0..sroa_idx, align 4 ; 2 uses
  %i.gl = fmul <2 x float> %.sroa.089.0.copyload, %.sroa.089.0.copyload ; 2 uses
  %shift544 = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop545 = fadd <2 x float> %i.gl, %shift544
  %i.gm = extractelement <2 x float> %foldExtExtBinop545, i64 0
  %i.gn = fmul float %.sroa.290.0.copyload, %.sroa.290.0.copyload
  %i.go = fadd float %i.gn, %i.gm
  %sqrt.i334 = call float @llvm.sqrt.f32(float %i.go)
  %i.gp = select <2 x i1> %i.gh, <2 x float> %i.gi, <2 x float> %i.ct ; 3 uses
  %i.gq = extractelement <2 x i1> %i.fe, i64 0
  %i.gr = select i1 %i.gq, float %i.gk, float %i.gj ; 2 uses
  %i.gs = fmul float %i.gr, %.sroa.03.0.vec.extract.i311
  %i.gt = extractelement <2 x float> %i.gp, i64 0
  %i.gu = fmul float %i.gt, %.sroa.2122.0.copyload
  %i.gv = fadd float %i.gs, %i.gu                 ; 2 uses
  %i.gw = fmul <2 x float> %i.gp, %i.fu
  %i.gx = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x float> %i.gx, float %i.gr, i64 1
  %i.gz = fmul <2 x float> %i.gy, %.sroa.0121.0.copyload
  %i.ha = fadd <2 x float> %i.gw, %i.gz           ; 2 uses
  %i.hb = fmul float %i.gv, %i.gv
  %i.hc = fmul <2 x float> %i.ha, %i.ha           ; 2 uses
  %i.hd = extractelement <2 x float> %i.hc, i64 1
  %i.he = fadd float %i.hd, %i.hb
  %i.hf = extractelement <2 x float> %i.hc, i64 0
  %i.hg = fadd float %i.hf, %i.he
  %sqrt.i337 = call float @llvm.sqrt.f32(float %i.hg)
  %i.hh = fmul float %sqrt.i337, 2.000000e+00
  %i.hi = fadd float %sqrt.i334, %i.hh            ; 3 uses
  %i.hj = fmul float %i.af, %i.hi                 ; 2 uses
  %i.hk = fcmp ogt float %i.gg, %i.hj
  %i.hl = select i1 %i.hk, float %i.gg, float %i.hj ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dj, i8 0, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bt, ptr noundef nonnull align 4 dereferenceable(16) @b3Quat_identity, i64 16, i1 false), !tbaa.struct !164
  %i.hm = getelementptr inbounds nuw i8, ptr %i.as, i64 68
  %i.hn = load <2 x float>, ptr %i.au, align 4    ; 6 uses
  %i.ho = load <2 x float>, ptr %i.aw, align 4    ; 4 uses
  %.sroa.076.0.copyload = load <2 x float>, ptr %i.hm, align 4 ; 4 uses
  %.sroa.277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 76
  %.sroa.277.0.copyload = load float, ptr %.sroa.277.0..sroa_idx, align 4 ; 4 uses
  %.sroa.011.0.vec.extract.i.i342 = extractelement <2 x float> %i.hn, i64 0
  %.sroa.064.0.copyload = load <2 x float>, ptr %i.di, align 4
  %.sroa.265.0.copyload = load float, ptr %.sroa.2146.0..sroa_idx, align 4
  %foldExtExtBinop547 = fmul <2 x float> %i.ho, %.sroa.076.0.copyload
  %i.hp = fmul float %.sroa.011.0.vec.extract.i.i342, %.sroa.277.0.copyload
  %i.hq = shufflevector <2 x float> %.sroa.076.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hr = insertelement <2 x float> %i.hq, float %.sroa.277.0.copyload, i64 1 ; 2 uses
  %i.hs = fmul <2 x float> %i.hn, %i.hr           ; 2 uses
  %i.ht = shufflevector <2 x float> %i.hn, <2 x float> %i.ho, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.hu = fmul <2 x float> %i.ht, %.sroa.076.0.copyload ; 2 uses
  %i.hv = fsub <2 x float> %i.hs, %i.hu
  %i.hw = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hx = shufflevector <2 x float> %foldExtExtBinop547, <2 x float> %i.hw, <2 x i32> <i32 0, i32 3>
  %i.hy = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hz = insertelement <2 x float> %i.hy, float %i.hp, i64 0
  %i.ia = fsub <2 x float> %i.hx, %i.hz
  %i.ib = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ic = insertelement <2 x float> %i.hq, float %.sroa.277.0.copyload, i64 0
  %i.id = fmul <2 x float> %i.ib, %i.ic
  %i.ie = fmul <2 x float> %i.ib, %i.hr
  %i.if = fadd <2 x float> %i.id, %i.hv           ; 2 uses
  %i.ig = fadd <2 x float> %i.ie, %i.ia           ; 2 uses
  %i.ih = fmul <2 x float> %i.ht, %i.if
  %i.ii = shufflevector <2 x float> %i.ho, <2 x float> %i.hn, <2 x i32> <i32 0, i32 2>
  %i.ij = fmul <2 x float> %i.ii, %i.ig
  %i.ik = fsub <2 x float> %i.ih, %i.ij
  %foldExtExtBinop549 = fmul <2 x float> %i.hn, %i.ig
  %foldExtExtBinop551 = fmul <2 x float> %i.hn, %i.if
  %shift553 = shufflevector <2 x float> %foldExtExtBinop551, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop554 = fsub <2 x float> %foldExtExtBinop549, %shift553
  %i.il = extractelement <2 x float> %foldExtExtBinop554, i64 0
  %i.im = fmul <2 x float> %i.ik, splat (float 2.000000e+00)
  %i.in = fadd <2 x float> %.sroa.076.0.copyload, %i.im
  %i.io = fmul float %i.il, 2.000000e+00
  %i.ip = fadd float %.sroa.277.0.copyload, %i.io
  %i.iq = fsub <2 x float> %.sroa.064.0.copyload, %i.in
  %i.ir = fsub float %.sroa.265.0.copyload, %i.ip
  store <2 x float> %i.iq, ptr %i.as, align 4
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.ir, ptr %.sroa.483.0..sroa_idx, align 4, !tbaa !148
  %i.is = getelementptr inbounds nuw i8, ptr %i.as, i64 208 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !151
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [128 x i8], ptr %i.d, i64 %i.iu ; 12 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 104
  %i.ix = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  store i32 %i.ix, ptr %i.iw, align 8, !tbaa !339
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 60
  store float %i.hl, ptr %i.iy, align 4, !tbaa !340
  %i.iz = load ptr, ptr %i.iv, align 8, !tbaa !341
  %i.ja = getelementptr inbounds [48 x i8], ptr %i.t, i64 %indvars.iv ; 6 uses
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !344
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.jb, ptr noundef nonnull align 4 dereferenceable(28) %i.as, i64 28, i1 false), !tbaa.struct !165
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 36
  %i.jd = load i32, ptr %i.is, align 4, !tbaa !151
  %i.je = add nsw i32 %i.jd, 1
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 124
  %i.jg = load i16, ptr %i.jf, align 4, !tbaa !345
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !101
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  store i16 %i.r, ptr %.sroa.236.0..sroa_idx, align 8, !tbaa !133
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ja, i64 42
  store i16 %i.jg, ptr %.sroa.337.0..sroa_idx, align 2, !tbaa !133
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 44
  store i8 0, ptr %i.jh, align 4, !tbaa !346
  %i.ji = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ji, i8 0, i64 24, i1 false)
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !347 ; 2 uses
  %i.jl = and i32 %i.jk, -833
  %i.jm = getelementptr inbounds nuw i8, ptr %i.as, i64 212 ; 4 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !154 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ar, i64 52 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !167 ; 2 uses
  %i.jq = or i32 %i.jn, %i.jp
  %i.jr = and i32 %i.jq, 768
  %i.js = or disjoint i32 %i.jr, %i.jl
  store i32 %i.js, ptr %i.jj, align 8, !tbaa !347
  %i.jt = and i32 %i.jn, -833                     ; 2 uses
  store i32 %i.jt, ptr %i.jm, align 4, !tbaa !154
  %i.ju = and i32 %i.jp, -833
  store i32 %i.ju, ptr %i.jo, align 4, !tbaa !167
  %i.jv = and i32 %i.jk, 8192
  %i.jw = icmp eq i32 %i.jv, 0
  %or.cond493 = select i1 %i.ag, i1 true, i1 %i.jw
  br i1 %or.cond493, label %bb.h, label %bb.g

bb.g:                                             ; preds = %b3NormalizeQuat.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %i.iv, i64 52
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !348
  %i.jz = fcmp ogt float %i.hl, %i.jy
  br i1 %i.jz, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g, %b3NormalizeQuat.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  store float 0.000000e+00, ptr %i.ka, align 8, !tbaa !349
  %i.kb = getelementptr inbounds nuw i8, ptr %i.iv, i64 120
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !350
  %i.kd = icmp eq i32 %i.kc, 2
  %or.cond = and i1 %i.kd, %i.m
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ke = fmul float %i.n, %i.gg                  ; 2 uses
  %i.kf = fcmp ogt float %i.hi, %i.ke
  %i.kg = select i1 %i.kf, float %i.hi, float %i.ke
  %i.kh = getelementptr inbounds nuw i8, ptr %i.as, i64 180
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !351
  %i.kj = fmul float %i.ki, 5.000000e-01
  %i.kk = fcmp ogt float %i.kg, %i.kj
  br i1 %i.kk, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.kl = or disjoint i32 %i.jt, 64
  store i32 %i.kl, ptr %i.jm, align 4, !tbaa !154
  %i.km = and i32 %i.jn, 128
  %.not = icmp eq i32 %i.km, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.kn = atomicrmw add ptr %i.ah, i32 1 seq_cst, align 4
  %i.ko = load ptr, ptr %i.ai, align 8, !tbaa !93
  %i.kp = sext i32 %i.kn to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.kp
  store i32 %i.ix, ptr %i.kq, align 4, !tbaa !101
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  call fastcc void @b3SolveContinuous(ptr noundef nonnull %i.b, i32 noundef %i.ix, ptr noundef %i.x)
  br label %bb.o

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.kr = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kr, ptr noundef nonnull align 4 dereferenceable(12) %i.di, i64 12, i1 false), !tbaa.struct !168
  %i.ks = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ks, ptr noundef nonnull align 4 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !164
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  %i.kt = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kt, ptr noundef nonnull align 4 dereferenceable(12) %i.di, i64 12, i1 false), !tbaa.struct !168
  %i.ku = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ku, ptr noundef nonnull align 4 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !164
  %i.kv = getelementptr inbounds nuw i8, ptr %i.iv, i64 56 ; 2 uses
  %i.kw = load float, ptr %i.kv, align 8, !tbaa !349
  %i.kx = fadd float %i.n, %i.kw
  store float %i.kx, ptr %i.kv, align 8, !tbaa !349
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.n
  %i.ky = load <2 x float>, ptr %i.au, align 4    ; 6 uses
  %i.kz = load <2 x float>, ptr %i.aw, align 4    ; 6 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  %i.lb = getelementptr inbounds nuw i8, ptr %i.as, i64 108
  %.sroa.0456.0.copyload = load <2 x float>, ptr %i.lb, align 4 ; 6 uses
  %.sroa.4457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 116
  %.sroa.4457.0.copyload = load float, ptr %.sroa.4457.0..sroa_idx, align 4, !tbaa !148 ; 3 uses
  %.sroa.5458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %.sroa.5458.0.copyload = load <2 x float>, ptr %.sroa.5458.0..sroa_idx, align 4 ; 6 uses
  %.sroa.6459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  %.sroa.6459.0.copyload = load float, ptr %.sroa.6459.0..sroa_idx, align 4, !tbaa !148 ; 3 uses
  %.sroa.7460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 132
  %.sroa.7460.0.copyload = load <2 x float>, ptr %.sroa.7460.0..sroa_idx, align 4 ; 4 uses
  %.sroa.8461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 140
  %.sroa.8461.0.copyload = load float, ptr %.sroa.8461.0..sroa_idx, align 4, !tbaa !148 ; 2 uses
  %i.lc = fmul <2 x float> %i.ky, %i.ky           ; 3 uses
  %i.ld = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.le = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = fmul <2 x float> %i.ld, %i.le           ; 2 uses
  %i.lg = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lh = fmul <2 x float> %i.ky, %i.lg           ; 2 uses
  %foldExtExtBinop556 = fmul <2 x float> %i.kz, %i.kz
  %shift558 = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop559 = fmul <2 x float> %i.kz, %shift558 ; 2 uses
  %shift561 = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop562 = fmul <2 x float> %i.ky, %shift561 ; 2 uses
  %foldExtExtBinop564 = fadd <2 x float> %foldExtExtBinop562, %foldExtExtBinop559
  %foldExtExtBinop566 = fsub <2 x float> %foldExtExtBinop562, %foldExtExtBinop559
  %6 = shufflevector <2 x float> %foldExtExtBinop564, <2 x float> %foldExtExtBinop566, <2 x i32> <i32 0, i32 2>
  %i.li = fmul <2 x float> %6, splat (float 2.000000e+00) ; 8 uses
  %7 = shufflevector <2 x float> %foldExtExtBinop556, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = fadd <2 x float> %i.lc, %7
  %i.lk = fmul <2 x float> %i.lj, splat (float 2.000000e+00)
  %i.ll = fsub <2 x float> splat (float 1.000000e+00), %i.lk ; 9 uses
  %8 = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lm = fadd <2 x float> %i.lf, %i.lh           ; 2 uses
  %i.ln = fsub <2 x float> %i.lf, %i.lh           ; 2 uses
  %i.lo = shufflevector <2 x float> %i.lm, <2 x float> %i.ln, <2 x i32> <i32 3, i32 0>
  %i.lp = fmul <2 x float> %i.lo, splat (float 2.000000e+00) ; 7 uses
  %9 = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lq = shufflevector <2 x float> %i.ln, <2 x float> %i.lm, <2 x i32> <i32 0, i32 3>
  %i.lr = fmul <2 x float> %i.lq, splat (float 2.000000e+00) ; 7 uses
  %shift568 = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop569 = fadd <2 x float> %i.lc, %shift568
  %10 = extractelement <2 x float> %foldExtExtBinop569, i64 0
  %11 = fmul float %10, 2.000000e+00
  %12 = fsub float 1.000000e+00, %11              ; 3 uses
  %i.ls = shufflevector <2 x float> %.sroa.0456.0.copyload, <2 x float> %.sroa.5458.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.lt = fmul <2 x float> %i.ls, %i.ll
  %i.lu = shufflevector <2 x float> %.sroa.0456.0.copyload, <2 x float> %.sroa.5458.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.lv = fmul <2 x float> %i.li, %i.lu
  %i.lw = fadd <2 x float> %i.lv, %i.lt
  %i.lx = insertelement <2 x float> poison, float %.sroa.4457.0.copyload, i64 0
  %i.ly = insertelement <2 x float> %i.lx, float %.sroa.6459.0.copyload, i64 1
  %i.lz = fmul <2 x float> %i.lr, %i.ly
  %i.ma = fadd <2 x float> %i.lz, %i.lw           ; 3 uses
  %i.mb = shufflevector <2 x float> %.sroa.5458.0.copyload, <2 x float> %.sroa.0456.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.mc = fmul <2 x float> %i.mb, %i.li
  %i.md = shufflevector <2 x float> %.sroa.5458.0.copyload, <2 x float> %.sroa.0456.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.me = fmul <2 x float> %i.md, %i.ll
  %i.mf = fadd <2 x float> %i.mc, %i.me
  %i.mg = insertelement <2 x float> poison, float %.sroa.6459.0.copyload, i64 0
  %i.mh = insertelement <2 x float> %i.mg, float %.sroa.4457.0.copyload, i64 1
  %i.mi = fmul <2 x float> %i.mh, %i.lr
  %i.mj = fadd <2 x float> %i.mi, %i.mf           ; 3 uses
  %i.mk = fmul <2 x float> %i.li, %.sroa.7460.0.copyload
  %i.ml = shufflevector <2 x float> %.sroa.7460.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mm = fmul <2 x float> %i.ll, %i.ml
  %i.mn = fadd <2 x float> %i.mk, %i.mm
  %i.mo = insertelement <2 x float> poison, float %.sroa.8461.0.copyload, i64 0
  %i.mp = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mq = fmul <2 x float> %i.lr, %i.mp
  %i.mr = fadd <2 x float> %i.mq, %i.mn           ; 3 uses
  %i.ms = extractelement <2 x float> %i.ll, i64 1
  %i.mt = shufflevector <2 x float> %i.ll, <2 x float> %i.li, <2 x i32> <i32 1, i32 3>
  %i.mu = fmul <2 x float> %i.mt, %i.ma
  %i.mv = shufflevector <2 x float> %i.li, <2 x float> %i.ll, <2 x i32> <i32 1, i32 3>
  %i.mw = fmul <2 x float> %i.mv, %i.mj
  %i.mx = fadd <2 x float> %i.mu, %i.mw
  %i.my = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mz = fmul <2 x float> %i.my, %i.mr
  %i.na = fadd <2 x float> %i.mx, %i.mz
  %i.nb = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nc = shufflevector <2 x float> %i.li, <2 x float> %i.ll, <2 x i32> <i32 0, i32 2>
  %i.nd = fmul <2 x float> %i.nc, %i.ma
  %i.ne = shufflevector <2 x float> %i.ll, <2 x float> %i.li, <2 x i32> <i32 0, i32 2>
  %i.nf = fmul <2 x float> %i.ne, %i.mj
  %i.ng = fadd <2 x float> %i.nd, %i.nf
  %i.nh = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ni = fmul <2 x float> %i.nh, %i.mr
  %i.nj = fadd <2 x float> %i.ni, %i.ng
  %i.nk = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %13 = shufflevector <2 x float> %i.lp, <2 x float> %.sroa.0456.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 1>
  %14 = shufflevector <2 x float> %.sroa.5458.0.copyload, <2 x float> %.sroa.7460.0.copyload, <4 x i32> <i32 1, i32 2, i32 poison, i32 1>
  %15 = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x float> %14, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %17 = fmul <4 x float> %13, %16
  %18 = shufflevector <2 x float> %i.lp, <2 x float> %.sroa.0456.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %19 = shufflevector <2 x float> %.sroa.5458.0.copyload, <2 x float> %.sroa.7460.0.copyload, <4 x i32> <i32 0, i32 3, i32 poison, i32 0>
  %20 = shufflevector <4 x float> %19, <4 x float> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %21 = fmul <4 x float> %18, %20
  %22 = fadd <4 x float> %21, %17
  %23 = insertelement <4 x float> poison, float %.sroa.6459.0.copyload, i64 0
  %24 = insertelement <4 x float> %23, float %.sroa.8461.0.copyload, i64 1
  %25 = insertelement <4 x float> %24, float %.sroa.4457.0.copyload, i64 2
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.nl = insertelement <4 x float> poison, float %12, i64 0
  %27 = shufflevector <4 x float> %i.nl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nm = fmul <4 x float> %26, %27
  %28 = fadd <4 x float> %i.nm, %22               ; 3 uses
  %29 = extractelement <4 x float> %28, i64 2
  %30 = fmul float %i.ms, %29
  %31 = shufflevector <2 x float> %i.li, <2 x float> %i.lr, <4 x i32> <i32 1, i32 3, i32 0, i32 poison>
  %32 = shufflevector <4 x float> %31, <4 x float> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %33 = fmul <4 x float> %32, %28                 ; 4 uses
  %34 = extractelement <4 x float> %33, i64 0
  %35 = fadd float %30, %34
  %36 = extractelement <4 x float> %33, i64 1
  %37 = fadd float %35, %36
  %shift571 = shufflevector <4 x float> %33, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %i.nn = fadd <4 x float> %33, %shift571
  %38 = fmul <2 x float> %i.lp, %i.ma
  %39 = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %40 = fmul <2 x float> %39, %i.mj
  %41 = fadd <2 x float> %38, %40
  %42 = insertelement <2 x float> poison, float %12, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %44 = fmul <2 x float> %43, %i.mr
  %45 = fadd <2 x float> %44, %41
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %47 = shufflevector <2 x float> %i.lp, <2 x float> %i.lr, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %48 = insertelement <4 x float> %47, float %12, i64 3
  %49 = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %50 = fmul <4 x float> %48, %49                 ; 4 uses
  %shift574 = shufflevector <4 x float> %i.nn, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop575 = fadd <4 x float> %shift574, %50
  %51 = extractelement <4 x float> %foldExtExtBinop575, i64 1
  %shift577 = shufflevector <4 x float> %50, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop578 = fadd <4 x float> %shift577, %50
  %shift580 = shufflevector <4 x float> %50, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop581 = fadd <4 x float> %foldExtExtBinop578, %shift580
  %i.no = extractelement <4 x float> %foldExtExtBinop581, i64 0
  store <2 x float> %i.nb, ptr %i.la, align 4
  %.sroa.4416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 152
  store float %37, ptr %.sroa.4416.0..sroa_idx, align 4, !tbaa !148
  %.sroa.5417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 156
  store <2 x float> %i.nk, ptr %.sroa.5417.0..sroa_idx, align 4
  %.sroa.6418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 164
  store float %51, ptr %.sroa.6418.0..sroa_idx, align 4, !tbaa !148
  %.sroa.7419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  store <2 x float> %46, ptr %.sroa.7419.0..sroa_idx, align 4
  %.sroa.8420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  store float %i.no, ptr %.sroa.8420.0..sroa_idx, align 4, !tbaa !148
  %i.np = load ptr, ptr %i.aj, align 8, !tbaa !352
  %i.nq = getelementptr inbounds nuw i8, ptr %i.iv, i64 44
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !353 ; 3 uses
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [64 x i8], ptr %i.np, i64 %i.ns ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  %i.nv = load float, ptr %i.nu, align 8, !tbaa !349 ; 4 uses
  %i.nw = fcmp olt float %i.nv, 5.000000e-01
  br i1 %i.nw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !359 ; 2 uses
  %.val287 = load ptr, ptr %i.z, align 8, !tbaa !131
  %i.nz = lshr i32 %i.ny, 6
  %i.oa = and i32 %i.ny, 63
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = shl nuw i64 1, %i.ob
  %i.od = zext nneg i32 %i.nz to i64
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %.val287, i64 %i.od ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !80
  %i.og = or i64 %i.oc, %i.of
  store i64 %i.og, ptr %i.oe, align 8, !tbaa !80
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !360
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ok = load float, ptr %i.ak, align 8, !tbaa !129 ; 2 uses
  %i.ol = fcmp ogt float %i.nv, %i.ok
  br i1 %i.ol, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.om = fcmp oeq float %i.nv, %i.ok
  br i1 %i.om, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.on = load i32, ptr %i.al, align 4, !tbaa !128
  %i.oo = icmp sgt i32 %i.nr, %i.on
  br i1 %i.oo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.r
  store i32 %i.nr, ptr %i.al, align 4, !tbaa !128
  store float %i.nv, ptr %i.ak, align 8, !tbaa !129
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u, %bb.t, %bb.s, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %i.as, i64 28, i1 false), !tbaa.struct !165
  %i.op = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %.0281518 = load i32, ptr %i.op, align 8, !tbaa !101 ; 2 uses
  %.not285519 = icmp eq i32 %.0281518, -1
  br i1 %.not285519, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.oq = load i32, ptr %i.jm, align 4, !tbaa !154
  %i.or = and i32 %i.oq, 64
  %.not284 = icmp eq i32 %i.or, 0
  %i.os = lshr i64 %indvars.iv, 6
  %i.ot = and i64 %indvars.iv, 63
  %i.ou = shl nuw i64 1, %i.ot                    ; 2 uses
  %i.ov = and i64 %i.os, 67108863                 ; 2 uses
  br i1 %.not284, label %.lr.ph.split.us, label %._crit_edge.loopexit532

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.w
  %.0281520.us = phi i32 [ %.0281.us, %bb.w ], [ %.0281518, %.lr.ph ]
  %i.ow = load ptr, ptr %i.am, align 8, !tbaa !136
  %i.ox = sext i32 %.0281520.us to i64
  %i.oy = getelementptr inbounds [232 x i8], ptr %i.ow, i64 %i.ox ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @b3ComputeFatShapeAABB(ptr dead_on_unwind nonnull writable sret(%struct.b3AABB) align 4 %5, ptr noundef %i.oy, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, float noundef %i.ac) #10
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oz, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !169
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 64 ; 2 uses
  %.sroa.5487.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.oy, i64 72 ; 2 uses
  %.sroa.5487.0.copyload.us = load float, ptr %.sroa.5487.0..sroa_idx.us, align 8
  %.sroa.6488.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.oy, i64 76 ; 2 uses
  %.sroa.8490.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.oy, i64 84 ; 2 uses
  %.sroa.8490.0.copyload.us = load float, ptr %.sroa.8490.0..sroa_idx.us, align 4
  %i.pb = load <2 x float>, ptr %i.pa, align 8
  %i.pc = load <2 x float>, ptr %.sroa.6488.0..sroa_idx.us, align 4
  %i.pd = load <2 x float>, ptr %5, align 8
  %i.pe = load <2 x float>, ptr %i.an, align 4
  %i.pf = shufflevector <2 x float> %i.pb, <2 x float> %i.pe, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.pg = shufflevector <2 x float> %i.pd, <2 x float> %i.pc, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ph = fcmp ule <4 x float> %i.pf, %i.pg
  %i.pi = load float, ptr %i.ao, align 8          ; 2 uses
  %i.pj = fcmp ule float %.sroa.5487.0.copyload.us, %i.pi
  %i.pk = load float, ptr %i.ap, align 4          ; 2 uses
  %i.pl = fcmp ule float %i.pk, %.sroa.8490.0.copyload.us
  %i.pm = freeze <4 x i1> %i.ph
  %i.pn = bitcast <4 x i1> %i.pm to i4
  %i.po = icmp eq i4 %i.pn, -1
  %.fr = freeze i1 %i.pj
  %op.rdx = and i1 %i.po, %.fr
  %op.rdx533 = select i1 %op.rdx, i1 %i.pl, i1 false
  br i1 %op.rdx533, label %bb.w, label %b3AABB_Contains.exit.thread.us

b3AABB_Contains.exit.thread.us:                   ; preds = %.lr.ph.split.us
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oy, i64 36
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !170 ; 3 uses
  %.sroa.012.0.copyload.us = load <2 x float>, ptr %5, align 8
  %i.pr = insertelement <2 x float> poison, float %i.pq, i64 0
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pt = fsub <2 x float> %.sroa.012.0.copyload.us, %i.ps
  %i.pu = fsub float %i.pi, %i.pq
  %.sroa.04.0.copyload.us = load <2 x float>, ptr %i.an, align 4
  %i.pv = fadd <2 x float> %i.ps, %.sroa.04.0.copyload.us
  %i.pw = fadd float %i.pq, %i.pk
  store <2 x float> %i.pt, ptr %i.pa, align 8
  store float %i.pu, ptr %.sroa.5487.0..sroa_idx.us, align 8, !tbaa !148
  store <2 x float> %i.pv, ptr %.sroa.6488.0..sroa_idx.us, align 4
  store float %i.pw, ptr %.sroa.8490.0..sroa_idx.us, align 4, !tbaa !148
  %i.px = getelementptr inbounds nuw i8, ptr %i.oy, i64 198 ; 2 uses
  %i.py = load i8, ptr %i.px, align 2, !tbaa !156
  %i.pz = or i8 %i.py, 32
  store i8 %i.pz, ptr %i.px, align 2, !tbaa !156
  %.val.us = load ptr, ptr %i.y, align 8, !tbaa !131
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %.val.us, i64 %i.ov ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !80
  %i.qc = or i64 %i.qb, %i.ou
  store i64 %i.qc, ptr %i.qa, align 8, !tbaa !80
  br label %bb.w

bb.w:                                             ; preds = %b3AABB_Contains.exit.thread.us, %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  %.0281.us = load i32, ptr %i.qd, align 4, !tbaa !101 ; 2 uses
  %.not285.us = icmp eq i32 %.0281.us, -1
  br i1 %.not285.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !335

._crit_edge.loopexit532:                          ; preds = %.lr.ph
  %.val286.pre = load ptr, ptr %i.y, align 8, !tbaa !131
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.val286.pre, i64 %i.ov ; 2 uses
  %.pre527 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !80
  %i.qe = or i64 %.pre527, %i.ou
  store i64 %i.qe, ptr %.phi.trans.insert, align 8, !tbaa !80
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %._crit_edge.loopexit532, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge524, label %bb.b, !llvm.loop !336
}

declare void @b3StackFree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @b3GetMilliseconds(i64 noundef) local_unnamed_addr #2

declare void @b3InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @b3GetBodySim(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @b3GetShapeUserMaterialId(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @b3BroadPhase_EnlargeProxy(ptr noundef, i32 noundef, ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #2

declare void @b3ValidateBroadPhase(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @b3BulletBodyTask(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [3848 x i8], ptr %i.d, i64 %i.e
  %i.g = icmp slt i32 %0, %1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.i = sext i32 %0 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !101
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !160
  tail call fastcc void @b3SolveContinuous(ptr noundef %i.m, i32 noundef %i.l, ptr noundef %i.f)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !361
}

declare void @b3DynamicTree_EnlargeProxy(ptr noundef, i32 noundef, ptr noundef byval(%struct.b3AABB) align 8) local_unnamed_addr #2

end_hunk_0
