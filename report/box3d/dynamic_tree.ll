Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/dynamic_tree?download=true
inline.NumInlined: 175
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3InsertLeaf:bb.a
  %i.gt = fcmp olt <2 x float> %.sroa.0146.0.copyload, %.sroa.0159.0.copyload
  %i.gu = select <2 x i1> %i.gt, <2 x float> %.sroa.0146.0.copyload, <2 x float> %.sroa.0159.0.copyload
  %i.gv = fcmp olt float %.sroa.5148.0.copyload, %.sroa.4160.0.copyload
  %i.gw = select i1 %i.gv, float %.sroa.5148.0.copyload, float %.sroa.4160.0.copyload
  %i.gx = fcmp ogt <2 x float> %.sroa.6151.0.copyload, %.sroa.5161.0.copyload
  %i.gy = select <2 x i1> %i.gx, <2 x float> %.sroa.6151.0.copyload, <2 x float> %.sroa.5161.0.copyload
  %i.gz = fcmp ogt float %.sroa.7.0.copyload, %.sroa.6162.0.copyload
  %i.ha = select i1 %i.gz, float %.sroa.7.0.copyload, float %.sroa.6162.0.copyload
  store <2 x float> %i.gu, ptr %i.gp, align 8, !tbaa !28
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store float %i.gw, ptr %.sroa.4143.0..sroa_idx, align 8, !tbaa !28
  %.sroa.5144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store <2 x float> %i.gy, ptr %.sroa.5144.0..sroa_idx, align 4, !tbaa !28
  %.sroa.6145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  store float %i.ha, ptr %.sroa.6145.0..sroa_idx, align 4, !tbaa !28
  %i.hb = getelementptr inbounds [48 x i8], ptr %i.gn, i64 %i.k ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !34
  %i.he = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !34
  %i.hg = or i64 %i.hf, %i.hd
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !34
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gs, i64 44
  %i.hj = load i16, ptr %i.hi, align 4, !tbaa !35
  %i.hk = add i16 %i.hj, 1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 44
  store i16 %i.hk, ptr %i.hl, align 4, !tbaa !35
  %.not = icmp eq i32 %i.gl, -1
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %b3FindBestSibling.exit
  %i.hm = sext i32 %i.gl to i64
  %i.hn = getelementptr inbounds [48 x i8], ptr %i.gn, i64 %i.hm ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !20
  %i.hq = icmp eq i32 %i.hp, %.6.i
  br i1 %i.hq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.gm, ptr %i.ho, align 8, !tbaa !20
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 36
  store i32 %i.gm, ptr %i.hr, align 4, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %.6.i, ptr %i.gr, align 8, !tbaa !20
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gp, i64 36
  store i32 %1, ptr %i.hs, align 4, !tbaa !20
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  store i32 %i.gm, ptr %i.ht, align 8, !tbaa !20
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  store i32 %i.gm, ptr %i.hu, align 8, !tbaa !20
  br label %bb.q

bb.p:                                             ; preds = %b3FindBestSibling.exit
  store i32 %.6.i, ptr %i.gr, align 8, !tbaa !20
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gp, i64 36
  store i32 %1, ptr %i.hv, align 4, !tbaa !20
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  store i32 %i.gm, ptr %i.hw, align 8, !tbaa !20
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hb, i64 40 ; 2 uses
  store i32 %i.gm, ptr %i.hx, align 8, !tbaa !20
  store i32 %i.gm, ptr %i.a, align 8, !tbaa !16
  %.0172.pre = load i32, ptr %i.hx, align 8, !tbaa !20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0172 = phi i32 [ %.0172.pre, %bb.p ], [ %i.gm, %bb.o ] ; 2 uses
  %.not103173 = icmp eq i32 %.0172, -1
  br i1 %.not103173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %b3RotateNodes.exit
  %.0174 = phi i32 [ %.0, %b3RotateNodes.exit ], [ %.0172, %bb.q ] ; 9 uses
  %i.hy = sext i32 %.0174 to i64                  ; 2 uses
  %i.hz = getelementptr inbounds [48 x i8], ptr %i.gn, i64 %i.hy ; 10 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !20
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 36
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !20
  %i.ie = sext i32 %i.ib to i64
  %i.if = getelementptr inbounds [48 x i8], ptr %i.gn, i64 %i.ie ; 7 uses
  %i.ig = sext i32 %i.id to i64
  %i.ih = getelementptr inbounds [48 x i8], ptr %i.gn, i64 %i.ig ; 7 uses
  %.sroa.0167.0.copyload = load <2 x float>, ptr %i.ih, align 8 ; 2 uses
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %.sroa.4168.0.copyload = load float, ptr %.sroa.4168.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %.sroa.5169.0.copyload = load <2 x float>, ptr %.sroa.5169.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  %.sroa.6170.0.copyload = load float, ptr %.sroa.6170.0..sroa_idx, align 4 ; 2 uses
  %.sroa.0163.0.copyload = load <2 x float>, ptr %i.if, align 8 ; 2 uses
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %.sroa.4164.0.copyload = load float, ptr %.sroa.4164.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  %.sroa.5165.0.copyload = load <2 x float>, ptr %.sroa.5165.0..sroa_idx, align 4 ; 2 uses
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.if, i64 20
  %.sroa.6166.0.copyload = load float, ptr %.sroa.6166.0..sroa_idx, align 4 ; 2 uses
  %i.ii = fcmp olt <2 x float> %.sroa.0163.0.copyload, %.sroa.0167.0.copyload
  %i.ij = select <2 x i1> %i.ii, <2 x float> %.sroa.0163.0.copyload, <2 x float> %.sroa.0167.0.copyload
  %i.ik = fcmp olt float %.sroa.4164.0.copyload, %.sroa.4168.0.copyload
  %i.il = select i1 %i.ik, float %.sroa.4164.0.copyload, float %.sroa.4168.0.copyload
  %i.im = fcmp ogt <2 x float> %.sroa.5165.0.copyload, %.sroa.5169.0.copyload
  %i.in = select <2 x i1> %i.im, <2 x float> %.sroa.5165.0.copyload, <2 x float> %.sroa.5169.0.copyload
  %i.io = fcmp ogt float %.sroa.6166.0.copyload, %.sroa.6170.0.copyload
  %i.ip = select i1 %i.io, float %.sroa.6166.0.copyload, float %.sroa.6170.0.copyload
  store <2 x float> %i.ij, ptr %i.hz, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store float %i.il, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store <2 x float> %i.in, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  store float %i.ip, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !28
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !34
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.it = load i64, ptr %i.is, align 8, !tbaa !34
  %i.iu = or i64 %i.it, %i.ir
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  store i64 %i.iu, ptr %i.iv, align 8, !tbaa !34
  %i.iw = getelementptr inbounds nuw i8, ptr %i.if, i64 44
  %i.ix = load i16, ptr %i.iw, align 4, !tbaa !35
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ih, i64 44
  %i.iz = load i16, ptr %i.iy, align 4, !tbaa !35
  %i.ja = tail call noundef i16 @llvm.umax.i16(i16 %i.ix, i16 %i.iz)
  %i.jb = add i16 %i.ja, 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hz, i64 44
  store i16 %i.jb, ptr %i.jc, align 4, !tbaa !35
  %i.jd = getelementptr inbounds nuw i8, ptr %i.if, i64 46
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !36
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ih, i64 46
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !36
  %i.jh = or i16 %i.jg, %i.je
  %i.ji = and i16 %i.jh, 2
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hz, i64 46 ; 2 uses
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !36
  %i.jl = or i16 %i.ji, %i.jk
  store i16 %i.jl, ptr %i.jj, align 2, !tbaa !36
  br i1 %2, label %bb.r, label %b3RotateNodes.exit

bb.r:                                             ; preds = %.lr.ph
  %.val105 = load ptr, ptr %i.i, align 8, !tbaa !19 ; 11 uses
  %i.jm = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.hy ; 17 uses
  %i.jn = getelementptr i8, ptr %i.jm, i64 46     ; 3 uses
  %.val329.i = load i16, ptr %i.jn, align 2, !tbaa !36
  %i.jo = and i16 %.val329.i, 4
  %.not112.i = icmp eq i16 %i.jo, 0
  br i1 %.not112.i, label %bb.s, label %b3RotateNodes.exit

bb.s:                                             ; preds = %bb.r
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 32 ; 5 uses
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !20 ; 9 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 36 ; 5 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !20 ; 9 uses
  %i.jt = sext i32 %i.jq to i64
  %i.ju = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.jt ; 42 uses
  %i.jv = sext i32 %i.js to i64
  %i.jw = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.jv ; 42 uses
  %i.jx = getelementptr i8, ptr %i.ju, i64 46     ; 5 uses
  %.val328.i = load i16, ptr %i.jx, align 2, !tbaa !36 ; 9 uses
  %i.jy = and i16 %.val328.i, 4
  %i.jz = icmp ne i16 %i.jy, 0                    ; 3 uses
  %i.ka = getelementptr i8, ptr %i.jw, i64 46     ; 5 uses
  %.val.i133 = load i16, ptr %i.ka, align 2, !tbaa !36 ; 9 uses
  %i.kb = and i16 %.val.i133, 4
  %i.kc = icmp ne i16 %i.kb, 0                    ; 3 uses
  %.not.i = xor i1 %i.jz, true
  %brmerge.i134 = select i1 %.not.i, i1 true, i1 %i.kc
  br i1 %brmerge.i134, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 32 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !20 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 36 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !20 ; 2 uses
  %i.kh = sext i32 %i.ke to i64
  %i.ki = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.kh ; 11 uses
  %i.kj = sext i32 %i.kg to i64
  %i.kk = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.kj ; 11 uses
  %.sroa.4.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  %.sroa.627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 12 ; 3 uses
  %.sroa.728.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %.sroa.829.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 20 ; 2 uses
  %i.kl = load <2 x float>, ptr %i.jw, align 8
  %i.km = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i135, align 4
  %i.kn = load <2 x float>, ptr %.sroa.627.0..sroa_idx.i, align 4
  %i.ko = load <2 x float>, ptr %.sroa.728.0..sroa_idx.i, align 8
  %i.kp = fsub <2 x float> %i.kn, %i.kl           ; 2 uses
  %i.kq = fsub <2 x float> %i.ko, %i.km           ; 2 uses
  %shift = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop187 = fmul <2 x float> %i.kp, %shift
  %i.kr = fmul <2 x float> %i.kp, %i.kq           ; 2 uses
  %foldExtExtBinop189 = fadd <2 x float> %i.kr, %foldExtExtBinop187
  %shift191 = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop192 = fadd <2 x float> %shift191, %foldExtExtBinop189
  %i.ks = extractelement <2 x float> %foldExtExtBinop192, i64 0
  %i.kt = fmul float %i.ks, 2.000000e+00
  %.sroa.034.0.copyload.i = load <2 x float>, ptr %i.kk, align 8 ; 2 uses
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.435.0.copyload.i = load float, ptr %.sroa.435.0..sroa_idx.i, align 8
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  %.sroa.536.0.copyload.i = load <2 x float>, ptr %.sroa.536.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.637.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 20
  %.sroa.637.0.copyload.i = load float, ptr %.sroa.637.0..sroa_idx.i, align 4
  %.sroa.030.0.copyload.i = load <2 x float>, ptr %i.ju, align 8 ; 4 uses
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %.sroa.431.0.copyload.i = load float, ptr %.sroa.431.0..sroa_idx.i, align 8
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 12
  %.sroa.532.0.copyload.i = load <2 x float>, ptr %.sroa.532.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.633.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 20
  %.sroa.633.0.copyload.i = load float, ptr %.sroa.633.0..sroa_idx.i, align 4
  %i.ku = fcmp olt <2 x float> %.sroa.030.0.copyload.i, %.sroa.034.0.copyload.i
  %i.kv = select <2 x i1> %i.ku, <2 x float> %.sroa.030.0.copyload.i, <2 x float> %.sroa.034.0.copyload.i ; 2 uses
  %i.kw = fcmp ogt <2 x float> %.sroa.532.0.copyload.i, %.sroa.536.0.copyload.i
  %i.kx = select <2 x i1> %i.kw, <2 x float> %.sroa.532.0.copyload.i, <2 x float> %.sroa.536.0.copyload.i ; 2 uses
  %3 = fsub <2 x float> %i.kx, %i.kv              ; 2 uses
  %.sroa.042.0.copyload.i = load <2 x float>, ptr %i.ki, align 8 ; 2 uses
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.443.0.copyload.i = load float, ptr %.sroa.443.0..sroa_idx.i, align 8
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  %.sroa.544.0.copyload.i = load <2 x float>, ptr %.sroa.544.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  %.sroa.645.0.copyload.i = load float, ptr %.sroa.645.0..sroa_idx.i, align 4
  %4 = fcmp olt <2 x float> %.sroa.030.0.copyload.i, %.sroa.042.0.copyload.i
  %5 = select <2 x i1> %4, <2 x float> %.sroa.030.0.copyload.i, <2 x float> %.sroa.042.0.copyload.i ; 2 uses
  %6 = fcmp ogt <2 x float> %.sroa.532.0.copyload.i, %.sroa.544.0.copyload.i
  %7 = select <2 x i1> %6, <2 x float> %.sroa.532.0.copyload.i, <2 x float> %.sroa.544.0.copyload.i ; 2 uses
  %8 = fsub <2 x float> %7, %5                    ; 2 uses
  %9 = insertelement <2 x float> poison, float %.sroa.431.0.copyload.i, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = insertelement <2 x float> poison, float %.sroa.443.0.copyload.i, i64 0
  %12 = insertelement <2 x float> %11, float %.sroa.435.0.copyload.i, i64 1 ; 2 uses
  %13 = fcmp olt <2 x float> %10, %12
  %14 = select <2 x i1> %13, <2 x float> %10, <2 x float> %12 ; 3 uses
  %15 = insertelement <2 x float> poison, float %.sroa.633.0.copyload.i, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %17 = insertelement <2 x float> poison, float %.sroa.645.0.copyload.i, i64 0
  %18 = insertelement <2 x float> %17, float %.sroa.637.0.copyload.i, i64 1 ; 2 uses
  %i.ky = fcmp ogt <2 x float> %16, %18
  %i.kz = select <2 x i1> %i.ky, <2 x float> %16, <2 x float> %18 ; 3 uses
  %19 = fsub <2 x float> %i.kz, %14               ; 2 uses
  %20 = shufflevector <2 x float> %8, <2 x float> %3, <2 x i32> <i32 0, i32 2> ; 2 uses
  %21 = fmul <2 x float> %20, %19
  %22 = shufflevector <2 x float> %8, <2 x float> %3, <2 x i32> <i32 1, i32 3> ; 2 uses
  %23 = fmul <2 x float> %20, %22
  %24 = fadd <2 x float> %23, %21
  %25 = fmul <2 x float> %22, %19
  %26 = fadd <2 x float> %25, %24
  %27 = fmul <2 x float> %26, splat (float 2.000000e+00) ; 3 uses
  %28 = insertelement <2 x float> poison, float %i.kt, i64 0
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = fcmp olt <2 x float> %29, %27             ; 2 uses
  %31 = extractelement <2 x i1> %30, i64 0
  %32 = extractelement <2 x i1> %30, i64 1
  %or.cond.i = select i1 %32, i1 %31, i1 false
  br i1 %or.cond.i, label %b3RotateNodes.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %33 = extractelement <2 x float> %27, i64 0
  %34 = extractelement <2 x float> %27, i64 1
  %i.la = fcmp olt float %34, %33
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ju, i64 40 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ju, i64 44 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jw, i64 44 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.jm, i64 44 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ju, i64 24 ; 2 uses
  br i1 %i.la, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.ke, ptr %i.jp, align 8, !tbaa !20
  store i32 %i.jq, ptr %i.kd, align 8, !tbaa !20
  store i32 %i.js, ptr %i.lb, align 8, !tbaa !20
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  store i32 %.0174, ptr %i.lg, align 8, !tbaa !20
  store <2 x float> %i.kv, ptr %i.jw, align 8, !tbaa !28
  %35 = extractelement <2 x float> %14, i64 1
  store float %35, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !28
  store <2 x float> %i.kx, ptr %.sroa.627.0..sroa_idx.i, align 4, !tbaa !28
  %36 = extractelement <2 x float> %i.kz, i64 1
  store float %36, ptr %.sroa.829.0..sroa_idx.i, align 4, !tbaa !28
  %i.lh = load i16, ptr %i.lc, align 4, !tbaa !35
  %i.li = getelementptr inbounds nuw i8, ptr %i.kk, i64 44
  %i.lj = load i16, ptr %i.li, align 4, !tbaa !35
  %i.lk = tail call noundef i16 @llvm.umax.i16(i16 %i.lh, i16 %i.lj)
  %i.ll = add i16 %i.lk, 1                        ; 2 uses
  store i16 %i.ll, ptr %i.ld, align 4, !tbaa !35
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ki, i64 44
  %i.ln = load i16, ptr %i.lm, align 4, !tbaa !35
  %i.lo = tail call noundef i16 @llvm.umax.i16(i16 %i.ll, i16 %i.ln)
  %i.lp = add i16 %i.lo, 1
  store i16 %i.lp, ptr %i.le, align 4, !tbaa !35
  %i.lq = load i64, ptr %i.lf, align 8, !tbaa !34
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !34
  %i.lt = or i64 %i.ls, %i.lq                     ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !34
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !34
  %i.lx = or i64 %i.lw, %i.lt
  %i.ly = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i64 %i.lx, ptr %i.ly, align 8, !tbaa !34
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kk, i64 46
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !36
  %i.mb = or i16 %i.ma, %.val328.i
  %i.mc = and i16 %i.mb, 2
  %i.md = or i16 %i.mc, %.val.i133                ; 2 uses
  store i16 %i.md, ptr %i.ka, align 2, !tbaa !36
  br label %.critedge.sink.split.i

bb.w:                                             ; preds = %bb.u
  store i32 %i.kg, ptr %i.jp, align 8, !tbaa !20
  store i32 %i.jq, ptr %i.kf, align 4, !tbaa !20
  store i32 %i.js, ptr %i.lb, align 8, !tbaa !20
  %i.me = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  store i32 %.0174, ptr %i.me, align 8, !tbaa !20
  store <2 x float> %5, ptr %i.jw, align 8, !tbaa !28
  %37 = extractelement <2 x float> %14, i64 0
  store float %37, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !28
  store <2 x float> %7, ptr %.sroa.627.0..sroa_idx.i, align 4, !tbaa !28
  %38 = extractelement <2 x float> %i.kz, i64 0
  store float %38, ptr %.sroa.829.0..sroa_idx.i, align 4, !tbaa !28
  %i.mf = load i16, ptr %i.lc, align 4, !tbaa !35
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ki, i64 44
  %i.mh = load i16, ptr %i.mg, align 4, !tbaa !35
  %i.mi = tail call noundef i16 @llvm.umax.i16(i16 %i.mf, i16 %i.mh)
  %i.mj = add i16 %i.mi, 1                        ; 2 uses
  store i16 %i.mj, ptr %i.ld, align 4, !tbaa !35
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kk, i64 44
  %i.ml = load i16, ptr %i.mk, align 4, !tbaa !35
  %i.mm = tail call noundef i16 @llvm.umax.i16(i16 %i.mj, i16 %i.ml)
  %i.mn = add i16 %i.mm, 1
  store i16 %i.mn, ptr %i.le, align 4, !tbaa !35
  %i.mo = load i64, ptr %i.lf, align 8, !tbaa !34
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !34
  %i.mr = or i64 %i.mq, %i.mo                     ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  store i64 %i.mr, ptr %i.ms, align 8, !tbaa !34
  %i.mt = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !34
  %i.mv = or i64 %i.mu, %i.mr
  %i.mw = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i64 %i.mv, ptr %i.mw, align 8, !tbaa !34
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ki, i64 46
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !36
  %i.mz = or i16 %i.my, %.val328.i
  %i.na = and i16 %i.mz, 2
  %i.nb = or i16 %i.na, %.val.i133                ; 2 uses
  store i16 %i.nb, ptr %i.ka, align 2, !tbaa !36
  br label %.critedge.sink.split.i

bb.x:                                             ; preds = %bb.s
  %.not322.i = xor i1 %i.kc, true
  %brmerge323.i = or i1 %i.jz, %.not322.i
  br i1 %brmerge323.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ju, i64 32 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !20 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ju, i64 36 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !20 ; 2 uses
  %i.ng = sext i32 %i.nd to i64
  %i.nh = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.ng ; 11 uses
  %i.ni = sext i32 %i.nf to i64
  %i.nj = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.ni ; 11 uses
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 2 uses
  %.sroa.649.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 12 ; 3 uses
  %.sroa.750.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %.sroa.851.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 20 ; 2 uses
  %i.nk = load <2 x float>, ptr %i.ju, align 8
  %i.nl = load <2 x float>, ptr %.sroa.447.0..sroa_idx.i, align 4
  %i.nm = load <2 x float>, ptr %.sroa.649.0..sroa_idx.i, align 4
  %i.nn = load <2 x float>, ptr %.sroa.750.0..sroa_idx.i, align 8
  %i.no = fsub <2 x float> %i.nm, %i.nk           ; 2 uses
  %i.np = fsub <2 x float> %i.nn, %i.nl           ; 2 uses
  %shift194 = shufflevector <2 x float> %i.np, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop195 = fmul <2 x float> %i.no, %shift194
  %i.nq = fmul <2 x float> %i.no, %i.np           ; 2 uses
  %foldExtExtBinop197 = fadd <2 x float> %i.nq, %foldExtExtBinop195
  %shift199 = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop200 = fadd <2 x float> %shift199, %foldExtExtBinop197
  %i.nr = extractelement <2 x float> %foldExtExtBinop200, i64 0
  %i.ns = fmul float %i.nr, 2.000000e+00
  %.sroa.056.0.copyload.i = load <2 x float>, ptr %i.nj, align 8 ; 2 uses
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %.sroa.457.0.copyload.i = load float, ptr %.sroa.457.0..sroa_idx.i, align 8
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nj, i64 12
  %.sroa.558.0.copyload.i = load <2 x float>, ptr %.sroa.558.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nj, i64 20
  %.sroa.659.0.copyload.i = load float, ptr %.sroa.659.0..sroa_idx.i, align 4
  %.sroa.052.0.copyload.i = load <2 x float>, ptr %i.jw, align 8 ; 4 uses
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.sroa.453.0.copyload.i = load float, ptr %.sroa.453.0..sroa_idx.i, align 8
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  %.sroa.554.0.copyload.i = load <2 x float>, ptr %.sroa.554.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  %.sroa.655.0.copyload.i = load float, ptr %.sroa.655.0..sroa_idx.i, align 4
  %i.nt = fcmp olt <2 x float> %.sroa.052.0.copyload.i, %.sroa.056.0.copyload.i
  %i.nu = select <2 x i1> %i.nt, <2 x float> %.sroa.052.0.copyload.i, <2 x float> %.sroa.056.0.copyload.i ; 2 uses
  %i.nv = fcmp ogt <2 x float> %.sroa.554.0.copyload.i, %.sroa.558.0.copyload.i
  %i.nw = select <2 x i1> %i.nv, <2 x float> %.sroa.554.0.copyload.i, <2 x float> %.sroa.558.0.copyload.i ; 2 uses
  %39 = fsub <2 x float> %i.nw, %i.nu             ; 2 uses
  %.sroa.064.0.copyload.i = load <2 x float>, ptr %i.nh, align 8 ; 2 uses
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %.sroa.465.0.copyload.i = load float, ptr %.sroa.465.0..sroa_idx.i, align 8
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 12
  %.sroa.566.0.copyload.i = load <2 x float>, ptr %.sroa.566.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.667.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 20
  %.sroa.667.0.copyload.i = load float, ptr %.sroa.667.0..sroa_idx.i, align 4
  %40 = fcmp olt <2 x float> %.sroa.052.0.copyload.i, %.sroa.064.0.copyload.i
  %41 = select <2 x i1> %40, <2 x float> %.sroa.052.0.copyload.i, <2 x float> %.sroa.064.0.copyload.i ; 2 uses
  %42 = fcmp ogt <2 x float> %.sroa.554.0.copyload.i, %.sroa.566.0.copyload.i
  %43 = select <2 x i1> %42, <2 x float> %.sroa.554.0.copyload.i, <2 x float> %.sroa.566.0.copyload.i ; 2 uses
  %44 = fsub <2 x float> %43, %41                 ; 2 uses
  %45 = insertelement <2 x float> poison, float %.sroa.453.0.copyload.i, i64 0
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %47 = insertelement <2 x float> poison, float %.sroa.465.0.copyload.i, i64 0
  %48 = insertelement <2 x float> %47, float %.sroa.457.0.copyload.i, i64 1 ; 2 uses
  %49 = fcmp olt <2 x float> %46, %48
  %50 = select <2 x i1> %49, <2 x float> %46, <2 x float> %48 ; 3 uses
  %51 = insertelement <2 x float> poison, float %.sroa.655.0.copyload.i, i64 0
  %52 = shufflevector <2 x float> %51, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %53 = insertelement <2 x float> poison, float %.sroa.667.0.copyload.i, i64 0
  %54 = insertelement <2 x float> %53, float %.sroa.659.0.copyload.i, i64 1 ; 2 uses
  %i.nx = fcmp ogt <2 x float> %52, %54
  %i.ny = select <2 x i1> %i.nx, <2 x float> %52, <2 x float> %54 ; 3 uses
  %55 = fsub <2 x float> %i.ny, %50               ; 2 uses
  %56 = shufflevector <2 x float> %44, <2 x float> %39, <2 x i32> <i32 0, i32 2> ; 2 uses
  %57 = fmul <2 x float> %56, %55
  %58 = shufflevector <2 x float> %44, <2 x float> %39, <2 x i32> <i32 1, i32 3> ; 2 uses
  %59 = fmul <2 x float> %56, %58
  %60 = fadd <2 x float> %59, %57
  %61 = fmul <2 x float> %58, %55
  %62 = fadd <2 x float> %61, %60
  %63 = fmul <2 x float> %62, splat (float 2.000000e+00) ; 3 uses
  %64 = insertelement <2 x float> poison, float %i.ns, i64 0
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <2 x i32> zeroinitializer
  %66 = fcmp olt <2 x float> %65, %63             ; 2 uses
  %67 = extractelement <2 x i1> %66, i64 0
  %68 = extractelement <2 x i1> %66, i64 1
  %or.cond324.i = select i1 %68, i1 %67, i1 false
  br i1 %or.cond324.i, label %b3RotateNodes.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %69 = extractelement <2 x float> %63, i64 0
  %70 = extractelement <2 x float> %63, i64 1
  %i.nz = fcmp olt float %70, %69
  %i.oa = getelementptr inbounds nuw i8, ptr %i.jw, i64 40 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.jw, i64 44 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ju, i64 44 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.jm, i64 44 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.jw, i64 24 ; 2 uses
  br i1 %i.nz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.nd, ptr %i.jr, align 4, !tbaa !20
  store i32 %i.js, ptr %i.nc, align 8, !tbaa !20
  store i32 %i.jq, ptr %i.oa, align 8, !tbaa !20
  %i.of = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  store i32 %.0174, ptr %i.of, align 8, !tbaa !20
  store <2 x float> %i.nu, ptr %i.ju, align 8, !tbaa !28
  %71 = extractelement <2 x float> %50, i64 1
  store float %71, ptr %.sroa.548.0..sroa_idx.i, align 8, !tbaa !28
  store <2 x float> %i.nw, ptr %.sroa.649.0..sroa_idx.i, align 4, !tbaa !28
  %72 = extractelement <2 x float> %i.ny, i64 1
  store float %72, ptr %.sroa.851.0..sroa_idx.i, align 4, !tbaa !28
  %i.og = load i16, ptr %i.ob, align 4, !tbaa !35
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nj, i64 44
  %i.oi = load i16, ptr %i.oh, align 4, !tbaa !35
  %i.oj = tail call noundef i16 @llvm.umax.i16(i16 %i.og, i16 %i.oi)
  %i.ok = add i16 %i.oj, 1                        ; 2 uses
  store i16 %i.ok, ptr %i.oc, align 4, !tbaa !35
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nh, i64 44
  %i.om = load i16, ptr %i.ol, align 4, !tbaa !35
  %i.on = tail call noundef i16 @llvm.umax.i16(i16 %i.ok, i16 %i.om)
  %i.oo = add i16 %i.on, 1
  store i16 %i.oo, ptr %i.od, align 4, !tbaa !35
  %i.op = load i64, ptr %i.oe, align 8, !tbaa !34
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !34
  %i.os = or i64 %i.or, %i.op                     ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store i64 %i.os, ptr %i.ot, align 8, !tbaa !34
  %i.ou = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !34
  %i.ow = or i64 %i.ov, %i.os
  %i.ox = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i64 %i.ow, ptr %i.ox, align 8, !tbaa !34
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nj, i64 46
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !36
  %i.pa = or i16 %i.oz, %.val.i133
  %i.pb = and i16 %i.pa, 2
  %i.pc = or i16 %i.pb, %.val328.i                ; 2 uses
  store i16 %i.pc, ptr %i.jx, align 2, !tbaa !36
  br label %.critedge.sink.split.i

bb.ab:                                            ; preds = %bb.z
  store i32 %i.nf, ptr %i.jr, align 4, !tbaa !20
  store i32 %i.js, ptr %i.ne, align 4, !tbaa !20
  store i32 %i.jq, ptr %i.oa, align 8, !tbaa !20
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nj, i64 40
  store i32 %.0174, ptr %i.pd, align 8, !tbaa !20
  store <2 x float> %41, ptr %i.ju, align 8, !tbaa !28
  %73 = extractelement <2 x float> %50, i64 0
  store float %73, ptr %.sroa.548.0..sroa_idx.i, align 8, !tbaa !28
  store <2 x float> %43, ptr %.sroa.649.0..sroa_idx.i, align 4, !tbaa !28
  %74 = extractelement <2 x float> %i.ny, i64 0
  store float %74, ptr %.sroa.851.0..sroa_idx.i, align 4, !tbaa !28
  %i.pe = load i16, ptr %i.ob, align 4, !tbaa !35
  %i.pf = getelementptr inbounds nuw i8, ptr %i.nh, i64 44
  %i.pg = load i16, ptr %i.pf, align 4, !tbaa !35
  %i.ph = tail call noundef i16 @llvm.umax.i16(i16 %i.pe, i16 %i.pg)
  %i.pi = add i16 %i.ph, 1                        ; 2 uses
  store i16 %i.pi, ptr %i.oc, align 4, !tbaa !35
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nj, i64 44
  %i.pk = load i16, ptr %i.pj, align 4, !tbaa !35
  %i.pl = tail call noundef i16 @llvm.umax.i16(i16 %i.pi, i16 %i.pk)
  %i.pm = add i16 %i.pl, 1
  store i16 %i.pm, ptr %i.od, align 4, !tbaa !35
  %i.pn = load i64, ptr %i.oe, align 8, !tbaa !34
  %i.po = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !34
  %i.pq = or i64 %i.pp, %i.pn                     ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store i64 %i.pq, ptr %i.pr, align 8, !tbaa !34
  %i.ps = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !34
  %i.pu = or i64 %i.pt, %i.pq
  %i.pv = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i64 %i.pu, ptr %i.pv, align 8, !tbaa !34
  %i.pw = getelementptr inbounds nuw i8, ptr %i.nh, i64 46
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !36
  %i.py = or i16 %i.px, %.val.i133
  %i.pz = and i16 %i.py, 2
  %i.qa = or i16 %i.pz, %.val328.i                ; 2 uses
  store i16 %i.qa, ptr %i.jx, align 2, !tbaa !36
  br label %.critedge.sink.split.i

bb.ac:                                            ; preds = %bb.x
  %brmerge327.i = select i1 %i.jz, i1 true, i1 %i.kc
  br i1 %brmerge327.i, label %b3RotateNodes.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ju, i64 32 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !20 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ju, i64 36 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !20 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.jw, i64 32 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !20 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.jw, i64 36 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !20 ; 2 uses
  %i.qj = sext i32 %i.qc to i64
  %i.qk = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.qj ; 11 uses
  %i.ql = sext i32 %i.qe to i64
  %i.qm = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.ql ; 11 uses
  %i.qn = sext i32 %i.qg to i64
  %i.qo = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.qn ; 11 uses
  %i.qp = sext i32 %i.qi to i64
  %i.qq = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.qp ; 11 uses
  %.sroa.469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 3 uses
  %.sroa.671.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 12 ; 4 uses
  %.sroa.772.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %.sroa.873.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 20 ; 3 uses
  %i.qr = load <2 x float>, ptr %i.ju, align 8
  %i.qs = load <2 x float>, ptr %.sroa.469.0..sroa_idx.i, align 4
  %.sroa.570.0.copyload.i = load float, ptr %.sroa.570.0..sroa_idx.i, align 8 ; 4 uses
  %i.qt = load <2 x float>, ptr %.sroa.671.0..sroa_idx.i, align 4
  %i.qu = load <2 x float>, ptr %.sroa.772.0..sroa_idx.i, align 8
  %.sroa.873.0.copyload.i = load float, ptr %.sroa.873.0..sroa_idx.i, align 4 ; 4 uses
  %i.qv = fsub <2 x float> %i.qt, %i.qr           ; 2 uses
  %i.qw = fsub <2 x float> %i.qu, %i.qs           ; 2 uses
  %i.qx = fmul <2 x float> %i.qv, %i.qw           ; 2 uses
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 3 uses
  %.sroa.677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 12 ; 4 uses
  %.sroa.778.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %.sroa.879.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 20 ; 3 uses
  %i.qy = load <2 x float>, ptr %i.jw, align 8
  %i.qz = load <2 x float>, ptr %.sroa.475.0..sroa_idx.i, align 4
  %.sroa.576.0.copyload.i = load float, ptr %.sroa.576.0..sroa_idx.i, align 8 ; 4 uses
  %i.ra = load <2 x float>, ptr %.sroa.677.0..sroa_idx.i, align 4
  %i.rb = load <2 x float>, ptr %.sroa.778.0..sroa_idx.i, align 8
  %.sroa.879.0.copyload.i = load float, ptr %.sroa.879.0..sroa_idx.i, align 4 ; 4 uses
  %i.rc = fsub <2 x float> %i.ra, %i.qy           ; 2 uses
  %i.rd = fsub <2 x float> %i.rb, %i.qz           ; 2 uses
  %i.re = fmul <2 x float> %i.rc, %i.rd           ; 2 uses
  %.sroa.084.0.copyload.i = load <2 x float>, ptr %i.qq, align 8 ; 2 uses
  %.sroa.485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %.sroa.485.0.copyload.i = load float, ptr %.sroa.485.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.586.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 12
  %.sroa.586.0.copyload.i = load <2 x float>, ptr %.sroa.586.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.687.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qq, i64 20
  %.sroa.687.0.copyload.i = load float, ptr %.sroa.687.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.080.0.copyload.i = load <2 x float>, ptr %i.ju, align 8 ; 4 uses
  %.sroa.582.0.copyload.i = load <2 x float>, ptr %.sroa.671.0..sroa_idx.i, align 4 ; 4 uses
  %i.rf = fcmp olt <2 x float> %.sroa.080.0.copyload.i, %.sroa.084.0.copyload.i
  %i.rg = select <2 x i1> %i.rf, <2 x float> %.sroa.080.0.copyload.i, <2 x float> %.sroa.084.0.copyload.i ; 2 uses
  %i.rh = fcmp olt float %.sroa.570.0.copyload.i, %.sroa.485.0.copyload.i
  %i.ri = select i1 %i.rh, float %.sroa.570.0.copyload.i, float %.sroa.485.0.copyload.i ; 2 uses
  %i.rj = fcmp ogt <2 x float> %.sroa.582.0.copyload.i, %.sroa.586.0.copyload.i
  %i.rk = select <2 x i1> %i.rj, <2 x float> %.sroa.582.0.copyload.i, <2 x float> %.sroa.586.0.copyload.i ; 2 uses
  %i.rl = fcmp ogt float %.sroa.873.0.copyload.i, %.sroa.687.0.copyload.i
  %i.rm = select i1 %i.rl, float %.sroa.873.0.copyload.i, float %.sroa.687.0.copyload.i ; 2 uses
  %i.rn = fsub float %i.rm, %i.ri
  %i.ro = fsub <2 x float> %i.rk, %i.rg           ; 3 uses
  %shift202 = shufflevector <2 x float> %i.ro, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop203 = fmul <2 x float> %i.ro, %shift202
  %i.rp = insertelement <2 x float> poison, float %i.rn, i64 0
  %i.rq = shufflevector <2 x float> %i.rp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rr = fmul <2 x float> %i.rq, %i.ro           ; 2 uses
  %foldExtExtBinop205 = fadd <2 x float> %foldExtExtBinop203, %i.rr
  %shift207 = shufflevector <2 x float> %i.rr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop208 = fadd <2 x float> %shift207, %foldExtExtBinop205
  %i.rs = extractelement <2 x float> %foldExtExtBinop208, i64 0
  %i.rt = fmul float %i.rs, 2.000000e+00
  %.sroa.092.0.copyload.i = load <2 x float>, ptr %i.qo, align 8 ; 2 uses
  %.sroa.493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %.sroa.493.0.copyload.i = load float, ptr %.sroa.493.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.594.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  %.sroa.594.0.copyload.i = load <2 x float>, ptr %.sroa.594.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.695.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qo, i64 20
  %.sroa.695.0.copyload.i = load float, ptr %.sroa.695.0..sroa_idx.i, align 4 ; 2 uses
  %i.ru = fcmp olt <2 x float> %.sroa.080.0.copyload.i, %.sroa.092.0.copyload.i
  %i.rv = select <2 x i1> %i.ru, <2 x float> %.sroa.080.0.copyload.i, <2 x float> %.sroa.092.0.copyload.i ; 2 uses
  %i.rw = fcmp olt float %.sroa.570.0.copyload.i, %.sroa.493.0.copyload.i
  %i.rx = select i1 %i.rw, float %.sroa.570.0.copyload.i, float %.sroa.493.0.copyload.i ; 2 uses
  %i.ry = fcmp ogt <2 x float> %.sroa.582.0.copyload.i, %.sroa.594.0.copyload.i
  %i.rz = select <2 x i1> %i.ry, <2 x float> %.sroa.582.0.copyload.i, <2 x float> %.sroa.594.0.copyload.i ; 2 uses
  %i.sa = fcmp ogt float %.sroa.873.0.copyload.i, %.sroa.695.0.copyload.i
  %i.sb = select i1 %i.sa, float %.sroa.873.0.copyload.i, float %.sroa.695.0.copyload.i ; 2 uses
  %i.sc = fsub <2 x float> %i.rz, %i.rv           ; 4 uses
  %i.sd = fsub float %i.sb, %i.rx                 ; 2 uses
  %i.se = extractelement <2 x float> %i.sc, i64 0
  %i.sf = fmul float %i.se, %i.sd
  %i.sg = extractelement <2 x float> %i.sc, i64 1
  %i.sh = fmul float %i.sg, %i.sd
  %i.si = shufflevector <2 x float> %i.qv, <2 x float> %i.sc, <2 x i32> <i32 0, i32 2>
  %i.sj = shufflevector <2 x float> %i.qw, <2 x float> %i.sc, <2 x i32> <i32 1, i32 3>
  %i.sk = fmul <2 x float> %i.si, %i.sj
  %i.sl = insertelement <2 x float> %i.qx, float %i.sf, i64 1
  %i.sm = fadd <2 x float> %i.sl, %i.sk
  %i.sn = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.so = insertelement <2 x float> %i.sn, float %i.sh, i64 1
  %i.sp = fadd <2 x float> %i.so, %i.sm
  %i.sq = fmul <2 x float> %i.sp, splat (float 2.000000e+00) ; 3 uses
  %i.sr = extractelement <2 x float> %i.sq, i64 0
  %i.ss = fadd float %i.sr, %i.rt                 ; 2 uses
  %i.st = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.sq) ; 2 uses
  %.sroa.0100.0.copyload.i = load <2 x float>, ptr %i.qm, align 8 ; 2 uses
  %.sroa.4101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %.sroa.4101.0.copyload.i = load float, ptr %.sroa.4101.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  %.sroa.5102.0.copyload.i = load <2 x float>, ptr %.sroa.5102.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qm, i64 20
  %.sroa.6103.0.copyload.i = load float, ptr %.sroa.6103.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.096.0.copyload.i = load <2 x float>, ptr %i.jw, align 8 ; 4 uses
  %.sroa.598.0.copyload.i = load <2 x float>, ptr %.sroa.677.0..sroa_idx.i, align 4 ; 4 uses
  %i.su = fcmp olt <2 x float> %.sroa.096.0.copyload.i, %.sroa.0100.0.copyload.i
  %i.sv = select <2 x i1> %i.su, <2 x float> %.sroa.096.0.copyload.i, <2 x float> %.sroa.0100.0.copyload.i ; 2 uses
  %i.sw = fcmp olt float %.sroa.576.0.copyload.i, %.sroa.4101.0.copyload.i
  %i.sx = select i1 %i.sw, float %.sroa.576.0.copyload.i, float %.sroa.4101.0.copyload.i ; 2 uses
  %i.sy = fcmp ogt <2 x float> %.sroa.598.0.copyload.i, %.sroa.5102.0.copyload.i
  %i.sz = select <2 x i1> %i.sy, <2 x float> %.sroa.598.0.copyload.i, <2 x float> %.sroa.5102.0.copyload.i ; 2 uses
  %i.ta = fcmp ogt float %.sroa.879.0.copyload.i, %.sroa.6103.0.copyload.i
  %i.tb = select i1 %i.ta, float %.sroa.879.0.copyload.i, float %.sroa.6103.0.copyload.i ; 2 uses
  %i.tc = fsub float %i.tb, %i.sx
  %i.td = fsub <2 x float> %i.sz, %i.sv           ; 3 uses
  %i.te = insertelement <2 x float> poison, float %i.tc, i64 0
  %i.tf = shufflevector <2 x float> %i.te, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tg = fmul <2 x float> %i.tf, %i.td           ; 2 uses
  %i.th = shufflevector <2 x float> %i.rc, <2 x float> %i.td, <2 x i32> <i32 0, i32 2>
  %i.ti = shufflevector <2 x float> %i.rd, <2 x float> %i.td, <2 x i32> <i32 1, i32 3>
  %i.tj = fmul <2 x float> %i.th, %i.ti
  %i.tk = shufflevector <2 x float> %i.re, <2 x float> %i.tg, <2 x i32> <i32 0, i32 2>
  %i.tl = fadd <2 x float> %i.tk, %i.tj
  %i.tm = shufflevector <2 x float> %i.re, <2 x float> %i.tg, <2 x i32> <i32 1, i32 3>
  %i.tn = fadd <2 x float> %i.tm, %i.tl
  %i.to = fmul <2 x float> %i.tn, splat (float 2.000000e+00) ; 3 uses
  %i.tp = extractelement <2 x float> %i.to, i64 0
  %foldExtExtBinop210 = fadd <2 x float> %i.sq, %i.to
  %i.tq = extractelement <2 x float> %foldExtExtBinop210, i64 0 ; 2 uses
  %i.tr = fcmp olt float %i.ss, %i.tq             ; 2 uses
  %.0311.i = zext i1 %i.tr to i32
  %.0.i = select i1 %i.tr, float %i.ss, float %i.tq ; 2 uses
  %i.ts = fcmp olt float %i.st, %.0.i             ; 2 uses
  %.1312.i = select i1 %i.ts, i32 2, i32 %.0311.i
  %.1.i140 = select i1 %i.ts, float %i.st, float %.0.i ; 2 uses
  %i.tt = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.to) ; 2 uses
  %i.tu = fcmp olt float %i.tt, %.1.i140          ; 2 uses
  %.2313.i = select i1 %i.tu, i32 3, i32 %.1312.i
  %.2.i = select i1 %i.tu, float %i.tt, float %.1.i140
  %.sroa.0108.0.copyload.i = load <2 x float>, ptr %i.qk, align 8 ; 2 uses
  %.sroa.4109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %.sroa.4109.0.copyload.i = load float, ptr %.sroa.4109.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.5110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 12
  %.sroa.5110.0.copyload.i = load <2 x float>, ptr %.sroa.5110.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.6111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 20
  %.sroa.6111.0.copyload.i = load float, ptr %.sroa.6111.0..sroa_idx.i, align 4 ; 2 uses
  %i.tv = fcmp olt <2 x float> %.sroa.096.0.copyload.i, %.sroa.0108.0.copyload.i
  %i.tw = select <2 x i1> %i.tv, <2 x float> %.sroa.096.0.copyload.i, <2 x float> %.sroa.0108.0.copyload.i ; 2 uses
  %i.tx = fcmp olt float %.sroa.576.0.copyload.i, %.sroa.4109.0.copyload.i
  %i.ty = select i1 %i.tx, float %.sroa.576.0.copyload.i, float %.sroa.4109.0.copyload.i ; 2 uses
  %i.tz = fcmp ogt <2 x float> %.sroa.598.0.copyload.i, %.sroa.5110.0.copyload.i
  %i.ua = select <2 x i1> %i.tz, <2 x float> %.sroa.598.0.copyload.i, <2 x float> %.sroa.5110.0.copyload.i ; 2 uses
  %i.ub = fcmp ogt float %.sroa.879.0.copyload.i, %.sroa.6111.0.copyload.i
  %i.uc = select i1 %i.ub, float %.sroa.879.0.copyload.i, float %.sroa.6111.0.copyload.i ; 2 uses
  %i.ud = fsub <2 x float> %i.ua, %i.tw           ; 2 uses
end_hunk_0
