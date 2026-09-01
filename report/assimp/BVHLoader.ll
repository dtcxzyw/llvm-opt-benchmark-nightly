Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/BVHLoader?download=true
inline.NumInlined: 1147
inline.NumDeleted: 488
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp9BVHLoader15CreateAnimationEP7aiScene:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  store i32 1, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 64
  store double 0.000000e+00, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 88
  store i32 1, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 96
  store double 0.000000e+00, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 120
  store i32 1, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.hr, i64 128
  store double 0.000000e+00, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hr, i64 152
  store i32 1, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hr, i64 160
  store double 0.000000e+00, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hr, i64 184
  store i32 1, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hr, i64 192
  store double 0.000000e+00, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hr, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ik, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.hr, i64 216
  store i32 1, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.hr, i64 224
  store double 0.000000e+00, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.hr, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.hr, i64 248
  store i32 1, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hr, i64 256 ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.hj
  br i1 %i.iq, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.y
  store ptr %i.hh, ptr %i.bh, align 8
  %i.ir = load i32, ptr %i.t, align 4
  %.not324 = icmp eq i32 %i.ir, 0
  br i1 %.not324, label %._crit_edge322, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.loopexit
  %i.is = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit
  %indvars.iv334 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next335, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ] ; 5 uses
  %.097320 = phi ptr [ %i.hh, %.preheader.lr.ph ], [ %i.qn, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ] ; 3 uses
  %i.it = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.iu = load ptr, ptr %i.bs, align 8            ; 3 uses
  %.not325 = icmp eq ptr %i.it, %i.iu
  br i1 %.not325, label %._crit_edge310, label %.lr.ph309

.lr.ph309:                                        ; preds = %.preheader
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.it to i64
  %i.ix = sub i64 %i.iw, %i.iv
  %i.iy = ashr exact i64 %i.ix, 2                 ; 4 uses
  %i.iz = mul i64 %i.iy, %indvars.iv334
  %i.ja = mul i64 %i.iy, %indvars.iv334
  %i.jb = mul i64 %i.iy, %indvars.iv334
  br label %bb.ag

._crit_edge322:                                   ; preds = %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit, %.loopexit
  store i32 1, ptr %i.bi, align 8
  %i.jc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #27
          to label %.preheader255.preheader unwind label %bb.s ; 5 uses

.preheader255.preheader:                          ; preds = %._crit_edge322
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 20
  store i32 1, ptr %i.jd, align 4
  store ptr %i.jc, ptr %i.bj, align 8
  store double 0.000000e+00, ptr %i.jc, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.je, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store float 1.000000e+00, ptr %i.jf, align 8
  %i.jg = load ptr, ptr %i.ak, align 8
  invoke void @_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.jg)
          to label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit unwind label %bb.al

._crit_edge310.loopexit:                          ; preds = %bb.ak
  %i.jh = extractelement <2 x float> %i.qg, i64 0
  %i.ji = extractelement <2 x float> %i.qg, i64 1
  br label %._crit_edge310

._crit_edge310:                                   ; preds = %._crit_edge310.loopexit, %.preheader
  %.sroa.74.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.ji, %._crit_edge310.loopexit ] ; 4 uses
  %.sroa.44.0.lcssa = phi float [ 1.000000e+00, %.preheader ], [ %i.jh, %._crit_edge310.loopexit ] ; 6 uses
  %.sroa.0173.0.lcssa = phi float [ 1.000000e+00, %.preheader ], [ %.sroa.0173.1, %._crit_edge310.loopexit ] ; 6 uses
  %i.jj = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.qe, %._crit_edge310.loopexit ] ; 7 uses
  %i.jk = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.qh, %._crit_edge310.loopexit ] ; 7 uses
  %i.jl = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader ], [ %i.qf, %._crit_edge310.loopexit ] ; 5 uses
  %i.jm = trunc nuw i64 %indvars.iv334 to i32
  %i.jn = uitofp i32 %i.jm to double
  store double %i.jn, ptr %.097320, align 8
  %i.jo = fadd float %.sroa.44.0.lcssa, %.sroa.0173.0.lcssa
  %i.jp = extractelement <2 x float> %i.jl, i64 1 ; 5 uses
  %i.jq = fadd float %i.jp, %i.jo                 ; 2 uses
  %i.jr = fcmp ogt float %i.jq, 0.000000e+00
  br i1 %i.jr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge310
  %i.js = fadd float %i.jq, 1.000000e+00
  %i.jt = call noundef float @sqrtf(float noundef %i.js) #24
  %i.ju = extractelement <2 x float> %i.jl, i64 0
  %i.jv = fsub float %.sroa.74.0.lcssa, %i.ju
  %i.jw = fmul float %i.jt, 2.000000e+00
  %i.jx = insertelement <4 x float> poison, float %i.jw, i64 0 ; 2 uses
  %i.jy = insertelement <4 x float> %i.jx, float %i.jv, i64 1
  %i.jz = shufflevector <2 x float> %i.jk, <2 x float> %i.jj, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ka = shufflevector <2 x float> %i.jj, <2 x float> %i.jk, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.kb = fsub <4 x float> %i.jz, %i.ka
  %i.kc = shufflevector <4 x float> %i.jy, <4 x float> %i.kb, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.kd = shufflevector <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x float> %i.jx, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %i.ke = fmul <4 x float> %i.kc, %i.kd
  %i.kf = fdiv <4 x float> %i.kc, %i.kd
  %i.kg = shufflevector <4 x float> %i.ke, <4 x float> %i.kf, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.ab:                                            ; preds = %._crit_edge310
  %i.kh = fcmp ogt float %.sroa.0173.0.lcssa, %.sroa.44.0.lcssa
  %i.ki = fcmp ogt float %.sroa.0173.0.lcssa, %i.jp
  %or.cond.i = and i1 %i.kh, %i.ki
  br i1 %or.cond.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.kj = fadd float %.sroa.0173.0.lcssa, 1.000000e+00
  %i.kk = fsub float %i.kj, %.sroa.44.0.lcssa
  %i.kl = fadd <2 x float> %i.jj, %i.jk
  %i.km = insertelement <2 x float> poison, float %.sroa.74.0.lcssa, i64 0
  %i.kn = insertelement <2 x float> %i.km, float %i.kk, i64 1
  %i.ko = fsub <2 x float> %i.kn, %i.jl           ; 2 uses
  %i.kp = extractelement <2 x float> %i.ko, i64 1
  %i.kq = call noundef float @sqrtf(float noundef %i.kp) #24
  %i.kr = fmul float %i.kq, 2.000000e+00
  %i.ks = shufflevector <2 x float> %i.ko, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.kt = insertelement <4 x float> %i.ks, float %i.kr, i64 1 ; 2 uses
  %i.ku = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kv = shufflevector <4 x float> %i.kt, <4 x float> %i.ku, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.kw = shufflevector <4 x float> %i.kt, <4 x float> <float poison, float 2.500000e-01, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1> ; 2 uses
  %i.kx = fdiv <4 x float> %i.kv, %i.kw
  %i.ky = fmul <4 x float> %i.kv, %i.kw
  %i.kz = shufflevector <4 x float> %i.kx, <4 x float> %i.ky, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.ad:                                            ; preds = %bb.ab
  %i.la = fcmp ogt float %.sroa.44.0.lcssa, %i.jp
  br i1 %i.la, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.lb = fadd float %.sroa.44.0.lcssa, 1.000000e+00
  %i.lc = fsub float %i.lb, %.sroa.0173.0.lcssa
  %i.ld = fsub float %i.lc, %i.jp
  %i.le = call noundef float @sqrtf(float noundef %i.ld) #24
  %i.lf = fmul float %i.le, 2.000000e+00
  %i.lg = extractelement <2 x float> %i.jl, i64 0
  %i.lh = fadd float %.sroa.74.0.lcssa, %i.lg
  %i.li = fsub <2 x float> %i.jk, %i.jj
  %i.lj = fadd <2 x float> %i.jk, %i.jj
  %i.lk = shufflevector <2 x float> %i.li, <2 x float> %i.lj, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ll = insertelement <4 x float> %i.lk, float 2.500000e-01, i64 2
  %i.lm = insertelement <4 x float> %i.ll, float %i.lh, i64 3 ; 2 uses
  %i.ln = insertelement <4 x float> poison, float %i.lf, i64 0
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lp = fdiv <4 x float> %i.lm, %i.lo
  %i.lq = fmul <4 x float> %i.lm, %i.lo
  %i.lr = shufflevector <4 x float> %i.lp, <4 x float> %i.lq, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.af:                                            ; preds = %bb.ad
  %i.ls = fadd float %i.jp, 1.000000e+00
  %i.lt = fsub float %i.ls, %.sroa.0173.0.lcssa
  %i.lu = fsub float %i.lt, %.sroa.44.0.lcssa
  %i.lv = call noundef float @sqrtf(float noundef %i.lu) #24
  %i.lw = fmul float %i.lv, 2.000000e+00
  %i.lx = extractelement <2 x float> %i.jl, i64 0
  %i.ly = fadd float %.sroa.74.0.lcssa, %i.lx
  %i.lz = fsub <2 x float> %i.jj, %i.jk
  %i.ma = fadd <2 x float> %i.jj, %i.jk
  %i.mb = shufflevector <2 x float> %i.lz, <2 x float> %i.ma, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.mc = insertelement <4 x float> %i.mb, float 2.500000e-01, i64 3
  %i.md = insertelement <4 x float> %i.mc, float %i.ly, i64 2 ; 2 uses
  %i.me = insertelement <4 x float> poison, float %i.lw, i64 0
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mg = fdiv <4 x float> %i.md, %i.mf
  %i.mh = fmul <4 x float> %i.md, %i.mf
  %i.mi = shufflevector <4 x float> %i.mg, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.ag:                                            ; preds = %.lr.ph309, %bb.ak
  %i.mj = phi i64 [ 0, %.lr.ph309 ], [ %i.qj, %bb.ak ] ; 4 uses
  %.0308 = phi i32 [ 0, %.lr.ph309 ], [ %i.qi, %bb.ak ]
  %.sroa.0173.0307 = phi float [ 1.000000e+00, %.lr.ph309 ], [ %.sroa.0173.1, %bb.ak ] ; 7 uses
  %i.mk = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph309 ], [ %i.qf, %bb.ak ] ; 10 uses
  %i.ml = phi <2 x float> [ zeroinitializer, %.lr.ph309 ], [ %i.qe, %bb.ak ] ; 10 uses
  %i.mm = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %.lr.ph309 ], [ %i.qg, %bb.ak ] ; 9 uses
  %i.mn = phi <2 x float> [ zeroinitializer, %.lr.ph309 ], [ %i.qh, %bb.ak ] ; 11 uses
  %i.mo = extractelement <2 x float> %i.mn, i64 1 ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.mj
  %i.mq = load i32, ptr %i.mp, align 4
  switch i32 %i.mq, label %bb.ak [
    i32 3, label %bb.ah
    i32 4, label %bb.ai
    i32 5, label %bb.aj
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.mr = load ptr, ptr %i.is, align 8
  %i.ms = getelementptr [4 x i8], ptr %i.mr, i64 %i.jb
  %i.mt = getelementptr [4 x i8], ptr %i.ms, i64 %i.mj
  %i.mu = load float, ptr %i.mt, align 4
  %i.mv = fmul float %i.mu, f0x40490FDB
  %i.mw = fdiv float %i.mv, 1.800000e+02          ; 2 uses
  %i.mx = call noundef float @cosf(float noundef %i.mw) #24 ; 2 uses
  %i.my = call noundef float @sinf(float noundef %i.mw) #24 ; 2 uses
  %i.mz = fneg float %i.my
  %4 = extractelement <2 x float> %i.mn, i64 0
  %i.na = fmul float %4, 0.000000e+00
  %i.nb = fadd float %.sroa.0173.0307, %i.na
  %i.nc = call float @llvm.fmuladd.f32(float %i.mo, float 0.000000e+00, float %i.nb)
  %i.nd = fmul <2 x float> %i.mm, zeroinitializer
  %i.ne = insertelement <2 x float> poison, float %i.mx, i64 0 ; 2 uses
  %i.nf = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ng = fmul <2 x float> %i.mm, %i.nf
  %i.nh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> zeroinitializer, <2 x float> %i.ng)
  %i.ni = insertelement <2 x float> poison, float %i.my, i64 0
  %i.nj = shufflevector <2 x float> %i.ni, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nj, <2 x float> %i.mk, <2 x float> %i.nh)
  %i.nl = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nm = insertelement <2 x float> %i.ne, float %i.mz, i64 1 ; 2 uses
  %i.nn = fmul <2 x float> %i.nl, %i.nm
  %i.no = insertelement <2 x float> poison, float %.sroa.0173.0307, i64 0
  %i.np = shufflevector <2 x float> %i.no, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.np, <2 x float> zeroinitializer, <2 x float> %i.nn)
  %i.nr = insertelement <2 x float> %i.nj, float %i.mx, i64 1 ; 2 uses
  %i.ns = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nr, <2 x float> %i.ns, <2 x float> %i.nq)
  %i.nu = fadd <2 x float> %i.ml, %i.nd
  %i.nv = shufflevector <2 x float> %i.nm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nw = fmul <2 x float> %i.mm, %i.nv
  %i.nx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> zeroinitializer, <2 x float> %i.nw)
  %i.ny = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> zeroinitializer, <2 x float> %i.nu)
  %i.nz = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nz, <2 x float> %i.mk, <2 x float> %i.nx)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.ob = load ptr, ptr %i.is, align 8
  %i.oc = getelementptr [4 x i8], ptr %i.ob, i64 %i.ja
  %i.od = getelementptr [4 x i8], ptr %i.oc, i64 %i.mj
  %i.oe = load float, ptr %i.od, align 4
  %i.of = fmul float %i.oe, f0x40490FDB
  %i.og = fdiv float %i.of, 1.800000e+02          ; 2 uses
  %i.oh = call noundef float @cosf(float noundef %i.og) #24 ; 2 uses
  %i.oi = call noundef float @sinf(float noundef %i.og) #24 ; 2 uses
  %i.oj = fneg float %i.oi                        ; 2 uses
  %i.ok = fmul <2 x float> %i.mm, zeroinitializer ; 2 uses
  %i.ol = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> zeroinitializer, <2 x float> %i.mm)
  %i.om = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> zeroinitializer, <2 x float> %i.ol)
  %5 = extractelement <2 x float> %i.mn, i64 0
  %i.on = fmul float %5, 0.000000e+00             ; 2 uses
  %i.oo = call float @llvm.fmuladd.f32(float %i.oh, float %.sroa.0173.0307, float %i.on)
  %i.op = call float @llvm.fmuladd.f32(float %i.oj, float %i.mo, float %i.oo)
  %i.oq = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.oi, i64 1 ; 2 uses
  %i.or = insertelement <2 x float> poison, float %.sroa.0173.0307, i64 0
  %i.os = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ot = insertelement <2 x float> %i.mn, float %i.on, i64 1
  %i.ou = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oq, <2 x float> %i.os, <2 x float> %i.ot)
  %i.ov = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.oh, i64 1 ; 2 uses
  %i.ow = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ox = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ov, <2 x float> %i.ow, <2 x float> %i.ou)
  %i.oy = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.oz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oy, <2 x float> %i.ml, <2 x float> %i.ok)
  %i.pa = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pa, <2 x float> %i.ml, <2 x float> %i.ok)
  %i.pc = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.pd = shufflevector <2 x float> %i.pc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pd, <2 x float> %i.mk, <2 x float> %i.oz)
  %i.pf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oy, <2 x float> %i.mk, <2 x float> %i.pb)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.pg = load ptr, ptr %i.is, align 8
  %i.ph = getelementptr [4 x i8], ptr %i.pg, i64 %i.iz
  %i.pi = getelementptr [4 x i8], ptr %i.ph, i64 %i.mj
  %i.pj = load float, ptr %i.pi, align 4
  %i.pk = fmul float %i.pj, f0x40490FDB
  %i.pl = fdiv float %i.pk, 1.800000e+02          ; 2 uses
  %i.pm = call noundef float @cosf(float noundef %i.pl) #24 ; 3 uses
  %i.pn = call noundef float @sinf(float noundef %i.pl) #24 ; 3 uses
  %i.po = fneg float %i.pn                        ; 2 uses
  %6 = extractelement <2 x float> %i.mn, i64 0
  %i.pp = fmul float %6, %i.pn
  %i.pq = call float @llvm.fmuladd.f32(float %i.pm, float %.sroa.0173.0307, float %i.pp)
  %i.pr = call float @llvm.fmuladd.f32(float %i.mo, float 0.000000e+00, float %i.pq)
  %i.ps = fmul <2 x float> %i.mm, zeroinitializer
  %i.pt = insertelement <2 x float> poison, float %i.pm, i64 0
  %i.pu = shufflevector <2 x float> %i.pt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pv = fmul <2 x float> %i.mm, %i.pu
  %i.pw = insertelement <2 x float> poison, float %i.po, i64 0
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.py = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.px, <2 x float> %i.ml, <2 x float> %i.pv)
  %i.pz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> zeroinitializer, <2 x float> %i.py)
  %7 = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pm, i64 0
  %9 = fmul <2 x float> %7, %8
  %10 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.po, i64 0
  %i.qa = insertelement <2 x float> poison, float %.sroa.0173.0307, i64 0
  %i.qb = shufflevector <2 x float> %i.qa, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.qb, <2 x float> %9)
  %12 = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.qc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %11)
  %13 = insertelement <2 x float> poison, float %i.pn, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = fmul <2 x float> %i.mm, %14
  %i.qd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pu, <2 x float> %i.ml, <2 x float> %15)
  %16 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> zeroinitializer, <2 x float> %i.ps)
  %17 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> zeroinitializer, <2 x float> %i.qd)
  %18 = fadd <2 x float> %i.mk, %16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ag
  %.sroa.0173.1 = phi float [ %.sroa.0173.0307, %bb.ag ], [ %i.nc, %bb.ah ], [ %i.op, %bb.ai ], [ %i.pr, %bb.aj ] ; 2 uses
  %i.qe = phi <2 x float> [ %i.ml, %bb.ag ], [ %i.ny, %bb.ah ], [ %i.pe, %bb.ai ], [ %17, %bb.aj ] ; 2 uses
  %i.qf = phi <2 x float> [ %i.mk, %bb.ag ], [ %i.oa, %bb.ah ], [ %i.pf, %bb.ai ], [ %18, %bb.aj ] ; 2 uses
  %i.qg = phi <2 x float> [ %i.mm, %bb.ag ], [ %i.nk, %bb.ah ], [ %i.om, %bb.ai ], [ %i.pz, %bb.aj ] ; 3 uses
  %i.qh = phi <2 x float> [ %i.mn, %bb.ag ], [ %i.nt, %bb.ah ], [ %i.ox, %bb.ai ], [ %i.qc, %bb.aj ] ; 2 uses
  %i.qi = add i32 %.0308, 1                       ; 2 uses
  %i.qj = zext i32 %i.qi to i64                   ; 2 uses
  %i.qk = icmp ugt i64 %i.iy, %i.qj
  br i1 %i.qk, label %bb.ag, label %._crit_edge310.loopexit, !llvm.loop !14

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.af, %bb.ae, %bb.ac, %bb.aa
  %i.ql = phi <4 x float> [ %i.kg, %bb.aa ], [ %i.kz, %bb.ac ], [ %i.lr, %bb.ae ], [ %i.mi, %bb.af ]
  %i.qm = getelementptr inbounds nuw i8, ptr %.097320, i64 8
  store <4 x float> %i.ql, ptr %i.qm, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %.097320, i64 32
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %i.qo = load i32, ptr %i.t, align 4
  %i.qp = zext i32 %i.qo to i64
  %i.qq = icmp samesign ult i64 %indvars.iv.next335, %i.qp
  br i1 %i.qq, label %.preheader, label %._crit_edge322, !llvm.loop !15

bb.al:                                            ; preds = %.preheader255.preheader
  %i.qr = landingpad { ptr, i32 }
          catch ptr null
  %i.qs = extractvalue { ptr, i32 } %i.qr, 0
  call void @__clang_call_terminate(ptr %i.qs) #28
  unreachable

_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit: ; preds = %.preheader255.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.qt = load ptr, ptr %2, align 8               ; 2 uses
  %i.qu = icmp eq ptr %i.qt, %i.ah
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit
  %i.qv = load i64, ptr %i.ah, align 8
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %i.qt, i64 noundef %i.qw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337381, 1 ; 2 uses
  %.pre346 = load i32, ptr %i.i, align 8
  %i.qx = zext i32 %.pre346 to i64
  %i.qy = icmp samesign ult i64 %indvars.iv.next338, %i.qx
  br i1 %i.qy, label %.lr.ph382, label %._crit_edge383, !llvm.loop !16

.body:                                            ; preds = %bb.u, %bb.v, %bb.n, %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i, %bb.x, %bb.s
  %.pn121 = phi { ptr, i32 } [ %i.hd, %bb.x ], [ %i.cy, %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.en, %bb.v ], [ %i.dz, %bb.s ], [ %i.dj, %bb.n ], [ %i.em, %bb.u ]
  %i.qz = load ptr, ptr %i.ak, align 8
  invoke void @_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.qz)
          to label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit147 unwind label %bb.am

bb.am:                                            ; preds = %.body
  %i.ra = landingpad { ptr, i32 }
          catch ptr null
  %i.rb = extractvalue { ptr, i32 } %i.ra, 0
  call void @__clang_call_terminate(ptr %i.rb) #28
  unreachable

_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit147: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit147, %bb.f
  %.pn121.pn = phi { ptr, i32 } [ %.pn121, %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit147 ], [ %i.bx, %bb.f ]
  %i.rc = load ptr, ptr %2, align 8               ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.ah
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.an
  %i.re = load i64, ptr %i.ah, align 8
  %i.rf = add i64 %i.re, 1
  call void @_ZdlPvm(ptr noundef %i.rc, i64 noundef %i.rf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn121.pn

bb.ao:                                            ; preds = %bb.t
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp9BVHLoader12GetNextTokenB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.promoted = load ptr, ptr %i.a, align 8        ; 3 uses
  %.not1013 = icmp eq ptr %.promoted, %i.c
  br i1 %.not1013, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.promoted16 = load i32, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.e = phi i32 [ %.promoted16, %.lr.ph ], [ %i.l, %bb.e ] ; 2 uses
  %i.f = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.e ] ; 3 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = tail call i32 @isspace(i32 noundef %i.h) #29
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i8 %i.g, 10
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.k, ptr %i.d, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %i.k, %bb.d ], [ %i.e, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 4 uses
  store ptr %i.m, ptr %i.a, align 8
  %.not10 = icmp eq ptr %i.m, %i.c
  br i1 %.not10, label %._crit_edge, label %bb.b, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.e, %bb.b, %bb.a
  %i.n = phi ptr [ %.promoted, %bb.a ], [ %i.m, %bb.e ], [ %i.f, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.o, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.o, align 8
  %.not1117 = icmp eq ptr %i.n, %i.c
  br i1 %.not1117, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph19

.lr.ph19:                                         ; preds = %._crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.backedge
  %i.q = phi i64 [ %i.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.backedge ], [ 0, %._crit_edge ] ; 4 uses
  %i.r = phi ptr [ %i.ah, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.backedge ], [ %i.n, %._crit_edge ]
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = tail call i32 @isspace(i32 noundef %i.t) #29
  %.not3 = icmp eq i32 %i.u, 0
  br i1 %.not3, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.f:                                             ; preds = %.lr.ph19
  %i.v = add i64 %i.q, 1                          ; 3 uses
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.o
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  %i.y = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.o, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.aa = phi i64 [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ab = icmp ugt i64 %i.v, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  %.pre.i = load ptr, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.ac = phi ptr [ %.pre.i, %.noexc ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.q
  store i8 %i.s, ptr %i.ad, align 1
  store i64 %i.v, ptr %i.p, align 8
  %i.ae = load ptr, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v
  store i8 0, ptr %i.af, align 1
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 3 uses
  store ptr %i.ah, ptr %i.a, align 8
  %i.ai = load i64, ptr %i.p, align 8             ; 2 uses
  %cond = icmp eq i64 %i.ai, 1
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.h
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %lhsc = load i8, ptr %i.aj, align 1
  %i.ak = icmp eq i8 %lhsc, 123
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %lhsc26 = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %lhsc26, 125
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit5.backedge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread9, %bb.h
  %i.am = load ptr, ptr %i.b, align 8
  %.not11 = icmp eq ptr %i.ah, %i.am
  br i1 %.not11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph19, !llvm.loop !18

bb.i:                                             ; preds = %bb.g
  %i.an = landingpad { ptr, i32 }
end_hunk_0
