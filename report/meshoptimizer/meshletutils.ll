Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/meshletutils?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7meshoptL20computeClusterBoundsEPKjmS1_mPKfm:bb.a
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %i.bv, ptr %i.go, align 4, !tbaa !12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !12
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.gq, ptr %i.gr, align 4, !tbaa !25
  %i.gs = fcmp ugt float %i.ml, 1.000000e-01
  br i1 %i.gs, label %.preheader.preheader, label %bb.f

.preheader.preheader:                             ; preds = %bb.e
  %min.iters.check168 = icmp ult i64 %.1, 8
  br i1 %min.iters.check168, label %.preheader.preheader198, label %vector.ph169

vector.ph169:                                     ; preds = %.preheader.preheader
  %n.vec170 = and i64 %.1, -8                     ; 3 uses
  %broadcast.splat172 = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat174 = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat176 = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat178 = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat180 = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %broadcast.splat182 = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph169
  %index184 = phi i64 [ 0, %vector.ph169 ], [ %index.next187, %vector.body183 ] ; 10 uses
  %vec.phi185 = phi <4 x float> [ zeroinitializer, %vector.ph169 ], [ %i.lm, %vector.body183 ] ; 3 uses
  %vec.phi186 = phi <4 x float> [ zeroinitializer, %vector.ph169 ], [ %i.ln, %vector.body183 ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index184 ; 4 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index184 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index184 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index184 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index184 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index184 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 80
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index184 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %index184 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 112
  %i.hi = load float, ptr %i.gt, align 16, !tbaa !12
  %i.hj = load float, ptr %i.gv, align 16, !tbaa !12
  %i.hk = load float, ptr %i.gx, align 16, !tbaa !12
  %i.hl = load float, ptr %i.gz, align 16, !tbaa !12
  %i.hm = insertelement <4 x float> poison, float %i.hi, i64 0
  %i.hn = insertelement <4 x float> %i.hm, float %i.hj, i64 1
  %i.ho = insertelement <4 x float> %i.hn, float %i.hk, i64 2
  %i.hp = insertelement <4 x float> %i.ho, float %i.hl, i64 3 ; 2 uses
  %i.hq = load float, ptr %i.hb, align 16, !tbaa !12
  %i.hr = load float, ptr %i.hd, align 16, !tbaa !12
  %i.hs = load float, ptr %i.hf, align 16, !tbaa !12
  %i.ht = load float, ptr %i.hh, align 16, !tbaa !12
  %i.hu = insertelement <4 x float> poison, float %i.hq, i64 0
  %i.hv = insertelement <4 x float> %i.hu, float %i.hr, i64 1
  %i.hw = insertelement <4 x float> %i.hv, float %i.hs, i64 2
  %i.hx = insertelement <4 x float> %i.hw, float %i.ht, i64 3 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gw, i64 36
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gy, i64 52
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ha, i64 68
  %i.id = getelementptr inbounds nuw i8, ptr %i.hc, i64 84
  %i.ie = getelementptr inbounds nuw i8, ptr %i.he, i64 100
  %i.if = getelementptr inbounds nuw i8, ptr %i.hg, i64 116
  %i.ig = load float, ptr %i.hy, align 4, !tbaa !12
  %i.ih = load float, ptr %i.hz, align 4, !tbaa !12
  %i.ii = load float, ptr %i.ia, align 4, !tbaa !12
  %i.ij = load float, ptr %i.ib, align 4, !tbaa !12
  %i.ik = insertelement <4 x float> poison, float %i.ig, i64 0
  %i.il = insertelement <4 x float> %i.ik, float %i.ih, i64 1
  %i.im = insertelement <4 x float> %i.il, float %i.ii, i64 2
  %i.in = insertelement <4 x float> %i.im, float %i.ij, i64 3 ; 2 uses
  %i.io = load float, ptr %i.ic, align 4, !tbaa !12
  %i.ip = load float, ptr %i.id, align 4, !tbaa !12
  %i.iq = load float, ptr %i.ie, align 4, !tbaa !12
  %i.ir = load float, ptr %i.if, align 4, !tbaa !12
  %i.is = insertelement <4 x float> poison, float %i.io, i64 0
  %i.it = insertelement <4 x float> %i.is, float %i.ip, i64 1
  %i.iu = insertelement <4 x float> %i.it, float %i.iq, i64 2
  %i.iv = insertelement <4 x float> %i.iu, float %i.ir, i64 3 ; 2 uses
  %i.iw = fmul <4 x float> %broadcast.splat172, %i.in
  %i.ix = fmul <4 x float> %broadcast.splat172, %i.iv
  %i.iy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat174, <4 x float> %i.hp, <4 x float> %i.iw)
  %i.iz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat174, <4 x float> %i.hx, <4 x float> %i.ix)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  %i.je = getelementptr inbounds nuw i8, ptr %i.ha, i64 72
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hc, i64 88
  %i.jg = getelementptr inbounds nuw i8, ptr %i.he, i64 104
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hg, i64 120
  %i.ji = load float, ptr %i.ja, align 8, !tbaa !12
  %i.jj = load float, ptr %i.jb, align 8, !tbaa !12
  %i.jk = load float, ptr %i.jc, align 8, !tbaa !12
  %i.jl = load float, ptr %i.jd, align 8, !tbaa !12
  %i.jm = insertelement <4 x float> poison, float %i.ji, i64 0
  %i.jn = insertelement <4 x float> %i.jm, float %i.jj, i64 1
  %i.jo = insertelement <4 x float> %i.jn, float %i.jk, i64 2
  %i.jp = insertelement <4 x float> %i.jo, float %i.jl, i64 3 ; 2 uses
  %i.jq = load float, ptr %i.je, align 8, !tbaa !12
  %i.jr = load float, ptr %i.jf, align 8, !tbaa !12
  %i.js = load float, ptr %i.jg, align 8, !tbaa !12
  %i.jt = load float, ptr %i.jh, align 8, !tbaa !12
  %i.ju = insertelement <4 x float> poison, float %i.jq, i64 0
  %i.jv = insertelement <4 x float> %i.ju, float %i.jr, i64 1
  %i.jw = insertelement <4 x float> %i.jv, float %i.js, i64 2
  %i.jx = insertelement <4 x float> %i.jw, float %i.jt, i64 3 ; 2 uses
  %i.jy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat176, <4 x float> %i.jp, <4 x float> %i.iy)
  %i.jz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat176, <4 x float> %i.jx, <4 x float> %i.iz)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gu, i64 28
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gw, i64 44
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gy, i64 60
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ha, i64 76
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hc, i64 92
  %i.kg = getelementptr inbounds nuw i8, ptr %i.he, i64 108
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hg, i64 124
  %i.ki = load float, ptr %i.ka, align 4, !tbaa !12
  %i.kj = load float, ptr %i.kb, align 4, !tbaa !12
  %i.kk = load float, ptr %i.kc, align 4, !tbaa !12
  %i.kl = load float, ptr %i.kd, align 4, !tbaa !12
  %i.km = insertelement <4 x float> poison, float %i.ki, i64 0
  %i.kn = insertelement <4 x float> %i.km, float %i.kj, i64 1
  %i.ko = insertelement <4 x float> %i.kn, float %i.kk, i64 2
  %i.kp = insertelement <4 x float> %i.ko, float %i.kl, i64 3
  %i.kq = load float, ptr %i.ke, align 4, !tbaa !12
  %i.kr = load float, ptr %i.kf, align 4, !tbaa !12
  %i.ks = load float, ptr %i.kg, align 4, !tbaa !12
  %i.kt = load float, ptr %i.kh, align 4, !tbaa !12
  %i.ku = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.kv = insertelement <4 x float> %i.ku, float %i.kr, i64 1
  %i.kw = insertelement <4 x float> %i.kv, float %i.ks, i64 2
  %i.kx = insertelement <4 x float> %i.kw, float %i.kt, i64 3
  %i.ky = fadd <4 x float> %i.kp, %i.jy
  %i.kz = fadd <4 x float> %i.kx, %i.jz
  %i.la = fmul <4 x float> %broadcast.splat178, %i.in
  %i.lb = fmul <4 x float> %broadcast.splat178, %i.iv
  %i.lc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat180, <4 x float> %i.hp, <4 x float> %i.la)
  %i.ld = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat180, <4 x float> %i.hx, <4 x float> %i.lb)
  %i.le = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat182, <4 x float> %i.jp, <4 x float> %i.lc)
  %i.lf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat182, <4 x float> %i.jx, <4 x float> %i.ld)
  %i.lg = fdiv <4 x float> %i.ky, %i.le
  %i.lh = fdiv <4 x float> %i.kz, %i.lf
  %i.li = freeze <4 x float> %i.lg                ; 3 uses
  %i.lj = freeze <4 x float> %i.lh                ; 3 uses
  %i.lk = fcmp ogt <4 x float> %i.li, %vec.phi185
  %i.ll = fcmp ogt <4 x float> %i.lj, %vec.phi186
  %i.lm = select <4 x i1> %i.lk, <4 x float> %i.li, <4 x float> %vec.phi185 ; 2 uses
  %i.ln = select <4 x i1> %i.ll, <4 x float> %i.lj, <4 x float> %vec.phi186 ; 2 uses
  %index.next187 = add nuw i64 %index184, 8       ; 2 uses
  %i.lo = tail call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %i.li, /* (nan nzero) */ i32 35)
  %i.lp = tail call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %i.lj, /* (nan nzero) */ i32 35)
  %i.lq = or <4 x i1> %i.lo, %i.lp
  %i.lr = bitcast <4 x i1> %i.lq to i4
  %i.ls = icmp ne i4 %i.lr, 0                     ; 5 uses
  %i.lt = icmp eq i64 %index.next187, %n.vec170
  %i.lu = or i1 %i.ls, %i.lt
  br i1 %i.lu, label %middle.block188, label %vector.body183, !llvm.loop !19

middle.block188:                                  ; preds = %vector.body183
  %i.lv = select i1 %i.ls, <4 x float> %vec.phi185, <4 x float> %i.lm
  %i.lw = select i1 %i.ls, <4 x float> %vec.phi186, <4 x float> %i.ln
  %i.lx = select i1 %i.ls, i64 %index184, i64 %n.vec170
  %rdx.minmax189 = tail call nnan <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.lv, <4 x float> %i.lw)
  %i.ly = tail call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax189) ; 2 uses
  %cmp.n = icmp ne i64 %.1, %n.vec170
  %.not192 = or i1 %cmp.n, %i.ls
  br i1 %.not192, label %.preheader.preheader198, label %.loopexit

.preheader.preheader198:                          ; preds = %.preheader.preheader, %middle.block188
  %.0141152.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.lx, %middle.block188 ]
  %.0142151.ph = phi float [ 0.000000e+00, %.preheader.preheader ], [ %i.ly, %middle.block188 ]
  %i.lz = extractelement <2 x float> %i.bv, i64 0
  %i.ma = extractelement <2 x float> %i.bv, i64 1
  br label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0143150 = phi i64 [ %i.mm, %scalar.ph ], [ %.0143150.ph, %scalar.ph.preheader ] ; 2 uses
  %.0144149 = phi float [ %i.ml, %scalar.ph ], [ %.0144149.ph, %scalar.ph.preheader ] ; 2 uses
  %i.mb = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0143150 ; 3 uses
  %i.mc = load float, ptr %i.mb, align 16, !tbaa !12
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !12
  %i.mf = fmul float %i.gk, %i.me
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.mc, float %i.gl, float %i.mf)
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mi = load float, ptr %i.mh, align 8, !tbaa !12
  %i.mj = tail call float @llvm.fmuladd.f32(float %i.mi, float %i.gm, float %i.mg) ; 2 uses
  %i.mk = fcmp olt float %i.mj, %.0144149
  %i.ml = select i1 %i.mk, float %i.mj, float %.0144149 ; 3 uses
  %i.mm = add nuw nsw i64 %.0143150, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.mm, %.1
  br i1 %exitcond.not, label %bb.e, label %scalar.ph, !llvm.loop !20

bb.f:                                             ; preds = %bb.e
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float 1.000000e+00, ptr %i.mn, align 4, !tbaa !26
  br label %bb.g

.loopexit:                                        ; preds = %.preheader, %middle.block188
  %.lcssa = phi float [ %i.ly, %middle.block188 ], [ %i.pr, %.preheader ]
  %i.mo = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 0, i32 poison>
  %i.mp = insertelement <4 x float> %i.mo, float %i.ml, i64 3 ; 2 uses
  %i.mq = fneg <4 x float> %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.gl, ptr %i.mt, align 4, !tbaa !12
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.gk, ptr %i.mu, align 4, !tbaa !12
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.gm, ptr %i.mv, align 4, !tbaa !12
  %i.mw = shufflevector <4 x float> %i.mp, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.mx = insertelement <2 x float> %i.mw, float %.lcssa, i64 0
  %i.my = shufflevector <2 x float> %i.mx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.mz = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.na = insertelement <4 x float> %i.mz, float 1.000000e+00, i64 3
  %i.nb = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nc = shufflevector <4 x float> %i.na, <4 x float> %i.nb, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.nd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mq, <4 x float> %i.my, <4 x float> %i.nc) ; 3 uses
  %i.ne = shufflevector <4 x float> %i.nd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ne, ptr %i.mr, align 4, !tbaa !12
  %i.nf = extractelement <4 x float> %i.nd, i64 2
  store float %i.nf, ptr %i.ms, align 4, !tbaa !12
  %i.ng = extractelement <4 x float> %i.nd, i64 3
  %i.nh = tail call float @sqrtf(float noundef %i.ng) #7 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.nh, ptr %i.ni, align 4, !tbaa !26
  %i.nj = fcmp oge float %i.gl, 0.000000e+00
  %i.nk = fcmp oge <4 x float> %i.ci, <float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float -1.000000e+00> ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 44
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.nm = extractelement <4 x i1> %i.nk, i64 0
  %i.nn = select i1 %i.nm, float 5.000000e-01, float -5.000000e-01
  %i.no = fcmp oge float %i.gm, -1.000000e+00
  %i.np = select i1 %i.no, float %i.gm, float -1.000000e+00 ; 2 uses
  %i.nq = fcmp ole float %i.np, 1.000000e+00
  %i.nr = select i1 %i.nq, float %i.np, float 1.000000e+00
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.nr, float 1.270000e+02, float %i.nn)
  %i.nt = fptosi float %i.ns to i32               ; 2 uses
  %8 = trunc i32 %i.nt to i8
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i8 %8, ptr %9, align 2, !tbaa !13
  %i.nu = shufflevector <4 x i1> %i.nk, <4 x i1> poison, <2 x i32> <i32 poison, i32 2>
  %i.nv = insertelement <2 x i1> %i.nu, i1 %i.nj, i64 0
  %i.nw = select <2 x i1> %i.nv, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.nx = shufflevector <4 x i1> %i.nk, <4 x i1> poison, <2 x i32> <i32 3, i32 1>
  %i.ny = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.nz = select <2 x i1> %i.nx, <2 x float> %i.ny, <2 x float> splat (float -1.000000e+00) ; 2 uses
  %i.oa = fcmp ole <2 x float> %i.nz, splat (float 1.000000e+00)
  %i.ob = select <2 x i1> %i.oa, <2 x float> %i.nz, <2 x float> splat (float 1.000000e+00)
  %i.oc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ob, <2 x float> splat (float 1.270000e+02), <2 x float> %i.nw)
  %i.od = fptosi <2 x float> %i.oc to <2 x i32>
  %i.oe = trunc <2 x i32> %i.od to <2 x i8>       ; 3 uses
  %10 = extractelement <2 x i8> %i.oe, i64 0
  store i8 %10, ptr %i.nl, align 4, !tbaa !13
  %11 = extractelement <2 x i8> %i.oe, i64 1
  store i8 %11, ptr %7, align 1, !tbaa !13
  %i.of = sitofp <2 x i8> %i.oe to <2 x float>    ; 2 uses
  %i.og = extractelement <2 x float> %i.of, i64 0
  %i.oh = fdiv float %i.og, 1.270000e+02
  %i.oi = fsub float %i.oh, %i.gl
  %i.oj = tail call float @llvm.fabs.f32(float %i.oi)
  %sext = shl i32 %i.nt, 24
  %i.ok = ashr exact i32 %sext, 24
  %i.ol = sitofp i32 %i.ok to float
  %i.om = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.on = insertelement <2 x float> %i.om, float %i.ol, i64 1
  %i.oo = fdiv <2 x float> %i.on, splat (float 1.270000e+02)
  %i.op = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oq = fsub <2 x float> %i.oo, %i.op
  %i.or = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.oq) ; 2 uses
  %i.os = fadd float %i.oj, %i.nh
  %i.ot = extractelement <2 x float> %i.or, i64 0
  %i.ou = fadd float %i.ot, %i.os
  %i.ov = extractelement <2 x float> %i.or, i64 1
  %i.ow = fadd float %i.ov, %i.ou
  %i.ox = tail call float @llvm.fmuladd.f32(float %i.ow, float 1.270000e+02, float 1.000000e+00)
  %i.oy = fptosi float %i.ox to i32
  %i.oz = tail call i32 @llvm.smin.i32(i32 %i.oy, i32 127)
  %12 = trunc i32 %i.oz to i8
  br label %bb.g

.preheader:                                       ; preds = %.preheader.preheader198, %.preheader
  %.0141152 = phi i64 [ %i.ps, %.preheader ], [ %.0141152.ph, %.preheader.preheader198 ] ; 2 uses
  %.0142151 = phi float [ %i.pr, %.preheader ], [ %.0142151.ph, %.preheader.preheader198 ] ; 2 uses
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0141152 ; 4 uses
  %i.pb = load float, ptr %i.pa, align 16, !tbaa !12 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !12 ; 2 uses
  %i.pe = fmul float %i.lz, %i.pd
  %i.pf = tail call float @llvm.fmuladd.f32(float %i.gn, float %i.pb, float %i.pe)
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.ph = load float, ptr %i.pg, align 8, !tbaa !12 ; 2 uses
  %i.pi = tail call float @llvm.fmuladd.f32(float %i.ma, float %i.ph, float %i.pf)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !12
  %i.pl = fadd float %i.pk, %i.pi
  %i.pm = fmul float %i.gk, %i.pd
  %i.pn = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.pb, float %i.pm)
  %i.po = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.ph, float %i.pn)
  %i.pp = fdiv float %i.pl, %i.po                 ; 2 uses
  %i.pq = fcmp ogt float %i.pp, %.0142151
  %i.pr = select i1 %i.pq, float %i.pp, float %.0142151 ; 2 uses
  %i.ps = add nuw nsw i64 %.0141152, 1            ; 2 uses
  %exitcond154.not = icmp eq i64 %i.ps, %.1
  br i1 %exitcond154.not, label %.loopexit, label %.preheader, !llvm.loop !21

bb.g:                                             ; preds = %.loopexit, %bb.f
  %.sink = phi i8 [ %12, %.loopexit ], [ 127, %bb.f ]
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 %.sink, ptr %13, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @meshopt_computeMeshletBounds(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.meshopt_Bounds) align 4 captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1536 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = mul i64 %3, 3                            ; 5 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.b, 1
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %.01719.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod23 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.01719.epil.init
  %i.e = load i8, ptr %i.d, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !9
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01719.epil.init
  store i32 %i.h, ptr %i.i, align 4, !tbaa !9
  %i.j = add nuw nsw i64 %i.f, 1
  %i.k = tail call i64 @llvm.umax.i64(i64 %.020.epil.init, i64 %i.j)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ], [ %i.k, %.lr.ph.epil.preheader ]
  call fastcc void @_ZN7meshoptL20computeClusterBoundsEPKjmS1_mPKfm(ptr dead_on_unwind noalias writable align 4 %0, ptr noundef nonnull %i.a, i64 noundef %i.b, ptr noundef %1, i64 noundef %.0.lcssa, ptr noundef %4, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ab, %.lr.ph ]
  %.01719 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.01719
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.01719
  store i32 %i.p, ptr %i.q, align 8, !tbaa !9
  %i.r = add nuw nsw i64 %i.n, 1
  %i.s = tail call i64 @llvm.umax.i64(i64 %.020, i64 %i.r)
  %i.t = or disjoint i64 %.01719, 1               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  store i32 %i.y, ptr %i.z, align 4, !tbaa !9
  %i.aa = add nuw nsw i64 %i.w, 1
  %i.ab = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.aa) ; 3 uses
  %i.ac = add nuw nsw i64 %.01719, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @meshopt_computeSphereBounds(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.meshopt_Bounds) align 4 captures(none) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %4, null                    ; 2 uses
  %i.d = select i1 %.not, ptr %i.a, ptr %4
  %i.e = select i1 %.not, i64 0, i64 %5
  call fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr noundef %i.b, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %i.d, i64 noundef %i.e, i64 noundef 7, ptr noundef null)
  %i.f = load <4 x float>, ptr %i.b, align 16, !tbaa !12
  store <4 x float> %i.f, ptr %0, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN7meshoptL21computeBoundingSphereEPfPKfmmS2_mmPKj(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i64 noundef range(i64 3, 8) %6, ptr nofree noundef readonly captures(address_is_null) %7) unnamed_addr #3 {
.preheader209:
  %i.a = alloca [7 x i32], align 16               ; 19 uses
  %i.b = alloca [7 x i32], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = shl nuw nsw i64 %6, 2                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 range(i64 0, 29) %i.c, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 range(i64 0, 29) %i.c, i1 false), !tbaa !9
  %i.d = lshr i64 %3, 2                           ; 18 uses
  %i.e = lshr i64 %5, 2                           ; 18 uses
  %.not225 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not225, label %.preheader.2, label %.lr.ph

.preheader.preheader.loopexit:                    ; preds = %bb.e
  store i32 %i.ba, ptr %i.a, align 16, !tbaa !9
  store i32 %i.bd, ptr %i.b, align 16, !tbaa !9
  store i32 %i.bj, ptr %i.f, align 4
  store i32 %i.bm, ptr %i.g, align 4
  store i32 %i.bt, ptr %i.h, align 8
  store i32 %i.bw, ptr %i.i, align 8
  store i32 %i.ce, ptr %i.j, align 4
  store i32 %i.cd, ptr %i.k, align 4
  store i32 %i.cc, ptr %i.l, align 16
  store i32 %i.cb, ptr %i.m, align 16
  store i32 %i.ca, ptr %i.n, align 4
  store i32 %i.bz, ptr %i.o, align 4
  store i32 %i.by, ptr %i.p, align 8
  store i32 %i.bx, ptr %i.q, align 8
  br label %.preheader.2

.lr.ph:                                           ; preds = %.preheader209
  %.not206 = icmp eq ptr %7, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %exitcond227.not.2 = icmp eq i64 %6, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %6, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %exitcond227.not.4 = icmp eq i64 %6, 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %exitcond227.not.5 = icmp eq i64 %6, 6
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.promoted = load i32, ptr %i.a, align 16
  %.promoted252 = load i32, ptr %i.b, align 16
  %.promoted254 = load i32, ptr %i.f, align 4
  %.promoted256 = load i32, ptr %i.g, align 4
  %.promoted258 = load i32, ptr %i.h, align 8
  %.promoted260 = load i32, ptr %i.i, align 8
  %.promoted262 = load i32, ptr %i.j, align 4
  %.promoted264 = load i32, ptr %i.k, align 4
  %.promoted266 = load i32, ptr %i.l, align 16
  %.promoted268 = load i32, ptr %i.m, align 16
  %.promoted270 = load i32, ptr %i.n, align 4
  %.promoted272 = load i32, ptr %i.o, align 4
  %.promoted274 = load i32, ptr %i.p, align 8
  %.promoted276 = load i32, ptr %i.q, align 8
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.e
  %i.r = phi i32 [ %.promoted276, %.lr.ph ], [ %i.bx, %bb.e ] ; 5 uses
  %i.s = phi i32 [ %.promoted274, %.lr.ph ], [ %i.by, %bb.e ] ; 5 uses
  %i.t = phi i32 [ %.promoted272, %.lr.ph ], [ %i.bz, %bb.e ] ; 4 uses
  %i.u = phi i32 [ %.promoted270, %.lr.ph ], [ %i.ca, %bb.e ] ; 4 uses
  %i.v = phi i32 [ %.promoted268, %.lr.ph ], [ %i.cb, %bb.e ] ; 3 uses
  %i.w = phi i32 [ %.promoted266, %.lr.ph ], [ %i.cc, %bb.e ] ; 3 uses
  %i.x = phi i32 [ %.promoted264, %.lr.ph ], [ %i.cd, %bb.e ] ; 2 uses
  %i.y = phi i32 [ %.promoted262, %.lr.ph ], [ %i.ce, %bb.e ] ; 2 uses
  %i.z = phi i32 [ %.promoted260, %.lr.ph ], [ %i.bw, %bb.e ]
  %i.aa = phi i32 [ %.promoted258, %.lr.ph ], [ %i.bt, %bb.e ]
  %i.ab = phi i32 [ %.promoted256, %.lr.ph ], [ %i.bm, %bb.e ]
  %i.ac = phi i32 [ %.promoted254, %.lr.ph ], [ %i.bj, %bb.e ]
  %i.ad = phi i32 [ %.promoted252, %.lr.ph ], [ %i.bd, %bb.e ]
  %i.ae = phi i32 [ %.promoted, %.lr.ph ], [ %i.ba, %bb.e ]
  %.sroa.20250.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.20250.2, %bb.e ] ; 6 uses
  %.sroa.17249.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.17249.2, %bb.e ] ; 5 uses
  %.sroa.14248.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.14248.2, %bb.e ] ; 4 uses
  %.sroa.11247.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.11247.2, %bb.e ] ; 3 uses
  %.sroa.8246.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %..2, %bb.e ] ; 2 uses
  %.sroa.5245.1 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %..1, %bb.e ] ; 2 uses
  %.sroa.0244.0 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %., %bb.e ] ; 2 uses
  %.sroa.20.1 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.sroa.20.2, %bb.e ] ; 6 uses
end_hunk_0
