Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@LoadModelAnimations:bb.a
bb.p:                                             ; preds = %bb.o, %bb.n
  %.5.i = phi i32 [ %i.gv, %bb.o ], [ %.4.i, %bb.n ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.gx = load float, ptr %i.gw, align 4
  %i.gy = load ptr, ptr %i.bq, align 8
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv443.i
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw [40 x i8], ptr %i.ha, i64 %indvars.iv440.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store float %i.gx, ptr %i.hc, align 4
  %i.hd = and i32 %i.dt, 16
  %.not380.i = icmp eq i32 %i.hd, 0
  br i1 %.not380.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.he = sext i32 %.5.i to i64
  %i.hf = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.he
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = uitofp i16 %i.hg to float
  %i.hi = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.hj = load float, ptr %i.hi, align 4
  %i.hk = load ptr, ptr %i.bq, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv443.i
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw [40 x i8], ptr %i.hm, i64 %indvars.iv440.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4
  %i.hq = call float @llvm.fmuladd.f32(float %i.hh, float %i.hj, float %i.hp)
  store float %i.hq, ptr %i.ho, align 4
  %i.hr = add nsw i32 %.5.i, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.6.i = phi i32 [ %i.hr, %bb.q ], [ %.5.i, %bb.p ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.ht = load float, ptr %i.hs, align 4
  %i.hu = load ptr, ptr %i.bq, align 8
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv443.i
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw [40 x i8], ptr %i.hw, i64 %indvars.iv440.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 20
  store float %i.ht, ptr %i.hy, align 4
  %i.hz = and i32 %i.dt, 32
  %.not381.i = icmp eq i32 %i.hz, 0
  br i1 %.not381.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ia = sext i32 %.6.i to i64
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ia
  %i.ic = load i16, ptr %i.ib, align 2
  %i.id = uitofp i16 %i.ic to float
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dl, i64 68
  %i.if = load float, ptr %i.ie, align 4
  %i.ig = load ptr, ptr %i.bq, align 8
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv443.i
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw [40 x i8], ptr %i.ii, i64 %indvars.iv440.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 20 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4
  %i.im = call float @llvm.fmuladd.f32(float %i.id, float %i.if, float %i.il)
  store float %i.im, ptr %i.ik, align 4
  %i.in = add nsw i32 %.6.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.7.i = phi i32 [ %i.in, %bb.s ], [ %.6.i, %bb.r ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.ip = load float, ptr %i.io, align 4
  %i.iq = load ptr, ptr %i.bq, align 8
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv443.i
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = getelementptr inbounds nuw [40 x i8], ptr %i.is, i64 %indvars.iv440.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  store float %i.ip, ptr %i.iu, align 4
  %i.iv = and i32 %i.dt, 64
  %.not382.i = icmp eq i32 %i.iv, 0
  br i1 %.not382.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.iw = sext i32 %.7.i to i64
  %i.ix = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 2
  %i.iz = uitofp i16 %i.iy to float
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.jb = load float, ptr %i.ja, align 4
  %i.jc = load ptr, ptr %i.bq, align 8
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv443.i
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw [40 x i8], ptr %i.je, i64 %indvars.iv440.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 24 ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4
  %i.ji = call float @llvm.fmuladd.f32(float %i.iz, float %i.jb, float %i.jh)
  store float %i.ji, ptr %i.jg, align 4
  %i.jj = add nsw i32 %.7.i, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.8.i = phi i32 [ %i.jj, %bb.u ], [ %.7.i, %bb.t ] ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  %i.jl = load float, ptr %i.jk, align 4
  %i.jm = load ptr, ptr %i.bq, align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv443.i
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = getelementptr inbounds nuw [40 x i8], ptr %i.jo, i64 %indvars.iv440.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 28
  store float %i.jl, ptr %i.jq, align 4
  %i.jr = and i32 %i.dt, 128
  %.not383.i = icmp eq i32 %i.jr, 0
  br i1 %.not383.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.js = sext i32 %.8.i to i64
  %i.jt = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.js
  %i.ju = load i16, ptr %i.jt, align 2
  %i.jv = uitofp i16 %i.ju to float
  %i.jw = getelementptr inbounds nuw i8, ptr %i.dl, i64 76
  %i.jx = load float, ptr %i.jw, align 4
  %i.jy = load ptr, ptr %i.bq, align 8
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv443.i
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds nuw [40 x i8], ptr %i.ka, i64 %indvars.iv440.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 28 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4
  %i.ke = call float @llvm.fmuladd.f32(float %i.jv, float %i.jx, float %i.kd)
  store float %i.ke, ptr %i.kc, align 4
  %i.kf = add nsw i32 %.8.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.9.i = phi i32 [ %i.kf, %bb.w ], [ %.8.i, %bb.v ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.kh = load float, ptr %i.kg, align 4
  %i.ki = load ptr, ptr %i.bq, align 8
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv443.i
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = getelementptr inbounds nuw [40 x i8], ptr %i.kk, i64 %indvars.iv440.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  store float %i.kh, ptr %i.km, align 4
  %i.kn = and i32 %i.dt, 256
  %.not384.i = icmp eq i32 %i.kn, 0
  br i1 %.not384.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ko = sext i32 %.9.i to i64
  %i.kp = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ko
  %i.kq = load i16, ptr %i.kp, align 2
  %i.kr = uitofp i16 %i.kq to float
  %i.ks = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  %i.kt = load float, ptr %i.ks, align 4
  %i.ku = load ptr, ptr %i.bq, align 8
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv443.i
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = getelementptr inbounds nuw [40 x i8], ptr %i.kw, i64 %indvars.iv440.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32 ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4
  %i.la = call float @llvm.fmuladd.f32(float %i.kr, float %i.kt, float %i.kz)
  store float %i.la, ptr %i.ky, align 4
  %i.lb = add nsw i32 %.9.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.10.i = phi i32 [ %i.lb, %bb.y ], [ %.9.i, %bb.x ] ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.dl, i64 44
  %i.ld = load float, ptr %i.lc, align 4
  %i.le = load ptr, ptr %i.bq, align 8
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv443.i
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds nuw [40 x i8], ptr %i.lg, i64 %indvars.iv440.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 36
  store float %i.ld, ptr %i.li, align 4
  %i.lj = and i32 %i.dt, 512
  %.not385.i = icmp eq i32 %i.lj, 0
  br i1 %.not385.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lk = sext i32 %.10.i to i64
  %i.ll = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.lk
  %i.lm = load i16, ptr %i.ll, align 2
  %i.ln = uitofp i16 %i.lm to float
  %i.lo = getelementptr inbounds nuw i8, ptr %i.dl, i64 84
  %i.lp = load float, ptr %i.lo, align 4
  %i.lq = load ptr, ptr %i.bq, align 8
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv443.i
  %i.ls = load ptr, ptr %i.lr, align 8
  %i.lt = getelementptr inbounds nuw [40 x i8], ptr %i.ls, i64 %indvars.iv440.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 36 ; 2 uses
  %i.lv = load float, ptr %i.lu, align 4
  %i.lw = call float @llvm.fmuladd.f32(float %i.ln, float %i.lp, float %i.lv)
  store float %i.lw, ptr %i.lu, align 4
  %i.lx = add nsw i32 %.10.i, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.11.i = phi i32 [ %i.lx, %bb.aa ], [ %.10.i, %bb.z ] ; 2 uses
  %i.ly = load ptr, ptr %i.bq, align 8
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv443.i
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds nuw [40 x i8], ptr %i.ma, i64 %indvars.iv440.i ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 12 ; 2 uses
  %i.md = load <2 x float>, ptr %i.mc, align 4    ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 20 ; 2 uses
  %i.mf = load <2 x float>, ptr %i.me, align 4    ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.md, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.md, %i.md
  %i.mg = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.mh = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i, float %.sroa.0.0.vec.extract.i.i, float %i.mg)
  %.sroa.7.8.vec.extract.i.i = extractelement <2 x float> %i.mf, i64 0 ; 2 uses
  %i.mi = call float @llvm.fmuladd.f32(float %.sroa.7.8.vec.extract.i.i, float %.sroa.7.8.vec.extract.i.i, float %i.mh)
  %.sroa.7.12.vec.extract.i.i = extractelement <2 x float> %i.mf, i64 1 ; 2 uses
  %i.mj = call float @llvm.fmuladd.f32(float %.sroa.7.12.vec.extract.i.i, float %.sroa.7.12.vec.extract.i.i, float %i.mi)
  %i.mk = call float @sqrtf(float noundef %i.mj) #54 ; 2 uses
  %i.ml = fcmp oeq float %i.mk, 0.000000e+00
  %i.mm = fdiv float 1.000000e+00, %i.mk
  %i.mn = select i1 %i.ml, float 1.000000e+00, float %i.mm
  %i.mo = insertelement <2 x float> poison, float %i.mn, i64 0
  %9 = shufflevector <2 x float> %i.mo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %10 = fmul <2 x float> %i.md, %9
  %11 = fmul <2 x float> %i.mf, %9
  store <2 x float> %10, ptr %i.mc, align 4
  store <2 x float> %11, ptr %i.me, align 4
  %indvars.iv.next441.i = add nuw nsw i64 %indvars.iv440.i, 1 ; 2 uses
  %i.mp = load i32, ptr %i.o, align 4             ; 2 uses
  %i.mq = zext i32 %i.mp to i64
  %i.mr = icmp samesign ult i64 %indvars.iv.next441.i, %i.mq
  br i1 %i.mr, label %.lr.ph412.i, label %._crit_edge413.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge418.i
  %i.ms = phi i32 [ %i.my, %._crit_edge418.i ], [ %i.dh, %.preheader.lr.ph.i ] ; 2 uses
  %i.mt = phi i32 [ %i.mz, %._crit_edge418.i ], [ %i.dh, %.preheader.lr.ph.i ] ; 2 uses
  %indvars.iv451.i = phi i64 [ %indvars.iv.next452.i, %._crit_edge418.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.mu = icmp sgt i32 %i.mt, 0
  br i1 %i.mu, label %.lr.ph417.i, label %._crit_edge418.i

._crit_edge420.i:                                 ; preds = %._crit_edge418.i, %.preheader.lr.ph.i, %.preheader406.i
  call void @free(ptr noundef %i.bj) #54
  %indvars.iv.next457.i = add nuw nsw i64 %indvars.iv456.i, 1 ; 2 uses
  %i.mv = load i32, ptr %i.aa, align 4
  %i.mw = zext i32 %i.mv to i64
  %i.mx = icmp samesign ult i64 %indvars.iv.next457.i, %i.mw
  br i1 %i.mx, label %bb.h, label %._crit_edge424.i

._crit_edge418.i:                                 ; preds = %bb.ad, %.preheader.i
  %i.my = phi i32 [ %i.ms, %.preheader.i ], [ %i.qp, %bb.ad ]
  %i.mz = phi i32 [ %i.mt, %.preheader.i ], [ %i.qp, %bb.ad ]
  %indvars.iv.next452.i = add nuw nsw i64 %indvars.iv451.i, 1 ; 2 uses
  %exitcond455.not.i = icmp eq i64 %indvars.iv.next452.i, %i.bo
  br i1 %exitcond455.not.i, label %._crit_edge420.i, label %.preheader.i, !llvm.loop !188

.lr.ph417.i:                                      ; preds = %.preheader.i, %bb.ad
  %i.na = phi i32 [ %i.qp, %bb.ad ], [ %i.ms, %.preheader.i ]
  %indvars.iv448.i = phi i64 [ %indvars.iv.next449.i, %bb.ad ], [ 0, %.preheader.i ] ; 6 uses
  %i.nb = getelementptr inbounds nuw [36 x i8], ptr %i.bj, i64 %indvars.iv448.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 32
  %i.nd = load i32, ptr %i.nc, align 4            ; 2 uses
  %i.ne = icmp sgt i32 %i.nd, -1
  br i1 %i.ne, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph417.i
  %i.nf = load ptr, ptr %i.bq, align 8
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv451.i
  %i.nh = load ptr, ptr %i.ng, align 8            ; 2 uses
  %i.ni = getelementptr inbounds nuw [40 x i8], ptr %i.nh, i64 %indvars.iv448.i ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 12 ; 2 uses
  %i.nk = zext nneg i32 %i.nd to i64              ; 4 uses
  %i.nl = getelementptr inbounds nuw [40 x i8], ptr %i.nh, i64 %i.nk ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  %i.nn = load <2 x float>, ptr %i.nm, align 4    ; 5 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 20
  %i.np = load <2 x float>, ptr %i.no, align 4    ; 5 uses
  %i.nq = load <2 x float>, ptr %i.nj, align 4    ; 6 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ni, i64 20 ; 2 uses
  %i.ns = load <2 x float>, ptr %i.nr, align 4    ; 5 uses
  %i.nt = shufflevector <2 x float> %i.nn, <2 x float> %i.np, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.nu = fneg <2 x float> %i.nt                  ; 2 uses
  %12 = shufflevector <2 x float> %i.np, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %13 = fmul <2 x float> %12, %i.nq
  %14 = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %15 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nn, <2 x float> %14, <2 x float> %13)
  %i.nv = shufflevector <2 x float> %i.ns, <2 x float> %i.nq, <2 x i32> <i32 0, i32 2>
  %16 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nt, <2 x float> %i.nv, <2 x float> %15)
  %i.nw = shufflevector <2 x float> %i.np, <2 x float> %i.nn, <2 x i32> <i32 0, i32 2>
  %17 = fneg <2 x float> %i.nw
  %18 = shufflevector <2 x float> %i.nq, <2 x float> %i.ns, <2 x i32> <i32 1, i32 2>
  %19 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %18, <2 x float> %16)
  %20 = shufflevector <2 x float> %i.np, <2 x float> %i.nn, <2 x i32> <i32 1, i32 2>
  %21 = fneg <2 x float> %i.nq
  %22 = shufflevector <2 x float> %i.ns, <2 x float> %21, <2 x i32> <i32 0, i32 2>
  %23 = fmul <2 x float> %20, %22
  %24 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.np, <2 x float> %14, <2 x float> %23)
  %25 = shufflevector <2 x float> %i.nn, <2 x float> %i.nu, <2 x i32> <i32 0, i32 2>
  %26 = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %27 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %25, <2 x float> %26, <2 x float> %24)
  %28 = shufflevector <2 x float> %i.nq, <2 x float> %i.ns, <2 x i32> <i32 0, i32 2>
  %29 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nu, <2 x float> %28, <2 x float> %27)
  store <2 x float> %19, ptr %i.nj, align 4
  store <2 x float> %29, ptr %i.nr, align 4
  %i.nx = load ptr, ptr %i.bq, align 8
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv451.i
  %i.nz = load ptr, ptr %i.ny, align 8            ; 2 uses
  %i.oa = getelementptr inbounds nuw [40 x i8], ptr %i.nz, i64 %indvars.iv448.i ; 3 uses
  %i.ob = getelementptr inbounds nuw [40 x i8], ptr %i.nz, i64 %i.nk ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  %.sroa.020.0.copyload.i = load <2 x float>, ptr %i.oa, align 4 ; 4 uses
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.oa, i64 8 ; 2 uses
  %.sroa.221.0.copyload.i = load float, ptr %.sroa.221.0..sroa_idx.i, align 4 ; 3 uses
  %i.od = load <2 x float>, ptr %i.oc, align 4    ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 20
  %i.of = load <2 x float>, ptr %i.oe, align 4    ; 4 uses
  %.sroa.092.0.vec.extract.i.i = extractelement <2 x float> %.sroa.020.0.copyload.i, i64 0 ; 2 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %i.od, i64 0 ; 6 uses
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %i.od, i64 1 ; 8 uses
  %i.og = fneg float %.sroa.01.4.vec.extract.i.i  ; 2 uses
  %.sroa.25.8.vec.extract.i.i = extractelement <2 x float> %i.of, i64 0 ; 7 uses
  %i.oh = fneg float %.sroa.25.8.vec.extract.i.i  ; 3 uses
  %.sroa.092.4.vec.extract.i.i = extractelement <2 x float> %.sroa.020.0.copyload.i, i64 1 ; 2 uses
  %.sroa.25.12.vec.extract.i.i = extractelement <2 x float> %i.of, i64 1 ; 4 uses
  %i.oi = fmul float %.sroa.25.12.vec.extract.i.i, %.sroa.25.12.vec.extract.i.i
  %i.oj = call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i.i, float %.sroa.01.0.vec.extract.i.i, float %i.oi)
  %i.ok = call float @llvm.fmuladd.f32(float %i.og, float %.sroa.01.4.vec.extract.i.i, float %i.oj)
  %i.ol = call float @llvm.fmuladd.f32(float %i.oh, float %.sroa.25.8.vec.extract.i.i, float %i.ok)
  %i.om = fmul float %.sroa.01.0.vec.extract.i.i, 2.000000e+00 ; 4 uses
  %i.on = fmul float %.sroa.25.12.vec.extract.i.i, 2.000000e+00 ; 4 uses
  %i.oo = fmul float %i.on, %i.oh
  %i.op = call float @llvm.fmuladd.f32(float %i.om, float %.sroa.01.4.vec.extract.i.i, float %i.oo)
  %i.oq = fneg float %.sroa.01.0.vec.extract.i.i
  %i.or = shufflevector <2 x float> %.sroa.020.0.copyload.i, <2 x float> %i.od, <4 x i32> <i32 1, i32 3, i32 3, i32 2>
  %i.os = insertelement <4 x float> poison, float %i.op, i64 0
  %i.ot = insertelement <4 x float> %i.os, float %i.on, i64 1
  %i.ou = insertelement <4 x float> %i.ot, float %i.om, i64 2
  %i.ov = insertelement <4 x float> %i.ou, float %i.oq, i64 3
  %i.ow = fmul <4 x float> %i.or, %i.ov
  %i.ox = shufflevector <2 x float> %.sroa.020.0.copyload.i, <2 x float> %i.of, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.oy = shufflevector <2 x float> %i.of, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.oz = insertelement <4 x float> %i.oy, float %i.ol, i64 0
  %i.pa = insertelement <4 x float> %i.oz, float %i.om, i64 1
  %i.pb = insertelement <4 x float> %i.pa, float %i.on, i64 2
  %i.pc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> %i.pb, <4 x float> %i.ow) ; 4 uses
  %i.pd = extractelement <4 x float> %i.pc, i64 0
  %i.pe = extractelement <4 x float> %i.pc, i64 1
  %i.pf = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i, float %i.pe, float %i.pd)
  %.sroa.0103.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.pf, i64 0
  %i.pg = extractelement <4 x float> %i.pc, i64 3 ; 2 uses
  %i.ph = call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract.i.i, float %.sroa.01.4.vec.extract.i.i, float %i.pg)
  %i.pi = call float @llvm.fmuladd.f32(float %i.oh, float %.sroa.25.8.vec.extract.i.i, float %i.ph)
  %i.pj = fmul float %.sroa.092.4.vec.extract.i.i, %i.pi
  %i.pk = extractelement <4 x float> %i.pc, i64 2
  %i.pl = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract.i.i, float %i.pk, float %i.pj)
  %i.pm = fmul float %.sroa.25.12.vec.extract.i.i, -2.000000e+00 ; 2 uses
  %i.pn = fmul float %.sroa.01.4.vec.extract.i.i, 2.000000e+00
  %i.po = fmul float %i.pn, %.sroa.25.8.vec.extract.i.i ; 2 uses
  %i.pp = call float @llvm.fmuladd.f32(float %i.pm, float %.sroa.01.0.vec.extract.i.i, float %i.po)
  %i.pq = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i, float %i.pp, float %i.pl)
  %.sroa.0103.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0103.0.vec.insert.i.i, float %i.pq, i64 1
  %i.pr = fmul float %i.om, %.sroa.25.8.vec.extract.i.i
  %i.ps = call float @llvm.fmuladd.f32(float %i.pm, float %.sroa.01.4.vec.extract.i.i, float %i.pr)
  %i.pt = call float @llvm.fmuladd.f32(float %i.on, float %.sroa.01.0.vec.extract.i.i, float %i.po)
  %i.pu = fmul float %.sroa.092.4.vec.extract.i.i, %i.pt
  %i.pv = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract.i.i, float %i.ps, float %i.pu)
  %i.pw = call float @llvm.fmuladd.f32(float %i.og, float %.sroa.01.4.vec.extract.i.i, float %i.pg)
  %i.px = call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract.i.i, float %.sroa.25.8.vec.extract.i.i, float %i.pw)
  %i.py = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i, float %i.px, float %i.pv)
  store <2 x float> %.sroa.0103.4.vec.insert.i.i, ptr %i.oa, align 4
  store float %i.py, ptr %.sroa.221.0..sroa_idx.i, align 4
  %i.pz = load ptr, ptr %i.bq, align 8
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %indvars.iv451.i
  %i.qb = load ptr, ptr %i.qa, align 8            ; 2 uses
  %i.qc = getelementptr inbounds nuw [40 x i8], ptr %i.qb, i64 %indvars.iv448.i ; 3 uses
  %i.qd = getelementptr inbounds nuw [40 x i8], ptr %i.qb, i64 %i.nk ; 2 uses
  %.sroa.012.0.copyload.i = load <2 x float>, ptr %i.qc, align 4
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 8 ; 2 uses
  %.sroa.213.0.copyload.i = load float, ptr %.sroa.213.0..sroa_idx.i, align 4
  %.sroa.010.0.copyload.i = load <2 x float>, ptr %i.qd, align 4
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %.sroa.211.0.copyload.i = load float, ptr %.sroa.211.0..sroa_idx.i, align 4
  %i.qe = fadd <2 x float> %.sroa.012.0.copyload.i, %.sroa.010.0.copyload.i
  %i.qf = fadd float %.sroa.213.0.copyload.i, %.sroa.211.0.copyload.i
  store <2 x float> %i.qe, ptr %i.qc, align 4
  store float %i.qf, ptr %.sroa.213.0..sroa_idx.i, align 4
  %i.qg = load ptr, ptr %i.bq, align 8
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv451.i
  %i.qi = load ptr, ptr %i.qh, align 8            ; 2 uses
  %i.qj = getelementptr inbounds nuw [40 x i8], ptr %i.qi, i64 %indvars.iv448.i ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 28 ; 2 uses
  %i.ql = getelementptr inbounds nuw [40 x i8], ptr %i.qi, i64 %i.nk ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 28
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.qk, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 36 ; 2 uses
  %.sroa.24.0.copyload.i = load float, ptr %.sroa.24.0..sroa_idx.i, align 4
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.qm, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 36
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4
  %i.qn = fmul <2 x float> %.sroa.03.0.copyload.i, %.sroa.01.0.copyload.i
  %i.qo = fmul float %.sroa.24.0.copyload.i, %.sroa.22.0.copyload.i
  store <2 x float> %i.qn, ptr %i.qk, align 4
  store float %i.qo, ptr %.sroa.24.0..sroa_idx.i, align 4
  %.pre.i = load i32, ptr %i.bh, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph417.i
  %i.qp = phi i32 [ %i.na, %.lr.ph417.i ], [ %.pre.i, %bb.ac ] ; 4 uses
  %indvars.iv.next449.i = add nuw nsw i64 %indvars.iv448.i, 1 ; 2 uses
  %i.qq = sext i32 %i.qp to i64
  %i.qr = icmp slt i64 %indvars.iv.next449.i, %i.qq
  br i1 %i.qr, label %.lr.ph417.i, label %._crit_edge418.i

LoadModelAnimationsIQM.exit:                      ; preds = %bb.b, %bb.d, %bb.f, %._crit_edge424.i
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ %i.am, %._crit_edge424.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #54
  br label %bb.ae

bb.ae:                                            ; preds = %LoadModelAnimationsIQM.exit, %bb.a
  %.0 = phi ptr [ %.1.i, %LoadModelAnimationsIQM.exit ], [ null, %bb.a ]
  %i.qs = call zeroext i1 @IsFileExtension(ptr noundef %0, ptr noundef nonnull @.str.40) #54
  br i1 %i.qs, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #54
  store i32 0, ptr %i.e, align 4
  %i.qt = call ptr @LoadFileData(ptr noundef %0, ptr noundef nonnull %i.e) #54 ; 3 uses
  %.not.i10 = icmp eq ptr %i.qt, null
  br i1 %.not.i10, label %LoadModelAnimationsM3D.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.qu = call ptr @m3d_load(ptr noundef nonnull %i.qt, ptr noundef nonnull @m3d_loaderhook, ptr noundef nonnull @m3d_freehook, ptr noundef null) ; 12 uses
  %.not287.i = icmp eq ptr %i.qu, null
  br i1 %.not287.i, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 9
  %i.qw = load i8, ptr %i.qv, align 1             ; 2 uses
  %or.cond.i = icmp ugt i8 %i.qw, -65
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.qx = sext i8 %i.qw to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ai, %bb.ag
  %i.qy = phi i32 [ %i.qx, %bb.ai ], [ -2, %bb.ag ]
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.389, ptr noundef %0, i32 noundef %i.qy) #54
  br label %.sink.split.i

bb.aj:                                            ; preds = %bb.ah
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 248 ; 4 uses
  %i.ra = load i32, ptr %i.qz, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qu, i64 104 ; 7 uses
  %i.rc = load i32, ptr %i.rb, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qu, i64 136
  %i.re = load i32, ptr %i.rd, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.394, ptr noundef %0, i32 noundef %i.ra, i32 noundef %i.rc, i32 noundef %i.re) #54
  %i.rf = load i32, ptr %i.qz, align 8            ; 2 uses
  %.not288.i = icmp eq i32 %i.rf, 0
  br i1 %.not288.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.rg = load i32, ptr %i.rb, align 8
  %.not289.i = icmp eq i32 %i.rg, 0
  br i1 %.not289.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @m3d_free(ptr noundef nonnull %i.qu)
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.ak
  %i.rh = zext i32 %i.rf to i64
  %i.ri = call noalias ptr @calloc(i64 noundef %i.rh, i64 noundef 48) #57 ; 2 uses
  %i.rj = load i32, ptr %i.qz, align 8            ; 2 uses
  store i32 %i.rj, ptr %1, align 4
  %.not322.i = icmp eq i32 %i.rj, 0
  br i1 %.not322.i, label %._crit_edge321.i, label %.lr.ph320.i

.lr.ph320.i:                                      ; preds = %bb.am
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qu, i64 256
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qu, i64 112
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qu, i64 128 ; 7 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qu, i64 56 ; 3 uses
  br label %bb.an

._crit_edge321.i:                                 ; preds = %._crit_edge317.i, %bb.am
  call void @m3d_free(ptr noundef nonnull %i.qu)
  br label %.sink.split.i

bb.an:                                            ; preds = %._crit_edge317.i, %.lr.ph320.i
  %indvars.iv331.i = phi i64 [ 0, %.lr.ph320.i ], [ %indvars.iv.next332.i, %._crit_edge317.i ] ; 4 uses
  %i.ro = load i32, ptr %i.rb, align 8
  %i.rp = add i32 %i.ro, 1                        ; 2 uses
  %i.rq = getelementptr inbounds nuw [48 x i8], ptr %i.ri, i64 %indvars.iv331.i ; 5 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  store i32 %i.rp, ptr %i.rr, align 8
  %i.rs = zext i32 %i.rp to i64
  %i.rt = call noalias ptr @calloc(i64 noundef %i.rs, i64 noundef 36) #57 ; 4 uses
  %i.ru = load ptr, ptr %i.rk, align 8
  %i.rv = getelementptr inbounds nuw [24 x i8], ptr %i.ru, i64 %indvars.iv331.i ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8 ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 8
  %i.ry = udiv i32 %i.rx, 17                      ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rq, i64 36 ; 3 uses
  store i32 %i.ry, ptr %i.rz, align 4
  %i.sa = zext nneg i32 %i.ry to i64
  %i.sb = call noalias ptr @calloc(i64 noundef %i.sa, i64 noundef 8) #57
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rq, i64 40 ; 27 uses
  store ptr %i.sb, ptr %i.sc, align 8
  %i.sd = load ptr, ptr %i.rv, align 8
  %i.se = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.rq, ptr noundef nonnull dereferenceable(1) %i.sd, i64 noundef 31) #54 ; 0 uses
  %i.sf = load i32, ptr %i.rw, align 8
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.383, ptr noundef %0, ptr noundef nonnull %i.rq, i32 noundef %i.ry, i32 noundef %i.sf) #54
  %i.sg = load i32, ptr %i.rb, align 8            ; 2 uses
  %i.sh = icmp sgt i32 %i.sg, 0
  br i1 %i.sh, label %.lr.ph.preheader.i57, label %._crit_edge.i

.lr.ph.preheader.i57:                             ; preds = %bb.an
  %.pre.i58 = load ptr, ptr %i.rl, align 8
  %i.si = zext nneg i32 %i.sg to i64              ; 2 uses
  br label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %.lr.ph.i59, %.lr.ph.preheader.i57
  %indvars.iv.i60 = phi i64 [ 0, %.lr.ph.preheader.i57 ], [ %indvars.iv.next.i61, %.lr.ph.i59 ] ; 3 uses
  %i.sj = getelementptr inbounds nuw [104 x i8], ptr %.pre.i58, i64 %indvars.iv.i60 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 8
  %i.sl = getelementptr inbounds nuw [36 x i8], ptr %i.rt, i64 %indvars.iv.i60 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  store i32 %i.sk, ptr %i.sm, align 4
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.so = load ptr, ptr %i.sn, align 8
  %i.sp = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.sl, ptr noundef nonnull dereferenceable(1) %i.so, i64 noundef 31) #54 ; 0 uses
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i61, %i.si
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i59

._crit_edge.i:                                    ; preds = %.lr.ph.i59, %bb.an
  %.0277.lcssa.i = phi i64 [ 0, %bb.an ], [ %i.si, %.lr.ph.i59 ]
  %i.sq = getelementptr inbounds nuw [36 x i8], ptr %i.rt, i64 %.0277.lcssa.i ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 32
  store i32 -1, ptr %i.sr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.sq, ptr noundef nonnull align 1 dereferenceable(7) @.str.393, i64 7, i1 false)
  %i.ss = load i32, ptr %i.rz, align 4
  %i.st = icmp sgt i32 %i.ss, 0
  br i1 %i.st, label %.lr.ph316.preheader.i, label %._crit_edge317.i

.lr.ph316.preheader.i:                            ; preds = %._crit_edge.i
  %i.su = trunc nuw i64 %indvars.iv331.i to i32
  br label %.lr.ph316.i

.lr.ph316.i:                                      ; preds = %bb.aq, %.lr.ph316.preheader.i
  %indvars.iv328.i = phi i64 [ 0, %.lr.ph316.preheader.i ], [ %indvars.iv.next329.i, %bb.aq ] ; 28 uses
  %i.sv = load i32, ptr %i.rb, align 8
  %i.sw = add i32 %i.sv, 1
  %i.sx = zext i32 %i.sw to i64
  %i.sy = call noalias ptr @calloc(i64 noundef %i.sx, i64 noundef 40) #57
  %i.sz = load ptr, ptr %i.sc, align 8
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %indvars.iv328.i
  store ptr %i.sy, ptr %i.ta, align 8
  %i.tb = trunc i64 %indvars.iv328.i to i32
  %i.tc = mul i32 %i.tb, 17
  %i.td = call ptr @m3d_pose(ptr noundef nonnull %i.qu, i32 noundef %i.su, i32 noundef %i.tc) ; 3 uses
  %.not290.i = icmp eq ptr %i.td, null
  br i1 %.not290.i, label %bb.aq, label %.preheader.i11

.preheader.i11:                                   ; preds = %.lr.ph316.i
  %i.te = load i32, ptr %i.rb, align 8
  %i.tf = icmp sgt i32 %i.te, 0
  br i1 %i.tf, label %.lr.ph311.i, label %._crit_edge312.i

.lr.ph311.i:                                      ; preds = %.preheader.i11, %bb.ap
  %indvars.iv325.i = phi i64 [ %indvars.iv.next326.i, %bb.ap ], [ 0, %.preheader.i11 ] ; 18 uses
  %i.tg = load ptr, ptr %i.rm, align 8
  %i.th = getelementptr inbounds nuw [104 x i8], ptr %i.td, i64 %indvars.iv325.i ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tj = load i32, ptr %i.ti, align 8
  %i.tk = zext i32 %i.tj to i64                   ; 3 uses
  %i.tl = getelementptr inbounds nuw [24 x i8], ptr %i.tg, i64 %i.tk
  %i.tm = load float, ptr %i.tl, align 4
  %i.tn = load float, ptr %i.rn, align 8
  %i.to = fmul float %i.tm, %i.tn
  %i.tp = load ptr, ptr %i.sc, align 8
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %indvars.iv328.i
  %i.tr = load ptr, ptr %i.tq, align 8
  %i.ts = getelementptr inbounds nuw [40 x i8], ptr %i.tr, i64 %indvars.iv325.i
  store float %i.to, ptr %i.ts, align 4
  %i.tt = load ptr, ptr %i.rm, align 8
  %i.tu = getelementptr inbounds nuw [24 x i8], ptr %i.tt, i64 %i.tk
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  %i.tw = load float, ptr %i.tv, align 4
  %i.tx = load float, ptr %i.rn, align 8
  %i.ty = fmul float %i.tw, %i.tx
  %i.tz = load ptr, ptr %i.sc, align 8
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv328.i
  %i.ub = load ptr, ptr %i.ua, align 8
  %i.uc = getelementptr inbounds nuw [40 x i8], ptr %i.ub, i64 %indvars.iv325.i
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  store float %i.ty, ptr %i.ud, align 4
  %i.ue = load ptr, ptr %i.rm, align 8
  %i.uf = getelementptr inbounds nuw [24 x i8], ptr %i.ue, i64 %i.tk
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.uh = load float, ptr %i.ug, align 4
  %i.ui = load float, ptr %i.rn, align 8
  %i.uj = fmul float %i.uh, %i.ui
  %i.uk = load ptr, ptr %i.sc, align 8
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %indvars.iv328.i
  %i.um = load ptr, ptr %i.ul, align 8
  %i.un = getelementptr inbounds nuw [40 x i8], ptr %i.um, i64 %indvars.iv325.i
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  store float %i.uj, ptr %i.uo, align 4
  %i.up = load ptr, ptr %i.rm, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %i.th, i64 20
  %i.ur = load i32, ptr %i.uq, align 4
  %i.us = zext i32 %i.ur to i64                   ; 4 uses
  %i.ut = getelementptr inbounds nuw [24 x i8], ptr %i.up, i64 %i.us
  %i.uu = load float, ptr %i.ut, align 4
  %i.uv = load ptr, ptr %i.sc, align 8
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %indvars.iv328.i
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = getelementptr inbounds nuw [40 x i8], ptr %i.ux, i64 %indvars.iv325.i
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 12
  store float %i.uu, ptr %i.uz, align 4
  %i.va = load ptr, ptr %i.rm, align 8
  %i.vb = getelementptr inbounds nuw [24 x i8], ptr %i.va, i64 %i.us
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.vd = load float, ptr %i.vc, align 4
  %i.ve = load ptr, ptr %i.sc, align 8
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %indvars.iv328.i
  %i.vg = load ptr, ptr %i.vf, align 8
  %i.vh = getelementptr inbounds nuw [40 x i8], ptr %i.vg, i64 %indvars.iv325.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  store float %i.vd, ptr %i.vi, align 4
  %i.vj = load ptr, ptr %i.rm, align 8
  %i.vk = getelementptr inbounds nuw [24 x i8], ptr %i.vj, i64 %i.us
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load float, ptr %i.vl, align 4
  %i.vn = load ptr, ptr %i.sc, align 8
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %indvars.iv328.i
  %i.vp = load ptr, ptr %i.vo, align 8
  %i.vq = getelementptr inbounds nuw [40 x i8], ptr %i.vp, i64 %indvars.iv325.i
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 20
  store float %i.vm, ptr %i.vr, align 4
  %i.vs = load ptr, ptr %i.rm, align 8
  %i.vt = getelementptr inbounds nuw [24 x i8], ptr %i.vs, i64 %i.us
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 12
  %i.vv = load float, ptr %i.vu, align 4
  %i.vw = load ptr, ptr %i.sc, align 8
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %indvars.iv328.i
  %i.vy = load ptr, ptr %i.vx, align 8
  %i.vz = getelementptr inbounds nuw [40 x i8], ptr %i.vy, i64 %indvars.iv325.i
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  store float %i.vv, ptr %i.wa, align 4
  %i.wb = load ptr, ptr %i.sc, align 8
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %indvars.iv328.i
  %i.wd = load ptr, ptr %i.wc, align 8
  %i.we = getelementptr inbounds nuw [40 x i8], ptr %i.wd, i64 %indvars.iv325.i ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 12 ; 2 uses
  %i.wg = load <2 x float>, ptr %i.wf, align 4    ; 4 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 20 ; 2 uses
  %i.wi = load <2 x float>, ptr %i.wh, align 4    ; 3 uses
  %.sroa.0.0.vec.extract.i.i12 = extractelement <2 x float> %i.wg, i64 0 ; 2 uses
  %foldExtExtBinop151 = fmul <2 x float> %i.wg, %i.wg
  %i.wj = extractelement <2 x float> %foldExtExtBinop151, i64 1
  %i.wk = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i12, float %.sroa.0.0.vec.extract.i.i12, float %i.wj)
  %.sroa.7.8.vec.extract.i.i14 = extractelement <2 x float> %i.wi, i64 0 ; 2 uses
  %i.wl = call float @llvm.fmuladd.f32(float %.sroa.7.8.vec.extract.i.i14, float %.sroa.7.8.vec.extract.i.i14, float %i.wk)
  %.sroa.7.12.vec.extract.i.i15 = extractelement <2 x float> %i.wi, i64 1 ; 2 uses
  %i.wm = call float @llvm.fmuladd.f32(float %.sroa.7.12.vec.extract.i.i15, float %.sroa.7.12.vec.extract.i.i15, float %i.wl)
  %i.wn = call float @sqrtf(float noundef %i.wm) #54 ; 2 uses
  %i.wo = fcmp oeq float %i.wn, 0.000000e+00
  %i.wp = fdiv float 1.000000e+00, %i.wn
  %i.wq = select i1 %i.wo, float 1.000000e+00, float %i.wp
  %i.wr = insertelement <2 x float> poison, float %i.wq, i64 0
  %30 = shufflevector <2 x float> %i.wr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %31 = fmul <2 x float> %i.wg, %30
  %32 = fmul <2 x float> %i.wi, %30
  store <2 x float> %31, ptr %i.wf, align 4
  store <2 x float> %32, ptr %i.wh, align 4
  %i.ws = load ptr, ptr %i.sc, align 8
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.ws, i64 %indvars.iv328.i
  %i.wu = load ptr, ptr %i.wt, align 8
  %i.wv = getelementptr inbounds nuw [40 x i8], ptr %i.wu, i64 %indvars.iv325.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 36
  store float 1.000000e+00, ptr %i.ww, align 4
  %i.wx = load ptr, ptr %i.sc, align 8
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %indvars.iv328.i
  %i.wz = load ptr, ptr %i.wy, align 8
  %i.xa = getelementptr inbounds nuw [40 x i8], ptr %i.wz, i64 %indvars.iv325.i
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 32
  store float 1.000000e+00, ptr %i.xb, align 4
  %i.xc = load ptr, ptr %i.sc, align 8
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %indvars.iv328.i
  %i.xe = load ptr, ptr %i.xd, align 8
  %i.xf = getelementptr inbounds nuw [40 x i8], ptr %i.xe, i64 %indvars.iv325.i
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 28
  store float 1.000000e+00, ptr %i.xg, align 4
  %i.xh = getelementptr inbounds nuw [36 x i8], ptr %i.rt, i64 %indvars.iv325.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 32 ; 4 uses
  %i.xj = load i32, ptr %i.xi, align 4            ; 2 uses
  %i.xk = icmp sgt i32 %i.xj, -1
  br i1 %i.xk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph311.i
  %i.xl = load ptr, ptr %i.sc, align 8
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xl, i64 %indvars.iv328.i
  %i.xn = load ptr, ptr %i.xm, align 8            ; 2 uses
  %i.xo = getelementptr inbounds nuw [40 x i8], ptr %i.xn, i64 %indvars.iv325.i ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 12 ; 2 uses
  %i.xq = zext nneg i32 %i.xj to i64
  %i.xr = getelementptr inbounds nuw [40 x i8], ptr %i.xn, i64 %i.xq ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 12
  %i.xt = load <2 x float>, ptr %i.xs, align 4    ; 5 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xr, i64 20
  %i.xv = load <2 x float>, ptr %i.xu, align 4    ; 5 uses
  %i.xw = load <2 x float>, ptr %i.xp, align 4    ; 6 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xo, i64 20 ; 2 uses
  %i.xy = load <2 x float>, ptr %i.xx, align 4    ; 5 uses
  %i.xz = shufflevector <2 x float> %i.xt, <2 x float> %i.xv, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ya = fneg <2 x float> %i.xz                  ; 2 uses
  %33 = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %34 = fmul <2 x float> %33, %i.xw
  %35 = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %36 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xt, <2 x float> %35, <2 x float> %34)
  %i.yb = shufflevector <2 x float> %i.xy, <2 x float> %i.xw, <2 x i32> <i32 0, i32 2>
  %37 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xz, <2 x float> %i.yb, <2 x float> %36)
  %i.yc = shufflevector <2 x float> %i.xv, <2 x float> %i.xt, <2 x i32> <i32 0, i32 2>
  %38 = fneg <2 x float> %i.yc
  %39 = shufflevector <2 x float> %i.xw, <2 x float> %i.xy, <2 x i32> <i32 1, i32 2>
  %40 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %39, <2 x float> %37)
  %41 = shufflevector <2 x float> %i.xv, <2 x float> %i.xt, <2 x i32> <i32 1, i32 2>
  %42 = fneg <2 x float> %i.xw
  %43 = shufflevector <2 x float> %i.xy, <2 x float> %42, <2 x i32> <i32 0, i32 2>
  %44 = fmul <2 x float> %41, %43
  %45 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xv, <2 x float> %35, <2 x float> %44)
  %46 = shufflevector <2 x float> %i.xt, <2 x float> %i.ya, <2 x i32> <i32 0, i32 2>
  %47 = shufflevector <2 x float> %i.xw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %48 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %46, <2 x float> %47, <2 x float> %45)
  %49 = shufflevector <2 x float> %i.xw, <2 x float> %i.xy, <2 x i32> <i32 0, i32 2>
  %50 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ya, <2 x float> %49, <2 x float> %48)
  store <2 x float> %40, ptr %i.xp, align 4
  store <2 x float> %50, ptr %i.xx, align 4
  %i.yd = load ptr, ptr %i.sc, align 8
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.yd, i64 %indvars.iv328.i
  %i.yf = load ptr, ptr %i.ye, align 8            ; 2 uses
  %i.yg = getelementptr inbounds nuw [40 x i8], ptr %i.yf, i64 %indvars.iv325.i ; 3 uses
  %i.yh = load i32, ptr %i.xi, align 4
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds [40 x i8], ptr %i.yf, i64 %i.yi ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 12
  %.sroa.020.0.copyload.i28 = load <2 x float>, ptr %i.yg, align 4 ; 4 uses
  %.sroa.221.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.yg, i64 8 ; 2 uses
  %.sroa.221.0.copyload.i30 = load float, ptr %.sroa.221.0..sroa_idx.i29, align 4 ; 3 uses
  %i.yl = load <2 x float>, ptr %i.yk, align 4    ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 20
  %i.yn = load <2 x float>, ptr %i.ym, align 4    ; 4 uses
  %.sroa.092.0.vec.extract.i.i31 = extractelement <2 x float> %.sroa.020.0.copyload.i28, i64 0 ; 2 uses
  %.sroa.01.0.vec.extract.i.i32 = extractelement <2 x float> %i.yl, i64 0 ; 6 uses
  %.sroa.01.4.vec.extract.i.i34 = extractelement <2 x float> %i.yl, i64 1 ; 8 uses
  %i.yo = fneg float %.sroa.01.4.vec.extract.i.i34 ; 2 uses
  %.sroa.25.8.vec.extract.i.i35 = extractelement <2 x float> %i.yn, i64 0 ; 7 uses
  %i.yp = fneg float %.sroa.25.8.vec.extract.i.i35 ; 3 uses
  %.sroa.092.4.vec.extract.i.i36 = extractelement <2 x float> %.sroa.020.0.copyload.i28, i64 1 ; 2 uses
  %.sroa.25.12.vec.extract.i.i33 = extractelement <2 x float> %i.yn, i64 1 ; 4 uses
  %i.yq = fmul float %.sroa.25.12.vec.extract.i.i33, %.sroa.25.12.vec.extract.i.i33
  %i.yr = call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i.i32, float %.sroa.01.0.vec.extract.i.i32, float %i.yq)
  %i.ys = call float @llvm.fmuladd.f32(float %i.yo, float %.sroa.01.4.vec.extract.i.i34, float %i.yr)
  %i.yt = call float @llvm.fmuladd.f32(float %i.yp, float %.sroa.25.8.vec.extract.i.i35, float %i.ys)
  %i.yu = fmul float %.sroa.01.0.vec.extract.i.i32, 2.000000e+00 ; 4 uses
  %i.yv = fmul float %.sroa.25.12.vec.extract.i.i33, 2.000000e+00 ; 4 uses
  %i.yw = fmul float %i.yv, %i.yp
  %i.yx = call float @llvm.fmuladd.f32(float %i.yu, float %.sroa.01.4.vec.extract.i.i34, float %i.yw)
  %i.yy = fneg float %.sroa.01.0.vec.extract.i.i32
  %i.yz = shufflevector <2 x float> %.sroa.020.0.copyload.i28, <2 x float> %i.yl, <4 x i32> <i32 1, i32 3, i32 3, i32 2>
  %i.za = insertelement <4 x float> poison, float %i.yx, i64 0
  %i.zb = insertelement <4 x float> %i.za, float %i.yv, i64 1
  %i.zc = insertelement <4 x float> %i.zb, float %i.yu, i64 2
  %i.zd = insertelement <4 x float> %i.zc, float %i.yy, i64 3
  %i.ze = fmul <4 x float> %i.yz, %i.zd
  %i.zf = shufflevector <2 x float> %.sroa.020.0.copyload.i28, <2 x float> %i.yn, <4 x i32> <i32 0, i32 2, i32 2, i32 3>
  %i.zg = shufflevector <2 x float> %i.yn, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.zh = insertelement <4 x float> %i.zg, float %i.yt, i64 0
  %i.zi = insertelement <4 x float> %i.zh, float %i.yu, i64 1
  %i.zj = insertelement <4 x float> %i.zi, float %i.yv, i64 2
  %i.zk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zf, <4 x float> %i.zj, <4 x float> %i.ze) ; 4 uses
  %i.zl = extractelement <4 x float> %i.zk, i64 0
  %i.zm = extractelement <4 x float> %i.zk, i64 1
  %i.zn = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i30, float %i.zm, float %i.zl)
  %.sroa.0103.0.vec.insert.i.i37 = insertelement <2 x float> poison, float %i.zn, i64 0
  %i.zo = extractelement <4 x float> %i.zk, i64 3 ; 2 uses
  %i.zp = call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract.i.i34, float %.sroa.01.4.vec.extract.i.i34, float %i.zo)
  %i.zq = call float @llvm.fmuladd.f32(float %i.yp, float %.sroa.25.8.vec.extract.i.i35, float %i.zp)
  %i.zr = fmul float %.sroa.092.4.vec.extract.i.i36, %i.zq
  %i.zs = extractelement <4 x float> %i.zk, i64 2
  %i.zt = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract.i.i31, float %i.zs, float %i.zr)
  %i.zu = fmul float %.sroa.25.12.vec.extract.i.i33, -2.000000e+00 ; 2 uses
  %i.zv = fmul float %.sroa.01.4.vec.extract.i.i34, 2.000000e+00
  %i.zw = fmul float %i.zv, %.sroa.25.8.vec.extract.i.i35 ; 2 uses
  %i.zx = call float @llvm.fmuladd.f32(float %i.zu, float %.sroa.01.0.vec.extract.i.i32, float %i.zw)
  %i.zy = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i30, float %i.zx, float %i.zt)
  %.sroa.0103.4.vec.insert.i.i38 = insertelement <2 x float> %.sroa.0103.0.vec.insert.i.i37, float %i.zy, i64 1
  %i.zz = fmul float %i.yu, %.sroa.25.8.vec.extract.i.i35
  %i.aaa = call float @llvm.fmuladd.f32(float %i.zu, float %.sroa.01.4.vec.extract.i.i34, float %i.zz)
  %i.aab = call float @llvm.fmuladd.f32(float %i.yv, float %.sroa.01.0.vec.extract.i.i32, float %i.zw)
  %i.aac = fmul float %.sroa.092.4.vec.extract.i.i36, %i.aab
  %i.aad = call float @llvm.fmuladd.f32(float %.sroa.092.0.vec.extract.i.i31, float %i.aaa, float %i.aac)
  %i.aae = call float @llvm.fmuladd.f32(float %i.yo, float %.sroa.01.4.vec.extract.i.i34, float %i.zo)
  %i.aaf = call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract.i.i35, float %.sroa.25.8.vec.extract.i.i35, float %i.aae)
  %i.aag = call float @llvm.fmuladd.f32(float %.sroa.221.0.copyload.i30, float %i.aaf, float %i.aad)
  store <2 x float> %.sroa.0103.4.vec.insert.i.i38, ptr %i.yg, align 4
  store float %i.aag, ptr %.sroa.221.0..sroa_idx.i29, align 4
  %i.aah = load ptr, ptr %i.sc, align 8
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %indvars.iv328.i
  %i.aaj = load ptr, ptr %i.aai, align 8          ; 2 uses
  %i.aak = getelementptr inbounds nuw [40 x i8], ptr %i.aaj, i64 %indvars.iv325.i ; 3 uses
  %i.aal = load i32, ptr %i.xi, align 4
  %i.aam = sext i32 %i.aal to i64
  %i.aan = getelementptr inbounds [40 x i8], ptr %i.aaj, i64 %i.aam ; 2 uses
  %.sroa.012.0.copyload.i39 = load <2 x float>, ptr %i.aak, align 4
  %.sroa.213.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.aak, i64 8 ; 2 uses
  %.sroa.213.0.copyload.i41 = load float, ptr %.sroa.213.0..sroa_idx.i40, align 4
  %.sroa.010.0.copyload.i42 = load <2 x float>, ptr %i.aan, align 4
  %.sroa.211.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  %.sroa.211.0.copyload.i44 = load float, ptr %.sroa.211.0..sroa_idx.i43, align 4
  %i.aao = fadd <2 x float> %.sroa.012.0.copyload.i39, %.sroa.010.0.copyload.i42
  %i.aap = fadd float %.sroa.213.0.copyload.i41, %.sroa.211.0.copyload.i44
  store <2 x float> %i.aao, ptr %i.aak, align 4
  store float %i.aap, ptr %.sroa.213.0..sroa_idx.i40, align 4
  %i.aaq = load ptr, ptr %i.sc, align 8
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %indvars.iv328.i
  %i.aas = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.aat = getelementptr inbounds nuw [40 x i8], ptr %i.aas, i64 %indvars.iv325.i ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 28 ; 2 uses
  %i.aav = load i32, ptr %i.xi, align 4
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds [40 x i8], ptr %i.aas, i64 %i.aaw ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 28
  %.sroa.03.0.copyload.i51 = load <2 x float>, ptr %i.aau, align 4
  %.sroa.24.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.aat, i64 36 ; 2 uses
  %.sroa.24.0.copyload.i53 = load float, ptr %.sroa.24.0..sroa_idx.i52, align 4
  %.sroa.01.0.copyload.i54 = load <2 x float>, ptr %i.aay, align 4
  %.sroa.22.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.aax, i64 36
  %.sroa.22.0.copyload.i56 = load float, ptr %.sroa.22.0..sroa_idx.i55, align 4
  %i.aaz = fmul <2 x float> %.sroa.03.0.copyload.i51, %.sroa.01.0.copyload.i54
  %i.aba = fmul float %.sroa.24.0.copyload.i53, %.sroa.22.0.copyload.i56
  store <2 x float> %i.aaz, ptr %i.aau, align 4
  store float %i.aba, ptr %.sroa.24.0..sroa_idx.i52, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph311.i
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 3 uses
  %i.abb = load i32, ptr %i.rb, align 8
  %i.abc = sext i32 %i.abb to i64
  %i.abd = icmp slt i64 %indvars.iv.next326.i, %i.abc
  br i1 %i.abd, label %.lr.ph311.i, label %._crit_edge312.i

._crit_edge312.i:                                 ; preds = %bb.ap, %.preheader.i11
  %.0278.lcssa.i = phi i64 [ 0, %.preheader.i11 ], [ %indvars.iv.next326.i, %bb.ap ] ; 10 uses
  %i.abe = load ptr, ptr %i.sc, align 8
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %indvars.iv328.i
  %i.abg = load ptr, ptr %i.abf, align 8
  %i.abh = getelementptr inbounds nuw [40 x i8], ptr %i.abg, i64 %.0278.lcssa.i
  store float 0.000000e+00, ptr %i.abh, align 4
  %i.abi = load ptr, ptr %i.sc, align 8
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %indvars.iv328.i
  %i.abk = load ptr, ptr %i.abj, align 8
  %i.abl = getelementptr inbounds nuw [40 x i8], ptr %i.abk, i64 %.0278.lcssa.i
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  store float 0.000000e+00, ptr %i.abm, align 4
  %i.abn = load ptr, ptr %i.sc, align 8
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %indvars.iv328.i
  %i.abp = load ptr, ptr %i.abo, align 8
  %i.abq = getelementptr inbounds nuw [40 x i8], ptr %i.abp, i64 %.0278.lcssa.i
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  store float 0.000000e+00, ptr %i.abr, align 4
  %i.abs = load ptr, ptr %i.sc, align 8
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv328.i
  %i.abu = load ptr, ptr %i.abt, align 8
  %i.abv = getelementptr inbounds nuw [40 x i8], ptr %i.abu, i64 %.0278.lcssa.i
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 12
  store float 0.000000e+00, ptr %i.abw, align 4
  %i.abx = load ptr, ptr %i.sc, align 8
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %indvars.iv328.i
  %i.abz = load ptr, ptr %i.aby, align 8
  %i.aca = getelementptr inbounds nuw [40 x i8], ptr %i.abz, i64 %.0278.lcssa.i
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 16
  store float 0.000000e+00, ptr %i.acb, align 4
  %i.acc = load ptr, ptr %i.sc, align 8
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %indvars.iv328.i
  %i.ace = load ptr, ptr %i.acd, align 8
  %i.acf = getelementptr inbounds nuw [40 x i8], ptr %i.ace, i64 %.0278.lcssa.i
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 20
  store float 0.000000e+00, ptr %i.acg, align 4
  %i.ach = load ptr, ptr %i.sc, align 8
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %indvars.iv328.i
  %i.acj = load ptr, ptr %i.aci, align 8
  %i.ack = getelementptr inbounds nuw [40 x i8], ptr %i.acj, i64 %.0278.lcssa.i
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 24
  store float 1.000000e+00, ptr %i.acl, align 4
  %i.acm = load ptr, ptr %i.sc, align 8
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.acm, i64 %indvars.iv328.i
  %i.aco = load ptr, ptr %i.acn, align 8
  %i.acp = getelementptr inbounds nuw [40 x i8], ptr %i.aco, i64 %.0278.lcssa.i
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 28
  store float 1.000000e+00, ptr %i.acq, align 4
  %i.acr = load ptr, ptr %i.sc, align 8
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %indvars.iv328.i
  %i.act = load ptr, ptr %i.acs, align 8
  %i.acu = getelementptr inbounds nuw [40 x i8], ptr %i.act, i64 %.0278.lcssa.i
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 32
  store float 1.000000e+00, ptr %i.acv, align 4
  %i.acw = load ptr, ptr %i.sc, align 8
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv328.i
  %i.acy = load ptr, ptr %i.acx, align 8
  %i.acz = getelementptr inbounds nuw [40 x i8], ptr %i.acy, i64 %.0278.lcssa.i
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 36
  store float 1.000000e+00, ptr %i.ada, align 4
  call void @free(ptr noundef nonnull %i.td) #54
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge312.i, %.lr.ph316.i
  %indvars.iv.next329.i = add nuw nsw i64 %indvars.iv328.i, 1 ; 2 uses
  %i.adb = load i32, ptr %i.rz, align 4
  %i.adc = sext i32 %i.adb to i64
  %i.add = icmp slt i64 %indvars.iv.next329.i, %i.adc
  br i1 %i.add, label %.lr.ph316.i, label %._crit_edge317.i

._crit_edge317.i:                                 ; preds = %bb.aq, %._crit_edge.i
  call void @free(ptr noundef %i.rt) #54
  %indvars.iv.next332.i = add nuw nsw i64 %indvars.iv331.i, 1 ; 2 uses
  %i.ade = load i32, ptr %i.qz, align 8
  %i.adf = zext i32 %i.ade to i64
  %i.adg = icmp samesign ult i64 %indvars.iv.next332.i, %i.adf
  br i1 %i.adg, label %bb.an, label %._crit_edge321.i

.sink.split.i:                                    ; preds = %._crit_edge321.i, %bb.al, %.critedge.i
  %.0.ph.i = phi ptr [ %i.ri, %._crit_edge321.i ], [ null, %bb.al ], [ null, %.critedge.i ]
  call void @UnloadFileData(ptr noundef nonnull %i.qt) #54
  br label %LoadModelAnimationsM3D.exit

LoadModelAnimationsM3D.exit:                      ; preds = %bb.af, %.sink.split.i
  %.0.i = phi ptr [ null, %bb.af ], [ %.0.ph.i, %.sink.split.i ]
end_hunk_0
begin_hunk_1_@LoadModelAnimations:bb.a
bb.bf:                                            ; preds = %bb.bd
  %i.ags = icmp eq i32 %.0206266.us.i, -1
  br i1 %i.ags, label %.thread.us.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.092.0.copyload.us.i, i64 16
  %i.agu = load i32, ptr %i.agt, align 8          ; 2 uses
  %i.agv = sext i32 %.0206266.us.i to i64
  %i.agw = getelementptr inbounds [32 x i8], ptr %i.agh, i64 %i.agv ; 4 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 24
  store i32 %i.agu, ptr %i.agx, align 8
  %.not223.us.i = icmp eq i32 %i.agu, 3
  br i1 %.not223.us.i, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  switch i32 %.sroa.594.0.copyload.us.i, label %bb.bl [
    i32 1, label %bb.bk
    i32 2, label %bb.bj
    i32 3, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agw, i64 16
  store ptr %i.agj, ptr %i.agy, align 8
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bh
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  store ptr %i.agj, ptr %i.agz, align 8
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bh
  store ptr %i.agj, ptr %i.agw, align 8
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bh
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.377, ptr noundef %0, i32 noundef %.0204267.us.i, i32 noundef %.0201279.i) #54
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bg
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.378, ptr noundef %0) #54
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #54
  store float 0.000000e+00, ptr %i.d, align 4
  %i.aha = load ptr, ptr %.sroa.092.0.copyload.us.i, align 8 ; 9 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 32
  %i.ahc = load i64, ptr %i.ahb, align 8
  %i.ahd = add i64 %i.ahc, -1                     ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.aha, i64 192
  %i.ahf = load i32, ptr %i.ahe, align 8
  %.not.i226.us.i = icmp eq i32 %i.ahf, 0
  br i1 %.not.i226.us.i, label %.thread.i.us.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ahg = call fastcc ptr @cgltf_find_sparse_index(ptr noundef nonnull readonly %i.aha, i64 noundef %i.ahd) ; 2 uses
  %.not30.not.i.us.i = icmp eq ptr %i.ahg, null
  br i1 %.not30.not.i.us.i, label %.thread.i.us.i, label %cgltf_accessor_read_float.exit.us.i

.thread.i.us.i:                                   ; preds = %bb.bo, %bb.bn
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.aha, i64 48
  %i.ahi = load ptr, ptr %i.ahh, align 8          ; 4 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %cgltf_accessor_read_float.exit.thread262.us.i, label %bb.bp

bb.bp:                                            ; preds = %.thread.i.us.i
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahi, i64 48
  %i.ahl = load ptr, ptr %i.ahk, align 8          ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %i.ahl, null
  br i1 %.not.i.i.us.i, label %bb.bq, label %cgltf_buffer_view_data.exit.thread33.i.us.i

bb.bq:                                            ; preds = %bb.bp
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %i.ahn = load ptr, ptr %i.ahm, align 8
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 24
  %i.ahp = load ptr, ptr %i.aho, align 8          ; 2 uses
  %.not10.i.i.us.i = icmp eq ptr %i.ahp, null
  br i1 %.not10.i.i.us.i, label %cgltf_accessor_read_float.exit.thread.us.i, label %cgltf_buffer_view_data.exit.i.us.i

cgltf_buffer_view_data.exit.i.us.i:               ; preds = %bb.bq
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahi, i64 16
  %i.ahr = load i64, ptr %i.ahq, align 8
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahp, i64 %i.ahr
  br label %cgltf_buffer_view_data.exit.thread33.i.us.i

cgltf_buffer_view_data.exit.thread33.i.us.i:      ; preds = %cgltf_buffer_view_data.exit.i.us.i, %bb.bp
  %.0.i35.i.us.i = phi ptr [ %i.ahs, %cgltf_buffer_view_data.exit.i.us.i ], [ %i.ahl, %bb.bp ]
  %i.aht = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  %i.ahu = load i64, ptr %i.aht, align 8
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.aha, i64 40
  %i.ahw = load i64, ptr %i.ahv, align 8
  %i.ahx = mul i64 %i.ahw, %i.ahd
  %i.ahy = getelementptr i8, ptr %.0.i35.i.us.i, i64 %i.ahu
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 %i.ahx
  br label %cgltf_accessor_read_float.exit.us.i

cgltf_accessor_read_float.exit.us.i:              ; preds = %cgltf_buffer_view_data.exit.thread33.i.us.i, %bb.bo
  %.sink.i = phi ptr [ %i.ahz, %cgltf_buffer_view_data.exit.thread33.i.us.i ], [ %i.ahg, %bb.bo ]
  %i.aia = getelementptr inbounds nuw i8, ptr %i.aha, i64 16
  %i.aib = load i32, ptr %i.aia, align 8
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  %i.aid = load i32, ptr %i.aic, align 8
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aha, i64 12
  %i.aif = load i32, ptr %i.aie, align 4
  %i.aig = call fastcc i32 @cgltf_element_read_float(ptr noundef %.sink.i, i32 noundef %i.aib, i32 noundef %i.aid, i32 noundef %i.aif, ptr noundef nonnull %i.d, i64 noundef 1)
  %.not224.us.i = icmp eq i32 %i.aig, 0
  br i1 %.not224.us.i, label %cgltf_accessor_read_float.exit.thread.us.i, label %cgltf_accessor_read_float.exit.us._crit_edge.i

cgltf_accessor_read_float.exit.us._crit_edge.i:   ; preds = %cgltf_accessor_read_float.exit.us.i
  %.pre.i99 = load float, ptr %i.d, align 4
  br label %cgltf_accessor_read_float.exit.thread262.us.i

cgltf_accessor_read_float.exit.thread.us.i:       ; preds = %cgltf_accessor_read_float.exit.us.i, %bb.bq
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.379, ptr noundef %0) #54
  br label %bb.br

cgltf_accessor_read_float.exit.thread262.us.i:    ; preds = %cgltf_accessor_read_float.exit.us._crit_edge.i, %.thread.i.us.i
  %i.aih = phi float [ %.pre.i99, %cgltf_accessor_read_float.exit.us._crit_edge.i ], [ 0.000000e+00, %.thread.i.us.i ] ; 2 uses
  %i.aii = fcmp ogt float %i.aih, %.0202269.us.i
  %i.aij = select i1 %i.aii, float %i.aih, float %.0202269.us.i
  br label %bb.br

bb.br:                                            ; preds = %cgltf_accessor_read_float.exit.thread262.us.i, %cgltf_accessor_read_float.exit.thread.us.i
  %.1203.us.i = phi float [ %i.aij, %cgltf_accessor_read_float.exit.thread262.us.i ], [ %.0202269.us.i, %cgltf_accessor_read_float.exit.thread.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #54
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.be, %bb.br, %bb.bf
  %.2.us.i = phi float [ %.1203.us.i, %bb.br ], [ %.0202269.us.i, %bb.bf ], [ %.0202269.us.i, %bb.be ] ; 2 uses
  %i.aik = add i32 %.0204267.us.i, 1              ; 2 uses
  %i.ail = zext i32 %i.aik to i64                 ; 2 uses
  %i.aim = icmp ugt i64 %.sroa.14.0.copyload.i, %i.ail
  br i1 %i.aim, label %.lr.ph.us.i, label %._crit_edge.i66

._crit_edge.i66:                                  ; preds = %.thread.us.i, %.thread.loopexit.i, %LoadBoneInfoGLTF.exit.i
  %.0202.lcssa.i = phi float [ 0.000000e+00, %LoadBoneInfoGLTF.exit.i ], [ 0.000000e+00, %.thread.loopexit.i ], [ %.2.us.i, %.thread.us.i ] ; 2 uses
  %.not219.i = icmp eq ptr %.sroa.0128.0.copyload.i, null ; 2 uses
  br i1 %.not219.i, label %bb.bt, label %bb.bs

.thread.loopexit.i:                               ; preds = %.lr.ph270.i, %.thread.loopexit.i
  %.0204267.i = phi i32 [ %i.ain, %.thread.loopexit.i ], [ 0, %.lr.ph270.i ]
  %i.ain = add i32 %.0204267.i, 1                 ; 2 uses
  %i.aio = zext i32 %i.ain to i64
  %i.aip = icmp ugt i64 %.sroa.14.0.copyload.i, %i.aio
  br i1 %i.aip, label %.thread.loopexit.i, label %._crit_edge.i66

bb.bs:                                            ; preds = %._crit_edge.i66
  %i.aiq = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.afk, ptr noundef nonnull dereferenceable(1) %.sroa.0128.0.copyload.i, i64 noundef 31) #54 ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %._crit_edge.i66
  %i.air = fmul float %.0202.lcssa.i, 6.000000e+01
  %i.ais = fptosi float %i.air to i32             ; 2 uses
  %i.ait = add nsw i32 %i.ais, 1                  ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.afk, i64 36 ; 2 uses
  store i32 %i.ait, ptr %i.aiu, align 4
  %i.aiv = sext i32 %i.ait to i64
  %i.aiw = call noalias ptr @calloc(i64 noundef %i.aiv, i64 noundef 8) #57
  %i.aix = getelementptr inbounds nuw i8, ptr %i.afk, i64 40 ; 5 uses
  store ptr %i.aiw, ptr %i.aix, align 8
  %i.aiy = icmp sgt i32 %i.ais, -1
  br i1 %i.aiy, label %.lr.ph276.i, label %._crit_edge277.i

._crit_edge277.i:                                 ; preds = %BuildPoseFromParentJoints.exit.i, %bb.bt
  %i.aiz = phi ptr [ %i.afi, %bb.bt ], [ %.pre294.i, %BuildPoseFromParentJoints.exit.i ] ; 3 uses
  %.lcssa.i = phi i32 [ %i.ait, %bb.bt ], [ %i.aqc, %BuildPoseFromParentJoints.exit.i ]
  %i.aja = select i1 %.not219.i, ptr @.str.384, ptr %.sroa.0128.0.copyload.i
  %i.ajb = fpext float %.0202.lcssa.i to double
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.383, ptr noundef %0, ptr noundef nonnull %i.aja, i32 noundef %.lcssa.i, double noundef %i.ajb) #54
  call void @free(ptr noundef %i.agh) #54
  call void @free(ptr noundef %i.afm) #54
  %i.ajc = add i32 %.0201279.i, 1                 ; 2 uses
  %i.ajd = zext i32 %i.ajc to i64                 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aiz, i64 320
  %i.ajf = load i64, ptr %i.aje, align 8
  %i.ajg = icmp ugt i64 %i.ajf, %i.ajd
  br i1 %i.ajg, label %bb.ay, label %.loopexit.i

.lr.ph276.i:                                      ; preds = %bb.bt, %BuildPoseFromParentJoints.exit.i
  %indvars.iv291.i = phi i64 [ %indvars.iv.next292.i, %BuildPoseFromParentJoints.exit.i ], [ 0, %bb.bt ] ; 6 uses
  %i.ajh = load i32, ptr %i.afl, align 8
  %i.aji = sext i32 %i.ajh to i64
  %i.ajj = call noalias ptr @calloc(i64 noundef %i.aji, i64 noundef 40) #57
  %i.ajk = load ptr, ptr %i.aix, align 8
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.ajk, i64 %indvars.iv291.i
  store ptr %i.ajj, ptr %i.ajl, align 8
  %i.ajm = trunc nuw nsw i64 %indvars.iv291.i to i32
  %i.ajn = uitofp nneg i32 %i.ajm to float
  %i.ajo = fdiv float %i.ajn, 6.000000e+01        ; 3 uses
  %i.ajp = load i32, ptr %i.afl, align 8
  %i.ajq = icmp sgt i32 %i.ajp, 0
  br i1 %i.ajq, label %.lr.ph.i96, label %._crit_edge273.i

._crit_edge273.i:                                 ; preds = %bb.cg, %.lr.ph276.i
  %i.ajr = load ptr, ptr %i.aix, align 8
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.ajr, i64 %indvars.iv291.i
  %i.ajt = load ptr, ptr %i.ajs, align 8          ; 9 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 12 ; 2 uses
  %i.ajv = load <2 x float>, ptr %i.aey, align 4  ; 5 uses
  %i.ajw = load <2 x float>, ptr %i.afh, align 4  ; 5 uses
  %i.ajx = load <2 x float>, ptr %i.aju, align 4  ; 6 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajt, i64 20 ; 2 uses
  %i.ajz = load <2 x float>, ptr %i.ajy, align 4  ; 5 uses
  %i.aka = shufflevector <2 x float> %i.ajv, <2 x float> %i.ajw, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.akb = fneg <2 x float> %i.aka                ; 2 uses
  %51 = shufflevector <2 x float> %i.ajw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %52 = fmul <2 x float> %51, %i.ajx
  %53 = shufflevector <2 x float> %i.ajz, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %54 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajv, <2 x float> %53, <2 x float> %52)
  %i.akc = shufflevector <2 x float> %i.ajz, <2 x float> %i.ajx, <2 x i32> <i32 0, i32 2>
  %55 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aka, <2 x float> %i.akc, <2 x float> %54)
  %i.akd = shufflevector <2 x float> %i.ajw, <2 x float> %i.ajv, <2 x i32> <i32 0, i32 2>
  %56 = fneg <2 x float> %i.akd
  %57 = shufflevector <2 x float> %i.ajx, <2 x float> %i.ajz, <2 x i32> <i32 1, i32 2>
  %58 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %57, <2 x float> %55)
  %59 = shufflevector <2 x float> %i.ajw, <2 x float> %i.ajv, <2 x i32> <i32 1, i32 2>
  %60 = fneg <2 x float> %i.ajx
  %61 = shufflevector <2 x float> %i.ajz, <2 x float> %60, <2 x i32> <i32 0, i32 2>
  %62 = fmul <2 x float> %59, %61
  %63 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajw, <2 x float> %53, <2 x float> %62)
  %64 = shufflevector <2 x float> %i.ajv, <2 x float> %i.akb, <2 x i32> <i32 0, i32 2>
  %65 = shufflevector <2 x float> %i.ajx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %66 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %64, <2 x float> %65, <2 x float> %63)
  %67 = shufflevector <2 x float> %i.ajx, <2 x float> %i.ajz, <2 x i32> <i32 0, i32 2>
  %68 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akb, <2 x float> %67, <2 x float> %66)
  store <2 x float> %58, ptr %i.aju, align 4
  store <2 x float> %68, ptr %i.ajy, align 4
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajt, i64 28 ; 2 uses
  %.sroa.030.0.copyload.i = load <2 x float>, ptr %i.ake, align 4
  %.sroa.231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ajt, i64 36 ; 2 uses
  %.sroa.231.0.copyload.i = load float, ptr %.sroa.231.0..sroa_idx.i, align 4
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %i.aez, align 4
  %.sroa.229.0.copyload.i = load float, ptr %.sroa.229.0..sroa_idx.i, align 4
  %i.akf = fmul <2 x float> %.sroa.030.0.copyload.i, %.sroa.028.0.copyload.i
  %i.akg = fmul float %.sroa.231.0.copyload.i, %.sroa.229.0.copyload.i
  store <2 x float> %i.akf, ptr %i.ake, align 4
  store float %i.akg, ptr %.sroa.231.0..sroa_idx.i, align 4
  %.sroa.020.0.copyload.i85 = load <2 x float>, ptr %i.ajt, align 4
  %.sroa.221.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8 ; 4 uses
  %.sroa.221.0.copyload.i87 = load float, ptr %.sroa.221.0..sroa_idx.i86, align 4
  %.sroa.018.0.copyload.i = load <2 x float>, ptr %i.aez, align 4
  %.sroa.219.0.copyload.i = load float, ptr %.sroa.229.0..sroa_idx.i, align 4
  %i.akh = fmul <2 x float> %.sroa.020.0.copyload.i85, %.sroa.018.0.copyload.i ; 3 uses
  %i.aki = fmul float %.sroa.221.0.copyload.i87, %.sroa.219.0.copyload.i ; 4 uses
  store <2 x float> %i.akh, ptr %i.ajt, align 4
  store float %i.aki, ptr %.sroa.221.0..sroa_idx.i86, align 4
  %i.akj = load <2 x float>, ptr %i.aey, align 4  ; 4 uses
  %i.akk = load <2 x float>, ptr %i.afh, align 4  ; 4 uses
  %.sroa.01.0.vec.extract.i.i88 = extractelement <2 x float> %i.akj, i64 0 ; 4 uses
  %.sroa.25.12.vec.extract.i.i89 = extractelement <2 x float> %i.akk, i64 1 ; 4 uses
  %i.akl = fmul float %.sroa.25.12.vec.extract.i.i89, %.sroa.25.12.vec.extract.i.i89
  %i.akm = call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i.i88, float %.sroa.01.0.vec.extract.i.i88, float %i.akl)
  %.sroa.01.4.vec.extract.i.i90 = extractelement <2 x float> %i.akj, i64 1 ; 7 uses
  %.sroa.25.8.vec.extract.i.i91 = extractelement <2 x float> %i.akk, i64 0 ; 7 uses
  %i.akn = fneg float %.sroa.25.8.vec.extract.i.i91 ; 3 uses
  %i.ako = fneg float %.sroa.01.0.vec.extract.i.i88
  %i.akp = fmul float %.sroa.01.0.vec.extract.i.i88, %i.ako
  %i.akq = fneg float %.sroa.01.4.vec.extract.i.i90 ; 2 uses
  %i.akr = call float @llvm.fmuladd.f32(float %i.akq, float %.sroa.01.4.vec.extract.i.i90, float %i.akm)
  %i.aks = call float @llvm.fmuladd.f32(float %i.akn, float %.sroa.25.8.vec.extract.i.i91, float %i.akr)
  %i.akt = shufflevector <2 x float> %i.akk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.aku = insertelement <4 x float> %i.akt, float %i.akq, i64 3
  %i.akv = fmul <4 x float> %i.aku, <float -2.000000e+00, float -2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.akw = extractelement <4 x float> %i.akv, i64 2 ; 3 uses
  %i.akx = fmul float %i.akw, %i.akn
  %i.aky = call float @llvm.fmuladd.f32(float %.sroa.25.12.vec.extract.i.i89, float %.sroa.25.12.vec.extract.i.i89, float %i.akp) ; 2 uses
  %i.akz = shufflevector <2 x float> %i.akj, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.ala = insertelement <4 x float> %i.akz, float %i.aky, i64 3
  %i.alb = fmul <4 x float> %i.ala, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.alc = extractelement <4 x float> %i.alb, i64 1 ; 3 uses
  %i.ald = call float @llvm.fmuladd.f32(float %i.alc, float %.sroa.01.4.vec.extract.i.i90, float %i.akx)
  %i.ale = extractelement <2 x float> %i.akh, i64 1 ; 3 uses
  %i.alf = fmul float %i.ale, %i.ald
  %i.alg = extractelement <2 x float> %i.akh, i64 0 ; 3 uses
  %i.alh = call float @llvm.fmuladd.f32(float %i.alg, float %i.aks, float %i.alf)
  %i.ali = fmul float %.sroa.01.4.vec.extract.i.i90, %i.akw
  %i.alj = call float @llvm.fmuladd.f32(float %i.alc, float %.sroa.25.8.vec.extract.i.i91, float %i.ali)
  %i.alk = call float @llvm.fmuladd.f32(float %i.aki, float %i.alj, float %i.alh) ; 2 uses
  %.sroa.0103.0.vec.insert.i.i92 = insertelement <2 x float> poison, float %i.alk, i64 0
  %i.all = fmul float %.sroa.01.4.vec.extract.i.i90, %i.alc
  %i.alm = call float @llvm.fmuladd.f32(float %i.akw, float %.sroa.25.8.vec.extract.i.i91, float %i.all)
  %i.aln = call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract.i.i90, float %.sroa.01.4.vec.extract.i.i90, float %i.aky)
  %i.alo = call float @llvm.fmuladd.f32(float %i.akn, float %.sroa.25.8.vec.extract.i.i91, float %i.aln)
  %i.alp = fmul float %i.ale, %i.alo
  %i.alq = call float @llvm.fmuladd.f32(float %i.alg, float %i.alm, float %i.alp)
  %i.alr = shufflevector <2 x float> %i.akk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.als = insertelement <4 x float> %i.alr, float 1.000000e+00, i64 3
  %i.alt = fmul <4 x float> %i.alb, %i.als
  %i.alu = shufflevector <2 x float> %i.akj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.alv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akv, <4 x float> %i.alu, <4 x float> %i.alt) ; 4 uses
  %i.alw = extractelement <4 x float> %i.alv, i64 0
  %i.alx = call float @llvm.fmuladd.f32(float %i.aki, float %i.alw, float %i.alq) ; 2 uses
  %.sroa.0103.4.vec.insert.i.i93 = insertelement <2 x float> %.sroa.0103.0.vec.insert.i.i92, float %i.alx, i64 1
  %i.aly = extractelement <4 x float> %i.alv, i64 2
  %i.alz = fmul float %i.ale, %i.aly
  %i.ama = extractelement <4 x float> %i.alv, i64 1
  %i.amb = call float @llvm.fmuladd.f32(float %i.alg, float %i.ama, float %i.alz)
  %i.amc = extractelement <4 x float> %i.alv, i64 3
  %i.amd = call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract.i.i91, float %.sroa.25.8.vec.extract.i.i91, float %i.amc)
  %i.ame = call float @llvm.fmuladd.f32(float %i.aki, float %i.amd, float %i.amb) ; 2 uses
  store <2 x float> %.sroa.0103.4.vec.insert.i.i93, ptr %i.ajt, align 4
  store float %i.ame, ptr %.sroa.221.0..sroa_idx.i86, align 4
  %.sroa.01.0.copyload.i94 = load <2 x float>, ptr %3, align 8 ; 2 uses
  %.sroa.22.0.copyload.i95 = load float, ptr %.sroa.22.0..sroa_idx.i65, align 8
  %.sroa.03.0.vec.extract.i240.i = extractelement <2 x float> %.sroa.01.0.copyload.i94, i64 0
  %i.amf = fadd float %.sroa.03.0.vec.extract.i240.i, %i.alk
  %.sroa.08.0.vec.insert.i241.i = insertelement <2 x float> poison, float %i.amf, i64 0
  %.sroa.03.4.vec.extract.i243.i = extractelement <2 x float> %.sroa.01.0.copyload.i94, i64 1
  %i.amg = fadd float %.sroa.03.4.vec.extract.i243.i, %i.alx
  %.sroa.08.4.vec.insert.i244.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i241.i, float %i.amg, i64 1
  %i.amh = fadd float %.sroa.22.0.copyload.i95, %i.ame
  store <2 x float> %.sroa.08.4.vec.insert.i244.i, ptr %i.ajt, align 4
  store float %i.amh, ptr %.sroa.221.0..sroa_idx.i86, align 4
  %i.ami = load i32, ptr %i.afl, align 8          ; 2 uses
  %i.amj = load ptr, ptr %i.aix, align 8
  %i.amk = getelementptr inbounds nuw [8 x i8], ptr %i.amj, i64 %indvars.iv291.i
  %i.aml = load ptr, ptr %i.amk, align 8          ; 6 uses
  %i.amm = icmp sgt i32 %i.ami, 0
  br i1 %i.amm, label %.lr.ph.preheader.i.i, label %BuildPoseFromParentJoints.exit.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge273.i
  %wide.trip.count.i.i = zext nneg i32 %i.ami to i64
  br label %.lr.ph.i247.i

.lr.ph.i247.i:                                    ; preds = %bb.bx, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.bx ] ; 5 uses
  %i.amn = getelementptr inbounds nuw [36 x i8], ptr %i.afm, i64 %indvars.iv.i.i
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 32 ; 5 uses
  %i.amp = load i32, ptr %i.amo, align 4          ; 3 uses
  %i.amq = icmp sgt i32 %i.amp, -1
  br i1 %i.amq, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %.lr.ph.i247.i
  %i.amr = zext nneg i32 %i.amp to i64            ; 2 uses
  %i.ams = icmp samesign ult i64 %indvars.iv.i.i, %i.amr
  br i1 %i.ams, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.amt = trunc nuw nsw i64 %indvars.iv.i.i to i32
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.337, i32 noundef %i.amt, i32 noundef %i.amp) #54
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.amu = getelementptr inbounds nuw [40 x i8], ptr %i.aml, i64 %indvars.iv.i.i ; 9 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 12 ; 2 uses
  %i.amw = getelementptr inbounds nuw [40 x i8], ptr %i.aml, i64 %i.amr ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 12
  %i.amy = load <2 x float>, ptr %i.amx, align 4  ; 5 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amw, i64 20
  %i.ana = load <2 x float>, ptr %i.amz, align 4  ; 5 uses
  %i.anb = load <2 x float>, ptr %i.amv, align 4  ; 6 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amu, i64 20 ; 2 uses
  %i.and = load <2 x float>, ptr %i.anc, align 4  ; 5 uses
  %i.ane = shufflevector <2 x float> %i.amy, <2 x float> %i.ana, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.anf = fneg <2 x float> %i.ane                ; 2 uses
  %69 = shufflevector <2 x float> %i.ana, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %70 = fmul <2 x float> %69, %i.anb
  %71 = shufflevector <2 x float> %i.and, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %72 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amy, <2 x float> %71, <2 x float> %70)
  %i.ang = shufflevector <2 x float> %i.and, <2 x float> %i.anb, <2 x i32> <i32 0, i32 2>
  %73 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ane, <2 x float> %i.ang, <2 x float> %72)
  %i.anh = shufflevector <2 x float> %i.ana, <2 x float> %i.amy, <2 x i32> <i32 0, i32 2>
  %74 = fneg <2 x float> %i.anh
  %75 = shufflevector <2 x float> %i.anb, <2 x float> %i.and, <2 x i32> <i32 1, i32 2>
  %76 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %74, <2 x float> %75, <2 x float> %73)
  %77 = shufflevector <2 x float> %i.ana, <2 x float> %i.amy, <2 x i32> <i32 1, i32 2>
  %78 = fneg <2 x float> %i.anb
  %79 = shufflevector <2 x float> %i.and, <2 x float> %78, <2 x i32> <i32 0, i32 2>
  %80 = fmul <2 x float> %77, %79
  %81 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ana, <2 x float> %71, <2 x float> %80)
  %82 = shufflevector <2 x float> %i.amy, <2 x float> %i.anf, <2 x i32> <i32 0, i32 2>
  %83 = shufflevector <2 x float> %i.anb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %84 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %82, <2 x float> %83, <2 x float> %81)
  %85 = shufflevector <2 x float> %i.anb, <2 x float> %i.and, <2 x i32> <i32 0, i32 2>
  %86 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.anf, <2 x float> %85, <2 x float> %84)
  store <2 x float> %76, ptr %i.amv, align 4
  store <2 x float> %86, ptr %i.anc, align 4
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amu, i64 28 ; 2 uses
  %i.anj = load i32, ptr %i.amo, align 4
  %i.ank = sext i32 %i.anj to i64
  %i.anl = getelementptr inbounds [40 x i8], ptr %i.aml, i64 %i.ank ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 28
  %.sroa.030.0.copyload.i.i = load <2 x float>, ptr %i.ani, align 4
  %.sroa.231.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.amu, i64 36 ; 2 uses
  %.sroa.231.0.copyload.i.i = load float, ptr %.sroa.231.0..sroa_idx.i.i, align 4
  %.sroa.028.0.copyload.i.i = load <2 x float>, ptr %i.anm, align 4
  %.sroa.229.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.anl, i64 36
  %.sroa.229.0.copyload.i.i = load float, ptr %.sroa.229.0..sroa_idx.i.i, align 4
  %i.ann = fmul <2 x float> %.sroa.030.0.copyload.i.i, %.sroa.028.0.copyload.i.i
  %i.ano = fmul float %.sroa.231.0.copyload.i.i, %.sroa.229.0.copyload.i.i
  store <2 x float> %i.ann, ptr %i.ani, align 4
  store float %i.ano, ptr %.sroa.231.0..sroa_idx.i.i, align 4
  %i.anp = load i32, ptr %i.amo, align 4
  %i.anq = sext i32 %i.anp to i64
  %i.anr = getelementptr inbounds [40 x i8], ptr %i.aml, i64 %i.anq ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 28
  %.sroa.020.0.copyload.i.i = load <2 x float>, ptr %i.amu, align 4
  %.sroa.221.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.amu, i64 8 ; 4 uses
  %.sroa.221.0.copyload.i.i = load float, ptr %.sroa.221.0..sroa_idx.i.i, align 4
  %.sroa.018.0.copyload.i.i = load <2 x float>, ptr %i.ans, align 4
  %.sroa.219.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.anr, i64 36
  %.sroa.219.0.copyload.i.i = load float, ptr %.sroa.219.0..sroa_idx.i.i, align 4
  %i.ant = fmul <2 x float> %.sroa.020.0.copyload.i.i, %.sroa.018.0.copyload.i.i ; 3 uses
  %i.anu = fmul float %.sroa.221.0.copyload.i.i, %.sroa.219.0.copyload.i.i ; 4 uses
  store <2 x float> %i.ant, ptr %i.amu, align 4
  store float %i.anu, ptr %.sroa.221.0..sroa_idx.i.i, align 4
  %i.anv = load i32, ptr %i.amo, align 4
  %i.anw = sext i32 %i.anv to i64
  %i.anx = getelementptr inbounds [40 x i8], ptr %i.aml, i64 %i.anw ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 12
  %i.anz = load <2 x float>, ptr %i.any, align 4  ; 4 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anx, i64 20
  %i.aob = load <2 x float>, ptr %i.aoa, align 4  ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %i.anz, i64 0 ; 4 uses
  %.sroa.25.12.vec.extract.i.i.i = extractelement <2 x float> %i.aob, i64 1 ; 4 uses
  %i.aoc = fmul float %.sroa.25.12.vec.extract.i.i.i, %.sroa.25.12.vec.extract.i.i.i
  %i.aod = call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i.i.i, float %.sroa.01.0.vec.extract.i.i.i, float %i.aoc)
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %i.anz, i64 1 ; 7 uses
  %.sroa.25.8.vec.extract.i.i.i = extractelement <2 x float> %i.aob, i64 0 ; 7 uses
  %i.aoe = fneg float %.sroa.25.8.vec.extract.i.i.i ; 3 uses
  %i.aof = fneg float %.sroa.01.0.vec.extract.i.i.i
  %i.aog = fmul float %.sroa.01.0.vec.extract.i.i.i, %i.aof
  %i.aoh = fneg float %.sroa.01.4.vec.extract.i.i.i ; 2 uses
  %i.aoi = call float @llvm.fmuladd.f32(float %i.aoh, float %.sroa.01.4.vec.extract.i.i.i, float %i.aod)
  %i.aoj = call float @llvm.fmuladd.f32(float %i.aoe, float %.sroa.25.8.vec.extract.i.i.i, float %i.aoi)
  %i.aok = shufflevector <2 x float> %i.aob, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.aol = insertelement <4 x float> %i.aok, float %i.aoh, i64 3
  %i.aom = fmul <4 x float> %i.aol, <float -2.000000e+00, float -2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.aon = extractelement <4 x float> %i.aom, i64 2 ; 3 uses
  %i.aoo = fmul float %i.aon, %i.aoe
  %i.aop = call float @llvm.fmuladd.f32(float %.sroa.25.12.vec.extract.i.i.i, float %.sroa.25.12.vec.extract.i.i.i, float %i.aog) ; 2 uses
  %i.aoq = shufflevector <2 x float> %i.anz, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.aor = insertelement <4 x float> %i.aoq, float %i.aop, i64 3
  %i.aos = fmul <4 x float> %i.aor, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.aot = extractelement <4 x float> %i.aos, i64 1 ; 3 uses
  %i.aou = call float @llvm.fmuladd.f32(float %i.aot, float %.sroa.01.4.vec.extract.i.i.i, float %i.aoo)
  %i.aov = extractelement <2 x float> %i.ant, i64 1 ; 3 uses
  %i.aow = fmul float %i.aov, %i.aou
  %i.aox = extractelement <2 x float> %i.ant, i64 0 ; 3 uses
  %i.aoy = call float @llvm.fmuladd.f32(float %i.aox, float %i.aoj, float %i.aow)
  %i.aoz = fmul float %.sroa.01.4.vec.extract.i.i.i, %i.aon
  %i.apa = call float @llvm.fmuladd.f32(float %i.aot, float %.sroa.25.8.vec.extract.i.i.i, float %i.aoz)
  %i.apb = call float @llvm.fmuladd.f32(float %i.anu, float %i.apa, float %i.aoy) ; 2 uses
  %.sroa.0103.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.apb, i64 0
  %i.apc = fmul float %.sroa.01.4.vec.extract.i.i.i, %i.aot
  %i.apd = call float @llvm.fmuladd.f32(float %i.aon, float %.sroa.25.8.vec.extract.i.i.i, float %i.apc)
  %i.ape = call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract.i.i.i, float %.sroa.01.4.vec.extract.i.i.i, float %i.aop)
  %i.apf = call float @llvm.fmuladd.f32(float %i.aoe, float %.sroa.25.8.vec.extract.i.i.i, float %i.ape)
  %i.apg = fmul float %i.aov, %i.apf
  %i.aph = call float @llvm.fmuladd.f32(float %i.aox, float %i.apd, float %i.apg)
  %i.api = shufflevector <2 x float> %i.aob, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.apj = insertelement <4 x float> %i.api, float 1.000000e+00, i64 3
  %i.apk = fmul <4 x float> %i.aos, %i.apj
  %i.apl = shufflevector <2 x float> %i.anz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.apm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aom, <4 x float> %i.apl, <4 x float> %i.apk) ; 4 uses
  %i.apn = extractelement <4 x float> %i.apm, i64 0
  %i.apo = call float @llvm.fmuladd.f32(float %i.anu, float %i.apn, float %i.aph) ; 2 uses
  %.sroa.0103.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0103.0.vec.insert.i.i.i, float %i.apo, i64 1
  %i.app = extractelement <4 x float> %i.apm, i64 2
  %i.apq = fmul float %i.aov, %i.app
  %i.apr = extractelement <4 x float> %i.apm, i64 1
  %i.aps = call float @llvm.fmuladd.f32(float %i.aox, float %i.apr, float %i.apq)
  %i.apt = extractelement <4 x float> %i.apm, i64 3
  %i.apu = call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract.i.i.i, float %.sroa.25.8.vec.extract.i.i.i, float %i.apt)
  %i.apv = call float @llvm.fmuladd.f32(float %i.anu, float %i.apu, float %i.aps) ; 2 uses
  store <2 x float> %.sroa.0103.4.vec.insert.i.i.i, ptr %i.amu, align 4
  store float %i.apv, ptr %.sroa.221.0..sroa_idx.i.i, align 4
  %i.apw = load i32, ptr %i.amo, align 4
  %i.apx = sext i32 %i.apw to i64
  %i.apy = getelementptr inbounds [40 x i8], ptr %i.aml, i64 %i.apx ; 2 uses
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.apy, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.apy, i64 8
  %.sroa.22.0.copyload.i.i = load float, ptr %.sroa.22.0..sroa_idx.i.i, align 4
  %.sroa.03.0.vec.extract.i94.i.i = extractelement <2 x float> %.sroa.01.0.copyload.i.i, i64 0
  %i.apz = fadd float %.sroa.03.0.vec.extract.i94.i.i, %i.apb
  %.sroa.08.0.vec.insert.i95.i.i = insertelement <2 x float> poison, float %i.apz, i64 0
  %.sroa.03.4.vec.extract.i97.i.i = extractelement <2 x float> %.sroa.01.0.copyload.i.i, i64 1
  %i.aqa = fadd float %.sroa.03.4.vec.extract.i97.i.i, %i.apo
  %.sroa.08.4.vec.insert.i98.i.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i95.i.i, float %i.aqa, i64 1
  %i.aqb = fadd float %.sroa.22.0.copyload.i.i, %i.apv
  store <2 x float> %.sroa.08.4.vec.insert.i98.i.i, ptr %i.amu, align 4
  store float %i.aqb, ptr %.sroa.221.0..sroa_idx.i.i, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %.lr.ph.i247.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %BuildPoseFromParentJoints.exit.i, label %.lr.ph.i247.i

BuildPoseFromParentJoints.exit.i:                 ; preds = %bb.bx, %._crit_edge273.i
  %indvars.iv.next292.i = add nuw nsw i64 %indvars.iv291.i, 1 ; 2 uses
  %i.aqc = load i32, ptr %i.aiu, align 4          ; 2 uses
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = icmp slt i64 %indvars.iv.next292.i, %i.aqd
  br i1 %i.aqe, label %.lr.ph276.i, label %._crit_edge277.i

.lr.ph.i96:                                       ; preds = %.lr.ph276.i, %bb.cg
  %indvars.iv.i97 = phi i64 [ %indvars.iv.next.i98, %bb.cg ], [ 0, %.lr.ph276.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #54
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.3.0.copyload.i, i64 %indvars.iv.i97
  %i.aqg = load ptr, ptr %i.aqf, align 8          ; 5 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 96
  %i.aqi = load <2 x float>, ptr %i.aqh, align 8
  store <2 x float> %i.aqi, ptr %5, align 8
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqg, i64 104
  %i.aqk = load float, ptr %i.aqj, align 8
  store float %i.aqk, ptr %i.afd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #54
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqg, i64 108
  %i.aqm = load <4 x float>, ptr %i.aql, align 4
  store <4 x float> %i.aqm, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #54
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqg, i64 124
  %i.aqo = load <2 x float>, ptr %i.aqn, align 4
  store <2 x float> %i.aqo, ptr %7, align 8
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqg, i64 132
  %i.aqq = load float, ptr %i.aqp, align 4
  store float %i.aqq, ptr %i.afe, align 8
  %i.aqr = getelementptr inbounds nuw [32 x i8], ptr %i.agh, i64 %indvars.iv.i97 ; 6 uses
  %i.aqs = load ptr, ptr %i.aqr, align 8          ; 2 uses
  %.not220.i = icmp eq ptr %i.aqs, null
  br i1 %.not220.i, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i96
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqr, i64 24
  %i.aqu = load i32, ptr %i.aqt, align 8
  %i.aqv = load ptr, ptr %i.aqs, align 8          ; 2 uses
  %i.aqw = load ptr, ptr %i.aqv, align 8
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  %i.aqy = load ptr, ptr %i.aqx, align 8
  %i.aqz = call fastcc zeroext i1 @GetPoseAtTimeGLTF(i32 noundef %i.aqu, ptr noundef %i.aqw, ptr noundef %i.aqy, float noundef %i.ajo, ptr noundef %5)
  br i1 %i.aqz, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ara = getelementptr inbounds nuw [36 x i8], ptr %i.afm, i64 %indvars.iv.i97
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.380, ptr noundef %0, ptr noundef %i.ara) #54
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %.lr.ph.i96
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqr, i64 8
  %i.arc = load ptr, ptr %i.arb, align 8          ; 2 uses
  %.not221.i = icmp eq ptr %i.arc, null
  br i1 %.not221.i, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqr, i64 24
  %i.are = load i32, ptr %i.ard, align 8
  %i.arf = load ptr, ptr %i.arc, align 8          ; 2 uses
  %i.arg = load ptr, ptr %i.arf, align 8
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arf, i64 8
  %i.ari = load ptr, ptr %i.arh, align 8
  %i.arj = call fastcc zeroext i1 @GetPoseAtTimeGLTF(i32 noundef %i.are, ptr noundef %i.arg, ptr noundef %i.ari, float noundef %i.ajo, ptr noundef %6)
  br i1 %i.arj, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ark = getelementptr inbounds nuw [36 x i8], ptr %i.afm, i64 %indvars.iv.i97
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.381, ptr noundef %0, ptr noundef %i.ark) #54
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqr, i64 16
  %i.arm = load ptr, ptr %i.arl, align 8          ; 2 uses
  %.not222.i = icmp eq ptr %i.arm, null
  br i1 %.not222.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqr, i64 24
  %i.aro = load i32, ptr %i.arn, align 8
  %i.arp = load ptr, ptr %i.arm, align 8          ; 2 uses
  %i.arq = load ptr, ptr %i.arp, align 8
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arp, i64 8
  %i.ars = load ptr, ptr %i.arr, align 8
  %i.art = call fastcc zeroext i1 @GetPoseAtTimeGLTF(i32 noundef %i.aro, ptr noundef %i.arq, ptr noundef %i.ars, float noundef %i.ajo, ptr noundef %7)
  br i1 %i.art, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aru = getelementptr inbounds nuw [36 x i8], ptr %i.afm, i64 %indvars.iv.i97
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.382, ptr noundef %0, ptr noundef %i.aru) #54
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cd
  %i.arv = load ptr, ptr %i.aix, align 8
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.arv, i64 %indvars.iv291.i
  %i.arx = load ptr, ptr %i.arw, align 8
  %i.ary = getelementptr inbounds nuw [40 x i8], ptr %i.arx, i64 %indvars.iv.i97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aff, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.afg, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ary, ptr noundef nonnull align 4 dereferenceable(40) %8, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #54
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i97, 1 ; 2 uses
  %i.arz = load i32, ptr %i.afl, align 8
  %i.asa = sext i32 %i.arz to i64
  %i.asb = icmp slt i64 %indvars.iv.next.i98, %i.asa
  br i1 %i.asb, label %.lr.ph.i96, label %._crit_edge273.i

.loopexit.i:                                      ; preds = %._crit_edge277.i, %bb.ax
  %i.asc = phi ptr [ %i.ado, %bb.ax ], [ %i.aiz, %._crit_edge277.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #54
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.asc, i64 232
  %.pre295.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.asd = icmp ugt i64 %.pre295.i, 1
  br i1 %i.asd, label %bb.ch, label %.thread.i

bb.ch:                                            ; preds = %.loopexit.i
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.385, ptr noundef %0, i64 noundef %.pre295.i) #54
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ch, %.loopexit.i, %bb.aw
  %.0200313.i = phi ptr [ %i.ady, %.loopexit.i ], [ %i.ady, %bb.ch ], [ null, %bb.aw ]
  %i.ase = phi ptr [ %i.asc, %.loopexit.i ], [ %i.asc, %bb.ch ], [ %i.ado, %bb.aw ]
  call void @cgltf_free(ptr noundef nonnull %i.ase)
  br label %bb.ci

bb.ci:                                            ; preds = %.thread.i, %bb.av
  %.1.i64 = phi ptr [ %.0200313.i, %.thread.i ], [ null, %bb.av ]
  call void @UnloadFileData(ptr noundef %i.adi) #54
  br label %LoadModelAnimationsGLTF.exit

LoadModelAnimationsGLTF.exit:                     ; preds = %bb.at, %bb.ci
  %.0.i63 = phi ptr [ null, %bb.at ], [ %.1.i64, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.cj

bb.cj:                                            ; preds = %LoadModelAnimationsGLTF.exit, %bb.ar
  %.2 = phi ptr [ %.0.i63, %LoadModelAnimationsGLTF.exit ], [ %.1, %bb.ar ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define void @UpdateModelAnimation(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.ModelAnimation) align 8 captures(none) %1, float noundef %2) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i32, ptr %i.d, align 4              ; 5 uses
  %i.f = icmp sgt i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ne ptr %i.i, null
  %or.cond6 = select i1 %or.cond, i1 %i.j, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ne ptr %i.l, null
  %or.cond9 = select i1 %or.cond6, i1 %i.m, i1 false
  br i1 %or.cond9, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.n = fptosi float %2 to i32                   ; 5 uses
  %i.o = add nsw i32 %i.n, 1                      ; 3 uses
  %i.p = sitofp i32 %i.n to float
  %i.q = fsub float %2, %i.p                      ; 2 uses
  %i.r = fcmp olt float %i.q, 0.000000e+00
  %i.s = select i1 %i.r, float 0.000000e+00, float %i.q ; 2 uses
  %i.t = fcmp ogt float %i.s, 1.000000e+00
  %.0.i = select i1 %i.t, float 1.000000e+00, float %i.s ; 5 uses
  %.not = icmp sgt i32 %i.e, %i.n
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = urem i32 %i.n, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.not78 = icmp slt i32 %i.o, %i.e
  br i1 %.not78, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = urem i32 %i.o, %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.071 = phi i32 [ %i.v, %bb.e ], [ %i.o, %bb.d ]
  %i.w = load i32, ptr %i.g, align 8              ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = sext i32 %.0 to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aa ; 3 uses
  %i.ac = sext i32 %.071 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ac ; 3 uses
  %i.ae = fsub float 1.000000e+00, %.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %i.af, align 8
  %wide.trip.count = zext nneg i32 %i.w to i64
  %i.ah = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %bb.g

._crit_edge:                                      ; preds = %QuaternionSlerp.exit, %bb.f
  tail call fastcc void @UpdateModelAnimationVertexBuffers(ptr noundef nonnull byval(%struct.Model) align 8 %0)
  br label %bb.m

bb.g:                                             ; preds = %.lr.ph, %QuaternionSlerp.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %QuaternionSlerp.exit ] ; 10 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %indvars.iv ; 9 uses
  %i.ak = load ptr, ptr %i.ab, align 8
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.am = load ptr, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %.sroa.036.0.copyload = load <2 x float>, ptr %i.al, align 4 ; 2 uses
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.237.0.copyload = load float, ptr %.sroa.237.0..sroa_idx, align 4 ; 2 uses
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.an, align 4
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4
  %i.ao = fsub <2 x float> %.sroa.034.0.copyload, %.sroa.036.0.copyload
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.ao, <2 x float> %.sroa.036.0.copyload)
  %i.aq = fsub float %.sroa.235.0.copyload, %.sroa.237.0.copyload
  %i.ar = tail call float @llvm.fmuladd.f32(float %.0.i, float %i.aq, float %.sroa.237.0.copyload)
  store <2 x float> %i.ap, ptr %i.aj, align 4
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store float %i.ar, ptr %.sroa.439.0..sroa_idx, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.at = load ptr, ptr %i.ab, align 8
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = load ptr, ptr %i.ad, align 8
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aw, i64 %indvars.iv ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load <2 x float>, ptr %i.av, align 4    ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.bb = load <2 x float>, ptr %i.ba, align 4    ; 7 uses
  %i.bc = load <2 x float>, ptr %i.ay, align 4    ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.be = load <2 x float>, ptr %i.bd, align 4    ; 4 uses
  %.sroa.054.0.vec.extract.i = extractelement <2 x float> %i.az, i64 0
  %.sroa.023.0.vec.extract.i = extractelement <2 x float> %i.bc, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.az, %i.bc
  %i.bf = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bg = tail call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract.i, float %.sroa.023.0.vec.extract.i, float %i.bf)
  %.sroa.9.8.vec.extract.i = extractelement <2 x float> %i.bb, i64 0
  %.sroa.12.8.vec.extract.i = extractelement <2 x float> %i.be, i64 0
  %i.bh = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract.i, float %.sroa.12.8.vec.extract.i, float %i.bg)
  %.sroa.9.12.vec.extract.i = extractelement <2 x float> %i.bb, i64 1
  %.sroa.12.12.vec.extract.i = extractelement <2 x float> %i.be, i64 1
  %i.bi = tail call float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract.i, float %.sroa.12.12.vec.extract.i, float %i.bh) ; 3 uses
  %i.bj = fcmp olt float %i.bi, 0.000000e+00      ; 3 uses
  %i.bk = fneg <2 x float> %i.bc
  %i.bl = fneg <2 x float> %i.be
  %i.bm = fneg float %i.bi
  %.0.i79 = select i1 %i.bj, float %i.bm, float %i.bi ; 5 uses
  %.sroa.023.0.i = select i1 %i.bj, <2 x float> %i.bk, <2 x float> %i.bc ; 3 uses
  %.sroa.12.0.i = select i1 %i.bj, <2 x float> %i.bl, <2 x float> %i.be ; 3 uses
  %i.bn = tail call float @llvm.fabs.f32(float %.0.i79)
  %i.bo = fcmp ult float %i.bn, 1.000000e+00
  br i1 %i.bo, label %bb.h, label %QuaternionSlerp.exit

bb.h:                                             ; preds = %bb.g
  %i.bp = fcmp ogt float %.0.i79, f0x3F733333
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = fsub <2 x float> %.sroa.12.0.i, %i.bb
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bq, <2 x float> %i.bb) ; 3 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0 ; 2 uses
  %i.bt = extractelement <2 x float> %i.br, i64 1 ; 2 uses
  %i.bu = fsub <2 x float> %.sroa.023.0.i, %i.az
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.bu, <2 x float> %i.az) ; 4 uses
  %foldExtExtBinop451 = fmul <2 x float> %i.bv, %i.bv
  %i.bw = extractelement <2 x float> %foldExtExtBinop451, i64 1
  %i.bx = extractelement <2 x float> %i.bv, i64 0 ; 2 uses
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bw)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.by)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bz)
  %i.cb = tail call float @sqrtf(float noundef %i.ca) #54 ; 2 uses
  %i.cc = fcmp oeq float %i.cb, 0.000000e+00
  %i.cd = fdiv float 1.000000e+00, %i.cb
  %i.ce = select i1 %i.cc, float 1.000000e+00, float %i.cd
  %i.cf = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul <2 x float> %i.bv, %i.cg
  %i.ci = fmul <2 x float> %i.br, %i.cg
  br label %QuaternionSlerp.exit

bb.j:                                             ; preds = %bb.h
  %i.cj = tail call float @acosf(float noundef %.0.i79) #54 ; 2 uses
  %i.ck = fneg float %.0.i79
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %.0.i79, float 1.000000e+00)
  %i.cm = tail call float @sqrtf(float noundef %i.cl) #54 ; 2 uses
  %i.cn = tail call float @llvm.fabs.f32(float %i.cm)
  %i.co = fcmp olt float %i.cn, f0x358637BD
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cp = fmul <2 x float> %.sroa.023.0.i, splat (float 5.000000e-01)
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cp)
  %i.cr = fmul <2 x float> %.sroa.12.0.i, splat (float 5.000000e-01)
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cr)
  br label %QuaternionSlerp.exit

bb.l:                                             ; preds = %bb.j
  %i.ct = fmul float %i.ae, %i.cj
  %i.cu = tail call float @sinf(float noundef %i.ct) #54
  %i.cv = fmul float %.0.i, %i.cj
  %i.cw = tail call float @sinf(float noundef %i.cv) #54
  %i.cx = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cw, i64 1
  %i.cz = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fdiv <2 x float> %i.cy, %i.da           ; 2 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dd = fmul <2 x float> %.sroa.023.0.i, %i.dc
  %i.de = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.de, <2 x float> %i.dd)
  %i.dg = fmul <2 x float> %.sroa.12.0.i, %i.dc
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.de, <2 x float> %i.dg)
  br label %QuaternionSlerp.exit

QuaternionSlerp.exit:                             ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.pn87.i = phi <2 x float> [ %i.az, %bb.g ], [ %i.ch, %bb.i ], [ %i.cq, %bb.k ], [ %i.df, %bb.l ] ; 7 uses
  %.pn85.i = phi <2 x float> [ %i.bb, %bb.g ], [ %i.ci, %bb.i ], [ %i.cs, %bb.k ], [ %i.dh, %bb.l ] ; 7 uses
  store <2 x float> %.pn87.i, ptr %i.as, align 4
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store <2 x float> %.pn85.i, ptr %.sroa.429.0..sroa_idx, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.aj, i64 28 ; 2 uses
  %i.dj = load ptr, ptr %i.ab, align 8
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %indvars.iv ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.dm = load ptr, ptr %i.ad, align 8
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 28
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.dl, align 4 ; 2 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 4 ; 2 uses
  %.sroa.023.0.copyload = load <2 x float>, ptr %i.do, align 4
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 36
  %.sroa.224.0.copyload = load float, ptr %.sroa.224.0..sroa_idx, align 4
  %i.dp = fsub <2 x float> %.sroa.023.0.copyload, %.sroa.025.0.copyload
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.dp, <2 x float> %.sroa.025.0.copyload)
  %i.dr = fsub float %.sroa.224.0.copyload, %.sroa.226.0.copyload
  store <2 x float> %i.dq, ptr %i.di, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %i.ds = getelementptr inbounds nuw [40 x i8], ptr %i.ag, i64 %indvars.iv ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 36
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ea = shufflevector <2 x float> %.pn87.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop453 = fmul <2 x float> %.pn85.i, %.pn85.i
  %i.eb = fmul <2 x float> %.pn87.i, %.pn87.i     ; 2 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ee = shufflevector <2 x float> %foldExtExtBinop453, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ef = fadd <4 x float> %i.ed, %i.ee
  %i.eg = load <2 x float>, ptr %i.di, align 4    ; 3 uses
  %i.eh = load float, ptr %i.dz, align 4
  %i.ei = extractelement <2 x float> %i.eg, i64 0
  %i.ej = shufflevector <2 x float> %i.eg, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.ek = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %.scalar = tail call float @llvm.fmuladd.f32(float %.0.i, float %i.dr, float %.sroa.226.0.copyload) ; 3 uses
  %i.el = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  store float %.scalar, ptr %.sroa.4.0..sroa_idx, align 4
  %i.em = load float, ptr %i.dv, align 4          ; 3 uses
  %i.en = load <2 x float>, ptr %i.dw, align 4    ; 6 uses
  %i.eo = load <2 x float>, ptr %i.dx, align 4    ; 4 uses
  %i.ep = fmul <2 x float> %i.en, %i.en           ; 2 uses
  %i.eq = load float, ptr %i.dy, align 4          ; 4 uses
  %i.er = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ep)
  %i.es = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.et = fmul <2 x float> %i.en, %i.es           ; 3 uses
  %i.eu = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %i.en, %i.eu           ; 2 uses
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %shift = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop455 = fmul <2 x float> %i.en, %shift ; 2 uses
  %i.ex = shufflevector <2 x float> %foldExtExtBinop455, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ey = extractelement <2 x float> %foldExtExtBinop455, i64 0
  %i.ez = shufflevector <2 x float> %i.eo, <2 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.fa = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.fb = insertelement <4 x float> %i.fa, float 1.000000e+00, i64 3
  %i.fc = fmul <4 x float> %i.ez, %i.fb           ; 2 uses
  %i.fd = extractelement <4 x float> %i.fc, i64 1
  %i.fe = fsub float %i.ey, %i.fd
  %i.ff = fmul float %i.fe, 2.000000e+00          ; 2 uses
  %i.fg = shufflevector <2 x float> %i.ep, <2 x float> %i.ev, <4 x i32> <i32 1, i32 poison, i32 0, i32 3>
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> %i.ex, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.fi = fadd <4 x float> %i.fh, %i.fc           ; 4 uses
  %i.fj = extractelement <4 x float> %i.fi, i64 3
  %i.fk = fmul float %i.fj, 2.000000e+00          ; 2 uses
  %i.fl = fmul float %i.fk, 0.000000e+00          ; 2 uses
  %i.fm = fsub <2 x float> %i.ew, %i.et
  %foldExtExtBinop457 = fadd <2 x float> %i.ew, %i.et
  %i.fn = extractelement <2 x float> %foldExtExtBinop457, i64 1
  %i.fo = fmul float %i.fn, 2.000000e+00          ; 4 uses
  %i.fp = shufflevector <2 x float> %i.fm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fq = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.em, i64 0
  %i.fr = fmul <2 x float> %i.ea, %.pn85.i        ; 2 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0 ; 2 uses
  %i.ft = extractelement <2 x float> %i.fr, i64 1 ; 2 uses
  %i.fu = fadd float %i.fs, %i.ft
  %i.fv = fsub float %i.fs, %i.ft
  %i.fw = fmul float %i.fv, 2.000000e+00          ; 4 uses
  %i.fx = shufflevector <2 x float> %.pn87.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = shufflevector <2 x float> %.pn85.i, <2 x float> %.pn87.i, <2 x i32> <i32 0, i32 3>
  %i.fz = fmul <2 x float> %i.fx, %i.fy           ; 3 uses
  %i.ga = shufflevector <2 x float> %.pn85.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gb = shufflevector <2 x float> %.pn87.i, <2 x float> %.pn85.i, <2 x i32> <i32 1, i32 2>
  %i.gc = fmul <2 x float> %i.ga, %i.gb           ; 3 uses
  %foldExtExtBinop459 = fsub <2 x float> %i.fz, %i.gc
  %foldExtExtBinop461 = fsub <2 x float> %i.fz, %i.gc
  %i.gd = shufflevector <2 x float> %foldExtExtBinop461, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ge = insertelement <2 x float> %i.gd, float %i.fu, i64 1
  %i.gf = fmul <2 x float> %i.ge, splat (float 2.000000e+00) ; 2 uses
  %i.gg = extractelement <2 x float> %i.gf, i64 0
  %i.gh = fmul float %i.gg, 0.000000e+00          ; 2 uses
  %i.gi = fadd <2 x float> %i.fz, %i.gc
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> %foldExtExtBinop459, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.gk = insertelement <4 x float> %i.gj, float %.scalar, i64 3
  %i.gl = fmul <4 x float> %i.gk, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 6 uses
  %i.gm = shufflevector <4 x float> %i.el, <4 x float> %i.gl, <4 x i32> <i32 0, i32 0, i32 4, i32 poison>
  %i.gn = insertelement <4 x float> %i.gm, float %i.fw, i64 3
  %i.go = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.fw, i64 0
  %i.gp = load float, ptr %i.aj, align 4          ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.gr = load float, ptr %i.gq, align 4          ; 2 uses
  %i.gs = load float, ptr %.sroa.439.0..sroa_idx, align 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv ; 4 uses
  %i.gu = load float, ptr %i.dt, align 4          ; 3 uses
  %i.gv = load float, ptr %i.du, align 4          ; 4 uses
  %i.gw = fmul float %i.gv, 0.000000e+00
  %i.gx = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.gw, i64 0
  %i.gy = fadd <4 x float> %i.gx, <float 0.000000e+00, float poison, float 0.000000e+00, float poison> ; 3 uses
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.ha = fmul float %i.gv, %i.fk
  %i.hb = load <2 x float>, ptr %i.ds, align 4    ; 5 uses
  %i.hc = shufflevector <4 x float> %i.gy, <4 x float> poison, <2 x i32> zeroinitializer
  %i.hd = extractelement <4 x float> %i.gy, i64 0
  %i.he = shufflevector <2 x float> %i.hb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.hf = shufflevector <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x float> %i.he, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.hg = insertelement <4 x float> %i.hf, float %i.eq, i64 1
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.hi = extractelement <2 x float> %i.hb, i64 0
  %i.hj = insertelement <4 x float> %i.he, float %i.eq, i64 3
  %i.hk = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.eb)
  %i.hl = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.hm = insertelement <4 x float> %i.hl, float %i.er, i64 1
  %i.hn = insertelement <4 x float> %i.hm, float %i.em, i64 2
  %i.ho = insertelement <4 x float> %i.hn, float %i.hk, i64 3
  %i.hp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> <float -2.000000e+00, float -2.000000e+00, float 0.000000e+00, float -2.000000e+00>, <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>) ; 9 uses
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.hr = insertelement <4 x float> %i.hq, float %i.fo, i64 1
  %i.hs = shufflevector <4 x float> %i.hr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ht = extractelement <4 x float> %i.hp, i64 0
  %i.hu = fmul float %i.gv, %i.ht
  %i.hv = extractelement <4 x float> %i.hp, i64 2
  %i.hw = fadd float %i.hv, 0.000000e+00          ; 2 uses
  %i.hx = insertelement <4 x float> poison, float %i.hw, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hz = fmul float %i.eh, 0.000000e+00
  %i.ia = shufflevector <4 x float> %i.go, <4 x float> %i.hp, <4 x i32> <i32 0, i32 7, i32 2, i32 3>
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.gu, float 0.000000e+00, float 0.000000e+00)
  %i.ic = fadd float %i.ib, 0.000000e+00          ; 3 uses
  %i.id = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = fmul float %i.gv, %i.ff
  %i.ig = extractelement <4 x float> %i.fi, i64 0
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ig, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.ii = insertelement <4 x float> %i.fp, float %i.ih, i64 2
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> %i.fi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ik = fmul <4 x float> %i.ij, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 5 uses
  %i.il = extractelement <4 x float> %i.ik, i64 3
  %i.im = extractelement <4 x float> %i.ik, i64 1 ; 2 uses
  %i.in = tail call float @llvm.fmuladd.f32(float %i.il, float 0.000000e+00, float %i.hu)
  %i.io = insertelement <4 x float> poison, float %i.in, i64 0
  %i.ip = insertelement <4 x float> %i.io, float %i.ha, i64 1
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.im, float 0.000000e+00, float %i.fl)
  %i.ir = insertelement <4 x float> poison, float %i.iq, i64 0
  %i.is = shufflevector <4 x float> %i.hp, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.it = insertelement <2 x float> %i.is, float %i.ff, i64 1
  %i.iu = fmul <2 x float> %i.it, zeroinitializer ; 2 uses
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.ih, float 0.000000e+00, float %i.if)
  %i.iw = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iy = shufflevector <4 x float> %i.ik, <4 x float> poison, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.iz = insertelement <2 x float> %i.iy, float %i.ih, i64 1
  %i.ja = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.iz, <2 x float> %i.iu)
  %i.jb = shufflevector <4 x float> %i.ik, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.jc = insertelement <2 x float> %i.jb, float %i.fo, i64 1
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> zeroinitializer, <2 x float> %i.ja)
  %i.je = fadd <2 x float> %i.jd, zeroinitializer ; 3 uses
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.gu, float %i.im, float %i.fl)
  %i.jg = extractelement <4 x float> %i.hp, i64 1 ; 2 uses
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.jg, float 0.000000e+00, float %i.jf)
  %i.ji = fadd float %i.jh, 0.000000e+00          ; 3 uses
  %i.jj = tail call float @llvm.fmuladd.f32(float %i.fo, float 0.000000e+00, float %i.iv)
  %i.jk = fadd float %i.jj, 0.000000e+00          ; 3 uses
  %i.jl = shufflevector <2 x float> %i.iu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jm = shufflevector <4 x float> %i.ip, <4 x float> %i.jl, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.jn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ik, <4 x float> zeroinitializer, <4 x float> %i.jm) ; 4 uses
  %i.jo = extractelement <4 x float> %i.jn, i64 0
  %i.jp = fadd float %i.jo, 0.000000e+00          ; 2 uses
  %i.jq = extractelement <4 x float> %i.jn, i64 1
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.jg, float 0.000000e+00, float %i.jq)
  %i.js = fadd float %i.jr, 0.000000e+00          ; 3 uses
  %i.jt = shufflevector <4 x float> %i.ir, <4 x float> %i.jn, <4 x i32> <i32 0, i32 6, i32 0, i32 6>
  %i.ju = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> %i.hs, <4 x float> %i.jt)
  %i.jv = fadd <4 x float> %i.ju, zeroinitializer ; 5 uses
  %i.jw = fmul <2 x float> %i.je, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.jx = extractelement <2 x float> %i.jw, i64 0
  %i.jy = extractelement <2 x float> %i.je, i64 1
  %i.jz = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ka = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %i.jz)
  %i.kb = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kc, <2 x float> zeroinitializer, <2 x float> %i.ka)
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.jy, float 0.000000e+00, float %i.jx) ; 2 uses
  %i.kf = fadd float %i.ji, %i.ke
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.ji, float 0.000000e+00, float %i.ke)
  %i.kh = fmul float %i.jp, 0.000000e+00          ; 2 uses
  %i.ki = fadd float %i.jk, %i.kh
  %i.kj = tail call float @llvm.fmuladd.f32(float %i.jk, float 0.000000e+00, float %i.jp)
end_hunk_1
begin_hunk_2_@UpdateModelAnimationEx:bb.a
bb.h:                                             ; preds = %bb.g
  %i.cn = fcmp ogt float %.0.i170, f0x3F733333
  br i1 %i.cn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.co = fsub <2 x float> %.sroa.12.0.i, %i.bz
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.co, <2 x float> %i.bz) ; 3 uses
  %i.cq = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.cr = extractelement <2 x float> %i.cp, i64 1 ; 2 uses
  %i.cs = fsub <2 x float> %.sroa.023.0.i, %i.bx
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.cs, <2 x float> %i.bx) ; 4 uses
  %foldExtExtBinop663 = fmul <2 x float> %i.ct, %i.ct
  %i.cu = extractelement <2 x float> %foldExtExtBinop663, i64 1
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cu)
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.cw)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.cx)
  %i.cz = tail call float @sqrtf(float noundef %i.cy) #54 ; 2 uses
  %i.da = fcmp oeq float %i.cz, 0.000000e+00
  %i.db = fdiv float 1.000000e+00, %i.cz
  %i.dc = select i1 %i.da, float 1.000000e+00, float %i.db
  %i.dd = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = fmul <2 x float> %i.ct, %i.de
  %i.dg = fmul <2 x float> %i.cp, %i.de
  br label %QuaternionSlerp.exit

bb.j:                                             ; preds = %bb.h
  %i.dh = tail call float @acosf(float noundef %.0.i170) #54 ; 2 uses
  %i.di = fneg float %.0.i170
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float %.0.i170, float 1.000000e+00)
  %i.dk = tail call float @sqrtf(float noundef %i.dj) #54 ; 2 uses
  %i.dl = tail call float @llvm.fabs.f32(float %i.dk)
  %i.dm = fcmp olt float %i.dl, f0x358637BD
  br i1 %i.dm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dn = fmul <2 x float> %.sroa.023.0.i, splat (float 5.000000e-01)
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> splat (float 5.000000e-01), <2 x float> %i.dn)
  %i.dp = fmul <2 x float> %.sroa.12.0.i, splat (float 5.000000e-01)
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> splat (float 5.000000e-01), <2 x float> %i.dp)
  br label %QuaternionSlerp.exit

bb.l:                                             ; preds = %bb.j
  %i.dr = fmul float %i.aq, %i.dh
  %i.ds = tail call float @sinf(float noundef %i.dr) #54
  %i.dt = fmul float %.0.i, %i.dh
  %i.du = tail call float @sinf(float noundef %i.dt) #54
  %i.dv = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.du, i64 1
  %i.dx = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fdiv <2 x float> %i.dw, %i.dy           ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.eb = fmul <2 x float> %.sroa.023.0.i, %i.ea
  %i.ec = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.ec, <2 x float> %i.eb)
  %i.ee = fmul <2 x float> %.sroa.12.0.i, %i.ea
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ec, <2 x float> %i.ee)
  br label %QuaternionSlerp.exit

QuaternionSlerp.exit:                             ; preds = %bb.g, %bb.i, %bb.k, %bb.l
  %.pn87.i = phi <2 x float> [ %i.bx, %bb.g ], [ %i.df, %bb.i ], [ %i.do, %bb.k ], [ %i.ed, %bb.l ] ; 7 uses
  %.pn85.i = phi <2 x float> [ %i.bz, %bb.g ], [ %i.dg, %bb.i ], [ %i.dq, %bb.k ], [ %i.ef, %bb.l ] ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %.sroa.074.0.copyload = load <2 x float>, ptr %i.eg, align 4 ; 2 uses
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %.sroa.275.0.copyload = load float, ptr %.sroa.275.0..sroa_idx, align 4 ; 2 uses
  %.sroa.072.0.copyload = load <2 x float>, ptr %i.eh, align 4
  %.sroa.273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  %.sroa.273.0.copyload = load float, ptr %.sroa.273.0..sroa_idx, align 4
  %i.ei = fsub <2 x float> %.sroa.072.0.copyload, %.sroa.074.0.copyload
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.ei, <2 x float> %.sroa.074.0.copyload) ; 2 uses
  %i.ek = fsub float %.sroa.273.0.copyload, %.sroa.275.0.copyload
  %i.el = tail call float @llvm.fmuladd.f32(float %.0.i, float %i.ek, float %.sroa.275.0.copyload) ; 2 uses
  %i.em = load ptr, ptr %i.as, align 8
  %i.en = getelementptr inbounds nuw [40 x i8], ptr %i.em, i64 %indvars.iv ; 6 uses
  %i.eo = load ptr, ptr %i.au, align 8
  %i.ep = getelementptr inbounds nuw [40 x i8], ptr %i.eo, i64 %indvars.iv ; 6 uses
  %.sroa.064.0.copyload = load <2 x float>, ptr %i.en, align 4 ; 3 uses
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %.sroa.265.0.copyload = load float, ptr %.sroa.265.0..sroa_idx, align 4
  %.sroa.062.0.copyload = load <2 x float>, ptr %i.ep, align 4 ; 2 uses
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.263.0.copyload = load float, ptr %.sroa.263.0..sroa_idx, align 4
  %.sroa.08.0.vec.extract.i179 = extractelement <2 x float> %.sroa.064.0.copyload, i64 0
  %foldExtExtBinop665 = fsub <2 x float> %.sroa.062.0.copyload, %.sroa.064.0.copyload
  %i.eq = extractelement <2 x float> %foldExtExtBinop665, i64 0
  %i.er = tail call float @llvm.fmuladd.f32(float %.0.i169, float %i.eq, float %.sroa.08.0.vec.extract.i179)
  %i.es = shufflevector <2 x float> %.sroa.062.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.et = insertelement <2 x float> %i.es, float %.sroa.263.0.copyload, i64 1
  %i.eu = shufflevector <2 x float> %.sroa.064.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ev = insertelement <2 x float> %i.eu, float %.sroa.265.0.copyload, i64 1 ; 2 uses
  %i.ew = fsub <2 x float> %i.et, %i.ev
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.ew, <2 x float> %i.ev)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.fa = load <2 x float>, ptr %i.ey, align 4    ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.fc = load <2 x float>, ptr %i.fb, align 4    ; 7 uses
  %i.fd = load <2 x float>, ptr %i.ez, align 4    ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 20
  %i.ff = load <2 x float>, ptr %i.fe, align 4    ; 4 uses
  %.sroa.054.0.vec.extract.i187 = extractelement <2 x float> %i.fa, i64 0
  %.sroa.023.0.vec.extract.i188 = extractelement <2 x float> %i.fd, i64 0
  %foldExtExtBinop667 = fmul <2 x float> %i.fa, %i.fd
  %i.fg = extractelement <2 x float> %foldExtExtBinop667, i64 1
  %i.fh = tail call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract.i187, float %.sroa.023.0.vec.extract.i188, float %i.fg)
  %.sroa.9.8.vec.extract.i191 = extractelement <2 x float> %i.fc, i64 0
  %.sroa.12.8.vec.extract.i192 = extractelement <2 x float> %i.ff, i64 0
  %i.fi = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract.i191, float %.sroa.12.8.vec.extract.i192, float %i.fh)
  %.sroa.9.12.vec.extract.i193 = extractelement <2 x float> %i.fc, i64 1
  %.sroa.12.12.vec.extract.i194 = extractelement <2 x float> %i.ff, i64 1
  %i.fj = tail call float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract.i193, float %.sroa.12.12.vec.extract.i194, float %i.fi) ; 3 uses
  %i.fk = fcmp olt float %i.fj, 0.000000e+00      ; 3 uses
  %i.fl = fneg <2 x float> %i.fd
  %i.fm = fneg <2 x float> %i.ff
  %i.fn = fneg float %i.fj
  %.0.i195 = select i1 %i.fk, float %i.fn, float %i.fj ; 5 uses
  %.sroa.023.0.i196 = select i1 %i.fk, <2 x float> %i.fl, <2 x float> %i.fd ; 3 uses
  %.sroa.12.0.i197 = select i1 %i.fk, <2 x float> %i.fm, <2 x float> %i.ff ; 3 uses
  %i.fo = tail call float @llvm.fabs.f32(float %.0.i195)
  %i.fp = fcmp ult float %i.fo, 1.000000e+00
  br i1 %i.fp, label %bb.m, label %QuaternionSlerp.exit228

bb.m:                                             ; preds = %QuaternionSlerp.exit
  %i.fq = fcmp ogt float %.0.i195, f0x3F733333
  br i1 %i.fq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fr = fsub <2 x float> %.sroa.12.0.i197, %i.fc
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.fr, <2 x float> %i.fc) ; 3 uses
  %i.ft = extractelement <2 x float> %i.fs, i64 0 ; 2 uses
  %i.fu = extractelement <2 x float> %i.fs, i64 1 ; 2 uses
  %i.fv = fsub <2 x float> %.sroa.023.0.i196, %i.fa
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.fv, <2 x float> %i.fa) ; 4 uses
  %foldExtExtBinop669 = fmul <2 x float> %i.fw, %i.fw
  %i.fx = extractelement <2 x float> %foldExtExtBinop669, i64 1
  %i.fy = extractelement <2 x float> %i.fw, i64 0 ; 2 uses
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %i.fx)
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.ft, float %i.ft, float %i.fz)
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fu, float %i.ga)
  %i.gc = tail call float @sqrtf(float noundef %i.gb) #54 ; 2 uses
  %i.gd = fcmp oeq float %i.gc, 0.000000e+00
  %i.ge = fdiv float 1.000000e+00, %i.gc
  %i.gf = select i1 %i.gd, float 1.000000e+00, float %i.ge
  %i.gg = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gi = fmul <2 x float> %i.fw, %i.gh
  %i.gj = fmul <2 x float> %i.fs, %i.gh
  br label %QuaternionSlerp.exit228

bb.o:                                             ; preds = %bb.m
  %i.gk = tail call float @acosf(float noundef %.0.i195) #54 ; 2 uses
  %i.gl = fneg float %.0.i195
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float %.0.i195, float 1.000000e+00)
  %i.gn = tail call float @sqrtf(float noundef %i.gm) #54 ; 2 uses
  %i.go = tail call float @llvm.fabs.f32(float %i.gn)
  %i.gp = fcmp olt float %i.go, f0x358637BD
  br i1 %i.gp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gq = fmul <2 x float> %.sroa.023.0.i196, splat (float 5.000000e-01)
  %i.gr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> splat (float 5.000000e-01), <2 x float> %i.gq)
  %i.gs = fmul <2 x float> %.sroa.12.0.i197, splat (float 5.000000e-01)
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> splat (float 5.000000e-01), <2 x float> %i.gs)
  br label %QuaternionSlerp.exit228

bb.q:                                             ; preds = %bb.o
  %i.gu = fmul float %i.av, %i.gk
  %i.gv = tail call float @sinf(float noundef %i.gu) #54
  %i.gw = fmul float %.0.i169, %i.gk
  %i.gx = tail call float @sinf(float noundef %i.gw) #54
  %i.gy = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.gz = insertelement <2 x float> %i.gy, float %i.gx, i64 1
  %i.ha = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fdiv <2 x float> %i.gz, %i.hb           ; 2 uses
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.he = fmul <2 x float> %.sroa.023.0.i196, %i.hd
  %i.hf = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.hf, <2 x float> %i.he)
  %i.hh = fmul <2 x float> %.sroa.12.0.i197, %i.hd
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.hf, <2 x float> %i.hh)
  br label %QuaternionSlerp.exit228

QuaternionSlerp.exit228:                          ; preds = %QuaternionSlerp.exit, %bb.n, %bb.p, %bb.q
  %.pn87.i198 = phi <2 x float> [ %i.fa, %QuaternionSlerp.exit ], [ %i.gi, %bb.n ], [ %i.gr, %bb.p ], [ %i.hg, %bb.q ] ; 4 uses
  %.pn85.i199 = phi <2 x float> [ %i.fc, %QuaternionSlerp.exit ], [ %i.gj, %bb.n ], [ %i.gt, %bb.p ], [ %i.hi, %bb.q ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.en, i64 28
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %.sroa.052.0.copyload = load <2 x float>, ptr %i.hj, align 4 ; 2 uses
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 36
  %.sroa.253.0.copyload = load float, ptr %.sroa.253.0..sroa_idx, align 4
  %.sroa.050.0.copyload = load <2 x float>, ptr %i.hk, align 4
  %.sroa.251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 36
  %.sroa.251.0.copyload = load float, ptr %.sroa.251.0..sroa_idx, align 4
  %i.hl = fsub <2 x float> %.sroa.050.0.copyload, %.sroa.052.0.copyload
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.hl, <2 x float> %.sroa.052.0.copyload)
  %i.hn = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %indvars.iv ; 9 uses
  %i.ho = insertelement <4 x float> poison, float %.sroa.251.0.copyload, i64 0
  %i.hp = insertelement <4 x float> %i.ho, float %i.er, i64 1
  %i.hq = shufflevector <2 x float> %i.ex, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hr = shufflevector <4 x float> %i.hp, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hs = insertelement <4 x float> poison, float %.sroa.253.0.copyload, i64 0
  %i.ht = insertelement <4 x float> %i.hs, float %i.bo, i64 1
  %i.hu = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hv = shufflevector <4 x float> %i.ht, <4 x float> %i.hu, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.hw = fsub <4 x float> %i.hr, %i.hv
  %i.hx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %i.hw, <4 x float> %i.hv) ; 3 uses
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  store <2 x float> %i.hy, ptr %i.hn, align 4
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 2 uses
  %i.hz = extractelement <4 x float> %i.hx, i64 3
  store float %i.hz, ptr %.sroa.445.0..sroa_idx, align 4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %.sroa.054.0.vec.extract.i245 = extractelement <2 x float> %.pn87.i, i64 0
  %.sroa.023.0.vec.extract.i246 = extractelement <2 x float> %.pn87.i198, i64 0
  %foldExtExtBinop671 = fmul <2 x float> %.pn87.i, %.pn87.i198
  %i.ib = extractelement <2 x float> %foldExtExtBinop671, i64 1
  %i.ic = tail call float @llvm.fmuladd.f32(float %.sroa.054.0.vec.extract.i245, float %.sroa.023.0.vec.extract.i246, float %i.ib)
  %.sroa.9.8.vec.extract.i249 = extractelement <2 x float> %.pn85.i, i64 0
  %.sroa.12.8.vec.extract.i250 = extractelement <2 x float> %.pn85.i199, i64 0
  %i.id = tail call float @llvm.fmuladd.f32(float %.sroa.9.8.vec.extract.i249, float %.sroa.12.8.vec.extract.i250, float %i.ic)
  %.sroa.9.12.vec.extract.i251 = extractelement <2 x float> %.pn85.i, i64 1
  %.sroa.12.12.vec.extract.i252 = extractelement <2 x float> %.pn85.i199, i64 1
  %i.ie = tail call float @llvm.fmuladd.f32(float %.sroa.9.12.vec.extract.i251, float %.sroa.12.12.vec.extract.i252, float %i.id) ; 3 uses
  %i.if = fcmp olt float %i.ie, 0.000000e+00      ; 3 uses
  %i.ig = fneg <2 x float> %.pn87.i198
  %i.ih = fneg <2 x float> %.pn85.i199
  %i.ii = fneg float %i.ie
  %.0.i253 = select i1 %i.if, float %i.ii, float %i.ie ; 5 uses
  %.sroa.023.0.i254 = select i1 %i.if, <2 x float> %i.ig, <2 x float> %.pn87.i198 ; 3 uses
  %.sroa.12.0.i255 = select i1 %i.if, <2 x float> %i.ih, <2 x float> %.pn85.i199 ; 3 uses
  %i.ij = tail call float @llvm.fabs.f32(float %.0.i253)
  %i.ik = fcmp ult float %i.ij, 1.000000e+00
  br i1 %i.ik, label %bb.r, label %QuaternionSlerp.exit286

bb.r:                                             ; preds = %QuaternionSlerp.exit228
  %i.il = fcmp ogt float %.0.i253, f0x3F733333
  br i1 %i.il, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.im = fsub <2 x float> %.sroa.12.0.i255, %.pn85.i
  %i.in = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.im, <2 x float> %.pn85.i) ; 3 uses
  %i.io = extractelement <2 x float> %i.in, i64 0 ; 2 uses
  %i.ip = extractelement <2 x float> %i.in, i64 1 ; 2 uses
  %i.iq = fsub <2 x float> %.sroa.023.0.i254, %.pn87.i
  %i.ir = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.iq, <2 x float> %.pn87.i) ; 4 uses
  %foldExtExtBinop673 = fmul <2 x float> %i.ir, %i.ir
  %i.is = extractelement <2 x float> %foldExtExtBinop673, i64 1
  %i.it = extractelement <2 x float> %i.ir, i64 0 ; 2 uses
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.it, float %i.it, float %i.is)
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.io, float %i.io, float %i.iu)
  %i.iw = tail call float @llvm.fmuladd.f32(float %i.ip, float %i.ip, float %i.iv)
  %i.ix = tail call float @sqrtf(float noundef %i.iw) #54 ; 2 uses
  %i.iy = fcmp oeq float %i.ix, 0.000000e+00
  %i.iz = fdiv float 1.000000e+00, %i.ix
  %i.ja = select i1 %i.iy, float 1.000000e+00, float %i.iz
  %i.jb = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jd = fmul <2 x float> %i.ir, %i.jc
  %i.je = fmul <2 x float> %i.in, %i.jc
  br label %QuaternionSlerp.exit286

bb.t:                                             ; preds = %bb.r
  %i.jf = tail call float @acosf(float noundef %.0.i253) #54 ; 2 uses
  %i.jg = fneg float %.0.i253
  %i.jh = tail call float @llvm.fmuladd.f32(float %i.jg, float %.0.i253, float 1.000000e+00)
  %i.ji = tail call float @sqrtf(float noundef %i.jh) #54 ; 2 uses
  %i.jj = tail call float @llvm.fabs.f32(float %i.ji)
  %i.jk = fcmp olt float %i.jj, f0x358637BD
  br i1 %i.jk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jl = fmul <2 x float> %.sroa.023.0.i254, splat (float 5.000000e-01)
  %i.jm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn87.i, <2 x float> splat (float 5.000000e-01), <2 x float> %i.jl)
  %i.jn = fmul <2 x float> %.sroa.12.0.i255, splat (float 5.000000e-01)
  %i.jo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn85.i, <2 x float> splat (float 5.000000e-01), <2 x float> %i.jn)
  br label %QuaternionSlerp.exit286

bb.v:                                             ; preds = %bb.t
  %i.jp = fmul float %i.ay, %i.jf
  %i.jq = tail call float @sinf(float noundef %i.jp) #54
  %i.jr = fmul float %5, %i.jf
  %i.js = tail call float @sinf(float noundef %i.jr) #54
  %i.jt = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.ju = insertelement <2 x float> %i.jt, float %i.js, i64 1
  %i.jv = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fdiv <2 x float> %i.ju, %i.jw           ; 2 uses
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jz = fmul <2 x float> %.sroa.023.0.i254, %i.jy
  %i.ka = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn87.i, <2 x float> %i.ka, <2 x float> %i.jz)
  %i.kc = fmul <2 x float> %.sroa.12.0.i255, %i.jy
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.pn85.i, <2 x float> %i.ka, <2 x float> %i.kc)
  br label %QuaternionSlerp.exit286

QuaternionSlerp.exit286:                          ; preds = %QuaternionSlerp.exit228, %bb.s, %bb.u, %bb.v
  %.pn87.i256 = phi <2 x float> [ %.pn87.i, %QuaternionSlerp.exit228 ], [ %i.jd, %bb.s ], [ %i.jm, %bb.u ], [ %i.kb, %bb.v ] ; 7 uses
  %.pn85.i257 = phi <2 x float> [ %.pn85.i, %QuaternionSlerp.exit228 ], [ %i.je, %bb.s ], [ %i.jo, %bb.u ], [ %i.kd, %bb.v ] ; 7 uses
  store <2 x float> %.pn87.i256, ptr %i.ia, align 4
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  store <2 x float> %.pn85.i257, ptr %.sroa.435.0..sroa_idx, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hn, i64 28 ; 2 uses
  %i.kf = fsub <2 x float> %i.hm, %i.ej
  %i.kg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.kf, <2 x float> %i.ej)
  %i.kh = extractelement <4 x float> %i.hx, i64 0
  %i.ki = fsub float %i.kh, %i.el
  store <2 x float> %i.kg, ptr %i.ke, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 36
  %i.kj = getelementptr inbounds nuw [40 x i8], ptr %i.ba, i64 %indvars.iv ; 7 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 28
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 36
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 20
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.kr = shufflevector <2 x float> %.pn87.i256, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop675 = fmul <2 x float> %.pn85.i257, %.pn85.i257
  %shift = shufflevector <2 x float> %.pn87.i256, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop677 = fmul <2 x float> %.pn87.i256, %shift ; 2 uses
  %shift679 = shufflevector <2 x float> %.pn85.i257, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop680 = fmul <2 x float> %shift679, %.pn85.i257 ; 2 uses
  %foldExtExtBinop682 = fadd <2 x float> %foldExtExtBinop677, %foldExtExtBinop680
  %i.ks = extractelement <2 x float> %foldExtExtBinop682, i64 0
  %i.kt = fmul float %i.ks, 2.000000e+00          ; 3 uses
  %foldExtExtBinop684 = fsub <2 x float> %foldExtExtBinop677, %foldExtExtBinop680
  %i.ku = extractelement <2 x float> %foldExtExtBinop684, i64 0
  %i.kv = fmul float %i.ku, 2.000000e+00          ; 2 uses
  %i.kw = fmul <2 x float> %.pn87.i256, %.pn87.i256 ; 2 uses
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kz = shufflevector <2 x float> %foldExtExtBinop675, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.la = fadd <4 x float> %i.ky, %i.kz
  %foldExtExtBinop687 = fadd <2 x float> %i.kw, %i.kx
  %i.lb = shufflevector <2 x float> %foldExtExtBinop687, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.lc = load <2 x float>, ptr %i.ke, align 4    ; 3 uses
  %i.ld = load float, ptr %i.kq, align 4
  %i.le = extractelement <2 x float> %i.lc, i64 0
  %i.lf = shufflevector <2 x float> %i.lc, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.lg = shufflevector <2 x float> %i.lc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.lh = shufflevector <2 x float> %.pn85.i257, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x float> %i.kr, %i.lh           ; 3 uses
  %i.lj = shufflevector <2 x float> %.pn85.i257, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lk = fmul <2 x float> %.pn87.i256, %i.lj     ; 3 uses
  %foldExtExtBinop689 = fadd <2 x float> %i.li, %i.lk
  %i.ll = extractelement <2 x float> %foldExtExtBinop689, i64 0
  %i.lm = fmul float %i.ll, 2.000000e+00          ; 2 uses
  %foldExtExtBinop691 = fadd <2 x float> %i.li, %i.lk
  %i.ln = fsub <2 x float> %i.li, %i.lk
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lp = fmul float %i.lm, 0.000000e+00          ; 2 uses
  %i.lq = load float, ptr %i.hn, align 4          ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.ls = load float, ptr %i.lr, align 4          ; 2 uses
  %i.lt = load float, ptr %.sroa.445.0..sroa_idx, align 4 ; 2 uses
  %i.lu = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv ; 4 uses
  %i.lv = insertelement <3 x float> %i.lb, float -0.000000e+00, i64 2
  %i.lw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.lv, <3 x float> <float -2.000000e+00, float poison, float 0.000000e+00>, <3 x float> <float 1.000000e+00, float poison, float -0.000000e+00>) ; 3 uses
  %i.lx = shufflevector <3 x float> %i.lw, <3 x float> poison, <3 x i32> <i32 0, i32 0, i32 2>
  %i.ly = fmul float %i.ld, 0.000000e+00
  %.scalar = tail call float @llvm.fmuladd.f32(float %i.ki, float %5, float %i.el) ; 3 uses
  %i.lz = insertelement <3 x float> <float poison, float 0.000000e+00, float 0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  store float %.scalar, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ma = load float, ptr %i.km, align 4          ; 3 uses
  %i.mb = load <2 x float>, ptr %i.kn, align 4    ; 6 uses
  %i.mc = load <2 x float>, ptr %i.ko, align 4    ; 4 uses
  %i.md = fmul <2 x float> %i.mb, %i.mb           ; 2 uses
  %i.me = load float, ptr %i.kp, align 4          ; 4 uses
  %i.mf = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.md)
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.mf, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.mh = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mi = fmul <2 x float> %i.mb, %i.mh           ; 3 uses
  %i.mj = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mk = fmul <2 x float> %i.mb, %i.mj           ; 2 uses
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %shift693 = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop694 = fmul <2 x float> %i.mb, %shift693 ; 2 uses
  %i.mm = shufflevector <2 x float> %foldExtExtBinop694, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.mn = extractelement <2 x float> %foldExtExtBinop694, i64 0
  %i.mo = shufflevector <2 x float> %i.mc, <2 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.mp = shufflevector <2 x float> %i.mc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.mq = insertelement <4 x float> %i.mp, float 1.000000e+00, i64 3
  %i.mr = fmul <4 x float> %i.mo, %i.mq           ; 2 uses
  %i.ms = extractelement <4 x float> %i.mr, i64 1
  %i.mt = fsub float %i.mn, %i.ms
  %i.mu = fmul float %i.mt, 2.000000e+00          ; 2 uses
  %i.mv = shufflevector <2 x float> %i.md, <2 x float> %i.mk, <4 x i32> <i32 1, i32 poison, i32 0, i32 3>
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> %i.mm, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.mx = fadd <4 x float> %i.mw, %i.mr           ; 4 uses
  %i.my = extractelement <4 x float> %i.mx, i64 2
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.my, float -2.000000e+00, float 1.000000e+00) ; 2 uses
  %i.na = extractelement <4 x float> %i.mx, i64 3
  %i.nb = fmul float %i.na, 2.000000e+00          ; 2 uses
  %i.nc = fmul float %i.nb, 0.000000e+00          ; 2 uses
  %i.nd = fsub <2 x float> %i.ml, %i.mi
  %foldExtExtBinop696 = fadd <2 x float> %i.ml, %i.mi
  %i.ne = extractelement <2 x float> %foldExtExtBinop696, i64 1
  %i.nf = fmul float %i.ne, 2.000000e+00          ; 4 uses
  %i.ng = shufflevector <2 x float> %i.nd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nh = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ma, i64 0
  %i.ni = insertelement <4 x float> poison, float %i.mg, i64 0
  %i.nj = insertelement <4 x float> %i.ni, float %i.nf, i64 1
  %i.nk = shufflevector <4 x float> %i.nj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.nl = shufflevector <3 x float> %i.lz, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison> ; 2 uses
  %i.nm = shufflevector <2 x float> %foldExtExtBinop691, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nn = shufflevector <4 x float> %i.nl, <4 x float> %i.nm, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.no = shufflevector <4 x float> %i.lo, <4 x float> %i.nn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.np = fmul <4 x float> %i.no, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 6 uses
  %i.nq = extractelement <4 x float> %i.np, i64 0 ; 2 uses
  %i.nr = extractelement <4 x float> %i.np, i64 1
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.le, float %i.nr, float %i.lp)
  %i.nt = shufflevector <4 x float> %i.nl, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.nu = load float, ptr %i.kk, align 4          ; 3 uses
  %i.nv = load float, ptr %i.kl, align 4          ; 4 uses
  %i.nw = tail call float @llvm.fmuladd.f32(float %i.nu, float 0.000000e+00, float 0.000000e+00)
  %i.nx = fadd float %i.nw, 0.000000e+00          ; 3 uses
  %i.ny = fmul float %i.nv, %i.mz
  %i.nz = fmul float %i.nv, 0.000000e+00
  %i.oa = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, float %i.nz, i64 0
  %i.ob = fadd <4 x float> %i.oa, <float 0.000000e+00, float poison, float 0.000000e+00, float poison> ; 3 uses
  %i.oc = shufflevector <4 x float> %i.ob, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.od = fmul float %i.nv, %i.nb
  %i.oe = load <2 x float>, ptr %i.kj, align 4    ; 5 uses
  %i.of = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.og = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oh = shufflevector <4 x float> %i.ob, <4 x float> poison, <2 x i32> zeroinitializer
  %i.oi = extractelement <4 x float> %i.ob, i64 0
  %i.oj = shufflevector <2 x float> %i.oe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ok = shufflevector <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x float> %i.oj, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.ol = insertelement <4 x float> %i.ok, float %i.me, i64 1
  %i.om = shufflevector <4 x float> %i.ol, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.on = extractelement <2 x float> %i.oe, i64 0
  %i.oo = fmul float %i.nv, %i.mu
  %i.op = extractelement <4 x float> %i.mx, i64 0
  %i.oq = tail call float @llvm.fmuladd.f32(float %i.op, float -2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.or = insertelement <4 x float> %i.ng, float %i.oq, i64 2
  %i.os = shufflevector <4 x float> %i.or, <4 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ot = fmul <4 x float> %i.os, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00> ; 5 uses
  %i.ou = extractelement <4 x float> %i.ot, i64 3
  %i.ov = extractelement <4 x float> %i.ot, i64 1 ; 2 uses
  %i.ow = tail call float @llvm.fmuladd.f32(float %i.ou, float 0.000000e+00, float %i.ny)
  %i.ox = insertelement <4 x float> poison, float %i.ow, i64 0
  %i.oy = insertelement <4 x float> %i.ox, float %i.od, i64 1
  %i.oz = tail call float @llvm.fmuladd.f32(float %i.ov, float 0.000000e+00, float %i.nc)
  %i.pa = insertelement <4 x float> poison, float %i.oz, i64 0
  %i.pb = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.pc = insertelement <2 x float> %i.pb, float %i.mu, i64 1
  %i.pd = fmul <2 x float> %i.pc, zeroinitializer ; 2 uses
  %i.pe = tail call float @llvm.fmuladd.f32(float %i.oq, float 0.000000e+00, float %i.oo)
  %i.pf = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.pg = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ph = shufflevector <4 x float> %i.ot, <4 x float> poison, <2 x i32> <i32 3, i32 0> ; 3 uses
  %i.pi = insertelement <2 x float> %i.ph, float %i.oq, i64 1
  %i.pj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pg, <2 x float> %i.pi, <2 x float> %i.pd)
  %i.pk = shufflevector <4 x float> %i.ot, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.pl = insertelement <2 x float> %i.pk, float %i.nf, i64 1
  %i.pm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> zeroinitializer, <2 x float> %i.pj)
  %i.pn = fadd <2 x float> %i.pm, zeroinitializer ; 3 uses
  %i.po = tail call float @llvm.fmuladd.f32(float %i.nu, float %i.ov, float %i.nc)
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.mg, float 0.000000e+00, float %i.po)
  %i.pq = fadd float %i.pp, 0.000000e+00          ; 3 uses
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.nf, float 0.000000e+00, float %i.pe)
  %i.ps = fadd float %i.pr, 0.000000e+00          ; 3 uses
  %i.pt = shufflevector <2 x float> %i.pd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pu = shufflevector <4 x float> %i.oy, <4 x float> %i.pt, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.pv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ot, <4 x float> zeroinitializer, <4 x float> %i.pu) ; 4 uses
  %i.pw = extractelement <4 x float> %i.pv, i64 0
  %i.px = extractelement <4 x float> %i.pv, i64 1
  %i.py = tail call float @llvm.fmuladd.f32(float %i.mg, float 0.000000e+00, float %i.px)
  %i.pz = fadd float %i.py, 0.000000e+00          ; 3 uses
  %i.qa = shufflevector <4 x float> %i.pa, <4 x float> %i.pv, <4 x i32> <i32 0, i32 6, i32 0, i32 6>
  %i.qb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nh, <4 x float> %i.nk, <4 x float> %i.qa)
  %i.qc = fadd <4 x float> %i.qb, zeroinitializer ; 5 uses
  %i.qd = fmul <2 x float> %i.pn, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.qe = extractelement <2 x float> %i.qd, i64 0
  %i.qf = extractelement <2 x float> %i.pn, i64 1
  %i.qg = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qd, <2 x float> <float 1.000000e+00, float 0.000000e+00>, <2 x float> %i.qg)
  %i.qi = insertelement <2 x float> poison, float %i.pq, i64 0
  %i.qj = shufflevector <2 x float> %i.qi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qj, <2 x float> zeroinitializer, <2 x float> %i.qh)
  %i.ql = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.og, <2 x float> %i.oe, <2 x float> %i.qk) ; 6 uses
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.qn = tail call float @llvm.fmuladd.f32(float %i.qf, float 0.000000e+00, float %i.qe) ; 2 uses
  %i.qo = fadd float %i.pq, %i.qn
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.nx, float %i.me, float %i.qo) ; 4 uses
  %i.qq = tail call float @llvm.fmuladd.f32(float %i.pq, float 0.000000e+00, float %i.qn)
  %i.qr = fadd float %i.nx, %i.qq                 ; 4 uses
  %i.qs = insertelement <2 x float> poison, float %i.pz, i64 0
  %i.qt = shufflevector <2 x float> %i.qs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qu = extractelement <4 x float> %i.qc, i64 1
  %i.qv = shufflevector <4 x float> %i.qc, <4 x float> %i.la, <4 x i32> <i32 2, i32 2, i32 4, i32 5>
  %i.qw = shufflevector <2 x float> %i.ql, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.qx = insertelement <4 x float> %i.qw, float %i.qp, i64 1
  %i.qy = insertelement <4 x float> %i.qx, float %i.qr, i64 2
  %i.qz = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ra = insertelement <2 x float> poison, float %i.qr, i64 0
  %i.rb = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rc = insertelement <2 x float> %i.ql, float %i.qp, i64 0 ; 2 uses
  %i.rd = shufflevector <4 x float> %i.pv, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.re = insertelement <2 x float> poison, float %i.ma, i64 0
end_hunk_2
begin_hunk_3_@_m3dstbi__create_png_image_raw:bb.a
  %.0840.ph = phi ptr [ %i.aqq, %.lr.ph842.preheader ], [ %i.aqt, %middle.block1602 ]
  %.8575838.ph = phi i32 [ 0, %.lr.ph842.preheader ], [ %i.aqu, %middle.block1602 ]
  br label %.lr.ph842

.lr.ph842:                                        ; preds = %.lr.ph842.preheader1611, %.lr.ph842
  %.0840 = phi ptr [ %i.ate, %.lr.ph842 ], [ %.0840.ph, %.lr.ph842.preheader1611 ] ; 4 uses
  %.8575838 = phi i32 [ %i.atd, %.lr.ph842 ], [ %.8575838.ph, %.lr.ph842.preheader1611 ]
  %i.asw = load i8, ptr %.0840, align 1
  %i.asx = zext i8 %i.asw to i16
  %i.asy = shl nuw i16 %i.asx, 8
  %i.asz = getelementptr inbounds nuw i8, ptr %.0840, i64 1
  %i.ata = load i8, ptr %i.asz, align 1
  %i.atb = zext i8 %i.ata to i16
  %i.atc = or disjoint i16 %i.asy, %i.atb
  store i16 %i.atc, ptr %.0840, align 2
  %i.atd = add nuw i32 %.8575838, 1               ; 2 uses
  %i.ate = getelementptr i8, ptr %.0840, i64 2
  %exitcond979.not = icmp eq i32 %i.atd, %i.aqp
  br i1 %exitcond979.not, label %.loopexit713, label %.lr.ph842, !llvm.loop !373

.loopexit713.sink.split:                          ; preds = %bb.k, %bb.i, %bb.h, %_m3dstbi__mul2sizes_valid.exit12.i, %_m3dstbi__mul2sizes_valid.exit.i, %bb.d, %_m3dstbi__mul2sizes_valid.exit.thread15.i, %_m3dstbi__malloc_mad3.exit, %_m3dstbi__malloc_mad3.exit.thread
  %.str.319.sink = phi ptr [ @.str.319, %bb.i ], [ @.str.319, %bb.h ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit12.i ], [ @.str.320, %_m3dstbi__malloc_mad3.exit ], [ @.str.320, %_m3dstbi__malloc_mad3.exit.thread ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit.thread15.i ], [ @.str.319, %bb.d ], [ @.str.319, %_m3dstbi__mul2sizes_valid.exit.i ], [ @.str.319, %bb.k ]
  store ptr %.str.319.sink, ptr @_m3dstbi__g_failure_reason, align 8
  br label %.loopexit713

.loopexit713:                                     ; preds = %.loopexit, %.lr.ph842, %middle.block1602, %.loopexit713.sink.split, %._crit_edge837.thread, %bb.ay, %bb.ax
  %.2578 = phi i32 [ 1, %bb.ax ], [ 1, %bb.ay ], [ 1, %._crit_edge837.thread ], [ 0, %.loopexit713.sink.split ], [ 1, %middle.block1602 ], [ 1, %.lr.ph842 ], [ 1, %.loopexit ]
  ret i32 %.2578

.lr.ph854.rtvec:                                  ; preds = %.lr.ph854
  %i.atf = load i8, ptr %.1524853, align 1        ; 4 uses
  %i.atg = lshr i8 %i.atf, 6
  %i.ath = lshr i8 %i.atf, 4
  %i.ati = lshr i8 %i.atf, 2
  %i.atj = insertelement <4 x i8> poison, i8 %i.atg, i64 0
  %i.atk = insertelement <4 x i8> %i.atj, i8 %i.ath, i64 1
  %i.atl = insertelement <4 x i8> %i.atk, i8 %i.ati, i64 2
  %i.atm = insertelement <4 x i8> %i.atl, i8 %i.atf, i64 3
  %i.atn = and <4 x i8> %i.atm, <i8 -1, i8 3, i8 3, i8 3>
  %i.ato = mul <4 x i8> %i.atn, %i.ajv
  store <4 x i8> %i.ato, ptr %.1526852, align 1
  br label %.lr.ph854.rtcont

.lr.ph854.rtscalar:                               ; preds = %.lr.ph854
  %i.atp = load i8, ptr %.1524853, align 1
  %i.atq = lshr i8 %i.atp, 6
  %i.atr = mul i8 %i.atq, %i.ajt
  %i.ats = getelementptr inbounds nuw i8, ptr %.1526852, i64 1
  store i8 %i.atr, ptr %.1526852, align 1
  %i.att = load i8, ptr %.1524853, align 1
  %i.atu = lshr i8 %i.att, 4
  %i.atv = and i8 %i.atu, 3
  %i.atw = mul i8 %i.atv, %i.ajt
  %i.atx = getelementptr inbounds nuw i8, ptr %.1526852, i64 2
  store i8 %i.atw, ptr %i.ats, align 1
  %i.aty = load i8, ptr %.1524853, align 1
  %i.atz = lshr i8 %i.aty, 2
  %i.aua = and i8 %i.atz, 3
  %i.aub = mul i8 %i.aua, %i.ajt
  %i.auc = getelementptr inbounds nuw i8, ptr %.1526852, i64 3
  store i8 %i.aub, ptr %i.atx, align 1
  %i.aud = load i8, ptr %.1524853, align 1
  %i.aue = and i8 %i.aud, 3
  %i.auf = mul i8 %i.aue, %i.ajt
  store i8 %i.auf, ptr %i.auc, align 1
  br label %.lr.ph854.rtcont

.lr.ph854.rtcont:                                 ; preds = %.lr.ph854.rtscalar, %.lr.ph854.rtvec
  %.rtmerge1610 = icmp ugt i32 %.15851, 7
  %.rtmerge1609 = getelementptr inbounds nuw i8, ptr %.1524853, i64 1 ; 2 uses
  %.rtmerge1608 = add nsw i32 %.15851, -4         ; 2 uses
  %.rtmerge = getelementptr inbounds nuw i8, ptr %.1526852, i64 4 ; 2 uses
  br i1 %.rtmerge1610, label %.lr.ph854, label %._crit_edge855
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #47

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #32

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #41

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #32

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #48

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @par_shapes__cmp1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #21 {
bb.a:
  %.b = load i1, ptr @par_shapes__sort_context.1, align 8 ; 2 uses
  %i.a = select i1 %.b, i32 20, i32 0             ; 2 uses
  %i.b = load i16, ptr %0, align 2
  %i.c = load ptr, ptr @par_shapes__sort_context.0, align 8 ; 2 uses
  %i.d = zext i16 %i.b to i64
  %.idx = mul nuw nsw i64 %i.d, 12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 3 uses
  %i.f = load float, ptr %i.e, align 4
  %i.g = fptosi float %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load float, ptr %i.h, align 4
  %i.j = fptosi float %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load float, ptr %i.k, align 4
  %i.m = fptosi float %i.l to i32
  %i.n = mul nsw i32 %i.a, %i.j
  %i.o = add nsw i32 %i.n, %i.g
  %i.p = select i1 %.b, i32 400, i32 0            ; 2 uses
  %i.q = mul nsw i32 %i.p, %i.m
  %i.r = add nsw i32 %i.o, %i.q
  %i.s = load i16, ptr %1, align 2
  %i.t = zext i16 %i.s to i64
  %.idx28 = mul nuw nsw i64 %i.t, 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx28 ; 3 uses
  %i.v = load float, ptr %i.u, align 4
  %i.w = fptosi float %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load float, ptr %i.x, align 4
  %i.z = fptosi float %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load float, ptr %i.aa, align 4
  %i.ac = fptosi float %i.ab to i32
  %i.ad = mul nsw i32 %i.a, %i.z
  %i.ae = add nsw i32 %i.ad, %i.w
  %i.af = mul nsw i32 %i.p, %i.ac
  %i.ag = add nsw i32 %i.ae, %i.af
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.r, i32 %i.ag)
  ret i32 %.0
}

declare void @LoadTexture(ptr dead_on_unwind writable sret(%struct.Texture) align 4, ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #19

declare ptr @LoadFileText(ptr noundef) local_unnamed_addr #34

declare ptr @GetWorkingDirectory() local_unnamed_addr #34

declare ptr @GetDirectoryPath(ptr noundef) local_unnamed_addr #34

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #41

declare void @UnloadFileText(ptr noundef) local_unnamed_addr #34

declare ptr @MemAlloc(i32 noundef) local_unnamed_addr #34

declare void @MemFree(ptr noundef) local_unnamed_addr #34

declare ptr @TextFormat(ptr noundef, ...) local_unnamed_addr #34

; Function Attrs: nounwind uwtable
define internal fastcc void @BuildPoseFromParentJoints(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #33 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.b = getelementptr inbounds nuw [36 x i8], ptr %0, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.f = zext nneg i32 %i.d to i64
  %i.g = icmp samesign ult i64 %indvars.iv, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.337, i32 noundef %i.h, i32 noundef %i.d) #54
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.k = zext nneg i32 %i.d to i64
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load <2 x float>, ptr %i.m, align 4      ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.p = load <2 x float>, ptr %i.o, align 4      ; 5 uses
  %i.q = load <2 x float>, ptr %i.j, align 4      ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 20 ; 2 uses
  %i.s = load <2 x float>, ptr %i.r, align 4      ; 5 uses
  %i.t = shufflevector <2 x float> %i.n, <2 x float> %i.p, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.u = fneg <2 x float> %i.t                    ; 2 uses
  %3 = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %4 = fmul <2 x float> %3, %i.q
  %5 = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %6 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %5, <2 x float> %4)
  %i.v = shufflevector <2 x float> %i.s, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %7 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.v, <2 x float> %6)
  %i.w = shufflevector <2 x float> %i.p, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %8 = fneg <2 x float> %i.w
  %9 = shufflevector <2 x float> %i.q, <2 x float> %i.s, <2 x i32> <i32 1, i32 2>
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %9, <2 x float> %7)
  %11 = shufflevector <2 x float> %i.p, <2 x float> %i.n, <2 x i32> <i32 1, i32 2>
  %12 = fneg <2 x float> %i.q
  %13 = shufflevector <2 x float> %i.s, <2 x float> %12, <2 x i32> <i32 0, i32 2>
  %14 = fmul <2 x float> %11, %13
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %5, <2 x float> %14)
  %16 = shufflevector <2 x float> %i.n, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %17 = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %18 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %17, <2 x float> %15)
  %19 = shufflevector <2 x float> %i.q, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %19, <2 x float> %18)
  store <2 x float> %10, ptr %i.j, align 4
  store <2 x float> %20, ptr %i.r, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.c, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [40 x i8], ptr %2, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %.sroa.030.0.copyload = load <2 x float>, ptr %i.x, align 4
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 36 ; 2 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 4
  %.sroa.028.0.copyload = load <2 x float>, ptr %i.ab, align 4
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  %.sroa.229.0.copyload = load float, ptr %.sroa.229.0..sroa_idx, align 4
  %i.ac = fmul <2 x float> %.sroa.030.0.copyload, %.sroa.028.0.copyload
  %i.ad = fmul float %.sroa.231.0.copyload, %.sroa.229.0.copyload
  store <2 x float> %i.ac, ptr %i.x, align 4
  store float %i.ad, ptr %.sroa.231.0..sroa_idx, align 4
  %i.ae = load i32, ptr %i.c, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [40 x i8], ptr %2, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %.sroa.020.0.copyload = load <2 x float>, ptr %i.i, align 4
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %.sroa.221.0.copyload = load float, ptr %.sroa.221.0..sroa_idx, align 4
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.ah, align 4
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  %.sroa.219.0.copyload = load float, ptr %.sroa.219.0..sroa_idx, align 4
  %i.ai = fmul <2 x float> %.sroa.020.0.copyload, %.sroa.018.0.copyload ; 3 uses
  %i.aj = fmul float %.sroa.221.0.copyload, %.sroa.219.0.copyload ; 4 uses
  store <2 x float> %i.ai, ptr %i.i, align 4
  store float %i.aj, ptr %.sroa.221.0..sroa_idx, align 4
  %i.ak = load i32, ptr %i.c, align 4
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [40 x i8], ptr %2, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load <2 x float>, ptr %i.an, align 4    ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.aq = load <2 x float>, ptr %i.ap, align 4    ; 4 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %i.ao, i64 0 ; 4 uses
  %.sroa.25.12.vec.extract.i = extractelement <2 x float> %i.aq, i64 1 ; 4 uses
  %i.ar = fmul float %.sroa.25.12.vec.extract.i, %.sroa.25.12.vec.extract.i
  %i.as = tail call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i, float %.sroa.01.0.vec.extract.i, float %i.ar)
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %i.ao, i64 1 ; 7 uses
  %.sroa.25.8.vec.extract.i = extractelement <2 x float> %i.aq, i64 0 ; 7 uses
  %i.at = fneg float %.sroa.25.8.vec.extract.i    ; 3 uses
  %i.au = fneg float %.sroa.01.0.vec.extract.i
  %i.av = fmul float %.sroa.01.0.vec.extract.i, %i.au
  %i.aw = fneg float %.sroa.01.4.vec.extract.i    ; 2 uses
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float %.sroa.01.4.vec.extract.i, float %i.as)
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.at, float %.sroa.25.8.vec.extract.i, float %i.ax)
  %i.az = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 3
  %i.bb = fmul <4 x float> %i.ba, <float -2.000000e+00, float -2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.bc = extractelement <4 x float> %i.bb, i64 2 ; 3 uses
  %i.bd = fmul float %i.bc, %i.at
  %i.be = tail call float @llvm.fmuladd.f32(float %.sroa.25.12.vec.extract.i, float %.sroa.25.12.vec.extract.i, float %i.av) ; 2 uses
  %i.bf = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.bg = insertelement <4 x float> %i.bf, float %i.be, i64 3
  %i.bh = fmul <4 x float> %i.bg, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.bi = extractelement <4 x float> %i.bh, i64 1 ; 3 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float %.sroa.01.4.vec.extract.i, float %i.bd)
  %i.bk = extractelement <2 x float> %i.ai, i64 1 ; 3 uses
  %i.bl = fmul float %i.bk, %i.bj
  %i.bm = extractelement <2 x float> %i.ai, i64 0 ; 3 uses
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.ay, float %i.bl)
  %i.bo = fmul float %.sroa.01.4.vec.extract.i, %i.bc
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bi, float %.sroa.25.8.vec.extract.i, float %i.bo)
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.bp, float %i.bn) ; 2 uses
  %.sroa.0103.0.vec.insert.i = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.br = fmul float %.sroa.01.4.vec.extract.i, %i.bi
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bc, float %.sroa.25.8.vec.extract.i, float %i.br)
  %i.bt = tail call float @llvm.fmuladd.f32(float %.sroa.01.4.vec.extract.i, float %.sroa.01.4.vec.extract.i, float %i.be)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.at, float %.sroa.25.8.vec.extract.i, float %i.bt)
  %i.bv = fmul float %i.bk, %i.bu
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bs, float %i.bv)
  %i.bx = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.by = insertelement <4 x float> %i.bx, float 1.000000e+00, i64 3
  %i.bz = fmul <4 x float> %i.bh, %i.by
  %i.ca = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> %i.ca, <4 x float> %i.bz) ; 4 uses
  %i.cc = extractelement <4 x float> %i.cb, i64 0
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.cc, float %i.bw) ; 2 uses
  %.sroa.0103.4.vec.insert.i = insertelement <2 x float> %.sroa.0103.0.vec.insert.i, float %i.cd, i64 1
  %i.ce = extractelement <4 x float> %i.cb, i64 2
  %i.cf = fmul float %i.bk, %i.ce
  %i.cg = extractelement <4 x float> %i.cb, i64 1
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.cg, float %i.cf)
  %i.ci = extractelement <4 x float> %i.cb, i64 3
  %i.cj = tail call float @llvm.fmuladd.f32(float %.sroa.25.8.vec.extract.i, float %.sroa.25.8.vec.extract.i, float %i.ci)
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.cj, float %i.ch) ; 2 uses
  store <2 x float> %.sroa.0103.4.vec.insert.i, ptr %i.i, align 4
  store float %i.ck, ptr %.sroa.221.0..sroa_idx, align 4
  %i.cl = load i32, ptr %i.c, align 4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [40 x i8], ptr %2, i64 %i.cm ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.cn, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.03.0.vec.extract.i94 = extractelement <2 x float> %.sroa.01.0.copyload, i64 0
  %i.co = fadd float %.sroa.03.0.vec.extract.i94, %i.bq
  %.sroa.08.0.vec.insert.i95 = insertelement <2 x float> poison, float %i.co, i64 0
  %.sroa.03.4.vec.extract.i97 = extractelement <2 x float> %.sroa.01.0.copyload, i64 1
  %i.cp = fadd float %.sroa.03.4.vec.extract.i97, %i.cd
  %.sroa.08.4.vec.insert.i98 = insertelement <2 x float> %.sroa.08.0.vec.insert.i95, float %i.cp, i64 1
  %i.cq = fadd float %.sroa.22.0.copyload, %i.ck
  store <2 x float> %.sroa.08.4.vec.insert.i98, ptr %i.i, align 4
  store float %i.cq, ptr %.sroa.221.0..sroa_idx, align 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nounwind uwtable
declare { <2 x float>, <2 x float> } @QuaternionNormalize(<2 x float>, <2 x float>) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @LoadFileGLTFCallback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %i.b = call ptr @LoadFileData(ptr noundef %2, ptr noundef nonnull %i.a) #54 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4
  %i.e = sext i32 %i.d to i64
  store i64 %i.e, ptr %3, align 8
  store ptr %i.b, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 7, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @ReleaseFileGLTFCallback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, i64 %3) #0 {
bb.a:
  tail call void @UnloadFileData(ptr noundef %2) #54
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LoadImageFromCgltfImage(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.cgltf_options, align 8      ; 6 uses
  %4 = alloca %struct.Image, align 8              ; 4 uses
  %5 = alloca %struct.Image, align 8              ; 4 uses
  %6 = alloca %struct.Image, align 8              ; 4 uses
  %7 = alloca %struct.Image, align 8              ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 11 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #51
  %i.f = icmp ugt i64 %i.e, 5
  br i1 %i.f, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.d, align 1
  %i.h = icmp eq i8 %i.g, 100
  br i1 %i.h, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 97
  br i1 %i.k, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 116
  br i1 %i.n, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 97
  br i1 %i.q, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 58
  br i1 %i.t, label %.preheader, label %bb.p

.preheader:                                       ; preds = %bb.h, %bb.i
  %i.u = phi i8 [ %.pre, %bb.i ], [ 100, %bb.h ]
end_hunk_3
begin_hunk_4_@GetPoseAtTimeGLTF:bb.a
  %.not10.i.i189 = icmp eq ptr %i.az, null
  br i1 %.not10.i.i189, label %.thread233, label %cgltf_buffer_view_data.exit.i190

cgltf_buffer_view_data.exit.i190:                 ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  br label %cgltf_buffer_view_data.exit.thread33.i187

cgltf_buffer_view_data.exit.thread33.i187:        ; preds = %cgltf_buffer_view_data.exit.i190, %bb.i
  %.0.i35.i188 = phi ptr [ %i.bc, %cgltf_buffer_view_data.exit.i190 ], [ %i.av, %bb.i ]
  %i.bd = load i64, ptr %i.u, align 8
  %i.be = load i64, ptr %i.v, align 8
  %i.bf = mul i64 %i.be, %indvars.iv.next
  %i.bg = getelementptr i8, ptr %.0.i35.i188, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bf
  br label %cgltf_accessor_read_float.exit191

cgltf_accessor_read_float.exit191:                ; preds = %bb.h, %cgltf_buffer_view_data.exit.thread33.i187
  %.sink266 = phi ptr [ %i.bh, %cgltf_buffer_view_data.exit.thread33.i187 ], [ %i.ar, %bb.h ]
  %i.bi = load i32, ptr %i.q, align 8
  %i.bj = load i32, ptr %i.r, align 8
  %i.bk = load i32, ptr %i.s, align 4
  %i.bl = call fastcc i32 @cgltf_element_read_float(ptr noundef %.sink266, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.bk, ptr noundef nonnull %i.b, i64 noundef 1)
  %.not176 = icmp eq i32 %i.bl, 0
  br i1 %.not176, label %.thread233, label %cgltf_accessor_read_float.exit191._crit_edge

cgltf_accessor_read_float.exit191._crit_edge:     ; preds = %cgltf_accessor_read_float.exit191
  %.pre = load float, ptr %i.b, align 4
  br label %bb.k

bb.k:                                             ; preds = %cgltf_accessor_read_float.exit191._crit_edge, %cgltf_accessor_read_float.exit191.thread221
  %i.bm = phi float [ %.pre, %cgltf_accessor_read_float.exit191._crit_edge ], [ 0.000000e+00, %cgltf_accessor_read_float.exit191.thread221 ] ; 3 uses
  %i.bn = load float, ptr %i.a, align 4           ; 3 uses
  %i.bo = fcmp ole float %i.bn, %3
  %i.bp = fcmp olt float %3, %i.bm
  %or.cond = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond, label %.thread227.loopexit.split.loop.exit259, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread227, label %bb.c

.thread227.loopexit.split.loop.exit259:           ; preds = %bb.k
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread227

.thread227:                                       ; preds = %bb.l, %.thread227.loopexit.split.loop.exit259, %bb.b
  %i.br = phi float [ 0.000000e+00, %bb.b ], [ %i.bn, %.thread227.loopexit.split.loop.exit259 ], [ %i.bn, %bb.l ] ; 3 uses
  %i.bs = phi float [ 0.000000e+00, %bb.b ], [ %i.bm, %.thread227.loopexit.split.loop.exit259 ], [ %i.bm, %bb.l ] ; 2 uses
  %.3168231 = phi i32 [ 0, %bb.b ], [ %i.bq, %.thread227.loopexit.split.loop.exit259 ], [ 0, %bb.l ] ; 8 uses
  %i.bt = fsub float %i.bs, %i.br                 ; 2 uses
  %i.bu = tail call float @llvm.fabs.f32(float %i.bt)
  %i.bv = tail call nsz float @llvm.fabs.f32(float %i.bs)
  %i.bw = tail call nsz float @llvm.fabs.f32(float %i.br)
  %i.bx = tail call nsz float @llvm.maxnum.f32(float %i.bv, float %i.bw)
  %i.by = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bt, i64 1
  %i.ca = tail call nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bz, <2 x float> <float 1.000000e+00, float f0x358637BD>) ; 4 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 1 ; 2 uses
  %i.cc = extractelement <2 x float> %i.ca, i64 0
  %i.cd = fmul nnan float %i.cc, f0x358637BD
  %i.ce = fcmp ugt float %i.bu, %i.cd
  %spec.select = select i1 %i.ce, i32 %0, i32 1   ; 2 uses
  %i.cf = fsub float %3, %i.br
  %i.cg = fdiv float %i.cf, %i.cb                 ; 2 uses
  %i.ch = fcmp olt float %i.cg, 0.000000e+00
  %i.ci = select i1 %i.ch, float 0.000000e+00, float %i.cg ; 2 uses
  %i.cj = fcmp ogt float %i.ci, 1.000000e+00
  %i.ck = select i1 %i.cj, float 1.000000e+00, float %i.ci ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load i32, ptr %i.cl, align 8
  %.not178 = icmp eq i32 %i.cm, 6
  br i1 %.not178, label %bb.m, label %.thread233

bb.m:                                             ; preds = %.thread227
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = load i32, ptr %i.cn, align 8
  switch i32 %i.co, label %.thread233 [
    i32 3, label %bb.n
    i32 4, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  switch i32 %spec.select, label %default.unreachable249 [
    i32 1, label %bb.o
    i32 0, label %bb.p
    i32 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  %i.cp = zext nneg i32 %.3168231 to i64
  %i.cq = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.cp, ptr noundef nonnull %i.c, i64 noundef 3) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cs = load float, ptr %i.cr, align 8
  %i.ct = load <2 x float>, ptr %i.c, align 8
  store <2 x float> %i.ct, ptr %4, align 4
  %.sroa.597.0..0.94.sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.cs, ptr %.sroa.597.0..0.94.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  br label %.thread233

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  %i.cu = zext nneg i32 %.3168231 to i64
  %i.cv = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.cu, ptr noundef nonnull %i.d, i64 noundef 3) ; 0 uses
  %i.cw = load float, ptr %i.d, align 4           ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.cy = add nuw nsw i32 %.3168231, 1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = load <2 x float>, ptr %i.cx, align 4    ; 2 uses
  %i.db = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.cz, ptr noundef nonnull %i.d, i64 noundef 3) ; 0 uses
  %i.dc = load float, ptr %i.d, align 4
  %i.dd = load <2 x float>, ptr %i.cx, align 4
  %i.de = fsub float %i.dc, %i.cw
  %i.df = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.de, float %i.cw)
  %.sroa.014.0.vec.insert.i = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dg = fsub <2 x float> %i.dd, %i.da
  %i.dh = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.dg, <2 x float> %i.da) ; 2 uses
  %i.dk = shufflevector <2 x float> %.sroa.014.0.vec.insert.i, <2 x float> %i.dj, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.dk, ptr %4, align 4
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dl = extractelement <2 x float> %i.dj, i64 1
  store float %i.dl, ptr %.sroa.486.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #54
  br label %.thread233

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  %i.dm = mul nuw nsw i32 %.3168231, 3            ; 4 uses
  %i.dn = add nuw nsw i32 %i.dm, 1
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.do, ptr noundef nonnull %i.e, i64 noundef 3) ; 0 uses
  %i.dq = load <2 x float>, ptr %i.e, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.ds = load float, ptr %i.dr, align 8
  %i.dt = add nuw nsw i32 %i.dm, 2
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.du, ptr noundef nonnull %i.e, i64 noundef 3) ; 0 uses
  %i.dw = load <2 x float>, ptr %i.e, align 8
  %i.dx = load float, ptr %i.dr, align 8
  %i.dy = add nuw i32 %i.dm, 3
  %i.dz = add nuw i32 %i.dm, 4
  %i.ea = sext i32 %i.dz to i64
  %i.eb = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.ea, ptr noundef nonnull %i.e, i64 noundef 3) ; 0 uses
  %i.ec = load <2 x float>, ptr %i.e, align 8
  %i.ed = load float, ptr %i.dr, align 8
  %i.ee = sext i32 %i.dy to i64
  %i.ef = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.ee, ptr noundef nonnull %i.e, i64 noundef 3) ; 0 uses
  %i.eg = load <2 x float>, ptr %i.e, align 8
  %i.eh = load float, ptr %i.dr, align 8
  %i.ei = tail call { <2 x float>, float } @Vector3CubicHermite(<2 x float> %i.dq, float %i.ds, <2 x float> %i.dw, float %i.dx, <2 x float> %i.ec, float %i.ed, <2 x float> %i.eg, float %i.eh, float noundef %i.ck) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ei, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ei, 1
  store <2 x float> %.fca.0.extract, ptr %4, align 4
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.fca.1.extract, ptr %.sroa.463.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #54
  br label %.thread233

bb.r:                                             ; preds = %bb.m
  switch i32 %spec.select, label %default.unreachable249 [
    i32 1, label %bb.s
    i32 0, label %bb.t
    i32 2, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.ej = zext nneg i32 %.3168231 to i64
  %i.ek = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.ej, ptr noundef nonnull %i.f, i64 noundef 4) ; 0 uses
  %i.el = load <4 x float>, ptr %i.f, align 16
  store <4 x float> %i.el, ptr %4, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #54
  br label %.thread233

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.em = zext nneg i32 %.3168231 to i64
  %i.en = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.em, ptr noundef nonnull %i.g, i64 noundef 4) ; 0 uses
  %i.eo = load <4 x float>, ptr %i.g, align 16    ; 2 uses
  %.sroa.045.4.vec.insert = shufflevector <4 x float> %i.eo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.547.12.vec.insert = shufflevector <4 x float> %i.eo, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ep = add nuw nsw i32 %.3168231, 1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.eq, ptr noundef nonnull %i.g, i64 noundef 4) ; 0 uses
  %i.es = load <4 x float>, ptr %i.g, align 16    ; 2 uses
  %.sroa.042.4.vec.insert = shufflevector <4 x float> %i.es, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.5.12.vec.insert = shufflevector <4 x float> %i.es, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.et = tail call { <2 x float>, <2 x float> } @QuaternionSlerp(<2 x float> %.sroa.045.4.vec.insert, <2 x float> %.sroa.547.12.vec.insert, <2 x float> %.sroa.042.4.vec.insert, <2 x float> %.sroa.5.12.vec.insert, float noundef %i.ck) ; 2 uses
  %i.eu = extractvalue { <2 x float>, <2 x float> } %i.et, 0
  %i.ev = extractvalue { <2 x float>, <2 x float> } %i.et, 1
  store <2 x float> %i.eu, ptr %4, align 4
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.ev, ptr %.sroa.440.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #54
  br label %.thread233

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.ew = mul nuw nsw i32 %.3168231, 3            ; 4 uses
  %i.ex = add nuw nsw i32 %i.ew, 1
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.ey, ptr noundef nonnull %i.h, i64 noundef 4) ; 0 uses
  %i.fa = load <4 x float>, ptr %i.h, align 16    ; 2 uses
  %.sroa.032.4.vec.insert = shufflevector <4 x float> %i.fa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.12.vec.insert = shufflevector <4 x float> %i.fa, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fc = add nuw nsw i32 %i.ew, 2
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.fd, ptr noundef nonnull %i.h, i64 noundef 4) ; 0 uses
  %i.ff = load <2 x float>, ptr %i.h, align 16
  %i.fg = load <3 x float>, ptr %i.h, align 16
  %i.fh = shufflevector <3 x float> %i.fg, <3 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.fi = add nuw i32 %i.ew, 3
  %i.fj = add nuw i32 %i.ew, 4
  %i.fk = sext i32 %i.fj to i64
  %i.fl = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.fk, ptr noundef nonnull %i.h, i64 noundef 4) ; 0 uses
  %i.fm = load <4 x float>, ptr %i.h, align 16    ; 2 uses
  %.sroa.017.4.vec.insert = shufflevector <4 x float> %i.fm, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.10.12.vec.insert = shufflevector <4 x float> %i.fm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fn = sext i32 %i.fi to i64
  %i.fo = call i32 @cgltf_accessor_read_float(ptr noundef nonnull %2, i64 noundef %i.fn, ptr noundef nonnull %i.h, i64 noundef 4) ; 0 uses
  %i.fp = load <2 x float>, ptr %i.h, align 16
  %i.fq = load float, ptr %i.fb, align 8
  %i.fr = tail call { <2 x float>, <2 x float> } @QuaternionNormalize(<2 x float> %.sroa.032.4.vec.insert, <2 x float> %.sroa.8.12.vec.insert) ; 2 uses
  %i.fs = extractvalue { <2 x float>, <2 x float> } %i.fr, 0 ; 3 uses
  %i.ft = extractvalue { <2 x float>, <2 x float> } %i.fr, 1 ; 3 uses
  %i.fu = tail call { <2 x float>, <2 x float> } @QuaternionNormalize(<2 x float> %.sroa.017.4.vec.insert, <2 x float> %.sroa.10.12.vec.insert) ; 2 uses
  %i.fv = extractvalue { <2 x float>, <2 x float> } %i.fu, 0 ; 4 uses
  %i.fw = extractvalue { <2 x float>, <2 x float> } %i.fu, 1 ; 4 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %i.fs, i64 0
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.fv, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.fs, %i.fv
  %i.fx = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.fy = tail call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.fx)
  %.sroa.32.8.vec.extract.i = extractelement <2 x float> %i.ft, i64 0
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %i.fw, i64 0
  %i.fz = tail call float @llvm.fmuladd.f32(float %.sroa.32.8.vec.extract.i, float %.sroa.3.8.vec.extract.i, float %i.fy)
  %.sroa.32.12.vec.extract.i = extractelement <2 x float> %i.ft, i64 1
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %i.fw, i64 1
  %i.ga = tail call float @llvm.fmuladd.f32(float %.sroa.32.12.vec.extract.i, float %.sroa.3.12.vec.extract.i, float %i.fz)
  %i.gb = fcmp olt float %i.ga, 0.000000e+00      ; 2 uses
  %i.gc = fneg <2 x float> %i.fv
  %i.gd = fneg <2 x float> %i.fw
  %.sroa.10.0 = select i1 %i.gb, <2 x float> %i.gd, <2 x float> %i.fw
  %.sroa.017.0 = select i1 %i.gb, <2 x float> %i.gc, <2 x float> %i.fv
  %i.ge = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gf = fmul <2 x float> %i.ge, %i.ff
  %i.gg = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gh = insertelement <2 x float> %i.fh, float %i.fq, i64 1
  %i.gi = fmul <2 x float> %i.gg, %i.gh           ; 2 uses
  %i.gj = fmul float %i.cb, 0.000000e+00          ; 2 uses
  %.sroa.36.12.vec.insert.i = insertelement <2 x float> %i.gi, float %i.gj, i64 1
  %i.gk = fmul <2 x float> %i.ge, %i.fp
  %i.gl = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.36.12.vec.insert.i211 = insertelement <2 x float> %i.gl, float %i.gj, i64 1
  %i.gm = tail call { <2 x float>, <2 x float> } @QuaternionCubicHermiteSpline(<2 x float> %i.fs, <2 x float> %i.ft, <2 x float> %i.gf, <2 x float> %.sroa.36.12.vec.insert.i, <2 x float> %.sroa.017.0, <2 x float> %.sroa.10.0, <2 x float> %i.gk, <2 x float> %.sroa.36.12.vec.insert.i211, float noundef %i.ck) ; 2 uses
  %i.gn = extractvalue { <2 x float>, <2 x float> } %i.gm, 0
  %i.go = extractvalue { <2 x float>, <2 x float> } %i.gm, 1
  store <2 x float> %i.gn, ptr %4, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.go, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #54
  br label %.thread233

default.unreachable249:                           ; preds = %bb.r, %bb.n
  unreachable

.thread233:                                       ; preds = %bb.j, %bb.f, %cgltf_accessor_read_float.exit, %cgltf_accessor_read_float.exit191, %.thread227, %bb.m, %bb.u, %bb.t, %bb.s, %bb.o, %bb.p, %bb.q
  %.5 = phi i1 [ false, %.thread227 ], [ true, %bb.q ], [ true, %bb.p ], [ true, %bb.o ], [ true, %bb.s ], [ true, %bb.t ], [ true, %bb.u ], [ true, %bb.m ], [ false, %cgltf_accessor_read_float.exit191 ], [ false, %cgltf_accessor_read_float.exit ], [ false, %bb.f ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %.thread233
  %.6 = phi i1 [ %.5, %.thread233 ], [ false, %bb.a ]
  ret i1 %.6
}

; Function Attrs: inlinehint nounwind uwtable
declare { <2 x float>, float } @Vector3CubicHermite(<2 x float>, float, <2 x float>, float, <2 x float>, float, <2 x float>, float, float noundef) local_unnamed_addr #36

; Function Attrs: inlinehint nounwind uwtable
declare { <2 x float>, <2 x float> } @QuaternionCubicHermiteSpline(<2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, float noundef) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #49

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #50

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #47

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { inlinehint nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #50 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #51 = { nounwind willreturn memory(read) }
attributes #52 = { nounwind allocsize(1) }
attributes #53 = { nounwind willreturn memory(none) }
attributes #54 = { nounwind }
attributes #55 = { cold nounwind }
attributes #56 = { nounwind allocsize(0) }
attributes #57 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null, null}
!5 = distinct !{null}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!9 = !{}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!"branch_weights", i32 1, i32 1048575}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = !{!"branch_weights", i32 4, i32 28}
!17 = !{!"branch_weights", i32 4, i32 12}
!18 = !{ptr @cgltf_parse_json_extras}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !12, !11}
!22 = distinct !{null}
!23 = !{ptr @cgltf_load_buffer_base64}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
end_hunk_4
