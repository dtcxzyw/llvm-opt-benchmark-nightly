Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_hair_mb?download=true
inline.NumInlined: 2542
inline.NumDeleted: 442
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZZN6embree4sse223BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_:bb.a
bb.al:                                            ; preds = %bb.ak
  %.sroa.0.12.vec.insert = shufflevector <4 x i32> %.sroa.0.2, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  br label %_ZN6embree7PointMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit

bb.am:                                            ; preds = %bb.ak
  %i.gu = getelementptr inbounds nuw [80 x i8], ptr %i.fr, i64 %.2.2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 28
  %i.gw = load i32, ptr %i.gv, align 4, !noalias !581
  %.sroa.0.12.vec.insert737 = insertelement <4 x i32> %.sroa.0.2, i32 %i.gw, i64 3
  %i.gx = add nuw i64 %.2.2, 1
  %i.gy = add nuw nsw i8 %.1.i43.2, 1
  br label %_ZN6embree7PointMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit

_ZN6embree7PointMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit: ; preds = %bb.am, %bb.al
  %.sroa.0.3 = phi <4 x i32> [ %.sroa.0.12.vec.insert737, %bb.am ], [ %.sroa.0.12.vec.insert, %bb.al ]
  %.2.3 = phi i64 [ %i.gx, %bb.am ], [ %.2.2, %bb.al ]
  %.1.i43.3 = phi i8 [ %i.gy, %bb.am ], [ %.1.i43.2, %bb.al ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %.1.i, i64 %.0.i620 ; 4 uses
  %i.ha = trunc i32 %i.gc to i8
  store i8 %i.ha, ptr %i.gz, align 16, !noalias !581
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  store i8 %.1.i43.3, ptr %i.hb, align 1, !noalias !581
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store i32 %i.fv, ptr %i.hc, align 4, !noalias !581
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 2 uses
  store <4 x i32> %.sroa.0.3, ptr %i.hd, align 16, !noalias !581
  %i.he = zext nneg i8 %.1.i43.3 to i64
  br label %bb.an

bb.an:                                            ; preds = %_ZN6embree7PointMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit
  %.0.i44614 = phi i64 [ 0, %_ZN6embree7PointMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit ], [ %i.od, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ] ; 3 uses
  %.sroa.0113.0613 = phi <4 x float> [ splat (float +inf), %_ZN6embree7PointMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit ], [ %i.nz, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ] ; 2 uses
  %.sroa.6115.0612 = phi <4 x float> [ splat (float -inf), %_ZN6embree7PointMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit ], [ %i.oa, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ] ; 2 uses
  %.sroa.10.0611 = phi <4 x float> [ splat (float +inf), %_ZN6embree7PointMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit ], [ %i.ob, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ] ; 2 uses
  %.sroa.14.0610 = phi <4 x float> [ splat (float -inf), %_ZN6embree7PointMiILi4EE4fillINS_9PrimRefMBEEEvPKT_RmmPNS_5SceneE.exit ], [ %i.oc, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ] ; 2 uses
  %exitcond714.not = icmp eq i64 %.0.i44614, %i.he
  br i1 %exitcond714.not, label %_ZN6embree7PointMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hf = load ptr, ptr %i.fx, align 8, !noalias !580
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %i.fw
  %i.hh = load ptr, ptr %i.hg, align 8, !noalias !580 ; 5 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %.0.i44614
  %i.hj = load i32, ptr %i.hi, align 4, !noalias !580
  %i.hk = zext i32 %i.hj to i64                   ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 44
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.hn = load float, ptr %i.hm, align 8, !noalias !582 ; 6 uses
  %i.ho = load float, ptr %i.hl, align 4, !noalias !580 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hq = load float, ptr %i.hp, align 8, !noalias !580
  %i.hr = fsub float %i.hq, %i.ho
  %i.hs = insertelement <2 x float> poison, float %i.ho, i64 0
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fsub <2 x float> %.sroa.01.0.copyload.i, %i.ht
  %i.hv = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hx = fdiv <2 x float> %i.hu, %i.hw           ; 2 uses
  %i.hy = extractelement <2 x float> %i.hx, i64 0 ; 3 uses
  %i.hz = fmul float %i.hn, %i.hy                 ; 3 uses
  %i.ia = extractelement <2 x float> %i.hx, i64 1 ; 2 uses
  %i.ib = fmul float %i.hn, %i.ia                 ; 3 uses
  %i.ic = call noundef float @llvm.floor.f32(float %i.hz) ; 3 uses
  %i.id = call noundef float @llvm.ceil.f32(float %i.ib) ; 3 uses
  %i.ie = fcmp ogt float %i.ic, 0.000000e+00
  %i.if = select i1 %i.ie, float %i.ic, float 0.000000e+00 ; 3 uses
  %i.ig = fcmp olt float %i.id, %i.hn
  %i.ih = select i1 %i.ig, float %i.id, float %i.hn ; 3 uses
  %i.ii = fptosi float %i.if to i32
  %i.ij = fptosi float %i.ih to i32
  %i.ik = fptosi float %i.ic to i32
  %i.il = call noundef i32 @llvm.smax.i32(i32 %i.ik, i32 -1) ; 2 uses
  %i.im = fptosi float %i.id to i32
  %i.in = fptosi float %i.hn to i32
  %i.io = add nsw i32 %i.in, 1
  %i.ip = call noundef i32 @llvm.smin.i32(i32 %i.im, i32 %i.io) ; 3 uses
  %i.iq = zext nneg i32 %i.ii to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hh, i64 224
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !583 ; 3 uses
  %i.it = getelementptr inbounds nuw [56 x i8], ptr %i.is, i64 %i.iq ; 4 uses
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !583
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !583
  %i.ix = mul i64 %i.iw, %i.hk
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ix
  %i.iz = load <4 x float>, ptr %i.iy, align 16, !noalias !583 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hh, i64 296
  %i.jb = load float, ptr %i.ja, align 8, !noalias !584
  %i.jc = shufflevector <4 x float> %i.iz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.jd = insertelement <4 x float> poison, float %i.jb, i64 0
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.jf = fmul <4 x float> %i.jc, %i.je           ; 2 uses
  %i.jg = fsub <4 x float> %i.iz, %i.jf           ; 3 uses
  %i.jh = fadd <4 x float> %i.iz, %i.jf           ; 3 uses
  %i.ji = sext i32 %i.ij to i64
  %i.jj = getelementptr [56 x i8], ptr %i.is, i64 %i.ji ; 4 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !585
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !noalias !585
  %i.jn = mul i64 %i.jm, %i.hk
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jn
  %i.jp = load <4 x float>, ptr %i.jo, align 16, !noalias !585 ; 3 uses
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.jr = fmul <4 x float> %i.je, %i.jq           ; 2 uses
  %i.js = fsub <4 x float> %i.jp, %i.jr           ; 3 uses
  %i.jt = fadd <4 x float> %i.jp, %i.jr           ; 3 uses
  %i.ju = sub nsw i32 %i.ip, %i.il
  %i.jv = icmp eq i32 %i.ju, 1
  br i1 %i.jv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jw = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.jx = insertelement <2 x float> %i.jw, float %i.ih, i64 1
  %i.jy = insertelement <2 x float> poison, float %i.if, i64 0
  %i.jz = insertelement <2 x float> %i.jy, float %i.ib, i64 1
  %i.ka = fsub <2 x float> %i.jx, %i.jz           ; 2 uses
  %i.kb = fcmp ogt <2 x float> %i.ka, zeroinitializer
  %i.kc = select <2 x i1> %i.kb, <2 x float> %i.ka, <2 x float> zeroinitializer ; 3 uses
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ke = fmul <4 x float> %i.kd, %i.js
  %i.kf = fsub <2 x float> splat (float 1.000000e+00), %i.kc ; 2 uses
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kh = fmul <4 x float> %i.jg, %i.kg
  %i.ki = fadd <4 x float> %i.ke, %i.kh
  %i.kj = fmul <4 x float> %i.kd, %i.jt
  %i.kk = fmul <4 x float> %i.jh, %i.kg
  %i.kl = fadd <4 x float> %i.kj, %i.kk
  %i.km = shufflevector <2 x float> %i.kc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.kn = fmul <4 x float> %i.jg, %i.km
  %i.ko = shufflevector <2 x float> %i.kf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.kp = fmul <4 x float> %i.js, %i.ko
  %i.kq = fadd <4 x float> %i.kn, %i.kp
  %i.kr = fmul <4 x float> %i.jh, %i.km
  %i.ks = fmul <4 x float> %i.jt, %i.ko
  %i.kt = fadd <4 x float> %i.kr, %i.ks
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ku = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !586
  %i.kw = getelementptr inbounds nuw i8, ptr %i.it, i64 72
  %i.kx = load i64, ptr %i.kw, align 8, !noalias !586
  %i.ky = mul i64 %i.kx, %i.hk
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ky
  %i.la = load <4 x float>, ptr %i.kz, align 16, !noalias !586 ; 3 uses
  %i.lb = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.lc = fmul <4 x float> %i.je, %i.lb           ; 2 uses
  %i.ld = fsub <4 x float> %i.la, %i.lc
  %i.le = fadd <4 x float> %i.la, %i.lc
  %i.lf = getelementptr i8, ptr %i.jj, i64 -56
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !587
  %i.lh = getelementptr i8, ptr %i.jj, i64 -40
  %i.li = load i64, ptr %i.lh, align 8, !noalias !587
  %i.lj = mul i64 %i.li, %i.hk
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lj
  %i.ll = load <4 x float>, ptr %i.lk, align 16, !noalias !587 ; 3 uses
  %i.lm = shufflevector <4 x float> %i.ll, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ln = fmul <4 x float> %i.je, %i.lm           ; 2 uses
  %i.lo = fsub <4 x float> %i.ll, %i.ln
  %i.lp = fadd <4 x float> %i.ll, %i.ln
  %i.lq = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.lr = insertelement <2 x float> %i.lq, float %i.ih, i64 1
  %i.ls = insertelement <2 x float> poison, float %i.if, i64 0
  %i.lt = insertelement <2 x float> %i.ls, float %i.ib, i64 1
  %i.lu = fsub <2 x float> %i.lr, %i.lt           ; 2 uses
  %i.lv = fcmp ogt <2 x float> %i.lu, zeroinitializer
  %i.lw = select <2 x i1> %i.lv, <2 x float> %i.lu, <2 x float> zeroinitializer ; 3 uses
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ly = fmul <4 x float> %i.lx, %i.ld
  %i.lz = fsub <2 x float> splat (float 1.000000e+00), %i.lw ; 2 uses
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mb = fmul <4 x float> %i.jg, %i.ma
  %i.mc = fadd <4 x float> %i.mb, %i.ly           ; 2 uses
  %i.md = fmul <4 x float> %i.lx, %i.le
  %i.me = fmul <4 x float> %i.jh, %i.ma
  %i.mf = fadd <4 x float> %i.me, %i.md           ; 2 uses
  %i.mg = shufflevector <2 x float> %i.lw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.mh = fmul <4 x float> %i.mg, %i.lo
  %i.mi = shufflevector <2 x float> %i.lz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.mj = fmul <4 x float> %i.js, %i.mi
  %i.mk = fadd <4 x float> %i.mj, %i.mh           ; 2 uses
  %i.ml = fmul <4 x float> %i.mg, %i.lp
  %i.mm = fmul <4 x float> %i.jt, %i.mi
  %i.mn = fadd <4 x float> %i.mm, %i.ml           ; 2 uses
  %.0.i45601 = add nsw i32 %i.il, 1               ; 2 uses
  %i.mo = icmp slt i32 %.0.i45601, %i.ip
  br i1 %i.mo, label %.lr.ph, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

.lr.ph:                                           ; preds = %bb.aq
  %i.mp = fsub float %i.ia, %i.hy
  %i.mq = zext nneg i32 %.0.i45601 to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph, %bb.ar
  %indvars.iv = phi i64 [ %i.mq, %.lr.ph ], [ %indvars.iv.next, %bb.ar ] ; 3 uses
  %.sroa.0209.0605 = phi <4 x float> [ %i.mk, %.lr.ph ], [ %i.nw, %bb.ar ] ; 2 uses
  %.sroa.7212.0604 = phi <4 x float> [ %i.mn, %.lr.ph ], [ %i.ny, %bb.ar ] ; 2 uses
  %.sroa.0215.0603 = phi <4 x float> [ %i.mc, %.lr.ph ], [ %i.nv, %bb.ar ] ; 2 uses
  %.sroa.7218.0602 = phi <4 x float> [ %i.mf, %.lr.ph ], [ %i.nx, %bb.ar ] ; 2 uses
  %i.mr = trunc nsw i64 %indvars.iv to i32
  %16 = sitofp i32 %i.mr to float
  %i.ms = fdiv float %16, %i.hn
  %i.mt = fsub float %i.ms, %i.hy
  %i.mu = fdiv float %i.mt, %i.mp                 ; 2 uses
  %i.mv = fsub float 1.000000e+00, %i.mu
  %i.mw = insertelement <4 x float> poison, float %i.mu, i64 0
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.my = fmul <4 x float> %.sroa.0209.0605, %i.mx
  %i.mz = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nb = fmul <4 x float> %.sroa.0215.0603, %i.na
  %i.nc = fadd <4 x float> %i.my, %i.nb
  %i.nd = fmul <4 x float> %.sroa.7212.0604, %i.mx
  %i.ne = fmul <4 x float> %.sroa.7218.0602, %i.na
  %i.nf = fadd <4 x float> %i.nd, %i.ne
  %i.ng = getelementptr inbounds nuw [56 x i8], ptr %i.is, i64 %indvars.iv ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !noalias !588
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.nj = load i64, ptr %i.ni, align 8, !noalias !588
  %i.nk = mul i64 %i.nj, %i.hk
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nk
  %i.nm = load <4 x float>, ptr %i.nl, align 16, !noalias !588 ; 3 uses
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.no = fmul <4 x float> %i.je, %i.nn           ; 2 uses
  %i.np = fsub <4 x float> %i.nm, %i.no
  %i.nq = fadd <4 x float> %i.nm, %i.no
  %i.nr = fsub <4 x float> %i.np, %i.nc
  %i.ns = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nr, <4 x float> zeroinitializer) ; 2 uses
  %i.nt = fsub <4 x float> %i.nq, %i.nf
  %i.nu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nt, <4 x float> zeroinitializer) ; 2 uses
  %i.nv = fadd <4 x float> %.sroa.0215.0603, %i.ns ; 2 uses
  %i.nw = fadd <4 x float> %.sroa.0209.0605, %i.ns ; 2 uses
  %i.nx = fadd <4 x float> %.sroa.7218.0602, %i.nu ; 2 uses
  %i.ny = fadd <4 x float> %.sroa.7212.0604, %i.nu ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ip, %lftr.wideiv
  br i1 %exitcond.not, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit, label %bb.ar, !llvm.loop !502

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit: ; preds = %bb.ar, %bb.aq, %bb.ap
  %.sroa.11.0 = phi <4 x float> [ %i.kt, %bb.ap ], [ %i.mn, %bb.aq ], [ %i.ny, %bb.ar ]
  %.sroa.8185.0 = phi <4 x float> [ %i.kq, %bb.ap ], [ %i.mk, %bb.aq ], [ %i.nw, %bb.ar ]
  %.sroa.5.0 = phi <4 x float> [ %i.kl, %bb.ap ], [ %i.mf, %bb.aq ], [ %i.nx, %bb.ar ]
  %.sroa.0184.0 = phi <4 x float> [ %i.ki, %bb.ap ], [ %i.mc, %bb.aq ], [ %i.nv, %bb.ar ]
  %i.nz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0113.0613, <4 x float> %.sroa.0184.0) ; 2 uses
  %i.oa = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6115.0612, <4 x float> %.sroa.5.0) ; 2 uses
  %i.ob = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.0611, <4 x float> %.sroa.8185.0) ; 2 uses
  %i.oc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.0610, <4 x float> %.sroa.11.0) ; 2 uses
  %i.od = add nuw nsw i64 %.0.i44614, 1           ; 2 uses
  %exitcond715.not = icmp eq i64 %i.od, 4
  br i1 %exitcond715.not, label %_ZN6embree7PointMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit, label %bb.an, !llvm.loop !503

_ZN6embree7PointMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit: ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit, %bb.an
  %.sroa.14.0.lcssa = phi <4 x float> [ %i.oc, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %.sroa.14.0610, %bb.an ]
  %.sroa.10.0.lcssa = phi <4 x float> [ %i.ob, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %.sroa.10.0611, %bb.an ]
  %.sroa.6115.0.lcssa = phi <4 x float> [ %i.oa, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %.sroa.6115.0612, %bb.an ]
  %.sroa.0113.0.lcssa = phi <4 x float> [ %i.nz, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_6Points12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %.sroa.0113.0613, %bb.an ]
  %i.oe = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0119.0619, <4 x float> %.sroa.0113.0.lcssa) ; 2 uses
  %i.of = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6121.0618, <4 x float> %.sroa.6115.0.lcssa) ; 2 uses
  %i.og = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10123.0617, <4 x float> %.sroa.10.0.lcssa) ; 2 uses
  %i.oh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14125.0616, <4 x float> %.sroa.14.0.lcssa) ; 2 uses
  %i.oi = add nuw nsw i64 %.0.i620, 1             ; 2 uses
  %exitcond716.not = icmp eq i64 %i.oi, %i.ao
  br i1 %exitcond716.not, label %_ZN6embree7PointMiILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit, label %bb.ac, !llvm.loop !504

_ZN6embree7PointMiILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit: ; preds = %_ZN6embree7PointMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit
  %.sroa.14125.0.lcssa = phi <4 x float> [ splat (float -inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit ], [ %i.oh, %_ZN6embree7PointMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.10123.0.lcssa = phi <4 x float> [ splat (float +inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit ], [ %i.og, %_ZN6embree7PointMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.6121.0.lcssa = phi <4 x float> [ splat (float -inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit ], [ %i.of, %_ZN6embree7PointMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.0119.0.lcssa = phi <4 x float> [ splat (float +inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit ], [ %i.oe, %_ZN6embree7PointMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit ]
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 %i.fm, ptr %0, align 16, !alias.scope !580
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.0119.0.lcssa, ptr %i.ok, align 16
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.6121.0.lcssa, ptr %i.ol, align 16
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sroa.10123.0.lcssa, ptr %i.om, align 16
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %.sroa.14125.0.lcssa, ptr %i.on, align 16
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.op = load i64, ptr %i.oj, align 8, !noalias !580
  store i64 %i.op, ptr %i.oo, align 16, !alias.scope !580
  br label %bb.di

bb.as:                                            ; preds = %bb.c
  %i.oq = and i32 %i.ah, 28
  %i.or = icmp eq i32 %i.oq, 0
  %i.os = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ot = load ptr, ptr %i.os, align 8            ; 2 uses
  %i.ou = add i64 %i.l, 3
  %i.ov = lshr i64 %i.ou, 2                       ; 7 uses
  br i1 %i.or, label %bb.at, label %bb.ci

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.ow = mul i64 %i.ov, 48
  %i.ox = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oy = load ptr, ptr %i.ox, align 8, !noalias !589 ; 9 uses
  %i.oz = load ptr, ptr %3, align 8, !noalias !589 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.ow, ptr %i.c, align 8, !noalias !589
  %i.pa = load ptr, ptr %i.oy, align 64, !noalias !589 ; 18 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8 ; 6 uses
  %i.pc = load atomic ptr, ptr %i.pb seq_cst, align 8, !noalias !589
  %i.pd = icmp eq ptr %i.pc, %i.oz
  br i1 %i.pd, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit30, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11, !noalias !589
  store ptr %i.pa, ptr %14, align 8, !noalias !589
  %i.pe = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i8 1, ptr %i.pe, align 8, !noalias !589
  tail call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.pa), !noalias !589
  %i.pf = load atomic ptr, ptr %i.pb seq_cst, align 8, !noalias !589
  %.not.i29 = icmp eq ptr %i.pf, null
  br i1 %.not.i29, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pa, i64 104
  %i.ph = load i64, ptr %i.pg, align 8, !noalias !589
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pa, i64 168
  %i.pj = load i64, ptr %i.pi, align 8, !noalias !589
  %i.pk = add i64 %i.pj, %i.ph
  %i.pl = load atomic ptr, ptr %i.pb seq_cst, align 8, !noalias !589
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 280
  %i.pn = atomicrmw add ptr %i.pm, i64 %i.pk seq_cst, align 8, !noalias !589 ; 0 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pa, i64 88
  %i.pp = load i64, ptr %i.po, align 8, !noalias !589
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pa, i64 80
  %i.pr = load i64, ptr %i.pq, align 16, !noalias !589
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pa, i64 152
  %i.pt = load i64, ptr %i.ps, align 8, !noalias !589
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pa, i64 144
  %i.pv = load i64, ptr %i.pu, align 16, !noalias !589
  %i.pw = add i64 %i.pp, %i.pt
  %i.px = add i64 %i.pr, %i.pv
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = load atomic ptr, ptr %i.pb seq_cst, align 8, !noalias !589
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 288
  %i.qb = atomicrmw add ptr %i.qa, i64 %i.py seq_cst, align 8, !noalias !589 ; 0 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pa, i64 112
  %i.qd = load i64, ptr %i.qc, align 16, !noalias !589
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pa, i64 176
  %i.qf = load i64, ptr %i.qe, align 16, !noalias !589
  %i.qg = add i64 %i.qf, %i.qd
  %i.qh = load atomic ptr, ptr %i.pb seq_cst, align 8, !noalias !589
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 296
  %i.qj = atomicrmw add ptr %i.qi, i64 %i.qg seq_cst, align 8, !noalias !589 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pa, i64 72
  %.not.i61 = icmp eq ptr %i.oz, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qk, i8 0, i64 48, i1 false), !noalias !589
  br i1 %.not.i61, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit62.thread, label %bb.ax

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit62.thread: ; preds = %bb.aw
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pa, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ql, i8 0, i64 48, i1 false), !noalias !589
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit64

bb.ax:                                            ; preds = %bb.aw
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pa, i64 96
  %i.qn = getelementptr inbounds nuw i8, ptr %i.oz, i64 16 ; 2 uses
  %i.qo = load i64, ptr %i.qn, align 8, !noalias !589
  store i64 %i.qo, ptr %i.qm, align 32, !noalias !589
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pa, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qp, i8 0, i64 48, i1 false), !noalias !589
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pa, i64 160
  %i.qr = load i64, ptr %i.qn, align 8, !noalias !589
  store i64 %i.qr, ptr %i.qq, align 32, !noalias !589
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit64

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit64: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit62.thread, %bb.ax
  store atomic ptr %i.oz, ptr %i.pb seq_cst, align 8, !noalias !589
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11, !noalias !589
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %11, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 1, ptr %i.qs, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc33 unwind label %bb.bi

.noexc33:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit64
  %i.qt = getelementptr inbounds nuw i8, ptr %i.oz, i64 304 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.oz, i64 312 ; 4 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !noalias !589 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.oz, i64 320 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !noalias !589
  %.not.i67 = icmp eq ptr %i.qv, %i.qx
  br i1 %.not.i67, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.noexc33
  store ptr %i.pa, ptr %i.qv, align 8, !noalias !589
  %i.qy = load ptr, ptr %i.qu, align 8, !noalias !589
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store ptr %i.qz, ptr %i.qu, align 8, !noalias !589
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit36

bb.az:                                            ; preds = %.noexc33
  %i.ra = load ptr, ptr %i.qt, align 8, !noalias !589 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZZN6embree4sse223BVHNHairMBlurBuilderSAHILi4ENS_9CurveNiMBILi4EEENS_6LineMiILi4EEENS_7PointMiILi4EEEE5buildEvENKUlRKNS_5SetMBERKNS_13FastAllocator15CachedAllocatorEE_clESB_SF_:bb.a
  %i.zt = load i32, ptr %i.zs, align 4, !noalias !589 ; 2 uses
  %.not589 = icmp eq i32 %i.zt, -1
  br i1 %.not589, label %_ZN6embree6LineMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.zu = load ptr, ptr %i.ue, align 8, !noalias !589
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %i.ud
  %i.zw = load ptr, ptr %i.zv, align 8, !noalias !589 ; 7 uses
  %i.zx = zext i32 %i.zt to i64
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 44
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 40
  %i.aaa = load float, ptr %i.zz, align 8, !noalias !591 ; 6 uses
  %i.aab = load float, ptr %i.zy, align 4, !noalias !589 ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 48
  %i.aad = load float, ptr %i.aac, align 8, !noalias !589
  %i.aae = fsub float %i.aad, %i.aab
  %i.aaf = insertelement <2 x float> poison, float %i.aab, i64 0
  %i.aag = shufflevector <2 x float> %i.aaf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aah = fsub <2 x float> %.sroa.01.0.copyload.i12, %i.aag
  %i.aai = insertelement <2 x float> poison, float %i.aae, i64 0
  %i.aaj = shufflevector <2 x float> %i.aai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aak = fdiv <2 x float> %i.aah, %i.aaj        ; 2 uses
  %i.aal = extractelement <2 x float> %i.aak, i64 0 ; 3 uses
  %i.aam = fmul float %i.aaa, %i.aal              ; 3 uses
  %i.aan = extractelement <2 x float> %i.aak, i64 1 ; 2 uses
  %i.aao = fmul float %i.aaa, %i.aan              ; 3 uses
  %i.aap = call noundef float @llvm.floor.f32(float %i.aam) ; 3 uses
  %i.aaq = call noundef float @llvm.ceil.f32(float %i.aao) ; 3 uses
  %i.aar = fcmp ogt float %i.aap, 0.000000e+00
  %i.aas = select i1 %i.aar, float %i.aap, float 0.000000e+00 ; 3 uses
  %i.aat = fcmp olt float %i.aaq, %i.aaa
  %i.aau = select i1 %i.aat, float %i.aaq, float %i.aaa ; 3 uses
  %i.aav = fptosi float %i.aas to i32
  %i.aaw = fptosi float %i.aau to i32
  %i.aax = fptosi float %i.aap to i32
  %i.aay = call noundef i32 @llvm.smax.i32(i32 %i.aax, i32 -1) ; 2 uses
  %i.aaz = fptosi float %i.aaq to i32
  %i.aba = fptosi float %i.aaa to i32
  %i.abb = add nsw i32 %i.aba, 1
  %i.abc = call noundef i32 @llvm.smin.i32(i32 %i.aaz, i32 %i.abb) ; 3 uses
  %i.abd = zext nneg i32 %i.aav to i64
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zw, i64 88
  %i.abf = load ptr, ptr %i.abe, align 8, !noalias !592
  %i.abg = getelementptr inbounds nuw i8, ptr %i.zw, i64 104
  %i.abh = load i64, ptr %i.abg, align 8, !noalias !592
  %i.abi = mul i64 %i.abh, %i.zx
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.abi
  %i.abk = load i32, ptr %i.abj, align 4, !noalias !592 ; 2 uses
  %i.abl = zext i32 %i.abk to i64                 ; 5 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.zw, i64 336
  %i.abn = load ptr, ptr %i.abm, align 8, !noalias !593 ; 3 uses
  %i.abo = getelementptr inbounds nuw [56 x i8], ptr %i.abn, i64 %i.abd ; 4 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !noalias !593 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  %i.abr = load i64, ptr %i.abq, align 8, !noalias !593 ; 2 uses
  %i.abs = mul i64 %i.abr, %i.abl
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abs
  %i.abu = load <4 x float>, ptr %i.abt, align 16, !noalias !593 ; 3 uses
  %i.abv = add i32 %i.abk, 1
  %i.abw = zext i32 %i.abv to i64                 ; 5 uses
  %i.abx = mul i64 %i.abr, %i.abw
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abx
  %i.abz = load <4 x float>, ptr %i.aby, align 16, !noalias !594 ; 3 uses
  %i.aca = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.abu, <4 x float> %i.abz)
  %i.acb = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.abu, <4 x float> %i.abz)
  %i.acc = getelementptr inbounds nuw i8, ptr %i.zw, i64 412
  %i.acd = load float, ptr %i.acc, align 4, !noalias !595 ; 2 uses
  %i.ace = sext i32 %i.aaw to i64
  %i.acf = getelementptr [56 x i8], ptr %i.abn, i64 %i.ace ; 4 uses
  %i.acg = load ptr, ptr %i.acf, align 8, !noalias !596 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.aci = load i64, ptr %i.ach, align 8, !noalias !596 ; 2 uses
  %i.acj = mul i64 %i.aci, %i.abl
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.acj
  %i.acl = load <4 x float>, ptr %i.ack, align 16, !noalias !596 ; 3 uses
  %i.acm = mul i64 %i.aci, %i.abw
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.acm
  %i.aco = load <4 x float>, ptr %i.acn, align 16, !noalias !597 ; 3 uses
  %i.acp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.acl, <4 x float> %i.aco)
  %i.acq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.acl, <4 x float> %i.aco)
  %i.acr = shufflevector <4 x float> %i.abu, <4 x float> %i.acl, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.acs = shufflevector <4 x float> %i.abz, <4 x float> %i.aco, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.act = fcmp olt <2 x float> %i.acr, %i.acs
  %i.acu = select <2 x i1> %i.act, <2 x float> %i.acs, <2 x float> %i.acr
  %i.acv = insertelement <2 x float> poison, float %i.acd, i64 0
  %i.acw = shufflevector <2 x float> %i.acv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.acx = fmul <2 x float> %i.acu, %i.acw        ; 2 uses
  %i.acy = shufflevector <2 x float> %i.acx, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acz = fsub <4 x float> %i.aca, %i.acy        ; 3 uses
  %i.ada = fadd <4 x float> %i.acb, %i.acy        ; 3 uses
  %i.adb = shufflevector <2 x float> %i.acx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.adc = fsub <4 x float> %i.acp, %i.adb        ; 3 uses
  %i.add = fadd <4 x float> %i.acq, %i.adb        ; 3 uses
  %i.ade = sub nsw i32 %i.abc, %i.aay
  %i.adf = icmp eq i32 %i.ade, 1
  br i1 %i.adf, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.adg = insertelement <2 x float> poison, float %i.aam, i64 0
  %i.adh = insertelement <2 x float> %i.adg, float %i.aau, i64 1
  %i.adi = insertelement <2 x float> poison, float %i.aas, i64 0
  %i.adj = insertelement <2 x float> %i.adi, float %i.aao, i64 1
  %i.adk = fsub <2 x float> %i.adh, %i.adj        ; 2 uses
  %i.adl = fcmp ogt <2 x float> %i.adk, zeroinitializer
  %i.adm = select <2 x i1> %i.adl, <2 x float> %i.adk, <2 x float> zeroinitializer ; 3 uses
  %i.adn = shufflevector <2 x float> %i.adm, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ado = fmul <4 x float> %i.adn, %i.adc
  %i.adp = fsub <2 x float> splat (float 1.000000e+00), %i.adm ; 2 uses
  %i.adq = shufflevector <2 x float> %i.adp, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.adr = fmul <4 x float> %i.adq, %i.acz
  %i.ads = fadd <4 x float> %i.adr, %i.ado
  %i.adt = fmul <4 x float> %i.adn, %i.add
  %i.adu = fmul <4 x float> %i.adq, %i.ada
  %i.adv = fadd <4 x float> %i.adu, %i.adt
  %i.adw = shufflevector <2 x float> %i.adm, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.adx = fmul <4 x float> %i.adw, %i.acz
  %i.ady = shufflevector <2 x float> %i.adp, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.adz = fmul <4 x float> %i.ady, %i.adc
  %i.aea = fadd <4 x float> %i.adx, %i.adz
  %i.aeb = fmul <4 x float> %i.adw, %i.ada
  %i.aec = fmul <4 x float> %i.ady, %i.add
  %i.aed = fadd <4 x float> %i.aeb, %i.aec
  br label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

bb.cg:                                            ; preds = %bb.ce
  %i.aee = getelementptr inbounds nuw i8, ptr %i.abo, i64 56
  %i.aef = load ptr, ptr %i.aee, align 8, !noalias !598 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.abo, i64 72
  %i.aeh = load i64, ptr %i.aeg, align 8, !noalias !598 ; 2 uses
  %i.aei = mul i64 %i.aeh, %i.abl
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aef, i64 %i.aei
  %i.aek = load <4 x float>, ptr %i.aej, align 16, !noalias !598 ; 3 uses
  %i.ael = mul i64 %i.aeh, %i.abw
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aef, i64 %i.ael
  %i.aen = load <4 x float>, ptr %i.aem, align 16, !noalias !599 ; 3 uses
  %i.aeo = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aek, <4 x float> %i.aen)
  %i.aep = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aek, <4 x float> %i.aen)
  %i.aeq = getelementptr i8, ptr %i.acf, i64 -56
  %i.aer = load ptr, ptr %i.aeq, align 8, !noalias !600 ; 2 uses
  %i.aes = getelementptr i8, ptr %i.acf, i64 -40
  %i.aet = load i64, ptr %i.aes, align 8, !noalias !600 ; 2 uses
  %i.aeu = mul i64 %i.aet, %i.abl
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aeu
  %i.aew = load <4 x float>, ptr %i.aev, align 16, !noalias !600 ; 3 uses
  %i.aex = mul i64 %i.aet, %i.abw
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aer, i64 %i.aex
  %i.aez = load <4 x float>, ptr %i.aey, align 16, !noalias !601 ; 3 uses
  %i.afa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aew, <4 x float> %i.aez)
  %i.afb = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aew, <4 x float> %i.aez)
  %i.afc = shufflevector <4 x float> %i.aek, <4 x float> %i.aew, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.afd = shufflevector <4 x float> %i.aen, <4 x float> %i.aez, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.afe = fcmp olt <2 x float> %i.afc, %i.afd
  %i.aff = select <2 x i1> %i.afe, <2 x float> %i.afd, <2 x float> %i.afc
  %i.afg = fmul <2 x float> %i.acw, %i.aff        ; 2 uses
  %i.afh = shufflevector <2 x float> %i.afg, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afi = fsub <4 x float> %i.aeo, %i.afh
  %i.afj = fadd <4 x float> %i.aep, %i.afh
  %i.afk = shufflevector <2 x float> %i.afg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.afl = fsub <4 x float> %i.afa, %i.afk
  %i.afm = fadd <4 x float> %i.afb, %i.afk
  %i.afn = insertelement <2 x float> poison, float %i.aam, i64 0
  %i.afo = insertelement <2 x float> %i.afn, float %i.aau, i64 1
  %i.afp = insertelement <2 x float> poison, float %i.aas, i64 0
  %i.afq = insertelement <2 x float> %i.afp, float %i.aao, i64 1
  %i.afr = fsub <2 x float> %i.afo, %i.afq        ; 2 uses
  %i.afs = fcmp ogt <2 x float> %i.afr, zeroinitializer
  %i.aft = select <2 x i1> %i.afs, <2 x float> %i.afr, <2 x float> zeroinitializer ; 3 uses
  %i.afu = shufflevector <2 x float> %i.aft, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afv = fmul <4 x float> %i.afu, %i.afi
  %i.afw = fsub <2 x float> splat (float 1.000000e+00), %i.aft ; 2 uses
  %i.afx = shufflevector <2 x float> %i.afw, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afy = fmul <4 x float> %i.afx, %i.acz
  %i.afz = fadd <4 x float> %i.afy, %i.afv        ; 2 uses
  %i.aga = fmul <4 x float> %i.afu, %i.afj
  %i.agb = fmul <4 x float> %i.afx, %i.ada
  %i.agc = fadd <4 x float> %i.agb, %i.aga        ; 2 uses
  %i.agd = shufflevector <2 x float> %i.aft, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.age = fmul <4 x float> %i.agd, %i.afl
  %i.agf = shufflevector <2 x float> %i.afw, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.agg = fmul <4 x float> %i.agf, %i.adc
  %i.agh = fadd <4 x float> %i.agg, %i.age        ; 2 uses
  %i.agi = fmul <4 x float> %i.agd, %i.afm
  %i.agj = fmul <4 x float> %i.agf, %i.add
  %i.agk = fadd <4 x float> %i.agj, %i.agi        ; 2 uses
  %.0.i51657 = add nsw i32 %i.aay, 1              ; 2 uses
  %i.agl = icmp slt i32 %.0.i51657, %i.abc
  br i1 %i.agl, label %.lr.ph664, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit

.lr.ph664:                                        ; preds = %bb.cg
  %i.agm = fsub float %i.aan, %i.aal
  %i.agn = zext nneg i32 %.0.i51657 to i64
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph664, %bb.ch
  %indvars.iv719 = phi i64 [ %i.agn, %.lr.ph664 ], [ %indvars.iv.next720, %bb.ch ] ; 3 uses
  %.sroa.7346.0661 = phi <4 x float> [ %i.agc, %.lr.ph664 ], [ %i.aib, %bb.ch ] ; 2 uses
  %.sroa.0343.0660 = phi <4 x float> [ %i.afz, %.lr.ph664 ], [ %i.ahz, %bb.ch ] ; 2 uses
  %.sroa.7340.0659 = phi <4 x float> [ %i.agk, %.lr.ph664 ], [ %i.aic, %bb.ch ] ; 2 uses
  %.sroa.0337.0658 = phi <4 x float> [ %i.agh, %.lr.ph664 ], [ %i.aia, %bb.ch ] ; 2 uses
  %i.ago = trunc nsw i64 %indvars.iv719 to i32
  %17 = sitofp i32 %i.ago to float
  %i.agp = fdiv float %17, %i.aaa
  %i.agq = fsub float %i.agp, %i.aal
  %i.agr = fdiv float %i.agq, %i.agm              ; 2 uses
  %i.ags = fsub float 1.000000e+00, %i.agr
  %i.agt = insertelement <4 x float> poison, float %i.agr, i64 0
  %i.agu = shufflevector <4 x float> %i.agt, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agv = fmul <4 x float> %.sroa.0337.0658, %i.agu
  %i.agw = insertelement <4 x float> poison, float %i.ags, i64 0
  %i.agx = shufflevector <4 x float> %i.agw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agy = fmul <4 x float> %.sroa.0343.0660, %i.agx
  %i.agz = fadd <4 x float> %i.agv, %i.agy
  %i.aha = fmul <4 x float> %.sroa.7340.0659, %i.agu
  %i.ahb = fmul <4 x float> %.sroa.7346.0661, %i.agx
  %i.ahc = fadd <4 x float> %i.aha, %i.ahb
  %i.ahd = getelementptr inbounds nuw [56 x i8], ptr %i.abn, i64 %indvars.iv719 ; 2 uses
  %i.ahe = load ptr, ptr %i.ahd, align 8, !noalias !602 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  %i.ahg = load i64, ptr %i.ahf, align 8, !noalias !602 ; 2 uses
  %i.ahh = mul i64 %i.ahg, %i.abl
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahh
  %i.ahj = load <4 x float>, ptr %i.ahi, align 16, !noalias !602 ; 3 uses
  %i.ahk = mul i64 %i.ahg, %i.abw
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahe, i64 %i.ahk
  %i.ahm = load <4 x float>, ptr %i.ahl, align 16, !noalias !603 ; 3 uses
  %i.ahn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ahj, <4 x float> %i.ahm)
  %i.aho = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ahj, <4 x float> %i.ahm)
  %.sroa.02.12.vec.extract.i88 = extractelement <4 x float> %i.ahj, i64 3 ; 2 uses
  %.sroa.0.12.vec.extract.i89 = extractelement <4 x float> %i.ahm, i64 3 ; 2 uses
  %i.ahp = fcmp olt float %.sroa.02.12.vec.extract.i88, %.sroa.0.12.vec.extract.i89
  %i.ahq = select i1 %i.ahp, float %.sroa.0.12.vec.extract.i89, float %.sroa.02.12.vec.extract.i88
  %.scalar.i90 = fmul float %i.acd, %i.ahq
  %i.ahr = insertelement <4 x float> poison, float %.scalar.i90, i64 0
  %i.ahs = shufflevector <4 x float> %i.ahr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aht = fsub <4 x float> %i.ahn, %i.ahs
  %i.ahu = fadd <4 x float> %i.aho, %i.ahs
  %i.ahv = fsub <4 x float> %i.aht, %i.agz
  %i.ahw = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ahv, <4 x float> zeroinitializer) ; 2 uses
  %i.ahx = fsub <4 x float> %i.ahu, %i.ahc
  %i.ahy = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ahx, <4 x float> zeroinitializer) ; 2 uses
  %i.ahz = fadd <4 x float> %.sroa.0343.0660, %i.ahw ; 2 uses
  %i.aia = fadd <4 x float> %.sroa.0337.0658, %i.ahw ; 2 uses
  %i.aib = fadd <4 x float> %.sroa.7346.0661, %i.ahy ; 2 uses
  %i.aic = fadd <4 x float> %.sroa.7340.0659, %i.ahy ; 2 uses
  %indvars.iv.next720 = add nuw nsw i64 %indvars.iv719, 1 ; 2 uses
  %lftr.wideiv722 = trunc i64 %indvars.iv.next720 to i32
  %exitcond723.not = icmp eq i32 %i.abc, %lftr.wideiv722
  br i1 %exitcond723.not, label %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit, label %bb.ch, !llvm.loop !553

_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit: ; preds = %bb.ch, %bb.cg, %bb.cf
  %.sroa.0302.0 = phi <4 x float> [ %i.ads, %bb.cf ], [ %i.afz, %bb.cg ], [ %i.ahz, %bb.ch ]
  %.sroa.5303.0 = phi <4 x float> [ %i.adv, %bb.cf ], [ %i.agc, %bb.cg ], [ %i.aib, %bb.ch ]
  %.sroa.8304.0 = phi <4 x float> [ %i.aea, %bb.cf ], [ %i.agh, %bb.cg ], [ %i.aia, %bb.ch ]
  %.sroa.11305.0 = phi <4 x float> [ %i.aed, %bb.cf ], [ %i.agk, %bb.cg ], [ %i.aic, %bb.ch ]
  %i.aid = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0131.0672, <4 x float> %.sroa.0302.0) ; 2 uses
  %i.aie = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6133.0671, <4 x float> %.sroa.5303.0) ; 2 uses
  %i.aif = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10135.0670, <4 x float> %.sroa.8304.0) ; 2 uses
  %i.aig = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14137.0669, <4 x float> %.sroa.11305.0) ; 2 uses
  %i.aih = add nuw nsw i64 %.0.i49673, 1          ; 2 uses
  %exitcond724.not = icmp eq i64 %i.aih, 4
  br i1 %exitcond724.not, label %_ZN6embree6LineMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit, label %bb.cd, !llvm.loop !554

_ZN6embree6LineMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit: ; preds = %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit, %bb.cd
  %.sroa.14137.0.lcssa = phi <4 x float> [ %i.aig, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %.sroa.14137.0669, %bb.cd ]
  %.sroa.10135.0.lcssa = phi <4 x float> [ %i.aif, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %.sroa.10135.0670, %bb.cd ]
  %.sroa.6133.0.lcssa = phi <4 x float> [ %i.aie, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %.sroa.6133.0671, %bb.cd ]
  %.sroa.0131.0.lcssa = phi <4 x float> [ %i.aid, %_ZN6embree5LBBoxINS_6Vec3faEEC2IZNKS_12LineSegments12linearBoundsEmRKNS_4BBoxIfEEEUlmE_EERKT_S8_S8_f.exit ], [ %.sroa.0131.0672, %bb.cd ]
  %i.aii = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0139.0678, <4 x float> %.sroa.0131.0.lcssa) ; 2 uses
  %i.aij = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6141.0677, <4 x float> %.sroa.6133.0.lcssa) ; 2 uses
  %i.aik = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10143.0676, <4 x float> %.sroa.10135.0.lcssa) ; 2 uses
  %i.ail = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14145.0675, <4 x float> %.sroa.14137.0.lcssa) ; 2 uses
  %i.aim = add nuw nsw i64 %.0.i11679, 1          ; 2 uses
  %exitcond725.not = icmp eq i64 %i.aim, %i.ov
  br i1 %exitcond725.not, label %_ZN6embree6LineMiILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit, label %bb.bs, !llvm.loop !555

_ZN6embree6LineMiILi4EE12createLeafMBINS_4BVHNILi4EEENS_5SetMBENS_13FastAllocator15CachedAllocatorEEENT_14NodeRecordMB4DEPS8_RKT0_RKT1_.exit: ; preds = %_ZN6embree6LineMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit21
  %.sroa.14145.0.lcssa = phi <4 x float> [ splat (float -inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit21 ], [ %i.ail, %_ZN6embree6LineMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.10143.0.lcssa = phi <4 x float> [ splat (float +inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit21 ], [ %i.aik, %_ZN6embree6LineMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.6141.0.lcssa = phi <4 x float> [ splat (float -inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit21 ], [ %i.aij, %_ZN6embree6LineMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit ]
  %.sroa.0139.0.lcssa = phi <4 x float> [ splat (float +inf), %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit21 ], [ %i.aii, %_ZN6embree6LineMiILi4EE12linearBoundsEPKNS_5SceneENS_4BBoxIfEE.exit ]
  %i.ain = getelementptr inbounds nuw i8, ptr %2, i64 136
  store i64 %i.tt, ptr %0, align 16, !alias.scope !589
  %i.aio = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.0139.0.lcssa, ptr %i.aio, align 16
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.6141.0.lcssa, ptr %i.aip, align 16
  %i.aiq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.sroa.10143.0.lcssa, ptr %i.aiq, align 16
  %i.air = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %.sroa.14145.0.lcssa, ptr %i.air, align 16
  %i.ais = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ait = load i64, ptr %i.ain, align 8, !noalias !589
  store i64 %i.ait, ptr %i.ais, align 16, !alias.scope !589
  br label %bb.di

bb.ci:                                            ; preds = %bb.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  %i.aiu = lshr i64 %i.l, 2
  %i.aiv = and i64 %i.l, 3                        ; 2 uses
  %i.aiw = mul i64 %i.aiu, 178
  %.not.i.i = icmp eq i64 %i.aiv, 0
  %i.aix = mul nuw nsw i64 %i.aiv, 37
  %i.aiy = add nuw nsw i64 %i.aix, 30
  %i.aiz = select i1 %.not.i.i, i64 0, i64 %i.aiy
  %i.aja = add i64 %i.aiz, %i.aiw
  %i.ajb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ajc = load ptr, ptr %i.ajb, align 8, !noalias !604 ; 9 uses
  %i.ajd = load ptr, ptr %3, align 8, !noalias !604 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.aja, ptr %i.a, align 8, !noalias !604
  %i.aje = load ptr, ptr %i.ajc, align 64, !noalias !604 ; 18 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 8 ; 6 uses
  %i.ajg = load atomic ptr, ptr %i.ajf seq_cst, align 8, !noalias !604
  %i.ajh = icmp eq ptr %i.ajg, %i.ajd
  br i1 %i.ajh, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11, !noalias !604
  store ptr %i.aje, ptr %15, align 8, !noalias !604
  %i.aji = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i8 1, ptr %i.aji, align 8, !noalias !604
  tail call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.aje), !noalias !604
  %i.ajj = load atomic ptr, ptr %i.ajf seq_cst, align 8, !noalias !604
  %.not.i28 = icmp eq ptr %i.ajj, null
  br i1 %.not.i28, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aje, i64 104
  %i.ajl = load i64, ptr %i.ajk, align 8, !noalias !604
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aje, i64 168
  %i.ajn = load i64, ptr %i.ajm, align 8, !noalias !604
  %i.ajo = add i64 %i.ajn, %i.ajl
  %i.ajp = load atomic ptr, ptr %i.ajf seq_cst, align 8, !noalias !604
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 280
  %i.ajr = atomicrmw add ptr %i.ajq, i64 %i.ajo seq_cst, align 8, !noalias !604 ; 0 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.aje, i64 88
  %i.ajt = load i64, ptr %i.ajs, align 8, !noalias !604
  %i.aju = getelementptr inbounds nuw i8, ptr %i.aje, i64 80
  %i.ajv = load i64, ptr %i.aju, align 16, !noalias !604
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aje, i64 152
  %i.ajx = load i64, ptr %i.ajw, align 8, !noalias !604
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.aje, i64 144
  %i.ajz = load i64, ptr %i.ajy, align 16, !noalias !604
  %i.aka = add i64 %i.ajt, %i.ajx
  %i.akb = add i64 %i.ajv, %i.ajz
  %i.akc = sub i64 %i.aka, %i.akb
  %i.akd = load atomic ptr, ptr %i.ajf seq_cst, align 8, !noalias !604
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 288
  %i.akf = atomicrmw add ptr %i.ake, i64 %i.akc seq_cst, align 8, !noalias !604 ; 0 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.aje, i64 112
  %i.akh = load i64, ptr %i.akg, align 16, !noalias !604
  %i.aki = getelementptr inbounds nuw i8, ptr %i.aje, i64 176
  %i.akj = load i64, ptr %i.aki, align 16, !noalias !604
  %i.akk = add i64 %i.akj, %i.akh
  %i.akl = load atomic ptr, ptr %i.ajf seq_cst, align 8, !noalias !604
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 296
  %i.akn = atomicrmw add ptr %i.akm, i64 %i.akk seq_cst, align 8, !noalias !604 ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.ako = getelementptr inbounds nuw i8, ptr %i.aje, i64 72
  %.not.i91 = icmp eq ptr %i.ajd, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ako, i8 0, i64 48, i1 false), !noalias !604
  br i1 %.not.i91, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit92.thread, label %bb.cm

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit92.thread: ; preds = %bb.cl
  %i.akp = getelementptr inbounds nuw i8, ptr %i.aje, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.akp, i8 0, i64 48, i1 false), !noalias !604
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit94

bb.cm:                                            ; preds = %bb.cl
  %i.akq = getelementptr inbounds nuw i8, ptr %i.aje, i64 96
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16 ; 2 uses
  %i.aks = load i64, ptr %i.akr, align 8, !noalias !604
  store i64 %i.aks, ptr %i.akq, align 32, !noalias !604
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aje, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.akt, i8 0, i64 48, i1 false), !noalias !604
  %i.aku = getelementptr inbounds nuw i8, ptr %i.aje, i64 160
  %i.akv = load i64, ptr %i.akr, align 8, !noalias !604
  store i64 %i.akv, ptr %i.aku, align 32, !noalias !604
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit94

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit94: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit92.thread, %bb.cm
  store atomic ptr %i.ajd, ptr %i.ajf seq_cst, align 8, !noalias !604
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11, !noalias !604
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %10, align 8
  %i.akw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 1, ptr %i.akw, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc37 unwind label %bb.cx

.noexc37:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit94
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 304 ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ajd, i64 312 ; 4 uses
  %i.akz = load ptr, ptr %i.aky, align 8, !noalias !604 ; 3 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ajd, i64 320 ; 2 uses
  %i.alb = load ptr, ptr %i.ala, align 8, !noalias !604
  %.not.i97 = icmp eq ptr %i.akz, %i.alb
  br i1 %.not.i97, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.noexc37
end_hunk_1
