Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/dynamic_tree?download=true
inline.NumInlined: 175
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3InsertLeaf:bb.a
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
  %i.ky = fsub <2 x float> %i.kx, %i.kv           ; 2 uses
  %.sroa.042.0.copyload.i = load <2 x float>, ptr %i.ki, align 8 ; 2 uses
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.443.0.copyload.i = load float, ptr %.sroa.443.0..sroa_idx.i, align 8
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  %.sroa.544.0.copyload.i = load <2 x float>, ptr %.sroa.544.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 20
  %.sroa.645.0.copyload.i = load float, ptr %.sroa.645.0..sroa_idx.i, align 4
  %i.kz = fcmp olt <2 x float> %.sroa.030.0.copyload.i, %.sroa.042.0.copyload.i
  %i.la = select <2 x i1> %i.kz, <2 x float> %.sroa.030.0.copyload.i, <2 x float> %.sroa.042.0.copyload.i ; 2 uses
  %i.lb = fcmp ogt <2 x float> %.sroa.532.0.copyload.i, %.sroa.544.0.copyload.i
  %i.lc = select <2 x i1> %i.lb, <2 x float> %.sroa.532.0.copyload.i, <2 x float> %.sroa.544.0.copyload.i ; 2 uses
  %i.ld = fsub <2 x float> %i.lc, %i.la           ; 2 uses
  %i.le = insertelement <2 x float> poison, float %.sroa.431.0.copyload.i, i64 0
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lg = insertelement <2 x float> poison, float %.sroa.443.0.copyload.i, i64 0
  %i.lh = insertelement <2 x float> %i.lg, float %.sroa.435.0.copyload.i, i64 1 ; 2 uses
  %i.li = fcmp olt <2 x float> %i.lf, %i.lh
  %i.lj = select <2 x i1> %i.li, <2 x float> %i.lf, <2 x float> %i.lh ; 3 uses
  %i.lk = insertelement <2 x float> poison, float %.sroa.633.0.copyload.i, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lm = insertelement <2 x float> poison, float %.sroa.645.0.copyload.i, i64 0
  %i.ln = insertelement <2 x float> %i.lm, float %.sroa.637.0.copyload.i, i64 1 ; 2 uses
  %i.lo = fcmp ogt <2 x float> %i.ll, %i.ln
  %i.lp = select <2 x i1> %i.lo, <2 x float> %i.ll, <2 x float> %i.ln ; 3 uses
  %i.lq = fsub <2 x float> %i.lp, %i.lj           ; 2 uses
  %i.lr = shufflevector <2 x float> %i.ld, <2 x float> %i.ky, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ls = fmul <2 x float> %i.lr, %i.lq
  %i.lt = shufflevector <2 x float> %i.ld, <2 x float> %i.ky, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.lu = fmul <2 x float> %i.lr, %i.lt
  %i.lv = fadd <2 x float> %i.lu, %i.ls
  %i.lw = fmul <2 x float> %i.lt, %i.lq
  %i.lx = fadd <2 x float> %i.lw, %i.lv
  %i.ly = fmul <2 x float> %i.lx, splat (float 2.000000e+00) ; 3 uses
  %i.lz = insertelement <2 x float> poison, float %i.kt, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = fcmp olt <2 x float> %i.ma, %i.ly
  %3 = freeze <2 x i1> %i.mb
  %4 = bitcast <2 x i1> %3 to i2
  %or.cond.i = icmp eq i2 %4, -1
  br i1 %or.cond.i, label %b3RotateNodes.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.mc = extractelement <2 x float> %i.ly, i64 0
  %i.md = extractelement <2 x float> %i.ly, i64 1
  %i.me = fcmp olt float %i.md, %i.mc
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ju, i64 40 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ju, i64 44 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.jw, i64 44 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.jm, i64 44 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ju, i64 24 ; 2 uses
  br i1 %i.me, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.ke, ptr %i.jp, align 8, !tbaa !20
  store i32 %i.jq, ptr %i.kd, align 8, !tbaa !20
  store i32 %i.js, ptr %i.mf, align 8, !tbaa !20
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  store i32 %.0174, ptr %i.mk, align 8, !tbaa !20
  store <2 x float> %i.kv, ptr %i.jw, align 8, !tbaa !28
  %i.ml = extractelement <2 x float> %i.lj, i64 1
  store float %i.ml, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !28
  store <2 x float> %i.kx, ptr %.sroa.627.0..sroa_idx.i, align 4, !tbaa !28
  %i.mm = extractelement <2 x float> %i.lp, i64 1
  store float %i.mm, ptr %.sroa.829.0..sroa_idx.i, align 4, !tbaa !28
  %i.mn = load i16, ptr %i.mg, align 4, !tbaa !35
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kk, i64 44
  %i.mp = load i16, ptr %i.mo, align 4, !tbaa !35
  %i.mq = tail call noundef i16 @llvm.umax.i16(i16 %i.mn, i16 %i.mp)
  %i.mr = add i16 %i.mq, 1                        ; 2 uses
  store i16 %i.mr, ptr %i.mh, align 4, !tbaa !35
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ki, i64 44
  %i.mt = load i16, ptr %i.ms, align 4, !tbaa !35
  %i.mu = tail call noundef i16 @llvm.umax.i16(i16 %i.mr, i16 %i.mt)
  %i.mv = add i16 %i.mu, 1
  store i16 %i.mv, ptr %i.mi, align 4, !tbaa !35
  %i.mw = load i64, ptr %i.mj, align 8, !tbaa !34
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !34
  %i.mz = or i64 %i.my, %i.mw                     ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !34
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !34
  %i.nd = or i64 %i.nc, %i.mz
  %i.ne = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i64 %i.nd, ptr %i.ne, align 8, !tbaa !34
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kk, i64 46
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !36
  %i.nh = or i16 %i.ng, %.val328.i
  %i.ni = and i16 %i.nh, 2
  %i.nj = or i16 %i.ni, %.val.i133                ; 2 uses
  store i16 %i.nj, ptr %i.ka, align 2, !tbaa !36
  br label %.critedge.sink.split.i

bb.w:                                             ; preds = %bb.u
  store i32 %i.kg, ptr %i.jp, align 8, !tbaa !20
  store i32 %i.jq, ptr %i.kf, align 4, !tbaa !20
  store i32 %i.js, ptr %i.mf, align 8, !tbaa !20
  %i.nk = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  store i32 %.0174, ptr %i.nk, align 8, !tbaa !20
  store <2 x float> %i.la, ptr %i.jw, align 8, !tbaa !28
  %i.nl = extractelement <2 x float> %i.lj, i64 0
  store float %i.nl, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !28
  store <2 x float> %i.lc, ptr %.sroa.627.0..sroa_idx.i, align 4, !tbaa !28
  %i.nm = extractelement <2 x float> %i.lp, i64 0
  store float %i.nm, ptr %.sroa.829.0..sroa_idx.i, align 4, !tbaa !28
  %i.nn = load i16, ptr %i.mg, align 4, !tbaa !35
  %i.no = getelementptr inbounds nuw i8, ptr %i.ki, i64 44
  %i.np = load i16, ptr %i.no, align 4, !tbaa !35
  %i.nq = tail call noundef i16 @llvm.umax.i16(i16 %i.nn, i16 %i.np)
  %i.nr = add i16 %i.nq, 1                        ; 2 uses
  store i16 %i.nr, ptr %i.mh, align 4, !tbaa !35
  %i.ns = getelementptr inbounds nuw i8, ptr %i.kk, i64 44
  %i.nt = load i16, ptr %i.ns, align 4, !tbaa !35
  %i.nu = tail call noundef i16 @llvm.umax.i16(i16 %i.nr, i16 %i.nt)
  %i.nv = add i16 %i.nu, 1
  store i16 %i.nv, ptr %i.mi, align 4, !tbaa !35
  %i.nw = load i64, ptr %i.mj, align 8, !tbaa !34
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !34
  %i.nz = or i64 %i.ny, %i.nw                     ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  store i64 %i.nz, ptr %i.oa, align 8, !tbaa !34
  %i.ob = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !34
  %i.od = or i64 %i.oc, %i.nz
  %i.oe = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i64 %i.od, ptr %i.oe, align 8, !tbaa !34
  %i.of = getelementptr inbounds nuw i8, ptr %i.ki, i64 46
  %i.og = load i16, ptr %i.of, align 2, !tbaa !36
  %i.oh = or i16 %i.og, %.val328.i
  %i.oi = and i16 %i.oh, 2
  %i.oj = or i16 %i.oi, %.val.i133                ; 2 uses
  store i16 %i.oj, ptr %i.ka, align 2, !tbaa !36
  br label %.critedge.sink.split.i

bb.x:                                             ; preds = %bb.s
  %.not322.i = xor i1 %i.kc, true
  %brmerge323.i = or i1 %i.jz, %.not322.i
  br i1 %brmerge323.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ju, i64 32 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !20 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ju, i64 36 ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !20 ; 2 uses
  %i.oo = sext i32 %i.ol to i64
  %i.op = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.oo ; 11 uses
  %i.oq = sext i32 %i.on to i64
  %i.or = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.oq ; 11 uses
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 2 uses
  %.sroa.649.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 12 ; 3 uses
  %.sroa.750.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %.sroa.851.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 20 ; 2 uses
  %i.os = load <2 x float>, ptr %i.ju, align 8
  %i.ot = load <2 x float>, ptr %.sroa.447.0..sroa_idx.i, align 4
  %i.ou = load <2 x float>, ptr %.sroa.649.0..sroa_idx.i, align 4
  %i.ov = load <2 x float>, ptr %.sroa.750.0..sroa_idx.i, align 8
  %i.ow = fsub <2 x float> %i.ou, %i.os           ; 2 uses
  %i.ox = fsub <2 x float> %i.ov, %i.ot           ; 2 uses
  %shift194 = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop195 = fmul <2 x float> %i.ow, %shift194
  %i.oy = fmul <2 x float> %i.ow, %i.ox           ; 2 uses
  %foldExtExtBinop197 = fadd <2 x float> %i.oy, %foldExtExtBinop195
  %shift199 = shufflevector <2 x float> %i.oy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop200 = fadd <2 x float> %shift199, %foldExtExtBinop197
  %i.oz = extractelement <2 x float> %foldExtExtBinop200, i64 0
  %i.pa = fmul float %i.oz, 2.000000e+00
  %.sroa.056.0.copyload.i = load <2 x float>, ptr %i.or, align 8 ; 2 uses
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %.sroa.457.0.copyload.i = load float, ptr %.sroa.457.0..sroa_idx.i, align 8
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.or, i64 12
  %.sroa.558.0.copyload.i = load <2 x float>, ptr %.sroa.558.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.or, i64 20
  %.sroa.659.0.copyload.i = load float, ptr %.sroa.659.0..sroa_idx.i, align 4
  %.sroa.052.0.copyload.i = load <2 x float>, ptr %i.jw, align 8 ; 4 uses
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %.sroa.453.0.copyload.i = load float, ptr %.sroa.453.0..sroa_idx.i, align 8
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  %.sroa.554.0.copyload.i = load <2 x float>, ptr %.sroa.554.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  %.sroa.655.0.copyload.i = load float, ptr %.sroa.655.0..sroa_idx.i, align 4
  %i.pb = fcmp olt <2 x float> %.sroa.052.0.copyload.i, %.sroa.056.0.copyload.i
  %i.pc = select <2 x i1> %i.pb, <2 x float> %.sroa.052.0.copyload.i, <2 x float> %.sroa.056.0.copyload.i ; 2 uses
  %i.pd = fcmp ogt <2 x float> %.sroa.554.0.copyload.i, %.sroa.558.0.copyload.i
  %i.pe = select <2 x i1> %i.pd, <2 x float> %.sroa.554.0.copyload.i, <2 x float> %.sroa.558.0.copyload.i ; 2 uses
  %i.pf = fsub <2 x float> %i.pe, %i.pc           ; 2 uses
  %.sroa.064.0.copyload.i = load <2 x float>, ptr %i.op, align 8 ; 2 uses
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %.sroa.465.0.copyload.i = load float, ptr %.sroa.465.0..sroa_idx.i, align 8
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.op, i64 12
  %.sroa.566.0.copyload.i = load <2 x float>, ptr %.sroa.566.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.667.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.op, i64 20
  %.sroa.667.0.copyload.i = load float, ptr %.sroa.667.0..sroa_idx.i, align 4
  %i.pg = fcmp olt <2 x float> %.sroa.052.0.copyload.i, %.sroa.064.0.copyload.i
  %i.ph = select <2 x i1> %i.pg, <2 x float> %.sroa.052.0.copyload.i, <2 x float> %.sroa.064.0.copyload.i ; 2 uses
  %i.pi = fcmp ogt <2 x float> %.sroa.554.0.copyload.i, %.sroa.566.0.copyload.i
  %i.pj = select <2 x i1> %i.pi, <2 x float> %.sroa.554.0.copyload.i, <2 x float> %.sroa.566.0.copyload.i ; 2 uses
  %i.pk = fsub <2 x float> %i.pj, %i.ph           ; 2 uses
  %i.pl = insertelement <2 x float> poison, float %.sroa.453.0.copyload.i, i64 0
  %i.pm = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pn = insertelement <2 x float> poison, float %.sroa.465.0.copyload.i, i64 0
  %i.po = insertelement <2 x float> %i.pn, float %.sroa.457.0.copyload.i, i64 1 ; 2 uses
  %i.pp = fcmp olt <2 x float> %i.pm, %i.po
  %i.pq = select <2 x i1> %i.pp, <2 x float> %i.pm, <2 x float> %i.po ; 3 uses
  %i.pr = insertelement <2 x float> poison, float %.sroa.655.0.copyload.i, i64 0
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pt = insertelement <2 x float> poison, float %.sroa.667.0.copyload.i, i64 0
  %i.pu = insertelement <2 x float> %i.pt, float %.sroa.659.0.copyload.i, i64 1 ; 2 uses
  %i.pv = fcmp ogt <2 x float> %i.ps, %i.pu
  %i.pw = select <2 x i1> %i.pv, <2 x float> %i.ps, <2 x float> %i.pu ; 3 uses
  %i.px = fsub <2 x float> %i.pw, %i.pq           ; 2 uses
  %i.py = shufflevector <2 x float> %i.pk, <2 x float> %i.pf, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.pz = fmul <2 x float> %i.py, %i.px
  %i.qa = shufflevector <2 x float> %i.pk, <2 x float> %i.pf, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qb = fmul <2 x float> %i.py, %i.qa
  %i.qc = fadd <2 x float> %i.qb, %i.pz
  %i.qd = fmul <2 x float> %i.qa, %i.px
  %i.qe = fadd <2 x float> %i.qd, %i.qc
  %i.qf = fmul <2 x float> %i.qe, splat (float 2.000000e+00) ; 3 uses
  %i.qg = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.qh = shufflevector <2 x float> %i.qg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qi = fcmp olt <2 x float> %i.qh, %i.qf
  %5 = freeze <2 x i1> %i.qi
  %6 = bitcast <2 x i1> %5 to i2
  %or.cond324.i = icmp eq i2 %6, -1
  br i1 %or.cond324.i, label %b3RotateNodes.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.qj = extractelement <2 x float> %i.qf, i64 0
  %i.qk = extractelement <2 x float> %i.qf, i64 1
  %i.ql = fcmp olt float %i.qk, %i.qj
  %i.qm = getelementptr inbounds nuw i8, ptr %i.jw, i64 40 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.jw, i64 44 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ju, i64 44 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.jm, i64 44 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.jw, i64 24 ; 2 uses
  br i1 %i.ql, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.ol, ptr %i.jr, align 4, !tbaa !20
  store i32 %i.js, ptr %i.ok, align 8, !tbaa !20
  store i32 %i.jq, ptr %i.qm, align 8, !tbaa !20
  %i.qr = getelementptr inbounds nuw i8, ptr %i.op, i64 40
  store i32 %.0174, ptr %i.qr, align 8, !tbaa !20
  store <2 x float> %i.pc, ptr %i.ju, align 8, !tbaa !28
  %i.qs = extractelement <2 x float> %i.pq, i64 1
  store float %i.qs, ptr %.sroa.548.0..sroa_idx.i, align 8, !tbaa !28
  store <2 x float> %i.pe, ptr %.sroa.649.0..sroa_idx.i, align 4, !tbaa !28
  %i.qt = extractelement <2 x float> %i.pw, i64 1
  store float %i.qt, ptr %.sroa.851.0..sroa_idx.i, align 4, !tbaa !28
  %i.qu = load i16, ptr %i.qn, align 4, !tbaa !35
  %i.qv = getelementptr inbounds nuw i8, ptr %i.or, i64 44
  %i.qw = load i16, ptr %i.qv, align 4, !tbaa !35
  %i.qx = tail call noundef i16 @llvm.umax.i16(i16 %i.qu, i16 %i.qw)
  %i.qy = add i16 %i.qx, 1                        ; 2 uses
  store i16 %i.qy, ptr %i.qo, align 4, !tbaa !35
  %i.qz = getelementptr inbounds nuw i8, ptr %i.op, i64 44
  %i.ra = load i16, ptr %i.qz, align 4, !tbaa !35
  %i.rb = tail call noundef i16 @llvm.umax.i16(i16 %i.qy, i16 %i.ra)
  %i.rc = add i16 %i.rb, 1
  store i16 %i.rc, ptr %i.qp, align 4, !tbaa !35
  %i.rd = load i64, ptr %i.qq, align 8, !tbaa !34
  %i.re = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !34
  %i.rg = or i64 %i.rf, %i.rd                     ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store i64 %i.rg, ptr %i.rh, align 8, !tbaa !34
  %i.ri = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !34
  %i.rk = or i64 %i.rj, %i.rg
  %i.rl = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i64 %i.rk, ptr %i.rl, align 8, !tbaa !34
  %i.rm = getelementptr inbounds nuw i8, ptr %i.or, i64 46
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !36
  %i.ro = or i16 %i.rn, %.val.i133
  %i.rp = and i16 %i.ro, 2
  %i.rq = or i16 %i.rp, %.val328.i                ; 2 uses
  store i16 %i.rq, ptr %i.jx, align 2, !tbaa !36
  br label %.critedge.sink.split.i

bb.ab:                                            ; preds = %bb.z
  store i32 %i.on, ptr %i.jr, align 4, !tbaa !20
  store i32 %i.js, ptr %i.om, align 4, !tbaa !20
  store i32 %i.jq, ptr %i.qm, align 8, !tbaa !20
  %i.rr = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  store i32 %.0174, ptr %i.rr, align 8, !tbaa !20
  store <2 x float> %i.ph, ptr %i.ju, align 8, !tbaa !28
  %i.rs = extractelement <2 x float> %i.pq, i64 0
  store float %i.rs, ptr %.sroa.548.0..sroa_idx.i, align 8, !tbaa !28
  store <2 x float> %i.pj, ptr %.sroa.649.0..sroa_idx.i, align 4, !tbaa !28
  %i.rt = extractelement <2 x float> %i.pw, i64 0
  store float %i.rt, ptr %.sroa.851.0..sroa_idx.i, align 4, !tbaa !28
  %i.ru = load i16, ptr %i.qn, align 4, !tbaa !35
  %i.rv = getelementptr inbounds nuw i8, ptr %i.op, i64 44
  %i.rw = load i16, ptr %i.rv, align 4, !tbaa !35
  %i.rx = tail call noundef i16 @llvm.umax.i16(i16 %i.ru, i16 %i.rw)
  %i.ry = add i16 %i.rx, 1                        ; 2 uses
  store i16 %i.ry, ptr %i.qo, align 4, !tbaa !35
  %i.rz = getelementptr inbounds nuw i8, ptr %i.or, i64 44
  %i.sa = load i16, ptr %i.rz, align 4, !tbaa !35
  %i.sb = tail call noundef i16 @llvm.umax.i16(i16 %i.ry, i16 %i.sa)
  %i.sc = add i16 %i.sb, 1
  store i16 %i.sc, ptr %i.qp, align 4, !tbaa !35
  %i.sd = load i64, ptr %i.qq, align 8, !tbaa !34
  %i.se = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !34
  %i.sg = or i64 %i.sf, %i.sd                     ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store i64 %i.sg, ptr %i.sh, align 8, !tbaa !34
  %i.si = getelementptr inbounds nuw i8, ptr %i.or, i64 24
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !34
  %i.sk = or i64 %i.sj, %i.sg
  %i.sl = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store i64 %i.sk, ptr %i.sl, align 8, !tbaa !34
  %i.sm = getelementptr inbounds nuw i8, ptr %i.op, i64 46
  %i.sn = load i16, ptr %i.sm, align 2, !tbaa !36
  %i.so = or i16 %i.sn, %.val.i133
  %i.sp = and i16 %i.so, 2
  %i.sq = or i16 %i.sp, %.val328.i                ; 2 uses
  store i16 %i.sq, ptr %i.jx, align 2, !tbaa !36
  br label %.critedge.sink.split.i

bb.ac:                                            ; preds = %bb.x
  %brmerge327.i = select i1 %i.jz, i1 true, i1 %i.kc
  br i1 %brmerge327.i, label %b3RotateNodes.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ju, i64 32 ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !20 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ju, i64 36 ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !20 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.jw, i64 32 ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !20 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.jw, i64 36 ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !20 ; 2 uses
  %i.sz = sext i32 %i.ss to i64
  %i.ta = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.sz ; 11 uses
  %i.tb = sext i32 %i.su to i64
  %i.tc = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.tb ; 11 uses
  %i.td = sext i32 %i.sw to i64
  %i.te = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.td ; 11 uses
  %i.tf = sext i32 %i.sy to i64
  %i.tg = getelementptr inbounds [48 x i8], ptr %.val105, i64 %i.tf ; 11 uses
  %.sroa.469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %.sroa.570.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 3 uses
  %.sroa.671.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 12 ; 4 uses
  %.sroa.772.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %.sroa.873.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 20 ; 3 uses
  %i.th = load <2 x float>, ptr %i.ju, align 8
  %i.ti = load <2 x float>, ptr %.sroa.469.0..sroa_idx.i, align 4
  %.sroa.570.0.copyload.i = load float, ptr %.sroa.570.0..sroa_idx.i, align 8 ; 4 uses
  %i.tj = load <2 x float>, ptr %.sroa.671.0..sroa_idx.i, align 4
  %i.tk = load <2 x float>, ptr %.sroa.772.0..sroa_idx.i, align 8
  %.sroa.873.0.copyload.i = load float, ptr %.sroa.873.0..sroa_idx.i, align 4 ; 4 uses
  %i.tl = fsub <2 x float> %i.tj, %i.th           ; 2 uses
  %i.tm = fsub <2 x float> %i.tk, %i.ti           ; 2 uses
  %i.tn = fmul <2 x float> %i.tl, %i.tm           ; 2 uses
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 3 uses
  %.sroa.677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 12 ; 4 uses
  %.sroa.778.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %.sroa.879.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jw, i64 20 ; 3 uses
  %i.to = load <2 x float>, ptr %i.jw, align 8
  %i.tp = load <2 x float>, ptr %.sroa.475.0..sroa_idx.i, align 4
  %.sroa.576.0.copyload.i = load float, ptr %.sroa.576.0..sroa_idx.i, align 8 ; 4 uses
  %i.tq = load <2 x float>, ptr %.sroa.677.0..sroa_idx.i, align 4
  %i.tr = load <2 x float>, ptr %.sroa.778.0..sroa_idx.i, align 8
  %.sroa.879.0.copyload.i = load float, ptr %.sroa.879.0..sroa_idx.i, align 4 ; 4 uses
  %i.ts = fsub <2 x float> %i.tq, %i.to           ; 2 uses
  %i.tt = fsub <2 x float> %i.tr, %i.tp           ; 2 uses
  %i.tu = fmul <2 x float> %i.ts, %i.tt           ; 2 uses
  %.sroa.084.0.copyload.i = load <2 x float>, ptr %i.tg, align 8 ; 2 uses
  %.sroa.485.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %.sroa.485.0.copyload.i = load float, ptr %.sroa.485.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.586.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tg, i64 12
  %.sroa.586.0.copyload.i = load <2 x float>, ptr %.sroa.586.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.687.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tg, i64 20
  %.sroa.687.0.copyload.i = load float, ptr %.sroa.687.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.080.0.copyload.i = load <2 x float>, ptr %i.ju, align 8 ; 4 uses
  %.sroa.582.0.copyload.i = load <2 x float>, ptr %.sroa.671.0..sroa_idx.i, align 4 ; 4 uses
  %i.tv = fcmp olt <2 x float> %.sroa.080.0.copyload.i, %.sroa.084.0.copyload.i
  %i.tw = select <2 x i1> %i.tv, <2 x float> %.sroa.080.0.copyload.i, <2 x float> %.sroa.084.0.copyload.i ; 2 uses
  %i.tx = fcmp olt float %.sroa.570.0.copyload.i, %.sroa.485.0.copyload.i
  %i.ty = select i1 %i.tx, float %.sroa.570.0.copyload.i, float %.sroa.485.0.copyload.i ; 2 uses
  %i.tz = fcmp ogt <2 x float> %.sroa.582.0.copyload.i, %.sroa.586.0.copyload.i
  %i.ua = select <2 x i1> %i.tz, <2 x float> %.sroa.582.0.copyload.i, <2 x float> %.sroa.586.0.copyload.i ; 2 uses
  %i.ub = fcmp ogt float %.sroa.873.0.copyload.i, %.sroa.687.0.copyload.i
  %i.uc = select i1 %i.ub, float %.sroa.873.0.copyload.i, float %.sroa.687.0.copyload.i ; 2 uses
  %i.ud = fsub float %i.uc, %i.ty
  %i.ue = fsub <2 x float> %i.ua, %i.tw           ; 3 uses
  %shift202 = shufflevector <2 x float> %i.ue, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop203 = fmul <2 x float> %i.ue, %shift202
  %i.uf = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = fmul <2 x float> %i.ug, %i.ue           ; 2 uses
  %foldExtExtBinop205 = fadd <2 x float> %foldExtExtBinop203, %i.uh
  %shift207 = shufflevector <2 x float> %i.uh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop208 = fadd <2 x float> %shift207, %foldExtExtBinop205
  %i.ui = extractelement <2 x float> %foldExtExtBinop208, i64 0
  %i.uj = fmul float %i.ui, 2.000000e+00
  %.sroa.092.0.copyload.i = load <2 x float>, ptr %i.te, align 8 ; 2 uses
  %.sroa.493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %.sroa.493.0.copyload.i = load float, ptr %.sroa.493.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.594.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.te, i64 12
  %.sroa.594.0.copyload.i = load <2 x float>, ptr %.sroa.594.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.695.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.te, i64 20
  %.sroa.695.0.copyload.i = load float, ptr %.sroa.695.0..sroa_idx.i, align 4 ; 2 uses
  %i.uk = fcmp olt <2 x float> %.sroa.080.0.copyload.i, %.sroa.092.0.copyload.i
  %i.ul = select <2 x i1> %i.uk, <2 x float> %.sroa.080.0.copyload.i, <2 x float> %.sroa.092.0.copyload.i ; 2 uses
  %i.um = fcmp olt float %.sroa.570.0.copyload.i, %.sroa.493.0.copyload.i
  %i.un = select i1 %i.um, float %.sroa.570.0.copyload.i, float %.sroa.493.0.copyload.i ; 2 uses
  %i.uo = fcmp ogt <2 x float> %.sroa.582.0.copyload.i, %.sroa.594.0.copyload.i
  %i.up = select <2 x i1> %i.uo, <2 x float> %.sroa.582.0.copyload.i, <2 x float> %.sroa.594.0.copyload.i ; 2 uses
  %i.uq = fcmp ogt float %.sroa.873.0.copyload.i, %.sroa.695.0.copyload.i
  %i.ur = select i1 %i.uq, float %.sroa.873.0.copyload.i, float %.sroa.695.0.copyload.i ; 2 uses
  %i.us = fsub <2 x float> %i.up, %i.ul           ; 4 uses
  %i.ut = fsub float %i.ur, %i.un                 ; 2 uses
  %i.uu = extractelement <2 x float> %i.us, i64 0
  %i.uv = fmul float %i.uu, %i.ut
  %i.uw = extractelement <2 x float> %i.us, i64 1
  %i.ux = fmul float %i.uw, %i.ut
  %i.uy = shufflevector <2 x float> %i.tl, <2 x float> %i.us, <2 x i32> <i32 0, i32 2>
  %i.uz = shufflevector <2 x float> %i.tm, <2 x float> %i.us, <2 x i32> <i32 1, i32 3>
  %i.va = fmul <2 x float> %i.uy, %i.uz
  %i.vb = insertelement <2 x float> %i.tn, float %i.uv, i64 1
end_hunk_0
