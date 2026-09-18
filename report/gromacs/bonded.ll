Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/bonded?download=true
inline.NumInlined: 1758
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_Z9cmap_dihsiPKiPK9t_iparamsPK10gmx_cmap_tPA3_KfPA4_fPA3_fPK5t_pbcfPfN3gmx8ArrayRefIS7_EEP8t_fcdataP12t_disresdataP12t_oriresdataPi:bb.a
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !18
  %i.fs = fsub float %i.fp, %i.fr                 ; 2 uses
  store <2 x float> %i.fn, ptr %16, align 8, !tbaa !18
  store float %i.fs, ptr %i.af, align 8, !tbaa !18
  br label %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit277

_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit277: ; preds = %bb.k, %bb.l
  %i.ft = phi float [ %.pre419, %bb.k ], [ %i.fs, %bb.l ]
  %i.fu = phi float [ %.pre416, %bb.k ], [ %i.em, %bb.l ] ; 2 uses
  %i.fv = phi float [ %.pre415, %bb.k ], [ %i.eo, %bb.l ] ; 2 uses
  %i.fw = phi float [ %.pre414, %bb.k ], [ %i.es, %bb.l ] ; 2 uses
  %i.fx = phi <2 x float> [ %i.fk, %bb.k ], [ %i.fn, %bb.l ] ; 2 uses
  %i.fy = fmul float %i.ew, %i.ew
  %i.fz = call float @llvm.fmuladd.f32(float %i.er, float %i.er, float %i.fy)
  %i.ga = call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.fz)
  %i.gb = fmul float %i.fg, %i.fg
  %i.gc = call float @llvm.fmuladd.f32(float %i.fd, float %i.fd, float %i.gb)
  %i.gd = call noundef float @llvm.fmuladd.f32(float %i.fi, float %i.fi, float %i.gc)
  %i.ge = fmul float %i.fv, %i.fv
  %i.gf = call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.ge)
  %i.gg = call noundef float @llvm.fmuladd.f32(float %i.fu, float %i.fu, float %i.gf)
  %sqrt371 = call float @llvm.sqrt.f32(float %i.gg) ; 3 uses
  %i.gh = fdiv float 1.000000e+00, %sqrt371
  %i.gi = fdiv float 1.000000e+00, %i.ga          ; 2 uses
  %i.gj = fdiv float 1.000000e+00, %i.gd          ; 2 uses
  %i.gk = fmul float %i.gi, %i.gj
  %i.gl = call noundef float @sqrtf(float noundef %i.gk) #23
  %i.gm = fmul float %i.gl, %sqrt371
  %i.gn = extractelement <2 x float> %i.fx, i64 1
  %i.go = fmul float %i.ew, %i.gn
  %i.gp = extractelement <2 x float> %i.fx, i64 0
  %i.gq = call float @llvm.fmuladd.f32(float %i.er, float %i.gp, float %i.go)
  %i.gr = call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.ft, float %i.gq)
  %i.gs = fneg float %i.gr
  %i.gt = fmul float %i.gm, %i.gs                 ; 2 uses
  %i.gu = call float @llvm.fabs.f32(float %i.ek)
  %or.cond270 = fcmp ogt float %i.gu, 5.000000e-01
  br i1 %or.cond270, label %bb.m, label %bb.q

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit277
  %i.gv = call noundef float @asinf(float noundef %i.gt) #23 ; 3 uses
  %i.gw = fcmp olt float %i.ek, 0.000000e+00
  br i1 %i.gw, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.gx = fcmp ogt float %i.gv, 0.000000e+00
  %i.gy = fpext float %i.gv to double             ; 2 uses
  br i1 %i.gx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gz = fsub double f0x400921FB54442D18, %i.gy
  %i.ha = fptrunc double %i.gz to float
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.hb = fsub double f0xC00921FB54442D18, %i.gy
  %i.hc = fptrunc double %i.hb to float
  br label %bb.r

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_112pbc_rvec_subEPK5t_pbcPKfS4_Pf.exit277
  %i.hd = call noundef float @acosf(float noundef %i.ek) #23 ; 2 uses
  %i.he = fcmp olt float %i.gt, 0.000000e+00
  %i.hf = fneg float %i.hd
  %spec.select271 = select i1 %i.he, float %i.hf, float %i.hd
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m, %bb.p, %bb.o
  %.0257 = phi float [ %i.ha, %bb.o ], [ %i.hc, %bb.p ], [ %i.gv, %bb.m ], [ %spec.select271, %bb.q ]
  %i.hg = fpext float %.0257 to double
  %i.hh = fadd double %i.hg, f0x400921FB54442D18  ; 2 uses
  %i.hi = fptrunc double %i.hh to float           ; 2 uses
  %i.hj = fcmp olt double %i.ef, f0xB690000000000000
  %i.hk = fpext float %i.eg to double             ; 3 uses
  br i1 %i.hj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hl = fadd double %i.hk, f0x401921FB54442D18
  %i.hm = fptrunc double %i.hl to float
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.hn = fcmp ult double %i.hk, f0x401921FB54442D18
  br i1 %i.hn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ho = fadd double %i.hk, f0xC01921FB54442D18
  %i.hp = fptrunc double %i.ho to float
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %.0258 = phi float [ %i.hm, %bb.s ], [ %i.hp, %bb.u ], [ %i.eg, %bb.t ] ; 2 uses
  %i.hq = fcmp olt double %i.hh, f0xB690000000000000
  %i.hr = fpext float %i.hi to double             ; 3 uses
  br i1 %i.hq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hs = fadd double %i.hr, f0x401921FB54442D18
  %i.ht = fptrunc double %i.hs to float
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.hu = fcmp ult double %i.hr, f0x401921FB54442D18
  br i1 %i.hu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hv = fadd double %i.hr, f0xC01921FB54442D18
  %i.hw = fptrunc double %i.hv to float
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %.0256 = phi float [ %i.ht, %bb.w ], [ %i.hw, %bb.y ], [ %i.hi, %bb.x ] ; 2 uses
  %i.hx = load i32, ptr %3, align 8, !tbaa !42    ; 13 uses
  %i.hy = sitofp i32 %i.hx to double              ; 2 uses
  %i.hz = fdiv double f0x401921FB54442D18, %i.hy
  %i.ia = fptrunc double %i.hz to float           ; 2 uses
  %i.ib = fdiv float %.0258, %i.ia
  %i.ic = fptosi float %i.ib to i32               ; 5 uses
  %i.id = fdiv float %.0256, %i.ia
  %i.ie = fptosi float %i.id to i32               ; 5 uses
  %i.if = icmp slt i32 %i.ic, 0
  br i1 %i.if, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ig = add i32 %i.hx, -1
  %i.ih = add i32 %i.ig, %i.ic
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.ii = icmp slt i32 %i.hx, %i.ic
  br i1 %i.ii, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ij = xor i32 %i.hx, -1
  %i.ik = add i32 %i.ic, %i.ij
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.024.i = phi i32 [ %i.ih, %bb.aa ], [ %i.ik, %bb.ac ], [ %i.ic, %bb.ab ] ; 6 uses
  %i.il = add nsw i32 %.024.i, 1                  ; 2 uses
  %i.im = icmp eq i32 %.024.i, 0
  br i1 %i.im, label %_ZN12_GLOBAL__N_121cmap_setup_grid_indexEiiPiS0_S0_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.in = add nsw i32 %i.hx, -2
  %i.io = icmp eq i32 %.024.i, %i.in
  br i1 %i.io, label %_ZN12_GLOBAL__N_121cmap_setup_grid_indexEiiPiS0_S0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ip = add nsw i32 %i.hx, -1
  %i.iq = icmp eq i32 %.024.i, %i.ip
  %spec.select.i = select i1 %i.iq, i32 0, i32 %i.il
  br label %_ZN12_GLOBAL__N_121cmap_setup_grid_indexEiiPiS0_S0_.exit

_ZN12_GLOBAL__N_121cmap_setup_grid_indexEiiPiS0_S0_.exit: ; preds = %bb.ad, %bb.ae, %bb.af
  %.022.i = phi i32 [ %spec.select.i, %bb.af ], [ 1, %bb.ad ], [ %i.il, %bb.ae ]
  %i.ir = icmp slt i32 %i.ie, 0
  br i1 %i.ir, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN12_GLOBAL__N_121cmap_setup_grid_indexEiiPiS0_S0_.exit
  %i.is = add i32 %i.hx, -1
  %i.it = add i32 %i.is, %i.ie
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_121cmap_setup_grid_indexEiiPiS0_S0_.exit
  %i.iu = icmp slt i32 %i.hx, %i.ie
  br i1 %i.iu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.iv = xor i32 %i.hx, -1
  %i.iw = add i32 %i.ie, %i.iv
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.024.i279 = phi i32 [ %i.it, %bb.ag ], [ %i.iw, %bb.ai ], [ %i.ie, %bb.ah ] ; 7 uses
  %i.ix = add nsw i32 %.024.i279, 1               ; 2 uses
  %i.iy = icmp eq i32 %.024.i279, 0
  br i1 %i.iy, label %_ZN12_GLOBAL__N_121cmap_setup_grid_indexEiiPiS0_S0_.exit286, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.iz = add nsw i32 %i.hx, -2
  %i.ja = icmp eq i32 %.024.i279, %i.iz
  br i1 %i.ja, label %_ZN12_GLOBAL__N_121cmap_setup_grid_indexEiiPiS0_S0_.exit286, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jb = add nsw i32 %i.hx, -1
  %i.jc = icmp eq i32 %.024.i279, %i.jb
  %spec.select.i280 = select i1 %i.jc, i32 0, i32 %i.ix
  br label %_ZN12_GLOBAL__N_121cmap_setup_grid_indexEiiPiS0_S0_.exit286

_ZN12_GLOBAL__N_121cmap_setup_grid_indexEiiPiS0_S0_.exit286: ; preds = %bb.aj, %bb.ak, %bb.al
  %.022.i283 = phi i32 [ %spec.select.i280, %bb.al ], [ 1, %bb.aj ], [ %i.ix, %bb.ak ] ; 2 uses
  %i.jd = mul nsw i32 %.024.i, %i.hx              ; 2 uses
  %i.je = add nsw i32 %.024.i279, %i.jd
  %i.jf = mul nsw i32 %.022.i, %i.hx              ; 2 uses
  %i.jg = add nsw i32 %.024.i279, %i.jf
  %i.jh = add nsw i32 %.022.i283, %i.jf
  %i.ji = add nsw i32 %.022.i283, %i.jd
  %i.jj = shl nsw i32 %i.je, 2
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr [4 x i8], ptr %i.ay, i64 %i.jk ; 4 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !18
  %i.jn = shl nsw i32 %i.jg, 2
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr [4 x i8], ptr %i.ay, i64 %i.jo ; 4 uses
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !18
  %i.jr = shl nsw i32 %i.jh, 2
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr [4 x i8], ptr %i.ay, i64 %i.js ; 4 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !18
  %i.jv = shl nsw i32 %i.ji, 2
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr [4 x i8], ptr %i.ay, i64 %i.jw ; 4 uses
  %17 = load float, ptr %i.jx, align 4, !tbaa !18
  %18 = getelementptr i8, ptr %i.jl, i64 4
  %19 = load float, ptr %18, align 4, !tbaa !18
  %20 = getelementptr i8, ptr %i.jp, i64 4
  %i.jy = load float, ptr %20, align 4, !tbaa !18
  %i.jz = getelementptr i8, ptr %i.jt, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !18
  %i.kb = getelementptr i8, ptr %i.jx, i64 4
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !18
  %i.kd = getelementptr i8, ptr %i.jl, i64 8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !18
  %i.kf = getelementptr i8, ptr %i.jp, i64 8
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !18
  %i.kh = getelementptr i8, ptr %i.jt, i64 8
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !18
  %i.kj = getelementptr i8, ptr %i.jx, i64 8
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !18
  %i.kl = getelementptr i8, ptr %i.jl, i64 12
  %i.km = load float, ptr %i.kl, align 4, !tbaa !18
  %i.kn = getelementptr i8, ptr %i.jp, i64 12
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !18
  %i.kp = getelementptr i8, ptr %i.jt, i64 12
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !18
  %i.kr = getelementptr i8, ptr %i.jx, i64 12
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.0, i8 0, i64 64, i1 false)
  %i.kt = fdiv double 3.600000e+02, %i.hy
  %i.ku = fptrunc double %i.kt to float           ; 18 uses
  %i.kv = fmul float %i.ks, %i.ku
  %i.kw = fmul float %i.kv, %i.ku
  %broadcast.splatinsert461 = insertelement <8 x float> poison, float %i.kw, i64 0
  %broadcast.splat462 = shufflevector <8 x float> %broadcast.splatinsert461, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kx = fmul float %i.kk, %i.ku
  %broadcast.splatinsert459 = insertelement <8 x float> poison, float %i.kx, i64 0
  %broadcast.splat460 = shufflevector <8 x float> %broadcast.splatinsert459, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ky = fmul float %i.kc, %i.ku
  %broadcast.splatinsert457 = insertelement <8 x float> poison, float %i.ky, i64 0
  %broadcast.splat458 = shufflevector <8 x float> %broadcast.splatinsert457, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.kz = fmul float %i.kq, %i.ku
  %i.la = fmul float %i.kz, %i.ku
  %broadcast.splatinsert455 = insertelement <8 x float> poison, float %i.la, i64 0
  %broadcast.splat456 = shufflevector <8 x float> %broadcast.splatinsert455, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lb = fmul float %i.ki, %i.ku
  %broadcast.splatinsert453 = insertelement <8 x float> poison, float %i.lb, i64 0
  %broadcast.splat454 = shufflevector <8 x float> %broadcast.splatinsert453, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lc = fmul float %i.ka, %i.ku
  %broadcast.splatinsert451 = insertelement <8 x float> poison, float %i.lc, i64 0
  %broadcast.splat452 = shufflevector <8 x float> %broadcast.splatinsert451, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ld = fmul float %i.ko, %i.ku
  %i.le = fmul float %i.ld, %i.ku
  %broadcast.splatinsert449 = insertelement <8 x float> poison, float %i.le, i64 0
  %broadcast.splat450 = shufflevector <8 x float> %broadcast.splatinsert449, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lf = fmul float %i.kg, %i.ku
  %broadcast.splatinsert447 = insertelement <8 x float> poison, float %i.lf, i64 0
  %broadcast.splat448 = shufflevector <8 x float> %broadcast.splatinsert447, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lg = fmul float %i.jy, %i.ku
  %broadcast.splatinsert445 = insertelement <8 x float> poison, float %i.lg, i64 0
  %broadcast.splat446 = shufflevector <8 x float> %broadcast.splatinsert445, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.lh = fmul float %i.km, %i.ku
  %i.li = fmul float %i.lh, %i.ku
  %broadcast.splatinsert443 = insertelement <8 x float> poison, float %i.li, i64 0
  %broadcast.splat444 = shufflevector <8 x float> %broadcast.splatinsert443, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %21 = fmul float %i.ke, %i.ku
  %broadcast.splatinsert441 = insertelement <8 x float> poison, float %21, i64 0
  %broadcast.splat442 = shufflevector <8 x float> %broadcast.splatinsert441, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %22 = fmul float %19, %i.ku
  %broadcast.splatinsert439 = insertelement <8 x float> poison, float %22, i64 0
  %broadcast.splat440 = shufflevector <8 x float> %broadcast.splatinsert439, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert437 = insertelement <8 x float> poison, float %17, i64 0
  %broadcast.splat438 = shufflevector <8 x float> %broadcast.splatinsert437, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert435 = insertelement <8 x float> poison, float %i.ju, i64 0
  %broadcast.splat436 = shufflevector <8 x float> %broadcast.splatinsert435, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert433 = insertelement <8 x float> poison, float %i.jq, i64 0
  %broadcast.splat434 = shufflevector <8 x float> %broadcast.splatinsert433, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.jm, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0..sroa.0.0.wide.load = load <8 x float>, ptr %.sroa.0, align 4, !tbaa !18
  %i.lj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> <float 1.000000e+00, float 0.000000e+00, float -3.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %.sroa.0.0..sroa.0.0.wide.load)
  %i.lk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat434, <8 x float> zeroinitializer, <8 x float> %i.lj)
  %i.ll = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat436, <8 x float> zeroinitializer, <8 x float> %i.lk)
  %i.lm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat438, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, float -2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.ll)
  %i.ln = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat440, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float -3.000000e+00, float 2.000000e+00>, <8 x float> %i.lm)
  %i.lo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat446, <8 x float> zeroinitializer, <8 x float> %i.ln)
  %i.lp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat452, <8 x float> zeroinitializer, <8 x float> %i.lo)
  %i.lq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat458, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, float -2.000000e+00>, <8 x float> %i.lp)
  %i.lr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat442, <8 x float> <float 0.000000e+00, float 1.000000e+00, float -2.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.lq)
  %i.ls = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat448, <8 x float> zeroinitializer, <8 x float> %i.lr)
  %i.lt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat454, <8 x float> zeroinitializer, <8 x float> %i.ls)
  %i.lu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat460, <8 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.lt)
  %i.lv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat444, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -2.000000e+00, float 1.000000e+00>, <8 x float> %i.lu)
  %i.lw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat450, <8 x float> zeroinitializer, <8 x float> %i.lv)
  %i.lx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat456, <8 x float> zeroinitializer, <8 x float> %i.lw)
  %i.ly = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat462, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 1.000000e+00>, <8 x float> %i.lx)
  store <8 x float> %i.ly, ptr %.sroa.0, align 4, !tbaa !18
  %.sroa.0.32..sroa.0.32.wide.load.1 = load <8 x float>, ptr %.sroa.0.32..sroa_idx488, align 4, !tbaa !18
  %i.lz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> <float -3.000000e+00, float 0.000000e+00, float 9.000000e+00, float -6.000000e+00, float 2.000000e+00, float 0.000000e+00, float -6.000000e+00, float 4.000000e+00>, <8 x float> %.sroa.0.32..sroa.0.32.wide.load.1)
  %i.ma = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat434, <8 x float> <float 3.000000e+00, float 0.000000e+00, float -9.000000e+00, float 6.000000e+00, float -2.000000e+00, float 0.000000e+00, float 6.000000e+00, float -4.000000e+00>, <8 x float> %i.lz)
  %i.mb = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat436, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 9.000000e+00, float -6.000000e+00, float 0.000000e+00, float 0.000000e+00, float -6.000000e+00, float 4.000000e+00>, <8 x float> %i.ma)
  %i.mc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat438, <8 x float> <float 0.000000e+00, float 0.000000e+00, float -9.000000e+00, float 6.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.000000e+00, float -4.000000e+00>, <8 x float> %i.mb)
  %i.md = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat440, <8 x float> <float -2.000000e+00, float 0.000000e+00, float 6.000000e+00, float -4.000000e+00, float 1.000000e+00, float 0.000000e+00, float -3.000000e+00, float 2.000000e+00>, <8 x float> %i.mc)
  %i.me = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat446, <8 x float> <float -1.000000e+00, float 0.000000e+00, float 3.000000e+00, float -2.000000e+00, float 1.000000e+00, float 0.000000e+00, float -3.000000e+00, float 2.000000e+00>, <8 x float> %i.md)
  %i.mf = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat452, <8 x float> <float 0.000000e+00, float 0.000000e+00, float -3.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, float -2.000000e+00>, <8 x float> %i.me)
  %i.mg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat458, <8 x float> <float 0.000000e+00, float 0.000000e+00, float -6.000000e+00, float 4.000000e+00, float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, float -2.000000e+00>, <8 x float> %i.mf)
  %i.mh = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat442, <8 x float> <float 0.000000e+00, float -3.000000e+00, float 6.000000e+00, float -3.000000e+00, float 0.000000e+00, float 2.000000e+00, float -4.000000e+00, float 2.000000e+00>, <8 x float> %i.mg)
  %i.mi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat448, <8 x float> <float 0.000000e+00, float 3.000000e+00, float -6.000000e+00, float 3.000000e+00, float 0.000000e+00, float -2.000000e+00, float 4.000000e+00, float -2.000000e+00>, <8 x float> %i.mh)
  %i.mj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat454, <8 x float> <float 0.000000e+00, float 0.000000e+00, float -3.000000e+00, float 3.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float -2.000000e+00>, <8 x float> %i.mi)
  %i.mk = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat460, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, float -3.000000e+00, float 0.000000e+00, float 0.000000e+00, float -2.000000e+00, float 2.000000e+00>, <8 x float> %i.mj)
  %i.ml = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat444, <8 x float> <float 0.000000e+00, float -2.000000e+00, float 4.000000e+00, float -2.000000e+00, float 0.000000e+00, float 1.000000e+00, float -2.000000e+00, float 1.000000e+00>, <8 x float> %i.mk)
  %i.mm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat450, <8 x float> <float 0.000000e+00, float -1.000000e+00, float 2.000000e+00, float -1.000000e+00, float 0.000000e+00, float 1.000000e+00, float -2.000000e+00, float 1.000000e+00>, <8 x float> %i.ml)
  %i.mn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat456, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 1.000000e+00>, <8 x float> %i.mm)
  %i.mo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat462, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float -2.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 1.000000e+00>, <8 x float> %i.mn)
  store <8 x float> %i.mo, ptr %.sroa.0.32..sroa_idx489, align 4, !tbaa !18
  %i.mp = insertelement <2 x float> poison, float %.0256, i64 0
  %i.mq = insertelement <2 x float> %i.mp, float %.0258, i64 1
  %i.mr = fpext <2 x float> %i.mq to <2 x double>
  %i.ms = insertelement <2 x i32> poison, i32 %.024.i279, i64 0
  %i.mt = insertelement <2 x i32> %i.ms, i32 %.024.i, i64 1
  %i.mu = sitofp <2 x i32> %i.mt to <2 x float>
  %.sroa.0.60..sroa.0.60. = load float, ptr %.sroa.0.60..sroa_idx497, align 4, !tbaa !18 ; 2 uses
  %.sroa.0.48..sroa.0.48. = load float, ptr %.sroa.0.48..sroa_idx494, align 4, !tbaa !18
  %i.mv = fpext float %.sroa.0.60..sroa.0.60. to double
  %i.mw = fmul double %i.mv, 3.000000e+00
  %.sroa.0.40..sroa.0.40. = load float, ptr %.sroa.0.40..sroa_idx492, align 4, !tbaa !18 ; 2 uses
  %i.mx = fpext float %.sroa.0.40..sroa.0.40. to double
  %i.my = fmul double %i.mx, 2.000000e+00
  %.sroa.0.20..sroa.0.20. = load float, ptr %.sroa.0.20..sroa_idx485, align 4, !tbaa !18 ; 2 uses
  %i.mz = fpext float %.sroa.0.20..sroa.0.20. to double
  %.sroa.0.0..sroa.0.0. = load float, ptr %.sroa.0, align 4, !tbaa !18
  %i.na = fpext float %i.ku to double
  %i.nb = fdiv double f0x404CA5DC1A63C1F8, %i.na
  %i.nc = fptrunc double %i.nb to float
  %i.nd = fmul <2 x double> %i.mr, splat (double f0x404CA5DC1A63C1F8)
  %i.ne = fptrunc <2 x double> %i.nd to <2 x float>
  %i.nf = fneg <2 x float> %i.mu
  %23 = insertelement <2 x float> poison, float %i.ku, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ng = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nf, <2 x float> %24, <2 x float> %i.ne)
  %i.nh = fdiv <2 x float> %i.ng, %24             ; 5 uses
  %i.ni = fpext <2 x float> %i.nh to <2 x double> ; 8 uses
  %.sroa.0.44..sroa.0.44. = load <4 x float>, ptr %.sroa.0.44..sroa_idx493, align 4, !tbaa !18 ; 4 uses
  %.sroa.0.56..sroa.0.56. = load float, ptr %.sroa.0.56..sroa_idx496, align 4, !tbaa !18
  %.sroa.0.52..sroa.0.52. = load float, ptr %.sroa.0.52..sroa_idx495, align 4, !tbaa !18
  %i.nj = extractelement <2 x float> %i.nh, i64 0 ; 12 uses
  %i.nk = call float @llvm.fmuladd.f32(float %.sroa.0.60..sroa.0.60., float %i.nj, float %.sroa.0.56..sroa.0.56.)
  %i.nl = call float @llvm.fmuladd.f32(float %i.nk, float %i.nj, float %.sroa.0.52..sroa.0.52.)
  %i.nm = fmul float %i.nj, %i.nl
  %i.nn = extractelement <2 x float> %i.nh, i64 1 ; 4 uses
  %i.no = call float @llvm.fmuladd.f32(float %i.nn, float 0.000000e+00, float %i.nm)
  %i.np = fadd float %.sroa.0.48..sroa.0.48., %i.no
  %i.nq = shufflevector <4 x float> %.sroa.0.44..sroa.0.44., <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.nr = fpext <2 x float> %i.nq to <2 x double> ; 2 uses
  %i.ns = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nt = fmul <2 x float> %i.nh, zeroinitializer
  %i.nu = fmul <2 x double> %i.nr, splat (double 2.000000e+00)
  %i.nv = insertelement <2 x double> poison, double %i.mw, i64 0
  %i.nw = shufflevector <2 x double> %i.nv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> %i.ns, <2 x double> %i.nu)
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nz = shufflevector <2 x float> %i.nt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oa = fpext <2 x float> %i.nz to <2 x double>
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> %i.ni, <2 x double> %i.oa)
  %.sroa.0.24..sroa.0.24. = load <4 x float>, ptr %.sroa.0.24..sroa_idx486, align 4, !tbaa !18 ; 4 uses
  %.sroa.0.36..sroa.0.36. = load float, ptr %.sroa.0.36..sroa_idx491, align 4, !tbaa !18
  %.sroa.0.32..sroa.0.32. = load float, ptr %.sroa.0.32..sroa_idx490, align 4, !tbaa !18
  %.sroa.0.28..sroa.0.28. = load float, ptr %.sroa.0.28..sroa_idx487, align 4, !tbaa !18
  %i.oc = shufflevector <4 x float> %.sroa.0.24..sroa.0.24., <4 x float> %.sroa.0.44..sroa.0.44., <2 x i32> <i32 1, i32 6>
  %i.od = fpext <2 x float> %i.oc to <2 x double> ; 2 uses
  %i.oe = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.of = fadd <2 x double> %i.ob, %i.oe
  %i.og = fptrunc <2 x double> %i.of to <2 x float>
  %i.oh = extractelement <4 x float> %.sroa.0.44..sroa.0.44., i64 0
  %i.oi = call float @llvm.fmuladd.f32(float %i.oh, float %i.nj, float %.sroa.0.40..sroa.0.40.)
  %i.oj = call float @llvm.fmuladd.f32(float %i.oi, float %i.nj, float %.sroa.0.36..sroa.0.36.)
  %i.ok = fmul float %i.nj, %i.oj
  %i.ol = call float @llvm.fmuladd.f32(float %i.nn, float %i.np, float %i.ok)
  %i.om = fadd float %.sroa.0.32..sroa.0.32., %i.ol
  %i.on = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.oo = fmul <2 x float> %i.on, %i.og
  %i.op = fpext <2 x float> %i.oo to <2 x double>
  %i.oq = fmul <2 x double> %i.nr, splat (double 3.000000e+00)
  %i.or = insertelement <2 x double> poison, double %i.my, i64 0
  %i.os = shufflevector <2 x double> %i.or, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ot = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> %i.ni, <2 x double> %i.os)
  %i.ou = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ot, <2 x double> %i.ni, <2 x double> %i.op)
  %i.ov = shufflevector <4 x float> %.sroa.0.24..sroa.0.24., <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ow = fpext <2 x float> %i.ov to <2 x double> ; 2 uses
  %i.ox = shufflevector <2 x double> %i.ow, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.oy = fadd <2 x double> %i.ou, %i.ox
  %i.oz = fptrunc <2 x double> %i.oy to <2 x float>
  %i.pa = extractelement <4 x float> %.sroa.0.24..sroa.0.24., i64 0
  %i.pb = call float @llvm.fmuladd.f32(float %.sroa.0.28..sroa.0.28., float %i.nj, float %i.pa)
  %i.pc = call float @llvm.fmuladd.f32(float %i.pb, float %i.nj, float %.sroa.0.20..sroa.0.20.)
  %i.pd = fmul float %i.nj, %i.pc
  %i.pe = call float @llvm.fmuladd.f32(float %i.nn, float %i.om, float %i.pd)
  %.sroa.0.4..sroa.0.4. = load <4 x float>, ptr %.sroa.0.4..sroa_idx481, align 4, !tbaa !18 ; 4 uses
  %.sroa.0.16..sroa.0.16. = load float, ptr %.sroa.0.16..sroa_idx484, align 4, !tbaa !18
  %.sroa.0.12..sroa.0.12. = load float, ptr %.sroa.0.12..sroa_idx483, align 4, !tbaa !18
  %.sroa.0.8..sroa.0.8. = load float, ptr %.sroa.0.8..sroa_idx482, align 4, !tbaa !18
  %i.pf = fadd float %.sroa.0.16..sroa.0.16., %i.pe
  %i.pg = fmul <2 x float> %i.on, %i.oz
  %i.ph = fpext <2 x float> %i.pg to <2 x double>
  %i.pi = fmul <2 x double> %i.od, splat (double 3.000000e+00)
  %i.pj = fmul <2 x double> %i.ow, splat (double 2.000000e+00)
  %i.pk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pi, <2 x double> %i.ni, <2 x double> %i.pj)
  %i.pl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.ni, <2 x double> %i.ph)
  %i.pm = insertelement <2 x double> poison, double %i.mz, i64 0
  %i.pn = shufflevector <2 x double> %i.pm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.po = fadd <2 x double> %i.pl, %i.pn
  %i.pp = fptrunc <2 x double> %i.po to <2 x float>
  %i.pq = call float @llvm.fmuladd.f32(float %.sroa.0.12..sroa.0.12., float %i.nj, float %.sroa.0.8..sroa.0.8.)
  %i.pr = extractelement <4 x float> %.sroa.0.4..sroa.0.4., i64 0
  %i.ps = call float @llvm.fmuladd.f32(float %i.pq, float %i.nj, float %i.pr)
  %i.pt = fmul float %i.nj, %i.ps
  %i.pu = call float @llvm.fmuladd.f32(float %i.nn, float %i.pf, float %i.pt)
  %i.pv = fadd float %.sroa.0.0..sroa.0.0., %i.pu
  %i.pw = fmul <2 x float> %i.on, %i.pp
  %i.px = fpext <2 x float> %i.pw to <2 x double>
  %i.py = shufflevector <4 x float> %.sroa.0.4..sroa.0.4., <4 x float> %.sroa.0.44..sroa.0.44., <2 x i32> <i32 2, i32 5>
  %i.pz = fpext <2 x float> %i.py to <2 x double>
  %i.qa = fmul <2 x double> %i.pz, splat (double 3.000000e+00)
  %i.qb = shufflevector <4 x float> %.sroa.0.4..sroa.0.4., <4 x float> %.sroa.0.24..sroa.0.24., <2 x i32> <i32 1, i32 6>
  %i.qc = fpext <2 x float> %i.qb to <2 x double>
  %i.qd = fmul <2 x double> %i.qc, splat (double 2.000000e+00)
  %i.qe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qa, <2 x double> %i.ni, <2 x double> %i.qd)
  %i.qf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qe, <2 x double> %i.ni, <2 x double> %i.px)
  %i.qg = shufflevector <4 x float> %.sroa.0.4..sroa.0.4., <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.qh = fpext <2 x float> %i.qg to <2 x double>
  %i.qi = fadd <2 x double> %i.qf, %i.qh
  %i.qj = fptrunc <2 x double> %i.qi to <2 x float>
  %i.qk = insertelement <2 x float> poison, float %i.nc, i64 0
  %i.ql = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qm = fmul <2 x float> %i.ql, %i.qj           ; 2 uses
  %i.qn = fadd float %.0380, %i.pv                ; 2 uses
  %i.qo = load <2 x float>, ptr %i.g, align 8, !tbaa !18
  %i.qp = load float, ptr %i.u, align 8, !tbaa !18
  %i.qq = load <2 x float>, ptr %i.h, align 8, !tbaa !18
  %i.qr = load float, ptr %i.t, align 8, !tbaa !18
  %i.qs = load <2 x float>, ptr %i.i, align 8, !tbaa !18
  %i.qt = load float, ptr %i.x, align 8, !tbaa !18
  %i.qu = load i32, ptr %i.a, align 4, !tbaa !16
  %i.qv = load i32, ptr %i.b, align 4, !tbaa !16
  %i.qw = extractelement <2 x float> %i.qm, i64 1
  call fastcc void @_ZN12_GLOBAL__N_120accumulateCmapForcesEPA3_KfPA4_fPA3_fPK5t_pbcN3gmx11BasicVectorIfEESC_SC_SC_SC_SC_ffffiiiifii(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, <2 x float> %i.qo, float %i.qp, <2 x float> %i.qq, float %i.qr, <2 x float> %i.qs, float %i.qt, <2 x float> %.sroa.0339.4.vec.insert, float %i.bx, <2 x float> %.sroa.0329.4.vec.insert, float %i.cg, ptr noundef nonnull byval(%"class.gmx::BasicVector") align 8 %15, float noundef %i.dg, float noundef %i.dh, float noundef %i.df, float noundef %sqrt, i32 noundef %i.aj, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ap, float noundef %i.qw, i32 noundef %i.qu, i32 noundef %i.qv)
  %i.qx = load <2 x float>, ptr %i.l, align 8, !tbaa !18
  %i.qy = load float, ptr %i.ab, align 8, !tbaa !18
  %i.qz = load <2 x float>, ptr %i.m, align 8, !tbaa !18
  %i.ra = load float, ptr %i.aa, align 8, !tbaa !18
  %i.rb = load <2 x float>, ptr %i.n, align 8, !tbaa !18
  %i.rc = load float, ptr %i.ae, align 8, !tbaa !18
  %i.rd = load i32, ptr %i.d, align 4, !tbaa !16
  %i.re = load i32, ptr %i.e, align 4, !tbaa !16
  %i.rf = extractelement <2 x float> %i.qm, i64 0
  call fastcc void @_ZN12_GLOBAL__N_120accumulateCmapForcesEPA3_KfPA4_fPA3_fPK5t_pbcN3gmx11BasicVectorIfEESC_SC_SC_SC_SC_ffffiiiifii(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, <2 x float> %i.qx, float %i.qy, <2 x float> %i.qz, float %i.ra, <2 x float> %i.rb, float %i.rc, <2 x float> %.sroa.0315.4.vec.insert, float %i.ez, <2 x float> %.sroa.0306.4.vec.insert, float %i.fi, ptr noundef nonnull byval(%"class.gmx::BasicVector") align 8 %16, float noundef %i.gi, float noundef %i.gj, float noundef %i.gh, float noundef %sqrt371, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ap, i32 noundef %i.ar, float noundef %i.rf, i32 noundef %i.rd, i32 noundef %i.re)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.rg = trunc nuw i64 %indvars.iv.next392 to i32
  %i.rh = icmp sgt i32 %0, %i.rg
  br i1 %i.rh, label %bb.b, label %._crit_edge, !llvm.loop !34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120accumulateCmapForcesEPA3_KfPA4_fPA3_fPK5t_pbcN3gmx11BasicVectorIfEESC_SC_SC_SC_SC_ffffiiiifii(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3, <2 x float> %4, float %5, <2 x float> %6, float %7, <2 x float> %8, float %9, <2 x float> %10, float %11, <2 x float> %.0.val, float %.8.val, ptr noundef byval(%"class.gmx::BasicVector") align 8 %12, float noundef %13, float noundef %14, float noundef %15, float noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, float noundef %21, i32 noundef %22, i32 noundef %23) unnamed_addr #9 {
bb.a:
  %.sroa.09.0.vec.extract = extractelement <2 x float> %4, i64 0
  %.sroa.02.0.vec.extract = extractelement <2 x float> %6, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %4, %6
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.b = tail call float @llvm.fmuladd.f32(float %.sroa.09.0.vec.extract, float %.sroa.02.0.vec.extract, float %i.a)
  %i.c = tail call noundef float @llvm.fmuladd.f32(float %5, float %7, float %i.b)
  %.sroa.01.0.vec.extract = extractelement <2 x float> %8, i64 0
  %foldExtExtBinop27 = fmul <2 x float> %6, %8
  %i.d = extractelement <2 x float> %foldExtExtBinop27, i64 1
  %i.e = tail call float @llvm.fmuladd.f32(float %.sroa.01.0.vec.extract, float %.sroa.02.0.vec.extract, float %i.d)
  %i.f = tail call noundef float @llvm.fmuladd.f32(float %9, float %7, float %i.e)
  %i.g = fmul float %i.c, %13
  %i.h = fmul float %i.g, %15                     ; 3 uses
  %i.i = fmul float %i.f, %14
  %i.j = fmul float %i.i, %15                     ; 3 uses
  %i.k = fneg float %13
  %i.l = fmul float %16, %i.k                     ; 3 uses
  %i.m = fmul float %14, %16                      ; 3 uses
  %.sroa.023.0.vec.extract = extractelement <2 x float> %10, i64 0 ; 2 uses
  %i.n = fmul float %i.l, %.sroa.023.0.vec.extract
  %.sroa.022.0.vec.extract = extractelement <2 x float> %.0.val, i64 0 ; 2 uses
  %i.o = fneg float %.sroa.022.0.vec.extract
  %i.p = fmul float %i.j, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.h, float %.sroa.023.0.vec.extract, float %i.p)
  %i.r = fmul float %i.m, %.sroa.022.0.vec.extract
  %i.s = fmul float %21, %i.n                     ; 3 uses
  %i.t = fmul float %21, %i.q                     ; 2 uses
  %i.u = fmul float %21, %i.r                     ; 3 uses
  %i.v = fneg float %i.s
  %i.w = fsub float %i.v, %i.t                    ; 2 uses
  %i.x = fadd float %i.u, %i.t                    ; 2 uses
  %.sroa.023.4.vec.extract = extractelement <2 x float> %10, i64 1 ; 2 uses
  %.sroa.022.4.vec.extract = extractelement <2 x float> %.0.val, i64 1 ; 2 uses
  %i.y = fneg float %.sroa.022.4.vec.extract
  %i.z = fmul float %i.j, %i.y
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.h, float %.sroa.023.4.vec.extract, float %i.z)
  %i.ab = fmul float %21, %i.aa                   ; 2 uses
  %i.ac = fneg float %.8.val
  %i.ad = fmul float %i.j, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.h, float %11, float %i.ad)
  %i.af = fmul float %21, %i.ae                   ; 2 uses
  %i.ag = sext i32 %17 to i64
  %i.ah = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ag ; 3 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !18
  %i.aj = fadd float %i.ai, %i.s
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  store float %i.aj, ptr %i.ah, align 4, !tbaa !18
  %i.al = fmul float %i.l, %11
  %i.am = fmul float %i.l, %.sroa.023.4.vec.extract
  %i.an = fmul float %21, %i.al                   ; 2 uses
  %i.ao = fmul float %21, %i.am                   ; 2 uses
  %i.ap = fneg float %i.ao
  %i.aq = fsub float %i.ap, %i.ab                 ; 2 uses
  %i.ar = fneg float %i.an
  %i.as = fsub float %i.ar, %i.af                 ; 2 uses
  %i.at = load <2 x float>, ptr %i.ak, align 4, !tbaa !18
  %i.au = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.an, i64 1 ; 2 uses
  %i.aw = fadd <2 x float> %i.at, %i.av
  store <2 x float> %i.aw, ptr %i.ak, align 4, !tbaa !18
  %i.ax = sext i32 %18 to i64                     ; 2 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ax ; 4 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !18
  %i.ba = fadd float %i.az, %i.w
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !18
  %i.bd = fadd float %i.bc, %i.aq
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !18
  %i.bg = fadd float %i.bf, %i.as
  store float %i.ba, ptr %i.ay, align 4, !tbaa !18
end_hunk_0
