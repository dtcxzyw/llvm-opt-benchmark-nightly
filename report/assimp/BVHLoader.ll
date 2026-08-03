inline.NumInlined: 1147
inline.NumDeleted: 488
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp9BVHLoader15CreateAnimationEP7aiScene:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hn, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  store i32 1, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  store double 0.000000e+00, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  store i32 1, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  store double 0.000000e+00, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 88
  store i32 1, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 96
  store double 0.000000e+00, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 120
  store i32 1, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 128
  store double 0.000000e+00, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hm, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 152
  store i32 1, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hm, i64 160
  store double 0.000000e+00, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hm, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.hm, i64 184
  store i32 1, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hm, i64 192
  store double 0.000000e+00, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hm, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hm, i64 216
  store i32 1, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hm, i64 224
  store double 0.000000e+00, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hm, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ii, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hm, i64 248
  store i32 1, ptr %i.ij, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hm, i64 256 ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.he
  br i1 %i.il, label %.preheader.lr.ph, label %.new

.preheader.lr.ph:                                 ; preds = %.new, %.prol.loopexit
  store ptr %i.hc, ptr %i.bf, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit
  %indvars.iv332 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next333, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ] ; 5 uses
  %.0107318 = phi ptr [ %i.hc, %.preheader.lr.ph ], [ %i.qi, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ] ; 3 uses
  %i.in = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.io = load ptr, ptr %i.bq, align 8            ; 3 uses
  %.not323 = icmp eq ptr %i.in, %i.io
  br i1 %.not323, label %._crit_edge308, label %.lr.ph307

.lr.ph307:                                        ; preds = %.preheader
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = sub i64 %i.iq, %i.ip
  %i.is = ashr exact i64 %i.ir, 2                 ; 4 uses
  %i.it = mul i64 %i.is, %indvars.iv332
  %i.iu = mul i64 %i.is, %indvars.iv332
  %i.iv = mul i64 %i.is, %indvars.iv332
  br label %bb.af

._crit_edge320:                                   ; preds = %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit, %.loopexit.thread
  store i32 1, ptr %i.bg, align 8
  %i.iw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znam(i64 noundef 24) #27
          to label %.preheader255.preheader unwind label %bb.r ; 5 uses

.preheader255.preheader:                          ; preds = %._crit_edge320
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 20
  store i32 1, ptr %i.ix, align 4
  store ptr %i.iw, ptr %i.bh, align 8
  store double 0.000000e+00, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.iy, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store float 1.000000e+00, ptr %i.iz, align 8
  %i.ja = load ptr, ptr %i.ai, align 8
  invoke void @_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ja)
          to label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit unwind label %bb.ak

._crit_edge308.loopexit:                          ; preds = %bb.aj
  %i.jb = extractelement <2 x float> %i.qb, i64 1
  %i.jc = extractelement <2 x float> %i.qb, i64 0
  %i.jd = extractelement <2 x float> %i.qc, i64 0
  %i.je = extractelement <2 x float> %i.qc, i64 1
  br label %._crit_edge308

._crit_edge308:                                   ; preds = %._crit_edge308.loopexit, %.preheader
  %.sroa.0173.0.lcssa = phi float [ 1.000000e+00, %.preheader ], [ %.sroa.0173.1, %._crit_edge308.loopexit ] ; 6 uses
  %.sroa.44.0.lcssa = phi float [ 1.000000e+00, %.preheader ], [ %i.jd, %._crit_edge308.loopexit ] ; 6 uses
  %.sroa.52.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.jc, %._crit_edge308.loopexit ] ; 4 uses
  %.sroa.74.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.je, %._crit_edge308.loopexit ] ; 4 uses
  %.sroa.85.0.lcssa = phi float [ 1.000000e+00, %.preheader ], [ %i.jb, %._crit_edge308.loopexit ] ; 6 uses
  %i.jf = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.pz, %._crit_edge308.loopexit ] ; 7 uses
  %i.jg = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.qa, %._crit_edge308.loopexit ] ; 7 uses
  %i.jh = trunc nuw i64 %indvars.iv332 to i32
  %i.ji = uitofp i32 %i.jh to double
  store double %i.ji, ptr %.0107318, align 8
  %i.jj = fadd float %.sroa.0173.0.lcssa, %.sroa.44.0.lcssa
  %i.jk = fadd float %i.jj, %.sroa.85.0.lcssa     ; 2 uses
  %i.jl = fcmp ogt float %i.jk, 0.000000e+00
  br i1 %i.jl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge308
  %i.jm = fadd float %i.jk, 1.000000e+00
  %i.jn = call noundef float @sqrtf(float noundef %i.jm) #24
  %i.jo = fsub float %.sroa.74.0.lcssa, %.sroa.52.0.lcssa
  %i.jp = fmul float %i.jn, 2.000000e+00
  %i.jq = insertelement <4 x float> poison, float %i.jp, i64 0 ; 2 uses
  %i.jr = insertelement <4 x float> %i.jq, float %i.jo, i64 1
  %i.js = shufflevector <2 x float> %i.jf, <2 x float> %i.jg, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.jt = shufflevector <2 x float> %i.jg, <2 x float> %i.jf, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ju = fsub <4 x float> %i.js, %i.jt
  %i.jv = shufflevector <4 x float> %i.jr, <4 x float> %i.ju, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.jw = shufflevector <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x float> %i.jq, <4 x i32> <i32 0, i32 4, i32 4, i32 4> ; 2 uses
  %i.jx = fmul <4 x float> %i.jv, %i.jw
  %i.jy = fdiv <4 x float> %i.jv, %i.jw
  %i.jz = shufflevector <4 x float> %i.jx, <4 x float> %i.jy, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.aa:                                            ; preds = %._crit_edge308
  %i.ka = fcmp ogt float %.sroa.0173.0.lcssa, %.sroa.44.0.lcssa
  %i.kb = fcmp ogt float %.sroa.0173.0.lcssa, %.sroa.85.0.lcssa
  %or.cond.i = and i1 %i.ka, %i.kb
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.kc = fadd float %.sroa.0173.0.lcssa, 1.000000e+00
  %i.kd = fsub float %i.kc, %.sroa.44.0.lcssa
  %i.ke = fsub float %i.kd, %.sroa.85.0.lcssa
  %i.kf = call noundef float @sqrtf(float noundef %i.ke) #24
  %.scalar = fmul float %i.kf, 2.000000e+00
  %i.kg = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.ki = fadd <2 x float> %i.jf, %i.jg
  %i.kj = fsub float %.sroa.74.0.lcssa, %.sroa.52.0.lcssa
  %i.kk = insertelement <4 x float> poison, float %i.kj, i64 0
  %i.kl = shufflevector <4 x float> %i.kk, <4 x float> %i.kh, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.km = shufflevector <2 x float> %i.ki, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kn = shufflevector <4 x float> %i.kl, <4 x float> %i.km, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ko = fdiv <4 x float> %i.kn, %i.kh
  %i.kp = fmul <4 x float> %i.kn, %i.kh
  %i.kq = shufflevector <4 x float> %i.ko, <4 x float> %i.kp, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.ac:                                            ; preds = %bb.aa
  %i.kr = fcmp ogt float %.sroa.44.0.lcssa, %.sroa.85.0.lcssa
  br i1 %i.kr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ks = fadd float %.sroa.44.0.lcssa, 1.000000e+00
  %i.kt = fsub float %i.ks, %.sroa.0173.0.lcssa
  %i.ku = fsub float %i.kt, %.sroa.85.0.lcssa
  %i.kv = call noundef float @sqrtf(float noundef %i.ku) #24
  %i.kw = fmul float %i.kv, 2.000000e+00
  %i.kx = fadd float %.sroa.52.0.lcssa, %.sroa.74.0.lcssa
  %i.ky = fsub <2 x float> %i.jf, %i.jg
  %i.kz = fadd <2 x float> %i.jf, %i.jg
  %i.la = shufflevector <2 x float> %i.ky, <2 x float> %i.kz, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.lb = insertelement <4 x float> %i.la, float 2.500000e-01, i64 2
  %i.lc = insertelement <4 x float> %i.lb, float %i.kx, i64 3 ; 2 uses
  %i.ld = insertelement <4 x float> poison, float %i.kw, i64 0
  %i.le = shufflevector <4 x float> %i.ld, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lf = fdiv <4 x float> %i.lc, %i.le
  %i.lg = fmul <4 x float> %i.lc, %i.le
  %i.lh = shufflevector <4 x float> %i.lf, <4 x float> %i.lg, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.ae:                                            ; preds = %bb.ac
  %i.li = fadd float %.sroa.85.0.lcssa, 1.000000e+00
  %i.lj = fsub float %i.li, %.sroa.0173.0.lcssa
  %i.lk = fsub float %i.lj, %.sroa.44.0.lcssa
  %i.ll = call noundef float @sqrtf(float noundef %i.lk) #24
  %i.lm = fmul float %i.ll, 2.000000e+00
  %i.ln = fadd float %.sroa.52.0.lcssa, %.sroa.74.0.lcssa
  %i.lo = fsub <2 x float> %i.jg, %i.jf
  %i.lp = fadd <2 x float> %i.jg, %i.jf
  %i.lq = shufflevector <2 x float> %i.lo, <2 x float> %i.lp, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.lr = insertelement <4 x float> %i.lq, float 2.500000e-01, i64 3
  %i.ls = insertelement <4 x float> %i.lr, float %i.ln, i64 2 ; 2 uses
  %i.lt = insertelement <4 x float> poison, float %i.lm, i64 0
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lv = fdiv <4 x float> %i.ls, %i.lu
  %i.lw = fmul <4 x float> %i.ls, %i.lu
  %i.lx = shufflevector <4 x float> %i.lv, <4 x float> %i.lw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.af:                                            ; preds = %.lr.ph307, %bb.aj
  %i.ly = phi i64 [ 0, %.lr.ph307 ], [ %i.qe, %bb.aj ] ; 4 uses
  %.0105306 = phi i32 [ 0, %.lr.ph307 ], [ %i.qd, %bb.aj ]
  %.sroa.11177.0298 = phi float [ 0.000000e+00, %.lr.ph307 ], [ %13, %bb.aj ] ; 7 uses
  %.sroa.0173.0297 = phi float [ 1.000000e+00, %.lr.ph307 ], [ %.sroa.0173.1, %bb.aj ] ; 7 uses
  %i.lz = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.lr.ph307 ], [ %i.qb, %bb.aj ] ; 10 uses
  %i.ma = phi <2 x float> [ zeroinitializer, %.lr.ph307 ], [ %i.qa, %bb.aj ] ; 10 uses
  %i.mb = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %.lr.ph307 ], [ %i.qc, %bb.aj ] ; 9 uses
  %4 = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %.lr.ph307 ], [ %14, %bb.aj ] ; 5 uses
  %i.mc = extractelement <2 x float> %4, i64 1    ; 4 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ly
  %i.me = load i32, ptr %i.md, align 4
  %5 = insertelement <2 x float> %4, float %.sroa.11177.0298, i64 0 ; 2 uses
  switch i32 %i.me, label %bb.aj [
    i32 3, label %bb.ag
    i32 4, label %bb.ah
    i32 5, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %6 = insertelement <2 x float> poison, float %.sroa.11177.0298, i64 0
  %i.mf = load ptr, ptr %i.im, align 8
  %i.mg = getelementptr [4 x i8], ptr %i.mf, i64 %i.iv
  %i.mh = getelementptr [4 x i8], ptr %i.mg, i64 %i.ly
  %i.mi = load float, ptr %i.mh, align 4
  %i.mj = fmul float %i.mi, f0x40490FDB
  %i.mk = fdiv float %i.mj, 1.800000e+02          ; 2 uses
  %i.ml = call noundef float @cosf(float noundef %i.mk) #24 ; 2 uses
  %i.mm = call noundef float @sinf(float noundef %i.mk) #24 ; 2 uses
  %i.mn = fneg float %i.mm
  %i.mo = fmul float %.sroa.11177.0298, 0.000000e+00
  %i.mp = fadd float %.sroa.0173.0297, %i.mo
  %i.mq = call float @llvm.fmuladd.f32(float %i.mc, float 0.000000e+00, float %i.mp)
  %i.mr = fmul <2 x float> %i.mb, zeroinitializer
  %i.ms = insertelement <2 x float> poison, float %i.ml, i64 0 ; 2 uses
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mu = fmul <2 x float> %i.mb, %i.mt
  %i.mv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> zeroinitializer, <2 x float> %i.mu)
  %i.mw = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.mx = shufflevector <2 x float> %i.mw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.my = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mx, <2 x float> %i.lz, <2 x float> %i.mv)
  %i.mz = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.na = insertelement <2 x float> %i.ms, float %i.mn, i64 1 ; 2 uses
  %i.nb = fmul <2 x float> %i.mz, %i.na
  %i.nc = insertelement <2 x float> poison, float %.sroa.0173.0297, i64 0
  %i.nd = shufflevector <2 x float> %i.nc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ne = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nd, <2 x float> zeroinitializer, <2 x float> %i.nb)
  %i.nf = insertelement <2 x float> %i.mx, float %i.ml, i64 1 ; 2 uses
  %i.ng = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nf, <2 x float> %i.ng, <2 x float> %i.ne)
  %i.ni = fadd <2 x float> %i.ma, %i.mr
  %i.nj = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nk = fmul <2 x float> %i.mb, %i.nj
  %i.nl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> zeroinitializer, <2 x float> %i.nk)
  %i.nm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> zeroinitializer, <2 x float> %i.ni)
  %i.nn = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.no = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nn, <2 x float> %i.lz, <2 x float> %i.nl)
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.np = load ptr, ptr %i.im, align 8
  %i.nq = getelementptr [4 x i8], ptr %i.np, i64 %i.iu
  %i.nr = getelementptr [4 x i8], ptr %i.nq, i64 %i.ly
  %i.ns = load float, ptr %i.nr, align 4
  %i.nt = fmul float %i.ns, f0x40490FDB
  %i.nu = fdiv float %i.nt, 1.800000e+02          ; 2 uses
  %i.nv = call noundef float @cosf(float noundef %i.nu) #24 ; 2 uses
  %i.nw = call noundef float @sinf(float noundef %i.nu) #24 ; 2 uses
  %i.nx = fneg float %i.nw                        ; 2 uses
  %i.ny = fmul <2 x float> %i.mb, zeroinitializer ; 2 uses
  %i.nz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> zeroinitializer, <2 x float> %i.mb)
  %i.oa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> zeroinitializer, <2 x float> %i.nz)
  %i.ob = fmul float %.sroa.11177.0298, 0.000000e+00 ; 2 uses
  %i.oc = call float @llvm.fmuladd.f32(float %i.nv, float %.sroa.0173.0297, float %i.ob)
  %i.od = call float @llvm.fmuladd.f32(float %i.nx, float %i.mc, float %i.oc)
  %i.oe = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.nw, i64 1 ; 2 uses
  %i.of = insertelement <2 x float> poison, float %.sroa.0173.0297, i64 0
  %i.og = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oh = insertelement <2 x float> %5, float %i.ob, i64 1
  %i.oi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oe, <2 x float> %i.og, <2 x float> %i.oh)
  %i.oj = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.nv, i64 1 ; 2 uses
  %i.ok = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ol = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oj, <2 x float> %i.ok, <2 x float> %i.oi)
  %i.om = shufflevector <2 x float> %i.oj, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.on = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.om, <2 x float> %i.ma, <2 x float> %i.ny)
  %i.oo = shufflevector <2 x float> %i.oe, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.op = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oo, <2 x float> %i.ma, <2 x float> %i.ny)
  %i.oq = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.or = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.os = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.lz, <2 x float> %i.on)
  %i.ot = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.om, <2 x float> %i.lz, <2 x float> %i.op)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.ou = load ptr, ptr %i.im, align 8
  %i.ov = getelementptr [4 x i8], ptr %i.ou, i64 %i.it
  %i.ow = getelementptr [4 x i8], ptr %i.ov, i64 %i.ly
  %i.ox = load float, ptr %i.ow, align 4
  %i.oy = fmul float %i.ox, f0x40490FDB
  %i.oz = fdiv float %i.oy, 1.800000e+02          ; 2 uses
  %i.pa = call noundef float @cosf(float noundef %i.oz) #24 ; 3 uses
  %i.pb = call noundef float @sinf(float noundef %i.oz) #24 ; 3 uses
  %i.pc = fneg float %i.pb                        ; 2 uses
  %i.pd = fmul float %.sroa.11177.0298, %i.pb
  %i.pe = call float @llvm.fmuladd.f32(float %i.pa, float %.sroa.0173.0297, float %i.pd)
  %i.pf = call float @llvm.fmuladd.f32(float %i.mc, float 0.000000e+00, float %i.pe)
  %i.pg = fmul float %.sroa.11177.0298, %i.pa
  %i.ph = call float @llvm.fmuladd.f32(float %i.pc, float %.sroa.0173.0297, float %i.pg)
  %7 = fmul float %.sroa.11177.0298, 0.000000e+00
  %8 = insertelement <2 x float> poison, float %7, i64 0
  %9 = insertelement <2 x float> %8, float %i.ph, i64 1
  %10 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> zeroinitializer, <2 x float> %9) ; 2 uses
  %11 = extractelement <2 x float> %10, i64 0
  %i.pi = fadd float %i.mc, %11
  %i.pj = fmul <2 x float> %i.mb, zeroinitializer
  %i.pk = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pl = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pm = fmul <2 x float> %i.mb, %i.pl
  %i.pn = insertelement <2 x float> poison, float %i.pc, i64 0
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> %i.ma, <2 x float> %i.pm)
  %i.pq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> zeroinitializer, <2 x float> %i.pp)
  %i.pr = insertelement <2 x float> poison, float %i.pb, i64 0
  %i.ps = shufflevector <2 x float> %i.pr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pt = fmul <2 x float> %i.mb, %i.ps
  %i.pu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> %i.ma, <2 x float> %i.pt)
  %i.pv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> zeroinitializer, <2 x float> %i.pj)
  %i.pw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> zeroinitializer, <2 x float> %i.pu)
  %i.px = fadd <2 x float> %i.lz, %i.pv
  %12 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.py = insertelement <2 x float> %12, float %i.pi, i64 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ai, %bb.af
  %.sroa.0173.1 = phi float [ %.sroa.0173.0297, %bb.af ], [ %i.mq, %bb.ag ], [ %i.od, %bb.ah ], [ %i.pf, %bb.ai ] ; 3 uses
  %i.pz = phi <2 x float> [ %5, %bb.af ], [ %i.nh, %bb.ag ], [ %i.ol, %bb.ah ], [ %i.py, %bb.ai ] ; 3 uses
  %i.qa = phi <2 x float> [ %i.ma, %bb.af ], [ %i.nm, %bb.ag ], [ %i.os, %bb.ah ], [ %i.pw, %bb.ai ] ; 2 uses
  %i.qb = phi <2 x float> [ %i.lz, %bb.af ], [ %i.no, %bb.ag ], [ %i.ot, %bb.ah ], [ %i.px, %bb.ai ] ; 3 uses
  %i.qc = phi <2 x float> [ %i.mb, %bb.af ], [ %i.my, %bb.ag ], [ %i.oa, %bb.ah ], [ %i.pq, %bb.ai ] ; 3 uses
  %i.qd = add i32 %.0105306, 1                    ; 2 uses
  %i.qe = zext i32 %i.qd to i64                   ; 2 uses
  %i.qf = icmp ugt i64 %i.is, %i.qe
  %13 = extractelement <2 x float> %i.pz, i64 0
  %14 = insertelement <2 x float> %i.pz, float %.sroa.0173.1, i64 0
  br i1 %i.qf, label %bb.af, label %._crit_edge308.loopexit, !llvm.loop !14

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.z
  %i.qg = phi <4 x float> [ %i.jz, %bb.z ], [ %i.kq, %bb.ab ], [ %i.lh, %bb.ad ], [ %i.lx, %bb.ae ]
  %i.qh = getelementptr inbounds nuw i8, ptr %.0107318, i64 8
  store <4 x float> %i.qg, ptr %i.qh, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %.0107318, i64 32
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %i.qj = load i32, ptr %i.s, align 4
  %i.qk = zext i32 %i.qj to i64
  %i.ql = icmp samesign ult i64 %indvars.iv.next333, %i.qk
  br i1 %i.ql, label %.preheader, label %._crit_edge320, !llvm.loop !15

bb.ak:                                            ; preds = %.preheader255.preheader
  %i.qm = landingpad { ptr, i32 }
          catch ptr null
  %i.qn = extractvalue { ptr, i32 } %i.qm, 0
  call void @__clang_call_terminate(ptr %i.qn) #28
  unreachable

_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit: ; preds = %.preheader255.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.qo = load ptr, ptr %2, align 8               ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.af
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit
  %i.qq = load i64, ptr %i.af, align 8
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335381, 1 ; 2 uses
  %.pre344 = load i32, ptr %i.i, align 8
  %i.qs = zext i32 %.pre344 to i64
  %i.qt = icmp samesign ult i64 %indvars.iv.next336, %i.qs
  br i1 %i.qt, label %.lr.ph382, label %._crit_edge383, !llvm.loop !16

.body:                                            ; preds = %bb.t, %bb.u, %bb.m, %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i, %bb.w, %bb.r
  %.pn121 = phi { ptr, i32 } [ %i.gy, %bb.w ], [ %i.cu, %_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i.i ], [ %i.ei, %bb.u ], [ %i.du, %bb.r ], [ %i.df, %bb.m ], [ %i.eh, %bb.t ]
  %i.qu = load ptr, ptr %i.ai, align 8
  invoke void @_ZNSt8_Rb_treeIN6Assimp9BVHLoader11ChannelTypeESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.qu)
          to label %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit147 unwind label %bb.al

bb.al:                                            ; preds = %.body
  %i.qv = landingpad { ptr, i32 }
          catch ptr null
  %i.qw = extractvalue { ptr, i32 } %i.qv, 0
  call void @__clang_call_terminate(ptr %i.qw) #28
  unreachable

_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit147: ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit147, %bb.f
  %.pn121.pn = phi { ptr, i32 } [ %.pn121, %_ZNSt3mapIN6Assimp9BVHLoader11ChannelTypeEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit147 ], [ %i.bv, %bb.f ]
  %i.qx = load ptr, ptr %2, align 8               ; 2 uses
  %i.qy = icmp eq ptr %i.qx, %i.af
  br i1 %i.qy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.am
  %i.qz = load i64, ptr %i.af, align 8
  %i.ra = add i64 %i.qz, 1
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef %i.ra) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn121.pn

bb.an:                                            ; preds = %bb.s
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
          cleanup
  %i.ao = load ptr, ptr %0, align 8               ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.o
end_hunk_0
