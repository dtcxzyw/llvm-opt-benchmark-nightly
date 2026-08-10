inline.NumInlined: 86
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@process:bb.a
.lr.ph.i18.i.i.preheader:                         ; preds = %bb.z
  %i.hf = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <2 x i32> <i32 1, i32 2>
  br label %.lr.ph.i18.i.i

.lr.ph.i18.i.i:                                   ; preds = %.lr.ph.i18.i.i.preheader, %dt_RGB_to_Lab.exit.i19.i.i
  %.036.i.i.i = phi i64 [ %i.jn, %dt_RGB_to_Lab.exit.i19.i.i ], [ 0, %.lr.ph.i18.i.i.preheader ] ; 2 uses
  %i.hg = shl i64 %.036.i.i.i, 2                  ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hg ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !120, !alias.scope !140, !noalias !137
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, %i.bb ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hj, %i.gq
  %i.hm = load <2 x float>, ptr %i.hk, align 4, !tbaa !120, !alias.scope !140, !noalias !137
  %i.hn = fmul reassoc nsz arcp contract afn <2 x float> %i.hm, %i.hf ; 3 uses
  %i.ho = fmul reassoc nsz arcp contract afn <2 x float> %i.hn, %i.ha ; 2 uses
  %i.hp = extractelement <2 x float> %i.ho, i64 0
  %i.hq = fadd reassoc nsz arcp contract afn float %i.hp, %i.hl
  %i.hr = extractelement <2 x float> %i.ho, i64 1
  %i.hs = fadd reassoc nsz arcp contract afn float %i.hq, %i.hr ; 2 uses
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hj, %i.gs
  %i.hu = extractelement <2 x float> %i.hn, i64 0 ; 3 uses
  %i.hv = fmul reassoc nsz arcp contract afn float %i.hu, %i.gx
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hv, %i.ht
  %i.hx = extractelement <2 x float> %i.hn, i64 1 ; 3 uses
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hx, %i.hc
  %i.hz = fadd reassoc nsz arcp contract afn float %i.hw, %i.hy ; 3 uses
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hj, %i.gu
  %i.ib = fmul reassoc nsz arcp contract afn float %i.hu, %i.gz
  %i.ic = fadd reassoc nsz arcp contract afn float %i.ib, %i.ia
  %i.id = fmul reassoc nsz arcp contract afn float %i.hx, %i.he
  %i.ie = fadd reassoc nsz arcp contract afn float %i.ic, %i.id ; 2 uses
  %i.if = fadd reassoc nsz arcp contract afn float %i.hu, %i.hj
  %i.ig = fadd reassoc nsz arcp contract afn float %i.if, %i.hx
  %i.ih = fmul reassoc nsz arcp contract afn float %i.hs, f0x3F84C0A6 ; 2 uses
  %i.ii = fcmp reassoc nsz arcp contract afn ogt float %i.ih, f0x3C111AA7
  br i1 %i.ii, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i18.i.i
  %i.ij = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ih) #27
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i18.i.i
  %i.ik = fmul reassoc nsz arcp contract afn float %i.hs, f0x410137F7
  %i.il = fadd reassoc nsz arcp contract afn float %i.ik, f0x3E0D3DCB
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.im = phi reassoc nsz arcp contract afn float [ %i.ij, %bb.aa ], [ %i.il, %bb.ab ]
  %i.in = fcmp reassoc nsz arcp contract afn ogt float %i.hz, f0x3C111AA7
  br i1 %i.in, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.io = fmul reassoc nsz arcp contract afn float %i.hz, f0x40F92F69
  %i.ip = fadd reassoc nsz arcp contract afn float %i.io, f0x3E0D3DCB
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.iq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.hz) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ir = phi reassoc nsz arcp contract afn float [ %i.iq, %bb.ae ], [ %i.ip, %bb.ad ] ; 2 uses
  %i.is = fmul reassoc nsz arcp contract afn float %i.ie, f0x3F9B2B9B ; 2 uses
  %i.it = fcmp reassoc nsz arcp contract afn ogt float %i.is, f0x3C111AA7
  br i1 %i.it, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iu = fmul reassoc nsz arcp contract afn float %i.ie, f0x41170A26
  %i.iv = fadd reassoc nsz arcp contract afn float %i.iu, f0x3E0D3DCB
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.iw = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.is) #27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ix = phi reassoc nsz arcp contract afn float [ %i.iw, %bb.ah ], [ %i.iv, %bb.ag ]
  %i.iy = fmul reassoc nsz arcp contract afn float %i.ig, 0.000000e+00 ; 3 uses
  %i.iz = fcmp reassoc nsz arcp contract afn ogt float %i.iy, f0x3C111AA7
  br i1 %i.iz, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ja = fadd reassoc nsz arcp contract afn float %i.iy, f0x3E0D3DCB
  br label %dt_RGB_to_Lab.exit.i19.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.jb = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.iy) #27
  br label %dt_RGB_to_Lab.exit.i19.i.i

dt_RGB_to_Lab.exit.i19.i.i:                       ; preds = %bb.ak, %bb.aj
  %i.jc = phi reassoc nsz arcp contract afn float [ %i.jb, %bb.ak ], [ %i.ja, %bb.aj ]
  %i.jd = fmul reassoc nsz arcp contract afn float %i.ir, 1.160000e+02
  %i.je = insertelement <4 x float> poison, float %i.jd, i64 0
  %i.jf = insertelement <4 x float> %i.je, float %i.im, i64 1
  %i.jg = insertelement <4 x float> %i.jf, float %i.ix, i64 2
  %i.jh = insertelement <4 x float> %i.jg, float %i.jc, i64 3
  %i.ji = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.ir, i64 1
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.jk = fsub reassoc nsz arcp contract afn <4 x float> %i.jh, %i.jj
  %i.jl = fmul reassoc nsz arcp contract afn <4 x float> %i.jk, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hg
  store <4 x float> %i.jl, ptr %i.jm, align 16, !tbaa !38, !alias.scope !143, !noalias !140, !nontemporal !136
  %i.jn = add nuw i64 %.036.i.i.i, 1              ; 2 uses
  %exitcond.not.i24.i.i = icmp eq i64 %i.jn, %i.cp
  br i1 %exitcond.not.i24.i.i, label %process_cmatrix.exit, label %.lr.ph.i18.i.i

.critedge.i:                                      ; preds = %bb.l
  %i.jo = getelementptr i8, ptr %5, i64 8
  %.val30.i = load i32, ptr %i.jo, align 4, !tbaa !123
  %i.jp = getelementptr i8, ptr %5, i64 12
  %.val31.i = load i32, ptr %i.jp, align 4, !tbaa !124
  %i.jq = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 16
  %i.jr = load ptr, ptr %i.jq, align 16, !tbaa !126
  %.not.i35.i = icmp eq ptr %i.jr, null
  %i.js = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786504
  %i.jt = load float, ptr %i.js, align 8, !tbaa !120
  %i.ju = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786520
  %i.jv = load float, ptr %i.ju, align 8, !tbaa !120
  %i.jw = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786536
  %i.jx = load float, ptr %i.jw, align 8, !tbaa !120
  %i.jy = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786560
  %i.jz = load float, ptr %i.jy, align 16, !tbaa !120
  %i.ka = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786576
  %i.kb = load float, ptr %i.ka, align 16, !tbaa !120
  %i.kc = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786592
  %i.kd = load float, ptr %i.kc, align 16, !tbaa !120
  %i.ke = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786564
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !120
  %i.kg = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786580
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !120
  %i.ki = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786596
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !120
  %i.kk = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786568
  %i.kl = load float, ptr %i.kk, align 8, !tbaa !120
  %i.km = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786584
  %i.kn = load float, ptr %i.km, align 8, !tbaa !120
  %i.ko = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786600
  %i.kp = load float, ptr %i.ko, align 8, !tbaa !120
  %i.kq = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786632
  %i.kr = load float, ptr %i.kq, align 8, !tbaa !120
  %i.ks = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786648
  %i.kt = load float, ptr %i.ks, align 8, !tbaa !120
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786664
  %i.kv = load float, ptr %i.ku, align 8, !tbaa !120
  %i.kw = sext i32 %.val31.i to i64
  %i.kx = sext i32 %.val30.i to i64
  %i.ky = mul nsw i64 %i.kw, %i.kx                ; 2 uses
  %.not43.i.i = icmp eq i64 %i.ky, 0
  br i1 %.not43.i.i, label %process_cmatrix.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i
  %i.kz = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786656
  %i.la = load <2 x float>, ptr %i.kz, align 16, !tbaa !120
  %i.lb = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786624
  %i.lc = tail call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 16 %i.lb, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison), !tbaa !120 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786528
  %i.le = load <2 x float>, ptr %i.ld, align 16, !tbaa !120
  %i.lf = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786496
  %i.lg = tail call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 16 %i.lf, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison), !tbaa !120 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 48 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786688
  %i.lj = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786692
  %i.lk = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786696
  %i.ll = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 262192 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786700
  %i.ln = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786704
  %i.lo = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786708
  %i.lp = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 524336 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786712
  %i.lr = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786716
  %i.ls = getelementptr inbounds nuw i8, ptr %.val.i.pre, i64 786720
  %i.lt = shufflevector <2 x float> %i.le, <2 x float> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.lu = shufflevector <6 x float> %i.lg, <6 x float> %i.lt, <4 x i32> <i32 1, i32 5, i32 7, i32 poison>
  %i.lv = insertelement <4 x float> %i.lu, float 1.000000e+00, i64 3
  %i.lw = shufflevector <6 x float> %i.lg, <6 x float> %i.lt, <4 x i32> <i32 0, i32 4, i32 6, i32 poison>
  %i.lx = insertelement <4 x float> %i.lw, float 1.000000e+00, i64 3
  %i.ly = shufflevector <2 x float> %i.la, <2 x float> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.lz = shufflevector <6 x float> %i.lc, <6 x float> %i.ly, <4 x i32> <i32 1, i32 5, i32 7, i32 poison>
  %i.ma = insertelement <4 x float> %i.lz, float 1.000000e+00, i64 3
  %i.mb = shufflevector <6 x float> %i.lc, <6 x float> %i.ly, <4 x i32> <i32 0, i32 4, i32 6, i32 poison>
  %i.mc = insertelement <4 x float> %i.mb, float 1.000000e+00, i64 3
  br label %bb.al

bb.al:                                            ; preds = %bb.ch, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ch ] ; 2 uses
  %i.md = shl nuw nsw i64 %indvars.iv.i.i, 2      ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.md ; 3 uses
  %i.mf = load float, ptr %i.lh, align 16, !tbaa !120
  %i.mg = fcmp reassoc nsz arcp contract afn ult float %i.mf, 0.000000e+00
  %i.mh = load float, ptr %i.me, align 4, !tbaa !120 ; 5 uses
  br i1 %i.mg, label %bb.ar, label %bb.ao

bb.am:                                            ; preds = %bb.az
  %i.mi = fdiv reassoc nsz arcp contract afn float %i.pm, %i.pp ; 2 uses
  %i.mj = fcmp reassoc nsz arcp contract afn ogt float %i.mi, 5.000000e-01
  br i1 %i.mj, label %bb.an, label %_apply_blue_mapping.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.mk = fmul reassoc nnan nsz arcp contract afn float %i.mi, 2.000000e+00
  %i.ml = fadd reassoc nnan nsz arcp contract afn float %i.mk, -1.000000e+00
  %i.mm = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.pp, float 5.000000e-01)
  %i.mn = fmul reassoc nnan nsz arcp contract afn float %i.mm, 2.200000e-01
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mn, %i.ml ; 2 uses
  %i.mp = fadd reassoc nsz arcp contract afn float %i.mo, %i.om
  %i.mq = fsub reassoc nsz arcp contract afn float %i.pm, %i.mo
  br label %_apply_blue_mapping.exit.i.i

_apply_blue_mapping.exit.i.i:                     ; preds = %bb.az, %bb.an, %bb.am
  %.sroa.451.0.i.i = phi nsz float [ %i.mp, %bb.an ], [ %i.om, %bb.am ], [ %i.om, %bb.az ] ; 4 uses
  %.sroa.9.0.i.i = phi nsz float [ %i.mq, %bb.an ], [ %i.pm, %bb.am ], [ %i.pm, %bb.az ] ; 7 uses
  br i1 %.not.i35.i, label %bb.ba, label %bb.bm

bb.ao:                                            ; preds = %bb.al
  %i.mr = fcmp reassoc nsz arcp contract afn olt float %i.mh, 1.000000e+00
  br i1 %i.mr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ms = fcmp reassoc nsz arcp contract afn ogt float %i.mh, 0.000000e+00
  %i.mt = select reassoc nsz arcp contract afn i1 %i.ms, float %i.mh, float 0.000000e+00
  %i.mu = fmul reassoc nnan nsz arcp contract afn float %i.mt, 6.553500e+04 ; 2 uses
  %i.mv = fptosi float %i.mu to i32               ; 2 uses
  %i.mw = sitofp reassoc nsz arcp contract afn i32 %i.mv to float
  %i.mx = fsub reassoc nnan nsz arcp contract afn float %i.mu, %i.mw
  %i.my = sext i32 %i.mv to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.my ; 2 uses
  %i.na = load float, ptr %i.mz, align 4, !tbaa !120 ; 2 uses
  %i.nb = getelementptr i8, ptr %i.mz, i64 4
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !120
  %i.nd = fsub reassoc nsz arcp contract afn float %i.nc, %i.na
  %i.ne = fmul reassoc nsz arcp contract afn float %i.nd, %i.mx
  %i.nf = fadd reassoc nsz arcp contract afn float %i.ne, %i.na
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.ng = load float, ptr %i.lj, align 4, !tbaa !120
  %i.nh = load float, ptr %i.li, align 16, !tbaa !120
  %i.ni = fmul reassoc nsz arcp contract afn float %i.nh, %i.mh
  %i.nj = load float, ptr %i.lk, align 8, !tbaa !120
  %i.nk = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ni, float %i.nj)
  %i.nl = fmul reassoc nsz arcp contract afn float %i.nk, %i.ng
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.al
  %i.nm = phi reassoc nsz arcp contract afn float [ %i.nl, %bb.aq ], [ %i.nf, %bb.ap ], [ %i.mh, %bb.al ] ; 5 uses
  %i.nn = load float, ptr %i.ll, align 16, !tbaa !120
  %i.no = fcmp reassoc nsz arcp contract afn ult float %i.nn, 0.000000e+00
  %i.np = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  %i.nq = load float, ptr %i.np, align 4, !tbaa !120 ; 5 uses
  br i1 %i.no, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nr = fcmp reassoc nsz arcp contract afn olt float %i.nq, 1.000000e+00
  br i1 %i.nr, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ns = load float, ptr %i.ln, align 16, !tbaa !120
  %i.nt = load float, ptr %i.lm, align 4, !tbaa !120
  %i.nu = fmul reassoc nsz arcp contract afn float %i.nt, %i.nq
  %i.nv = load float, ptr %i.lo, align 4, !tbaa !120
  %i.nw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.nu, float %i.nv)
  %i.nx = fmul reassoc nsz arcp contract afn float %i.nw, %i.ns
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.ny = fcmp reassoc nsz arcp contract afn ogt float %i.nq, 0.000000e+00
  %i.nz = select reassoc nsz arcp contract afn i1 %i.ny, float %i.nq, float 0.000000e+00
  %i.oa = fmul reassoc nnan nsz arcp contract afn float %i.nz, 6.553500e+04 ; 2 uses
  %i.ob = fptosi float %i.oa to i32               ; 2 uses
  %i.oc = sitofp reassoc nsz arcp contract afn i32 %i.ob to float
  %i.od = fsub reassoc nnan nsz arcp contract afn float %i.oa, %i.oc
  %i.oe = sext i32 %i.ob to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.oe ; 2 uses
  %i.og = load float, ptr %i.of, align 4, !tbaa !120 ; 2 uses
  %i.oh = getelementptr i8, ptr %i.of, i64 4
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !120
  %i.oj = fsub reassoc nsz arcp contract afn float %i.oi, %i.og
  %i.ok = fmul reassoc nsz arcp contract afn float %i.oj, %i.od
  %i.ol = fadd reassoc nsz arcp contract afn float %i.ok, %i.og
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ar
  %i.om = phi reassoc nsz arcp contract afn float [ %i.nx, %bb.at ], [ %i.ol, %bb.au ], [ %i.nq, %bb.ar ] ; 4 uses
  %i.on = load float, ptr %i.lp, align 16, !tbaa !120
  %i.oo = fcmp reassoc nsz arcp contract afn ult float %i.on, 0.000000e+00
  %i.op = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.oq = load float, ptr %i.op, align 4, !tbaa !120 ; 5 uses
  br i1 %i.oo, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.or = fcmp reassoc nsz arcp contract afn olt float %i.oq, 1.000000e+00
  br i1 %i.or, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.os = load float, ptr %i.lr, align 4, !tbaa !120
  %i.ot = load float, ptr %i.lq, align 8, !tbaa !120
  %i.ou = fmul reassoc nsz arcp contract afn float %i.ot, %i.oq
  %i.ov = load float, ptr %i.ls, align 16, !tbaa !120
  %i.ow = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ou, float %i.ov)
  %i.ox = fmul reassoc nsz arcp contract afn float %i.ow, %i.os
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.oy = fcmp reassoc nsz arcp contract afn ogt float %i.oq, 0.000000e+00
  %i.oz = select reassoc nsz arcp contract afn i1 %i.oy, float %i.oq, float 0.000000e+00
  %i.pa = fmul reassoc nnan nsz arcp contract afn float %i.oz, 6.553500e+04 ; 2 uses
  %i.pb = fptosi float %i.pa to i32               ; 2 uses
  %i.pc = sitofp reassoc nsz arcp contract afn i32 %i.pb to float
  %i.pd = fsub reassoc nnan nsz arcp contract afn float %i.pa, %i.pc
  %i.pe = sext i32 %i.pb to i64
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.pe ; 2 uses
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !120 ; 2 uses
  %i.ph = getelementptr i8, ptr %i.pf, i64 4
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !120
  %i.pj = fsub reassoc nsz arcp contract afn float %i.pi, %i.pg
  %i.pk = fmul reassoc nsz arcp contract afn float %i.pj, %i.pd
  %i.pl = fadd reassoc nsz arcp contract afn float %i.pk, %i.pg
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.av
  %i.pm = phi reassoc nsz arcp contract afn float [ %i.ox, %bb.ax ], [ %i.pl, %bb.ay ], [ %i.oq, %bb.av ] ; 5 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.md
  %i.po = fadd reassoc nsz arcp contract afn float %i.om, %i.nm
  %i.pp = fadd reassoc nsz arcp contract afn float %i.po, %i.pm ; 3 uses
  %i.pq = fcmp reassoc nsz arcp contract afn ogt float %i.pp, 0.000000e+00
  br i1 %i.pq, label %bb.am, label %_apply_blue_mapping.exit.i.i

bb.ba:                                            ; preds = %_apply_blue_mapping.exit.i.i
  %i.pr = fmul reassoc nsz arcp contract afn float %.sroa.9.0.i.i, %i.jt
  %i.ps = fmul reassoc nsz arcp contract afn float %.sroa.9.0.i.i, %i.jv
  %i.pt = fmul reassoc nsz arcp contract afn float %.sroa.9.0.i.i, %i.jx
  %i.pu = insertelement <4 x float> poison, float %i.nm, i64 0
  %i.pv = shufflevector <4 x float> %i.pu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pw = fmul reassoc nsz arcp contract afn <4 x float> %i.pv, %i.lx
  %i.px = insertelement <4 x float> poison, float %.sroa.451.0.i.i, i64 0
  %i.py = shufflevector <4 x float> %i.px, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pz = fmul reassoc nsz arcp contract afn <4 x float> %i.py, %i.lv
  %i.qa = fadd reassoc nsz arcp contract afn <4 x float> %i.pz, %i.pw ; 4 uses
  %i.qb = extractelement <4 x float> %i.qa, i64 0
  %i.qc = fadd reassoc nsz arcp contract afn float %i.qb, %i.pr ; 2 uses
  %i.qd = extractelement <4 x float> %i.qa, i64 1
  %i.qe = fadd reassoc nsz arcp contract afn float %i.qd, %i.ps ; 3 uses
  %i.qf = extractelement <4 x float> %i.qa, i64 2
  %i.qg = fadd reassoc nsz arcp contract afn float %i.qf, %i.pt ; 2 uses
  %i.qh = extractelement <4 x float> %i.qa, i64 3
  %i.qi = fadd reassoc nsz arcp contract afn float %i.qh, %.sroa.9.0.i.i
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qc, f0x3F84C0A6 ; 2 uses
  %i.qk = fcmp reassoc nsz arcp contract afn ogt float %i.qj, f0x3C111AA7
  br i1 %i.qk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ql = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.qj) #27
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.qm = fmul reassoc nsz arcp contract afn float %i.qc, f0x410137F7
  %i.qn = fadd reassoc nsz arcp contract afn float %i.qm, f0x3E0D3DCB
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.qo = phi reassoc nsz arcp contract afn float [ %i.ql, %bb.bb ], [ %i.qn, %bb.bc ]
  %i.qp = fcmp reassoc nsz arcp contract afn ogt float %i.qe, f0x3C111AA7
  br i1 %i.qp, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.qq = fmul reassoc nsz arcp contract afn float %i.qe, f0x40F92F69
  %i.qr = fadd reassoc nsz arcp contract afn float %i.qq, f0x3E0D3DCB
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.qs = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.qe) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.qt = phi reassoc nsz arcp contract afn float [ %i.qs, %bb.bf ], [ %i.qr, %bb.be ] ; 3 uses
  %i.qu = fmul reassoc nsz arcp contract afn float %i.qg, f0x3F9B2B9B ; 2 uses
  %i.qv = fcmp reassoc nsz arcp contract afn ogt float %i.qu, f0x3C111AA7
  br i1 %i.qv, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qw = fmul reassoc nsz arcp contract afn float %i.qg, f0x41170A26
  %i.qx = fadd reassoc nsz arcp contract afn float %i.qw, f0x3E0D3DCB
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.qy = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.qu) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.qz = phi reassoc nsz arcp contract afn float [ %i.qy, %bb.bi ], [ %i.qx, %bb.bh ]
  %i.ra = fmul reassoc nsz arcp contract afn float %i.qi, 0.000000e+00 ; 3 uses
  %i.rb = fcmp reassoc nsz arcp contract afn ogt float %i.ra, f0x3C111AA7
  br i1 %i.rb, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rc = fadd reassoc nsz arcp contract afn float %i.ra, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.rd = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ra) #27
  br label %dt_XYZ_to_Lab.exit.i.i

dt_XYZ_to_Lab.exit.i.i:                           ; preds = %bb.bl, %bb.bk
end_hunk_0
begin_hunk_1_@process:bb.a
  %i.aes = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aeq, float %i.aer)
  %i.aet = fmul reassoc nsz arcp contract afn float %i.aes, %i.aeo
  br label %_apply_tone_curves.exit.i23.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.aeu = fcmp reassoc nsz arcp contract afn ogt float %i.acw, 0.000000e+00
  %i.aev = select reassoc nsz arcp contract afn i1 %i.aeu, float %i.acw, float 0.000000e+00
  %i.aew = fmul reassoc nnan nsz arcp contract afn float %i.aev, 6.553500e+04 ; 2 uses
  %i.aex = fptosi float %i.aew to i32             ; 2 uses
  %i.aey = sitofp reassoc nsz arcp contract afn i32 %i.aex to float
  %i.aez = fsub reassoc nnan nsz arcp contract afn float %i.aew, %i.aey
  %i.afa = sext i32 %i.aex to i64
  %i.afb = getelementptr inbounds [4 x i8], ptr %i.acb, i64 %i.afa ; 2 uses
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !120, !noalias !161 ; 2 uses
  %i.afd = getelementptr i8, ptr %i.afb, i64 4
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !120, !noalias !161
  %i.aff = fsub reassoc nsz arcp contract afn float %i.afe, %i.afc
  %i.afg = fmul reassoc nsz arcp contract afn float %i.aff, %i.aez
  %i.afh = fadd reassoc nsz arcp contract afn float %i.afg, %i.afc
  br label %_apply_tone_curves.exit.i23.i.i

_apply_tone_curves.exit.i23.i.i:                  ; preds = %bb.dp, %bb.do, %.sink.split24.i.i22.i.i
  %.sroa.10.0.i.i.i = phi nsz float [ %i.acw, %.sink.split24.i.i22.i.i ], [ %i.afh, %bb.dp ], [ %i.aet, %bb.do ] ; 4 uses
  %i.afi = fmul reassoc nsz arcp contract afn float %.sroa.10.0.i.i.i, %i.abg
  %i.afj = fmul reassoc nsz arcp contract afn float %.sroa.10.0.i.i.i, %i.abi
  %i.afk = fmul reassoc nsz arcp contract afn float %.sroa.10.0.i.i.i, %i.abk
  %i.afl = insertelement <4 x float> poison, float %.sroa.024.0.i.i.i, i64 0
  %i.afm = shufflevector <4 x float> %i.afl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afn = fmul reassoc nsz arcp contract afn <4 x float> %i.afm, %i.acm
  %i.afo = insertelement <4 x float> poison, float %.sroa.6.0.i.i.i, i64 0
  %i.afp = shufflevector <4 x float> %i.afo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afq = fmul reassoc nsz arcp contract afn <4 x float> %i.afp, %i.ack
  %i.afr = fadd reassoc nsz arcp contract afn <4 x float> %i.afq, %i.afn ; 4 uses
  %i.afs = extractelement <4 x float> %i.afr, i64 0
  %i.aft = fadd reassoc nsz arcp contract afn float %i.afs, %i.afi ; 2 uses
  %i.afu = extractelement <4 x float> %i.afr, i64 1
  %i.afv = fadd reassoc nsz arcp contract afn float %i.afu, %i.afj ; 3 uses
  %i.afw = extractelement <4 x float> %i.afr, i64 2
  %i.afx = fadd reassoc nsz arcp contract afn float %i.afw, %i.afk ; 2 uses
  %i.afy = extractelement <4 x float> %i.afr, i64 3
  %i.afz = fadd reassoc nsz arcp contract afn float %i.afy, %.sroa.10.0.i.i.i
  %i.aga = fmul reassoc nsz arcp contract afn float %i.aft, f0x3F84C0A6 ; 2 uses
  %i.agb = fcmp reassoc nsz arcp contract afn ogt float %i.aga, f0x3C111AA7
  br i1 %i.agb, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %_apply_tone_curves.exit.i23.i.i
  %i.agc = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.aga) #27
  br label %bb.ds

bb.dr:                                            ; preds = %_apply_tone_curves.exit.i23.i.i
  %i.agd = fmul reassoc nsz arcp contract afn float %i.aft, f0x410137F7
  %i.age = fadd reassoc nsz arcp contract afn float %i.agd, f0x3E0D3DCB
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.agf = phi reassoc nsz arcp contract afn float [ %i.agc, %bb.dq ], [ %i.age, %bb.dr ]
  %i.agg = fcmp reassoc nsz arcp contract afn ogt float %i.afv, f0x3C111AA7
  br i1 %i.agg, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.agh = fmul reassoc nsz arcp contract afn float %i.afv, f0x40F92F69
  %i.agi = fadd reassoc nsz arcp contract afn float %i.agh, f0x3E0D3DCB
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.agj = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.afv) #27
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.agk = phi reassoc nsz arcp contract afn float [ %i.agj, %bb.du ], [ %i.agi, %bb.dt ] ; 2 uses
  %i.agl = fmul reassoc nsz arcp contract afn float %i.afx, f0x3F9B2B9B ; 2 uses
  %i.agm = fcmp reassoc nsz arcp contract afn ogt float %i.agl, f0x3C111AA7
  br i1 %i.agm, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.agn = fmul reassoc nsz arcp contract afn float %i.afx, f0x41170A26
  %i.ago = fadd reassoc nsz arcp contract afn float %i.agn, f0x3E0D3DCB
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.agp = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.agl) #27
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.agq = phi reassoc nsz arcp contract afn float [ %i.agp, %bb.dx ], [ %i.ago, %bb.dw ]
  %i.agr = fmul reassoc nsz arcp contract afn float %i.afz, 0.000000e+00 ; 3 uses
  %i.ags = fcmp reassoc nsz arcp contract afn ogt float %i.agr, f0x3C111AA7
  br i1 %i.ags, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.agt = fadd reassoc nsz arcp contract afn float %i.agr, f0x3E0D3DCB
  br label %dt_RGB_to_Lab.exit.i24.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.agu = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.agr) #27
  br label %dt_RGB_to_Lab.exit.i24.i.i

dt_RGB_to_Lab.exit.i24.i.i:                       ; preds = %bb.ea, %bb.dz
  %i.agv = phi reassoc nsz arcp contract afn float [ %i.agu, %bb.ea ], [ %i.agt, %bb.dz ]
  %i.agw = fmul reassoc nsz arcp contract afn float %i.agk, 1.160000e+02
  %i.agx = insertelement <4 x float> poison, float %i.agw, i64 0
  %i.agy = insertelement <4 x float> %i.agx, float %i.agf, i64 1
  %i.agz = insertelement <4 x float> %i.agy, float %i.agq, i64 2
  %i.aha = insertelement <4 x float> %i.agz, float %i.agv, i64 3
  %i.ahb = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.agk, i64 1
  %i.ahc = shufflevector <4 x float> %i.ahb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ahd = fsub reassoc nsz arcp contract afn <4 x float> %i.aha, %i.ahc
  %i.ahe = fmul reassoc nsz arcp contract afn <4 x float> %i.ahd, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.acn
  store <4 x float> %i.ahe, ptr %i.ahf, align 16, !tbaa !38, !alias.scope !162, !noalias !159, !nontemporal !136
  %i.ahg = add nuw i64 %.038.i.i.i, 1             ; 2 uses
  %exitcond.not.i29.i.i = icmp eq i64 %i.ahg, %i.cp
  br i1 %exitcond.not.i29.i.i, label %process_cmatrix.exit, label %bb.dg

process_cmatrix.exit:                             ; preds = %bb.ch, %dt_RGB_to_Lab.exit.i.i39.i, %dt_RGB_to_Lab.exit.i24.i.i, %dt_RGB_to_Lab.exit.i.i.i, %dt_RGB_to_Lab.exit.i19.i.i, %bb.n, %bb.z, %.critedge.i, %bb.cj, %bb.df
  tail call void @llvm.x86.sse.sfence()
  br label %process_lcms2_bm.exit

bb.eb:                                            ; preds = %bb.j
  br i1 %i.bj, label %bb.ec, label %bb.eh

bb.ec:                                            ; preds = %bb.eb
  %i.ahh = getelementptr i8, ptr %5, i64 8
  %.val72 = load i32, ptr %i.ahh, align 4, !tbaa !123
  %i.ahi = getelementptr i8, ptr %5, i64 12
  %.val73 = load i32, ptr %i.ahi, align 4, !tbaa !124 ; 2 uses
  %.8.val.fr.i = freeze i32 %.val72               ; 8 uses
  %i.ahj = sext i32 %.8.val.fr.i to i64           ; 2 uses
  %.not16.i = icmp eq i32 %.val73, 0
  br i1 %.not16.i, label %process_lcms2_bm.exit, label %.lr.ph8.i

.lr.ph8.i:                                        ; preds = %bb.ec
  %.val = load ptr, ptr %i.f, align 16, !tbaa !11 ; 4 uses
  %.not17.i = icmp eq i32 %.8.val.fr.i, 0
  %i.ahk = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %wide.trip.count45.i = zext i32 %.val73 to i64  ; 3 uses
  br i1 %.not17.i, label %.lr.ph8.split.split.i, label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph8.i
  %wide.trip.count.i = zext i32 %.8.val.fr.i to i64 ; 6 uses
  %i.aho = add nuw nsw i64 %wide.trip.count45.i, 1152921504606846975
  %i.ahp = mul i64 %i.aho, %i.ahj
  %i.ahq = add i64 %i.ahp, %wide.trip.count.i
  %i.ahr = shl i64 %i.ahq, 4
  %i.ahs = add i64 %i.ahr, -4                     ; 2 uses
  %scevgep209 = getelementptr i8, ptr %3, i64 %i.ahs
  %scevgep210 = getelementptr i8, ptr %2, i64 %i.ahs
  %min.iters.check217 = icmp ult i32 %.8.val.fr.i, 9
  %bound0211 = icmp ult ptr %3, %scevgep210
  %bound1212 = icmp ult ptr %2, %scevgep209
  %found.conflict213 = and i1 %bound0211, %bound1212
  %stride.check214 = icmp slt i32 %.8.val.fr.i, 0
  %i.aht = or i1 %found.conflict213, %stride.check214
  %i.ahu = and i64 %wide.trip.count.i, 7          ; 2 uses
  %i.ahv = icmp eq i64 %i.ahu, 0
  %i.ahw = select i1 %i.ahv, i64 8, i64 %i.ahu
  %n.vec219 = sub nsw i64 %wide.trip.count.i, %i.ahw ; 2 uses
  %xtraiter246 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ahx = icmp ult i32 %.8.val.fr.i, 4
  %unroll_iter250 = and i64 %wide.trip.count.i, 4294967292
  %lcmp.mod248.not = icmp eq i64 %xtraiter246, 0
  %lcmp.mod249 = icmp ne i64 %xtraiter246, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge5.us.i, %.lr.ph.us.preheader.i
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next28.i, %._crit_edge5.us.i ] ; 2 uses
  %i.ahy = shl nuw nsw i64 %indvars.iv27.i, 2
  %i.ahz = mul i64 %i.ahy, %i.ahj                 ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ahz ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ahz ; 11 uses
  %brmerge = select i1 %min.iters.check217, i1 true, i1 %i.aht
  br i1 %brmerge, label %scalar.ph216.preheader, label %vector.body220

vector.body220:                                   ; preds = %.lr.ph.us.i, %vector.body220
  %index221 = phi i64 [ %index.next228, %vector.body220 ], [ 0, %.lr.ph.us.i ]
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body220 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph.us.i ] ; 2 uses
  %i.aic = shl nuw nsw <8 x i64> %vec.ind, splat (i64 2) ; 2 uses
  %i.aid = extractelement <8 x i64> %i.aic, i64 0
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %i.aid
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.aib, <8 x i64> %i.aic ; 3 uses
  %wide.vec222 = load <32 x float>, ptr %i.aie, align 4, !tbaa !120, !alias.scope !165 ; 3 uses
  %strided.vec223 = shufflevector <32 x float> %wide.vec222, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec224 = shufflevector <32 x float> %wide.vec222, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec225 = shufflevector <32 x float> %wide.vec222, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 4 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec223, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !120, !alias.scope !168, !noalias !165
  %wide.gep226 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec224, <8 x ptr> align 4 %wide.gep226, <8 x i1> splat (i1 true)), !tbaa !120, !alias.scope !168, !noalias !165
  %wide.gep227 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8 ; 2 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec225, <8 x ptr> align 4 %wide.gep227, <8 x i1> splat (i1 true)), !tbaa !120, !alias.scope !168, !noalias !165
  %i.aif = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec224, %strided.vec223
  %i.aig = fadd reassoc nsz arcp contract afn <8 x float> %i.aif, %strided.vec225 ; 3 uses
  %i.aih = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aig, zeroinitializer
  %i.aii = fdiv reassoc nsz arcp contract afn <8 x float> %strided.vec225, %i.aig ; 2 uses
  %i.aij = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.aii, splat (float 5.000000e-01)
  %i.aik = and <8 x i1> %i.aih, %i.aij            ; 2 uses
  %i.ail = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aii, splat (float 2.000000e+00)
  %i.aim = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ail, splat (float -1.000000e+00)
  %i.ain = tail call reassoc nnan nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.aig, <8 x float> splat (float 5.000000e-01))
  %i.aio = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ain, splat (float 2.200000e-01)
  %i.aip = fmul reassoc nsz arcp contract afn <8 x float> %i.aio, %i.aim ; 2 uses
  %i.aiq = fadd reassoc nsz arcp contract afn <8 x float> %i.aip, %strided.vec224
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.aiq, <8 x ptr> align 4 %wide.gep226, <8 x i1> %i.aik), !tbaa !120, !alias.scope !168, !noalias !165
  %i.air = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec225, %i.aip
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.air, <8 x ptr> align 4 %wide.gep227, <8 x i1> %i.aik), !tbaa !120, !alias.scope !168, !noalias !165
  %index.next228 = add nuw i64 %index221, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.ais = icmp eq i64 %index.next228, %n.vec219
  br i1 %i.ais, label %scalar.ph216.preheader, label %vector.body220, !llvm.loop !170

scalar.ph216.preheader:                           ; preds = %vector.body220, %.lr.ph.us.i
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.us.i ], [ %n.vec219, %vector.body220 ]
  br label %scalar.ph216

scalar.ph216:                                     ; preds = %scalar.ph216.preheader, %_apply_blue_mapping.exit.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_apply_blue_mapping.exit.us.i ], [ %indvars.iv.i.ph, %scalar.ph216.preheader ] ; 2 uses
  %i.ait = shl nuw nsw i64 %indvars.iv.i, 2       ; 2 uses
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %i.ait ; 3 uses
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.aib, i64 %i.ait ; 3 uses
  %i.aiw = load float, ptr %i.aiu, align 4, !tbaa !120 ; 2 uses
  store float %i.aiw, ptr %i.aiv, align 4, !tbaa !120
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiu, i64 4
  %i.aiy = load float, ptr %i.aix, align 4, !tbaa !120 ; 3 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiv, i64 4 ; 2 uses
  store float %i.aiy, ptr %i.aiz, align 4, !tbaa !120
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !120 ; 4 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8 ; 2 uses
  store float %i.ajb, ptr %i.ajc, align 4, !tbaa !120
  %i.ajd = fadd reassoc nsz arcp contract afn float %i.aiy, %i.aiw
  %i.aje = fadd reassoc nsz arcp contract afn float %i.ajd, %i.ajb ; 3 uses
  %i.ajf = fcmp reassoc nsz arcp contract afn ogt float %i.aje, 0.000000e+00
  br i1 %i.ajf, label %bb.ed, label %_apply_blue_mapping.exit.us.i

bb.ed:                                            ; preds = %scalar.ph216
  %i.ajg = fdiv reassoc nsz arcp contract afn float %i.ajb, %i.aje ; 2 uses
  %i.ajh = fcmp reassoc nsz arcp contract afn ogt float %i.ajg, 5.000000e-01
  br i1 %i.ajh, label %bb.ee, label %_apply_blue_mapping.exit.us.i

bb.ee:                                            ; preds = %bb.ed
  %i.aji = fmul reassoc nnan nsz arcp contract afn float %i.ajg, 2.000000e+00
  %i.ajj = fadd reassoc nnan nsz arcp contract afn float %i.aji, -1.000000e+00
  %i.ajk = tail call reassoc nnan nsz arcp contract afn float @llvm.minnum.f32(float %i.aje, float 5.000000e-01)
  %i.ajl = fmul reassoc nnan nsz arcp contract afn float %i.ajk, 2.200000e-01
  %i.ajm = fmul reassoc nsz arcp contract afn float %i.ajl, %i.ajj ; 2 uses
  %i.ajn = fadd reassoc nsz arcp contract afn float %i.ajm, %i.aiy
  store float %i.ajn, ptr %i.aiz, align 4, !tbaa !120
  %i.ajo = fsub reassoc nsz arcp contract afn float %i.ajb, %i.ajm
  store float %i.ajo, ptr %i.ajc, align 4, !tbaa !120
  br label %_apply_blue_mapping.exit.us.i

_apply_blue_mapping.exit.us.i:                    ; preds = %bb.ee, %bb.ed, %scalar.ph216
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %scalar.ph216, !llvm.loop !173

.lr.ph4.us.preheader.i:                           ; preds = %._crit_edge.us.i
  %i.ajp = load ptr, ptr %i.ahl, align 32, !tbaa !174
  tail call void @cmsDoTransform(ptr noundef %i.ajp, ptr noundef nonnull %i.aib, ptr noundef nonnull %i.aib, i32 noundef %.8.val.fr.i) #18
  br i1 %i.ahx, label %.lr.ph4.us.i.epil.preheader, label %.lr.ph4.us.i

.lr.ph4.us.i:                                     ; preds = %.lr.ph4.us.preheader.i, %.lr.ph4.us.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i.3, %.lr.ph4.us.i ], [ 0, %.lr.ph4.us.preheader.i ] ; 5 uses
  %niter251 = phi i64 [ %niter251.next.3, %.lr.ph4.us.i ], [ 0, %.lr.ph4.us.preheader.i ]
  %.idx.i = shl nuw nsw i64 %indvars.iv22.i, 4
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.aib, i64 %.idx.i ; 2 uses
  %.val.i.us.i = load <4 x float>, ptr %i.ajq, align 16, !tbaa !38
  %i.ajr = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i, <4 x float> zeroinitializer)
  %i.ajs = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ajr, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.ajs, ptr %i.ajq, align 16, !tbaa !38
  %indvars.iv.next23.i = shl i64 %indvars.iv22.i, 4
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.aib, i64 %indvars.iv.next23.i
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16 ; 2 uses
  %.val.i.us.i.1 = load <4 x float>, ptr %i.aju, align 16, !tbaa !38
  %i.ajv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.1, <4 x float> zeroinitializer)
  %i.ajw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ajv, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.ajw, ptr %i.aju, align 16, !tbaa !38
  %indvars.iv.next23.i.1 = shl i64 %indvars.iv22.i, 4
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.aib, i64 %indvars.iv.next23.i.1
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 32 ; 2 uses
  %.val.i.us.i.2 = load <4 x float>, ptr %i.ajy, align 16, !tbaa !38
  %i.ajz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.2, <4 x float> zeroinitializer)
  %i.aka = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ajz, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.aka, ptr %i.ajy, align 16, !tbaa !38
  %indvars.iv.next23.i.2 = shl i64 %indvars.iv22.i, 4
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aib, i64 %indvars.iv.next23.i.2
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 48 ; 2 uses
  %.val.i.us.i.3 = load <4 x float>, ptr %i.akc, align 16, !tbaa !38
  %i.akd = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.3, <4 x float> zeroinitializer)
  %i.ake = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.akd, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.ake, ptr %i.akc, align 16, !tbaa !38
  %indvars.iv.next23.i.3 = add nuw nsw i64 %indvars.iv22.i, 4 ; 2 uses
  %niter251.next.3 = add i64 %niter251, 4         ; 2 uses
  %niter251.ncmp.3 = icmp eq i64 %niter251.next.3, %unroll_iter250
  br i1 %niter251.ncmp.3, label %._crit_edge5.us.i.loopexit.unr-lcssa, label %.lr.ph4.us.i

._crit_edge5.us.i.loopexit.unr-lcssa:             ; preds = %.lr.ph4.us.i
  br i1 %lcmp.mod248.not, label %._crit_edge5.us.i, label %.lr.ph4.us.i.epil.preheader

.lr.ph4.us.i.epil.preheader:                      ; preds = %._crit_edge5.us.i.loopexit.unr-lcssa, %.lr.ph4.us.preheader.i
  %indvars.iv22.i.epil.init = phi i64 [ 0, %.lr.ph4.us.preheader.i ], [ %indvars.iv.next23.i.3, %._crit_edge5.us.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod249)
  br label %.lr.ph4.us.i.epil

.lr.ph4.us.i.epil:                                ; preds = %.lr.ph4.us.i.epil, %.lr.ph4.us.i.epil.preheader
  %indvars.iv22.i.epil = phi i64 [ %indvars.iv22.i.epil.init, %.lr.ph4.us.i.epil.preheader ], [ %indvars.iv.next23.i.epil, %.lr.ph4.us.i.epil ] ; 2 uses
  %epil.iter247 = phi i64 [ 0, %.lr.ph4.us.i.epil.preheader ], [ %epil.iter247.next, %.lr.ph4.us.i.epil ]
  %.idx.i.epil = shl nuw nsw i64 %indvars.iv22.i.epil, 4
  %i.akf = getelementptr inbounds nuw i8, ptr %i.aib, i64 %.idx.i.epil ; 2 uses
  %.val.i.us.i.epil = load <4 x float>, ptr %i.akf, align 16, !tbaa !38
  %i.akg = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.i.epil, <4 x float> zeroinitializer)
  %i.akh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.akg, <4 x float> splat (float 1.000000e+00))
  store <4 x float> %i.akh, ptr %i.akf, align 16, !tbaa !38
  %indvars.iv.next23.i.epil = add nuw nsw i64 %indvars.iv22.i.epil, 1
  %epil.iter247.next = add i64 %epil.iter247, 1   ; 2 uses
  %epil.iter247.cmp.not = icmp eq i64 %epil.iter247.next, %xtraiter246
  br i1 %epil.iter247.cmp.not, label %._crit_edge5.us.i, label %.lr.ph4.us.i.epil, !llvm.loop !175

._crit_edge5.us.i:                                ; preds = %._crit_edge5.us.i.loopexit.unr-lcssa, %.lr.ph4.us.i.epil, %._crit_edge.us.i
  %.sink.in.i = phi ptr [ %i.ahn, %._crit_edge.us.i ], [ %i.ahm, %.lr.ph4.us.i.epil ], [ %i.ahm, %._crit_edge5.us.i.loopexit.unr-lcssa ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !177
  tail call void @cmsDoTransform(ptr noundef %.sink.i, ptr noundef nonnull %i.aib, ptr noundef nonnull %i.aib, i32 noundef %.8.val.fr.i) #18
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count45.i
  br i1 %exitcond31.not.i, label %process_lcms2_bm.exit, label %.lr.ph.us.i

._crit_edge.us.i:                                 ; preds = %_apply_blue_mapping.exit.us.i
  %i.aki = load ptr, ptr %i.ahk, align 16, !tbaa !126
  %.not.us.i = icmp eq ptr %i.aki, null
  br i1 %.not.us.i, label %._crit_edge5.us.i, label %.lr.ph4.us.preheader.i

.lr.ph8.split.split.i:                            ; preds = %.lr.ph8.i, %bb.eg
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %bb.eg ], [ 0, %.lr.ph8.i ]
  %i.akj = load ptr, ptr %i.ahk, align 16, !tbaa !126
  %.not.i77 = icmp eq ptr %i.akj, null
  br i1 %.not.i77, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph8.split.split.i
  %i.akk = load ptr, ptr %i.ahl, align 32, !tbaa !174
  tail call void @cmsDoTransform(ptr noundef %i.akk, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph8.split.split.i, %bb.ef
  %.sink49.in.i = phi ptr [ %i.ahm, %bb.ef ], [ %i.ahn, %.lr.ph8.split.split.i ]
  %.sink49.i = load ptr, ptr %.sink49.in.i, align 8, !tbaa !177
  tail call void @cmsDoTransform(ptr noundef %.sink49.i, ptr noundef %3, ptr noundef %3, i32 noundef 0) #18
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i
  br i1 %exitcond46.not.i, label %process_lcms2_bm.exit, label %.lr.ph8.split.split.i

bb.eh:                                            ; preds = %bb.eb
  %.val74 = load ptr, ptr %i.f, align 16, !tbaa !11 ; 4 uses
  %i.akl = getelementptr i8, ptr %5, i64 8
  %.val75 = load i32, ptr %i.akl, align 4, !tbaa !123
  %i.akm = getelementptr i8, ptr %5, i64 12
  %.val76 = load i32, ptr %i.akm, align 4, !tbaa !124 ; 2 uses
  %.8.val.fr.i78 = freeze i32 %.val75             ; 13 uses
  %i.akn = sext i32 %.val76 to i64                ; 5 uses
  %i.ako = sext i32 %.8.val.fr.i78 to i64         ; 6 uses
  %i.akp = shl nsw i64 %i.ako, 2                  ; 3 uses
  %i.akq = shl nsw i64 %i.ako, 4
  %i.akr = add nsw i64 %i.akq, 48
  %i.aks = and i64 %i.akr, -64
  %i.akt = tail call ptr @dt_alloc_aligned(i64 noundef %i.aks) #18 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.akt, i64 64) ]
  %.not14.i = icmp eq i32 %.val76, 0
  br i1 %.not14.i, label %process_lcms2_proper.exit, label %.lr.ph6.i

.lr.ph6.i:                                        ; preds = %bb.eh
  %i.aku = fcmp reassoc nsz arcp contract afn une <2 x float> %i.bc, splat (float 1.000000e+00) ; 2 uses
  %i.akv = extractelement <2 x i1> %i.aku, i64 0
  %i.akw = extractelement <2 x i1> %i.aku, i64 1
  %or.cond = select i1 %i.akv, i1 true, i1 %i.akw
  %i.akx = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.aky = fcmp reassoc nsz arcp contract afn une float %i.akx, 1.000000e+00
  %spec.select = select i1 %or.cond, i1 true, i1 %i.aky
  %i.akz = getelementptr inbounds nuw i8, ptr %.val74, i64 16 ; 4 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.val74, i64 32 ; 4 uses
  %.not16.i79 = icmp eq i32 %.8.val.fr.i78, 0     ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.val74, i64 40 ; 4 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %.val74, i64 24 ; 4 uses
  br i1 %spec.select, label %.lr.ph6.split.us.i, label %.lr.ph6.split.i

.lr.ph6.split.us.i:                               ; preds = %.lr.ph6.i
  br i1 %.not16.i79, label %.preheader.us.i, label %.preheader.us.us.preheader.i

.preheader.us.us.preheader.i:                     ; preds = %.lr.ph6.split.us.i
  %wide.trip.count26.i = zext i32 %.8.val.fr.i78 to i64 ; 2 uses
  %i.ald = tail call i64 @llvm.usub.sat.i64(i64 %i.akp, i64 4)
  %i.ale = shl i64 %i.ald, 2                      ; 2 uses
  %i.alf = getelementptr i8, ptr %i.akt, i64 %i.ale
  %scevgep = getelementptr i8, ptr %i.alf, i64 16
  %i.alg = add nsw i64 %i.akn, 1152921504606846975
  %i.alh = mul i64 %i.alg, %i.ako
  %i.ali = shl i64 %i.alh, 4
  %i.alj = getelementptr i8, ptr %2, i64 %i.ali
  %i.alk = getelementptr i8, ptr %i.alj, i64 %i.ale
  %scevgep198 = getelementptr i8, ptr %i.alk, i64 16
  %i.all = tail call i64 @llvm.usub.sat.i64(i64 %i.akp, i64 4) ; 2 uses
  %i.alm = lshr exact i64 %i.all, 2
  %i.aln = add nuw nsw i64 %i.alm, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.all, 12
  %bound0 = icmp ult ptr %i.akt, %scevgep198
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %.8.val.fr.i78, 0
  %i.alo = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.aln, 9223372036854775804    ; 3 uses
  %i.alp = shl i64 %n.vec, 2
  %broadcast.splat = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat200 = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat202 = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat204 = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %cmp.n = icmp eq i64 %i.aln, %n.vec
  %i.alq = extractelement <2 x float> %i.bd, i64 1
  %xtraiter240 = and i64 %wide.trip.count26.i, 3  ; 3 uses
  %i.alr = icmp ult i32 %.8.val.fr.i78, 4
  %unroll_iter244 = and i64 %wide.trip.count26.i, 4294967292
  %lcmp.mod242.not = icmp eq i64 %xtraiter240, 0
  %lcmp.mod243 = icmp ne i64 %xtraiter240, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %bb.ej, %.preheader.us.us.preheader.i
  %.0454.us.us.i = phi i64 [ %i.ans, %bb.ej ], [ 0, %.preheader.us.us.preheader.i ] ; 2 uses
  %i.als = shl i64 %.0454.us.us.i, 2
  %i.alt = mul i64 %i.als, %i.ako                 ; 2 uses
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.alt ; 2 uses
  %brmerge252 = select i1 %min.iters.check, i1 true, i1 %i.alo
  br i1 %brmerge252, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.i ] ; 2 uses
  %i.alv = shl nuw i64 %index, 2                  ; 2 uses
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.akt, i64 %i.alv
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.alu, i64 %i.alv
  %wide.vec = load <16 x float>, ptr %i.alx, align 4, !tbaa !120, !alias.scope !178 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec205 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec206 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec207 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.aly = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec, %broadcast.splat
  %i.alz = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec205, %broadcast.splat200
  %i.ama = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec206, %broadcast.splat202
  %i.amb = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec207, %broadcast.splat204
end_hunk_1
