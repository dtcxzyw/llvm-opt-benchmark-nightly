Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lens?download=true
inline.NumInlined: 229
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 38
begin_hunk_0_@process:bb.a
  br i1 %i.fz, label %_ZL21_calc_vignette_splinefPKf.exit.i, label %_ZL21_calc_vignette_splinefPKf.exit.thread.i

_ZL21_calc_vignette_splinefPKf.exit.i:            ; preds = %bb.j
  %.reass.i = fmul reassoc nsz arcp contract afn float %invariant.op.i, %i.fx ; 3 uses
  %i.ga = tail call reassoc nsz arcp contract afn float @llvm.trunc.f32(float %.reass.i)
  %i.gb = fsub reassoc nsz arcp contract afn float %.reass.i, %i.ga
  %i.gc = fptosi float %.reass.i to i32
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.gd ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !21 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.ge, i64 4
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !21
  %i.gi = fsub reassoc nsz arcp contract afn float %i.gh, %i.gf
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gi, %i.gb
  %i.gk = fadd reassoc nsz arcp contract afn float %i.gj, %i.gf
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gk, %i.dc ; 2 uses
  %i.gm = fcmp reassoc nsz arcp contract afn olt float %i.gl, 0.000000e+00
  br i1 %i.gm, label %bb.k, label %_ZL21_calc_vignette_splinefPKf.exit52.i

_ZL21_calc_vignette_splinefPKf.exit.thread.i:     ; preds = %bb.j
  %i.gn = load float, ptr %i.di, align 4, !tbaa !21
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, %i.dc ; 2 uses
  %i.gp = fcmp reassoc nsz arcp contract afn olt float %i.go, 0.000000e+00
  br i1 %i.gp, label %bb.k, label %_ZL21_calc_vignette_splinefPKf.exit52.i

_ZL21_calc_vignette_splinefPKf.exit52.i:          ; preds = %_ZL21_calc_vignette_splinefPKf.exit.thread.i, %_ZL21_calc_vignette_splinefPKf.exit.i
  %.pre-phi.i = phi float [ %i.go, %_ZL21_calc_vignette_splinefPKf.exit.thread.i ], [ %i.gl, %_ZL21_calc_vignette_splinefPKf.exit.i ]
  br label %bb.k

bb.k:                                             ; preds = %_ZL21_calc_vignette_splinefPKf.exit52.i, %_ZL21_calc_vignette_splinefPKf.exit.thread.i, %_ZL21_calc_vignette_splinefPKf.exit.i
  %i.gq = phi reassoc nsz arcp contract afn float [ %.pre-phi.i, %_ZL21_calc_vignette_splinefPKf.exit52.i ], [ 0.000000e+00, %_ZL21_calc_vignette_splinefPKf.exit.i ], [ 0.000000e+00, %_ZL21_calc_vignette_splinefPKf.exit.thread.i ] ; 2 uses
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, 1.000000e+00 ; 3 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fs
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !21
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, %i.gr
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.fs ; 2 uses
  store float %i.gu, ptr %i.gv, align 16, !tbaa !21
  %i.gw = or disjoint i64 %i.fs, 1                ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gw
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !21
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, %i.gr
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.gw
  store float %i.gz, ptr %i.ha, align 4, !tbaa !21
  %i.hb = or disjoint i64 %i.fs, 2                ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !21
  %i.he = fmul reassoc nsz arcp contract afn float %i.hd, %i.gr
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.hb
  store float %i.he, ptr %i.hf, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  store float %i.gq, ptr %i.hg, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dn
  br i1 %exitcond.not.i, label %._crit_edge.i.split, label %bb.j, !llvm.loop !328

_ZL20_preprocess_vignetteP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_ti.exit: ; preds = %._crit_edge.i.split, %._crit_edge.i.split.us.us, %.preheader.lr.ph.i, %_ZL21_init_vignette_splineP18dt_iop_lens_data_t.exit.i, %bb.f, %bb.e
  %.0 = phi ptr [ %2, %bb.e ], [ %2, %bb.f ], [ %i.af, %_ZL21_init_vignette_splineP18dt_iop_lens_data_t.exit.i ], [ %i.af, %.preheader.lr.ph.i ], [ %i.af, %._crit_edge.i.split.us.us ], [ %i.af, %._crit_edge.i.split ] ; 13 uses
  %i.hh = load i32, ptr %i.c, align 8, !tbaa !114
  switch i32 %i.hh, label %bb.cj [
    i32 1, label %bb.l
    i32 0, label %bb.bg
  ]

bb.l:                                             ; preds = %_ZL20_preprocess_vignetteP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_ti.exit
  %i.hi = load ptr, ptr %i.b, align 16, !tbaa !44 ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !342 ; 17 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !106
  %i.hn = mul nsw i32 %i.hm, %i.hk                ; 8 uses
  %i.ho = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 628
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !340 ; 2 uses
  %i.hr = icmp eq i32 %i.hk, 3
  %i.hs = select i1 %i.hr, i32 1620, i32 9812     ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !115 ; 2 uses
  %.not.i51 = icmp eq ptr %i.hu, null
  br i1 %.not.i51, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !124
  %.not236.i = icmp eq ptr %i.hv, null
  br i1 %.not236.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hx = load float, ptr %i.hw, align 8, !tbaa !125
  %i.hy = fcmp reassoc nsz arcp contract afn ugt float %i.hx, 0.000000e+00
  br i1 %i.hy, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !106
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !107
  %i.ie = sext i32 %i.id to i64
  %i.if = sext i32 %i.hk to i64
  %i.ig = mul nsw i64 %i.ib, %i.if
  %i.ih = mul i64 %i.ig, %i.ie
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %.0, i64 noundef %i.ih)
  br label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

bb.p:                                             ; preds = %bb.n
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !126
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 112
  %i.il = tail call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.ik)
  %i.im = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 628
  %i.io = load i32, ptr %i.in, align 4, !tbaa !340
  %i.ip = icmp eq i32 %i.io, 128                  ; 3 uses
  %i.iq = icmp ne i32 %i.il, 0
  %i.ir = select i1 %i.iq, i1 true, i1 %i.ip
  %i.is = select i1 %i.ir, i32 -2, i32 -1
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.iu = load float, ptr %i.it, align 4, !tbaa !111 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.iw = load <2 x i32>, ptr %i.iv, align 16, !tbaa !24
  %i.ix = sitofp reassoc nsz arcp contract afn <2 x i32> %i.iw to <2 x float> ; 2 uses
  %i.iy = extractelement <2 x float> %i.ix, i64 0
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iu, %i.iy
  %i.ja = extractelement <2 x float> %i.ix, i64 1
  %i.jb = fmul reassoc nsz arcp contract afn float %i.iu, %i.ja
  %i.jc = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.jd = fptosi float %i.iz to i32
  %i.je = fptosi float %i.jb to i32
  %i.jf = call fastcc noundef ptr @_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii(ptr noundef nonnull %i.a, i32 noundef %i.jd, i32 noundef %i.je, ptr noundef nonnull %i.hi, i32 noundef %i.is, i32 noundef 0) ; 6 uses
  %i.jg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  %i.jh = call ptr @dt_interpolation_new(i32 noundef 3) ; 8 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !127
  %.not237.i = icmp eq i32 %i.jj, 0
  br i1 %.not237.i, label %bb.al, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.jk = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %i.jl = and i32 %i.jk, 57
  %.not243.i = icmp eq i32 %i.jl, 0
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !106
  %i.jo = sext i32 %i.jn to i64                   ; 2 uses
  br i1 %.not243.i, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jp = mul nsw i64 %i.jo, 24
  %i.jq = add nsw i64 %i.jp, 56
  %i.jr = and i64 %i.jq, -64
  %i.js = call noundef ptr @dt_alloc_aligned(i64 noundef %i.jr) ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.js, i64 64) ]
  %i.jt = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !107
  %i.jv = icmp sgt i32 %i.ju, 0
  br i1 %i.jv, label %.lr.ph.i, label %._crit_edge258.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.jw = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.jx = sext i32 %i.hk to i64                   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hi, i64 44 ; 4 uses
  %i.jz = and i32 %i.hq, 1
  %.not245.i = icmp eq i32 %i.jz, 0
  %i.ka = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %.pre.i = load i32, ptr %i.jm, align 4, !tbaa !106
  %i.kb = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.kc = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br label %bb.s

._crit_edge258.i:                                 ; preds = %._crit_edge.i53, %bb.r
  call void @free(ptr noundef %i.js) #30
  br label %bb.aj

bb.s:                                             ; preds = %._crit_edge.i53, %.lr.ph.i
  %i.kd = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.ks, %._crit_edge.i53 ]
  %indvars.iv.i52 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i54, %._crit_edge.i53 ] ; 3 uses
  %i.ke = load i32, ptr %5, align 4, !tbaa !112
  %i.kf = sitofp reassoc nsz arcp contract afn i32 %i.ke to float
  %i.kg = load i32, ptr %i.jw, align 4, !tbaa !113
  %i.kh = trunc nuw nsw i64 %indvars.iv.i52 to i32
  %i.ki = add nsw i32 %i.kg, %i.kh
  %i.kj = sitofp reassoc nsz arcp contract afn i32 %i.ki to float
  %i.kk = call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.jf, float noundef %i.kf, float noundef %i.kj, i32 noundef %i.kd, i32 noundef 1, ptr noundef %i.js) ; 0 uses
  %i.kl = load i32, ptr %i.jm, align 4, !tbaa !106 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 0
  br i1 %i.km, label %.preheader251.preheader.i, label %._crit_edge.i53

.preheader251.preheader.i:                        ; preds = %bb.s
  %i.kn = mul nsw i64 %indvars.iv.i52, %i.jx
  %i.ko = zext nneg i32 %i.kl to i64
  %i.kp = mul i64 %i.kn, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kp
  br label %.preheader251.i

.preheader251.i:                                  ; preds = %bb.ah, %.preheader251.preheader.i
  %.0230255.i = phi i32 [ %i.on, %bb.ah ], [ 0, %.preheader251.preheader.i ]
  %.0231254.i = phi ptr [ %i.op, %bb.ah ], [ %i.kq, %.preheader251.preheader.i ] ; 7 uses
  %.0232253.i = phi ptr [ %i.oo, %bb.ah ], [ %i.js, %.preheader251.preheader.i ] ; 13 uses
  %i.kr = load i32, ptr %i.jy, align 4, !tbaa !128
  %.not247.i = icmp eq i32 %i.kr, 0
  %.pre286.i = load float, ptr %.0232253.i, align 4, !tbaa !21 ; 2 uses
  br i1 %.not247.i, label %.preheader251._crit_edge.i, label %bb.t

.preheader251._crit_edge.i:                       ; preds = %.preheader251.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 4
  %.pre287.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !21
  br label %bb.v

._crit_edge.i53:                                  ; preds = %bb.ah, %bb.s
  %i.ks = phi i32 [ %i.kl, %bb.s ], [ %i.oq, %bb.ah ]
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %i.kt = load i32, ptr %i.jt, align 4, !tbaa !107
  %i.ku = sext i32 %i.kt to i64
  %i.kv = icmp slt i64 %indvars.iv.next.i54, %i.ku
  br i1 %i.kv, label %bb.s, label %._crit_edge258.i, !llvm.loop !330

bb.t:                                             ; preds = %.preheader251.i
  %i.kw = call float @llvm.fabs.f32(float %.pre286.i)
  %i.kx = fcmp ueq float %i.kw, +inf
  br i1 %i.kx, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ky = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 4
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !21 ; 2 uses
  %i.la = call float @llvm.fabs.f32(float %i.kz)
  %i.lb = fcmp ueq float %i.la, +inf
  br i1 %i.lb, label %.thread.i, label %bb.v

.thread.i:                                        ; preds = %bb.u, %bb.t
  store float 0.000000e+00, ptr %.0231254.i, align 4, !tbaa !21
  br label %bb.w

bb.v:                                             ; preds = %bb.u, %.preheader251._crit_edge.i
  %i.lc = phi float [ %.pre287.i, %.preheader251._crit_edge.i ], [ %i.kz, %bb.u ]
  %i.ld = load <4 x i32>, ptr %4, align 4, !tbaa !24 ; 3 uses
  %i.le = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ld to <4 x float> ; 2 uses
  %i.lf = shufflevector <4 x float> %i.le, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.lg = fadd reassoc nsz arcp contract afn <2 x float> %i.lf, splat (float -1.000000e+00)
  %i.lh = insertelement <2 x float> poison, float %.pre286.i, i64 0
  %i.li = insertelement <2 x float> %i.lh, float %i.lc, i64 1
  %i.lj = shufflevector <4 x float> %i.le, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.lk = fsub reassoc nsz arcp contract afn <2 x float> %i.li, %i.lj
  %i.ll = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.lk, <2 x float> %i.lg)
  %i.lm = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ll, <2 x float> zeroinitializer) ; 2 uses
  %i.ln = extractelement <4 x i32> %i.ld, i64 2
  %i.lo = extractelement <4 x i32> %i.ld, i64 3
  %i.lp = extractelement <2 x float> %i.lm, i64 0
  %i.lq = extractelement <2 x float> %i.lm, i64 1
  %i.lr = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.jh, ptr noundef %.0, float noundef %i.lp, float noundef %i.lq, i32 noundef %i.ln, i32 noundef %i.lo, i32 noundef %i.hk, i32 noundef %i.hn)
  store float %i.lr, ptr %.0231254.i, align 4, !tbaa !21
  %.pre288.i = load i32, ptr %i.jy, align 4, !tbaa !128
  %i.ls = icmp eq i32 %.pre288.i, 0
  br i1 %i.ls, label %._crit_edge289.i, label %bb.w

._crit_edge289.i:                                 ; preds = %bb.v
  %.phi.trans.insert290.i = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 8
  br label %bb.y

bb.w:                                             ; preds = %bb.v, %.thread.i
  %i.lt = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 8 ; 2 uses
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !21
  %i.lv = call float @llvm.fabs.f32(float %i.lu)
  %i.lw = fcmp ueq float %i.lv, +inf
  br i1 %i.lw, label %.thread342.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.lx = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 12
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !21
  %i.lz = call float @llvm.fabs.f32(float %i.ly)
  %i.ma = fcmp ueq float %i.lz, +inf
  br i1 %i.ma, label %.thread342.i, label %bb.y

.thread342.i:                                     ; preds = %bb.x, %bb.w
  %i.mb = getelementptr inbounds nuw i8, ptr %.0231254.i, i64 4
  store float 0.000000e+00, ptr %i.mb, align 4, !tbaa !21
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %._crit_edge289.i
  %.in259 = phi ptr [ %.phi.trans.insert290.i, %._crit_edge289.i ], [ %i.lt, %bb.x ]
  %i.mc = load <2 x float>, ptr %.in259, align 4, !tbaa !21
  %i.md = load <4 x i32>, ptr %4, align 4, !tbaa !24 ; 3 uses
  %i.me = sitofp reassoc nsz arcp contract afn <4 x i32> %i.md to <4 x float> ; 2 uses
  %i.mf = shufflevector <4 x float> %i.me, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.mg = fsub reassoc nsz arcp contract afn <2 x float> %i.mc, %i.mf
  %i.mh = shufflevector <4 x float> %i.me, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.mi = fadd reassoc nsz arcp contract afn <2 x float> %i.mh, splat (float -1.000000e+00)
  %i.mj = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.mg, <2 x float> %i.mi)
  %i.mk = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.mj, <2 x float> zeroinitializer) ; 2 uses
  %i.ml = extractelement <4 x i32> %i.md, i64 2
  %i.mm = extractelement <4 x i32> %i.md, i64 3
  %i.mn = extractelement <2 x float> %i.mk, i64 0
  %i.mo = extractelement <2 x float> %i.mk, i64 1
  %i.mp = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.jh, ptr noundef nonnull %i.kb, float noundef %i.mn, float noundef %i.mo, i32 noundef %i.ml, i32 noundef %i.mm, i32 noundef %i.hk, i32 noundef %i.hn)
  %i.mq = getelementptr inbounds nuw i8, ptr %.0231254.i, i64 4
  store float %i.mp, ptr %i.mq, align 4, !tbaa !21
  %.pre295.i = load i32, ptr %i.jy, align 4, !tbaa !128
  %i.mr = icmp eq i32 %.pre295.i, 0
  br i1 %i.mr, label %._crit_edge296.i, label %bb.z

._crit_edge296.i:                                 ; preds = %bb.y
  %.phi.trans.insert297.i = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 16
  br label %bb.ab

bb.z:                                             ; preds = %bb.y, %.thread342.i
  %i.ms = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 16 ; 2 uses
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !21
  %i.mu = call float @llvm.fabs.f32(float %i.mt)
  %i.mv = fcmp ueq float %i.mu, +inf
  br i1 %i.mv, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mw = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 20
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !21
  %i.my = call float @llvm.fabs.f32(float %i.mx)
  %i.mz = fcmp ueq float %i.my, +inf
  br i1 %i.mz, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge296.i
  %.in260 = phi ptr [ %.phi.trans.insert297.i, %._crit_edge296.i ], [ %i.ms, %bb.aa ]
  %i.na = load <2 x float>, ptr %.in260, align 4, !tbaa !21
  %i.nb = load <4 x i32>, ptr %4, align 4, !tbaa !24 ; 3 uses
  %i.nc = sitofp reassoc nsz arcp contract afn <4 x i32> %i.nb to <4 x float> ; 2 uses
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ne = fsub reassoc nsz arcp contract afn <2 x float> %i.na, %i.nd
  %i.nf = shufflevector <4 x float> %i.nc, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ng = fadd reassoc nsz arcp contract afn <2 x float> %i.nf, splat (float -1.000000e+00)
  %i.nh = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ne, <2 x float> %i.ng)
  %i.ni = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.nh, <2 x float> zeroinitializer) ; 2 uses
  %i.nj = extractelement <4 x i32> %i.nb, i64 2
  %i.nk = extractelement <4 x i32> %i.nb, i64 3
  %i.nl = extractelement <2 x float> %i.ni, i64 0
  %i.nm = extractelement <2 x float> %i.ni, i64 1
  %i.nn = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.jh, ptr noundef nonnull %i.kc, float noundef %i.nl, float noundef %i.nm, i32 noundef %i.nj, i32 noundef %i.nk, i32 noundef %i.hk, i32 noundef %i.hn)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.sink.i = phi float [ %i.nn, %bb.ab ], [ 0.000000e+00, %bb.aa ], [ 0.000000e+00, %bb.z ]
  %i.no = getelementptr inbounds nuw i8, ptr %.0231254.i, i64 8
  store float %.sink.i, ptr %i.no, align 4, !tbaa !21
  br i1 %.not245.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.np = load i32, ptr %i.jy, align 4, !tbaa !128
  %.not246.i = icmp eq i32 %i.np, 0
  %.phi.trans.insert303.i = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 8
  %.pre304.i = load float, ptr %.phi.trans.insert303.i, align 4, !tbaa !21 ; 2 uses
  br i1 %.not246.i, label %._crit_edge302.i, label %bb.ae

._crit_edge302.i:                                 ; preds = %bb.ad
  %.phi.trans.insert305.i = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 12
  %.pre306.i = load float, ptr %.phi.trans.insert305.i, align 4, !tbaa !21
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.nq = call float @llvm.fabs.f32(float %.pre304.i)
  %i.nr = fcmp ueq float %i.nq, +inf
  br i1 %i.nr, label %.sink.split.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ns = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 12
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !21 ; 2 uses
  %i.nu = call float @llvm.fabs.f32(float %i.nt)
  %i.nv = fcmp ueq float %i.nu, +inf
  br i1 %i.nv, label %.sink.split.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge302.i
  %i.nw = phi float [ %.pre306.i, %._crit_edge302.i ], [ %i.nt, %bb.af ]
  %i.nx = load <4 x i32>, ptr %4, align 4, !tbaa !24 ; 3 uses
  %i.ny = sitofp reassoc nsz arcp contract afn <4 x i32> %i.nx to <4 x float> ; 2 uses
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.oa = fadd reassoc nsz arcp contract afn <2 x float> %i.nz, splat (float -1.000000e+00)
  %i.ob = insertelement <2 x float> poison, float %.pre304.i, i64 0
  %i.oc = insertelement <2 x float> %i.ob, float %i.nw, i64 1
  %i.od = shufflevector <4 x float> %i.ny, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.oe = fsub reassoc nsz arcp contract afn <2 x float> %i.oc, %i.od
  %i.of = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.oe, <2 x float> %i.oa)
  %i.og = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.of, <2 x float> zeroinitializer) ; 2 uses
  %i.oh = extractelement <4 x i32> %i.nx, i64 2
  %i.oi = extractelement <4 x i32> %i.nx, i64 3
  %i.oj = extractelement <2 x float> %i.og, i64 0
  %i.ok = extractelement <2 x float> %i.og, i64 1
  %i.ol = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.jh, ptr noundef nonnull %i.ka, float noundef %i.oj, float noundef %i.ok, i32 noundef %i.oh, i32 noundef %i.oi, i32 noundef %i.hk, i32 noundef %i.hn)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ag, %bb.af, %bb.ae
  %.sink350.i = phi float [ %i.ol, %bb.ag ], [ 0.000000e+00, %bb.af ], [ 0.000000e+00, %bb.ae ]
  %i.om = getelementptr inbounds nuw i8, ptr %.0231254.i, i64 12
  store float %.sink350.i, ptr %i.om, align 4, !tbaa !21
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split.i, %bb.ac
  %i.on = add nuw nsw i32 %.0230255.i, 1          ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.0232253.i, i64 24
  %i.op = getelementptr inbounds [4 x i8], ptr %.0231254.i, i64 %i.jx
  %i.oq = load i32, ptr %i.jm, align 4, !tbaa !106 ; 2 uses
  %i.or = icmp slt i32 %i.on, %i.oq
  br i1 %i.or, label %.preheader251.i, label %._crit_edge.i53, !llvm.loop !331

bb.ai:                                            ; preds = %bb.q
  %i.os = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !107
  %i.ou = sext i32 %i.ot to i64
  %i.ov = sext i32 %i.hk to i64
  %i.ow = mul nsw i64 %i.jo, %i.ov
  %i.ox = mul i64 %i.ow, %i.ou
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %.0, i64 noundef %i.ox)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge258.i
  %i.oy = and i32 %i.jk, 2
  %.not244.i = icmp eq i32 %i.oy, 0
  %or.cond.i = or i1 %i.ip, %.not244.i
  br i1 %or.cond.i, label %.loopexit250.i, label %.preheader249.i

.preheader249.i:                                  ; preds = %bb.aj
  %i.oz = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !107
  %i.pb = icmp sgt i32 %i.pa, 0
  br i1 %i.pb, label %.lr.ph260.i, label %.loopexit250.i

.lr.ph260.i:                                      ; preds = %.preheader249.i
  %i.pc = sext i32 %i.hk to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph260.i
  %indvars.iv274.i = phi i64 [ 0, %.lr.ph260.i ], [ %indvars.iv.next275.i, %bb.ak ] ; 3 uses
  %i.pe = load i32, ptr %i.jm, align 4, !tbaa !106 ; 3 uses
  %i.pf = sext i32 %i.pe to i64
  %i.pg = mul nsw i64 %indvars.iv274.i, %i.pc
  %i.ph = mul i64 %i.pg, %i.pf
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ph
  %i.pj = load i32, ptr %5, align 4, !tbaa !112
  %i.pk = sitofp reassoc nsz arcp contract afn i32 %i.pj to float
  %i.pl = load i32, ptr %i.pd, align 4, !tbaa !113
  %i.pm = trunc nuw nsw i64 %indvars.iv274.i to i32
  %i.pn = add nsw i32 %i.pl, %i.pm
  %i.po = sitofp reassoc nsz arcp contract afn i32 %i.pn to float
  %i.pp = mul nsw i32 %i.pe, %i.hk
  %i.pq = call noundef zeroext i1 @_ZNK10lfModifier22ApplyColorModificationEPvffiiii(ptr noundef nonnull align 8 dereferenceable(96) %i.jf, ptr noundef %i.pi, float noundef %i.pk, float noundef %i.po, i32 noundef %i.pe, i32 noundef 1, i32 noundef %i.hs, i32 noundef %i.pp) ; 0 uses
  %indvars.iv.next275.i = add nuw nsw i64 %indvars.iv274.i, 1 ; 2 uses
  %i.pr = load i32, ptr %i.oz, align 4, !tbaa !107
  %i.ps = sext i32 %i.pr to i64
  %i.pt = icmp slt i64 %indvars.iv.next275.i, %i.ps
  br i1 %i.pt, label %bb.ak, label %.loopexit250.i, !llvm.loop !332

bb.al:                                            ; preds = %bb.p
  %i.pu = load i32, ptr %i.hl, align 4, !tbaa !106
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !107
  %i.py = sext i32 %i.px to i64
  %i.pz = sext i32 %i.hk to i64                   ; 4 uses
  %i.qa = shl nsw i64 %i.pz, 2
  %i.qb = mul i64 %i.qa, %i.pv
  %i.qc = mul i64 %i.qb, %i.py                    ; 3 uses
  %i.qd = call ptr @dt_alloc_aligned(i64 noundef %i.qc) ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qd, ptr align 1 %.0, i64 %i.qc, i1 false)
  %.pre307.i = load i32, ptr %i.a, align 4, !tbaa !24 ; 2 uses
  %i.qe = and i32 %.pre307.i, 2
  %.not238.i = icmp eq i32 %i.qe, 0
  %or.cond352.i = select i1 %i.ip, i1 true, i1 %.not238.i
  br i1 %or.cond352.i, label %.loopexit.i, label %.preheader248.i

.preheader248.i:                                  ; preds = %bb.al
  %i.qf = load i32, ptr %i.pw, align 4, !tbaa !107
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %.lr.ph262.i, label %.loopexit.i

.lr.ph262.i:                                      ; preds = %.preheader248.i
  %i.qh = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph262.i
  %indvars.iv277.i = phi i64 [ 0, %.lr.ph262.i ], [ %indvars.iv.next278.i, %bb.am ] ; 3 uses
  %i.qi = load i32, ptr %i.hl, align 4, !tbaa !106 ; 3 uses
  %i.qj = sext i32 %i.qi to i64
  %i.qk = mul nsw i64 %indvars.iv277.i, %i.pz
  %i.ql = mul i64 %i.qk, %i.qj
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.ql
  %i.qn = load i32, ptr %4, align 4, !tbaa !112
  %i.qo = sitofp reassoc nsz arcp contract afn i32 %i.qn to float
  %i.qp = load i32, ptr %i.qh, align 4, !tbaa !113
  %i.qq = trunc nuw nsw i64 %indvars.iv277.i to i32
  %i.qr = add nsw i32 %i.qp, %i.qq
  %i.qs = sitofp reassoc nsz arcp contract afn i32 %i.qr to float
  %i.qt = mul nsw i32 %i.qi, %i.hk
  %i.qu = call noundef zeroext i1 @_ZNK10lfModifier22ApplyColorModificationEPvffiiii(ptr noundef nonnull align 8 dereferenceable(96) %i.jf, ptr noundef %i.qm, float noundef %i.qo, float noundef %i.qs, i32 noundef %i.qi, i32 noundef 1, i32 noundef %i.hs, i32 noundef %i.qt) ; 0 uses
  %indvars.iv.next278.i = add nuw nsw i64 %indvars.iv277.i, 1 ; 2 uses
  %i.qv = load i32, ptr %i.pw, align 4, !tbaa !107
  %i.qw = sext i32 %i.qv to i64
  %i.qx = icmp slt i64 %indvars.iv.next278.i, %i.qw
  br i1 %i.qx, label %bb.am, label %.loopexit.i, !llvm.loop !333

.loopexit.i:                                      ; preds = %bb.am, %.preheader248.i, %bb.al
  %i.qy = and i32 %.pre307.i, 57
  %.not239.i = icmp eq i32 %i.qy, 0
  br i1 %.not239.i, label %bb.be, label %bb.an

bb.an:                                            ; preds = %.loopexit.i
  %i.qz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !106
  %i.rb = sext i32 %i.ra to i64
  %i.rc = mul nsw i64 %i.rb, 24
  %i.rd = add nsw i64 %i.rc, 56
  %i.re = and i64 %i.rd, -64
  %i.rf = call noundef ptr @dt_alloc_aligned(i64 noundef %i.re) ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.rf, i64 64) ]
  %i.rg = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !107
  %i.ri = icmp sgt i32 %i.rh, 0
  br i1 %i.ri, label %.lr.ph270.i, label %._crit_edge271.i

.lr.ph270.i:                                      ; preds = %bb.an
  %i.rj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.rk = getelementptr inbounds nuw i8, ptr %i.hi, i64 44 ; 4 uses
  %i.rl = and i32 %i.hq, 1
  %.not240.i = icmp eq i32 %i.rl, 0
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qd, i64 12
  %.pre308.i = load i32, ptr %i.qz, align 4, !tbaa !106
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  br label %bb.ao

._crit_edge271.i:                                 ; preds = %._crit_edge267.i, %bb.an
  call void @free(ptr noundef %i.rf) #30
  br label %bb.bf

bb.ao:                                            ; preds = %._crit_edge267.i, %.lr.ph270.i
  %i.rp = phi i32 [ %.pre308.i, %.lr.ph270.i ], [ %i.se, %._crit_edge267.i ]
  %indvars.iv283.i = phi i64 [ 0, %.lr.ph270.i ], [ %indvars.iv.next284.i, %._crit_edge267.i ] ; 3 uses
  %i.rq = load i32, ptr %5, align 4, !tbaa !112
  %i.rr = sitofp reassoc nsz arcp contract afn i32 %i.rq to float
  %i.rs = load i32, ptr %i.rj, align 4, !tbaa !113
  %i.rt = trunc nuw nsw i64 %indvars.iv283.i to i32
  %i.ru = add nsw i32 %i.rs, %i.rt
  %i.rv = sitofp reassoc nsz arcp contract afn i32 %i.ru to float
  %i.rw = call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.jf, float noundef %i.rr, float noundef %i.rv, i32 noundef %i.rp, i32 noundef 1, ptr noundef %i.rf) ; 0 uses
  %i.rx = load i32, ptr %i.qz, align 4, !tbaa !106 ; 3 uses
  %i.ry = icmp sgt i32 %i.rx, 0
  br i1 %i.ry, label %.preheader.preheader.i, label %._crit_edge267.i

.preheader.preheader.i:                           ; preds = %bb.ao
  %i.rz = mul nsw i64 %indvars.iv283.i, %i.pz
  %i.sa = zext nneg i32 %i.rx to i64
  %i.sb = mul i64 %i.rz, %i.sa
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.sb
  br label %.preheader.i55

.preheader.i55:                                   ; preds = %bb.bd, %.preheader.preheader.i
  %.0223266.i = phi i32 [ %i.vz, %bb.bd ], [ 0, %.preheader.preheader.i ]
  %.0224265.i = phi ptr [ %i.wb, %bb.bd ], [ %i.sc, %.preheader.preheader.i ] ; 7 uses
  %.0225264.i = phi ptr [ %i.wa, %bb.bd ], [ %i.rf, %.preheader.preheader.i ] ; 13 uses
  %i.sd = load i32, ptr %i.rk, align 4, !tbaa !128
  %.not242.i = icmp eq i32 %i.sd, 0
  %.pre309.i = load float, ptr %.0225264.i, align 4, !tbaa !21 ; 2 uses
  br i1 %.not242.i, label %.preheader._crit_edge.i, label %bb.ap

.preheader._crit_edge.i:                          ; preds = %.preheader.i55
  %.phi.trans.insert310.i = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 4
  %.pre311.i = load float, ptr %.phi.trans.insert310.i, align 4, !tbaa !21
  br label %bb.ar

._crit_edge267.i:                                 ; preds = %bb.bd, %bb.ao
  %i.se = phi i32 [ %i.rx, %bb.ao ], [ %i.wc, %bb.bd ]
  %indvars.iv.next284.i = add nuw nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %i.sf = load i32, ptr %i.rg, align 4, !tbaa !107
  %i.sg = sext i32 %i.sf to i64
  %i.sh = icmp slt i64 %indvars.iv.next284.i, %i.sg
  br i1 %i.sh, label %bb.ao, label %._crit_edge271.i, !llvm.loop !334

bb.ap:                                            ; preds = %.preheader.i55
  %i.si = call float @llvm.fabs.f32(float %.pre309.i)
  %i.sj = fcmp ueq float %i.si, +inf
  br i1 %i.sj, label %.thread344.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.sk = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 4
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !21 ; 2 uses
  %i.sm = call float @llvm.fabs.f32(float %i.sl)
  %i.sn = fcmp ueq float %i.sm, +inf
  br i1 %i.sn, label %.thread344.i, label %bb.ar

.thread344.i:                                     ; preds = %bb.aq, %bb.ap
  store float 0.000000e+00, ptr %.0224265.i, align 4, !tbaa !21
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq, %.preheader._crit_edge.i
  %i.so = phi float [ %.pre311.i, %.preheader._crit_edge.i ], [ %i.sl, %bb.aq ]
  %i.sp = load <4 x i32>, ptr %4, align 4, !tbaa !24 ; 3 uses
  %i.sq = sitofp reassoc nsz arcp contract afn <4 x i32> %i.sp to <4 x float> ; 2 uses
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ss = fadd reassoc nsz arcp contract afn <2 x float> %i.sr, splat (float -1.000000e+00)
  %i.st = insertelement <2 x float> poison, float %.pre309.i, i64 0
  %i.su = insertelement <2 x float> %i.st, float %i.so, i64 1
  %i.sv = shufflevector <4 x float> %i.sq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.sw = fsub reassoc nsz arcp contract afn <2 x float> %i.su, %i.sv
  %i.sx = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.sw, <2 x float> %i.ss)
  %i.sy = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.sx, <2 x float> zeroinitializer) ; 2 uses
  %i.sz = extractelement <4 x i32> %i.sp, i64 2
  %i.ta = extractelement <4 x i32> %i.sp, i64 3
  %i.tb = extractelement <2 x float> %i.sy, i64 0
  %i.tc = extractelement <2 x float> %i.sy, i64 1
  %i.td = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.jh, ptr noundef %i.qd, float noundef %i.tb, float noundef %i.tc, i32 noundef %i.sz, i32 noundef %i.ta, i32 noundef %i.hk, i32 noundef %i.hn)
  store float %i.td, ptr %.0224265.i, align 4, !tbaa !21
  %.pre312.i = load i32, ptr %i.rk, align 4, !tbaa !128
  %i.te = icmp eq i32 %.pre312.i, 0
  br i1 %i.te, label %._crit_edge313.i, label %bb.as

._crit_edge313.i:                                 ; preds = %bb.ar
  %.phi.trans.insert314.i = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 8
  br label %bb.au

bb.as:                                            ; preds = %bb.ar, %.thread344.i
  %i.tf = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 8 ; 2 uses
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !21
  %i.th = call float @llvm.fabs.f32(float %i.tg)
  %i.ti = fcmp ueq float %i.th, +inf
  br i1 %i.ti, label %.thread346.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.tj = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 12
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !21
  %i.tl = call float @llvm.fabs.f32(float %i.tk)
  %i.tm = fcmp ueq float %i.tl, +inf
  br i1 %i.tm, label %.thread346.i, label %bb.au

.thread346.i:                                     ; preds = %bb.at, %bb.as
  %i.tn = getelementptr inbounds nuw i8, ptr %.0224265.i, i64 4
  store float 0.000000e+00, ptr %i.tn, align 4, !tbaa !21
  br label %bb.av

bb.au:                                            ; preds = %bb.at, %._crit_edge313.i
  %.in261 = phi ptr [ %.phi.trans.insert314.i, %._crit_edge313.i ], [ %i.tf, %bb.at ]
  %i.to = load <2 x float>, ptr %.in261, align 4, !tbaa !21
  %i.tp = load <4 x i32>, ptr %4, align 4, !tbaa !24 ; 3 uses
  %i.tq = sitofp reassoc nsz arcp contract afn <4 x i32> %i.tp to <4 x float> ; 2 uses
  %i.tr = shufflevector <4 x float> %i.tq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ts = fsub reassoc nsz arcp contract afn <2 x float> %i.to, %i.tr
  %i.tt = shufflevector <4 x float> %i.tq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.tu = fadd reassoc nsz arcp contract afn <2 x float> %i.tt, splat (float -1.000000e+00)
  %i.tv = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ts, <2 x float> %i.tu)
  %i.tw = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.tv, <2 x float> zeroinitializer) ; 2 uses
  %i.tx = extractelement <4 x i32> %i.tp, i64 2
  %i.ty = extractelement <4 x i32> %i.tp, i64 3
  %i.tz = extractelement <2 x float> %i.tw, i64 0
  %i.ua = extractelement <2 x float> %i.tw, i64 1
  %i.ub = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.jh, ptr noundef nonnull %i.rn, float noundef %i.tz, float noundef %i.ua, i32 noundef %i.tx, i32 noundef %i.ty, i32 noundef %i.hk, i32 noundef %i.hn)
  %i.uc = getelementptr inbounds nuw i8, ptr %.0224265.i, i64 4
  store float %i.ub, ptr %i.uc, align 4, !tbaa !21
  %.pre319.i = load i32, ptr %i.rk, align 4, !tbaa !128
  %i.ud = icmp eq i32 %.pre319.i, 0
  br i1 %i.ud, label %._crit_edge320.i, label %bb.av

._crit_edge320.i:                                 ; preds = %bb.au
  %.phi.trans.insert321.i = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 16
  br label %bb.ax

bb.av:                                            ; preds = %bb.au, %.thread346.i
  %i.ue = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 16 ; 2 uses
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !21
  %i.ug = call float @llvm.fabs.f32(float %i.uf)
  %i.uh = fcmp ueq float %i.ug, +inf
  br i1 %i.uh, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ui = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 20
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !21
  %i.uk = call float @llvm.fabs.f32(float %i.uj)
  %i.ul = fcmp ueq float %i.uk, +inf
  br i1 %i.ul, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge320.i
  %.in262 = phi ptr [ %.phi.trans.insert321.i, %._crit_edge320.i ], [ %i.ue, %bb.aw ]
  %i.um = load <2 x float>, ptr %.in262, align 4, !tbaa !21
  %i.un = load <4 x i32>, ptr %4, align 4, !tbaa !24 ; 3 uses
  %i.uo = sitofp reassoc nsz arcp contract afn <4 x i32> %i.un to <4 x float> ; 2 uses
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.uq = fsub reassoc nsz arcp contract afn <2 x float> %i.um, %i.up
  %i.ur = shufflevector <4 x float> %i.uo, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.us = fadd reassoc nsz arcp contract afn <2 x float> %i.ur, splat (float -1.000000e+00)
  %i.ut = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.uq, <2 x float> %i.us)
  %i.uu = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ut, <2 x float> zeroinitializer) ; 2 uses
  %i.uv = extractelement <4 x i32> %i.un, i64 2
  %i.uw = extractelement <4 x i32> %i.un, i64 3
  %i.ux = extractelement <2 x float> %i.uu, i64 0
  %i.uy = extractelement <2 x float> %i.uu, i64 1
  %i.uz = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.jh, ptr noundef nonnull %i.ro, float noundef %i.ux, float noundef %i.uy, i32 noundef %i.uv, i32 noundef %i.uw, i32 noundef %i.hk, i32 noundef %i.hn)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.sink353.i = phi float [ %i.uz, %bb.ax ], [ 0.000000e+00, %bb.aw ], [ 0.000000e+00, %bb.av ]
  %i.va = getelementptr inbounds nuw i8, ptr %.0224265.i, i64 8
  store float %.sink353.i, ptr %i.va, align 4, !tbaa !21
  br i1 %.not240.i, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.vb = load i32, ptr %i.rk, align 4, !tbaa !128
  %.not241.i = icmp eq i32 %i.vb, 0
  %.phi.trans.insert327.i = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 8
  %.pre328.i = load float, ptr %.phi.trans.insert327.i, align 4, !tbaa !21 ; 2 uses
  br i1 %.not241.i, label %._crit_edge326.i, label %bb.ba

._crit_edge326.i:                                 ; preds = %bb.az
  %.phi.trans.insert329.i = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 12
  %.pre330.i = load float, ptr %.phi.trans.insert329.i, align 4, !tbaa !21
  br label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.vc = call float @llvm.fabs.f32(float %.pre328.i)
  %i.vd = fcmp ueq float %i.vc, +inf
  br i1 %i.vd, label %.sink.split355.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ve = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 12
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !21 ; 2 uses
  %i.vg = call float @llvm.fabs.f32(float %i.vf)
  %i.vh = fcmp ueq float %i.vg, +inf
  br i1 %i.vh, label %.sink.split355.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge326.i
  %i.vi = phi float [ %.pre330.i, %._crit_edge326.i ], [ %i.vf, %bb.bb ]
  %i.vj = load <4 x i32>, ptr %4, align 4, !tbaa !24 ; 3 uses
  %i.vk = sitofp reassoc nsz arcp contract afn <4 x i32> %i.vj to <4 x float> ; 2 uses
  %i.vl = shufflevector <4 x float> %i.vk, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.vm = fadd reassoc nsz arcp contract afn <2 x float> %i.vl, splat (float -1.000000e+00)
  %i.vn = insertelement <2 x float> poison, float %.pre328.i, i64 0
  %i.vo = insertelement <2 x float> %i.vn, float %i.vi, i64 1
  %i.vp = shufflevector <4 x float> %i.vk, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.vq = fsub reassoc nsz arcp contract afn <2 x float> %i.vo, %i.vp
  %i.vr = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.vq, <2 x float> %i.vm)
  %i.vs = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vr, <2 x float> zeroinitializer) ; 2 uses
  %i.vt = extractelement <4 x i32> %i.vj, i64 2
  %i.vu = extractelement <4 x i32> %i.vj, i64 3
  %i.vv = extractelement <2 x float> %i.vs, i64 0
  %i.vw = extractelement <2 x float> %i.vs, i64 1
  %i.vx = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.jh, ptr noundef nonnull %i.rm, float noundef %i.vv, float noundef %i.vw, i32 noundef %i.vt, i32 noundef %i.vu, i32 noundef %i.hk, i32 noundef %i.hn)
  br label %.sink.split355.i

.sink.split355.i:                                 ; preds = %bb.bc, %bb.bb, %bb.ba
  %.sink356.i = phi float [ %i.vx, %bb.bc ], [ 0.000000e+00, %bb.bb ], [ 0.000000e+00, %bb.ba ]
  %i.vy = getelementptr inbounds nuw i8, ptr %.0224265.i, i64 12
  store float %.sink356.i, ptr %i.vy, align 4, !tbaa !21
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split355.i, %bb.ay
  %i.vz = add nuw nsw i32 %.0223266.i, 1          ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.0225264.i, i64 24
  %i.wb = getelementptr inbounds [4 x i8], ptr %.0224265.i, i64 %i.pz
  %i.wc = load i32, ptr %i.qz, align 4, !tbaa !106 ; 2 uses
  %i.wd = icmp slt i32 %i.vz, %i.wc
  br i1 %i.wd, label %.preheader.i55, label %._crit_edge267.i, !llvm.loop !335

bb.be:                                            ; preds = %.loopexit.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %i.qd, i64 %i.qc, i1 false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge271.i
  call void @free(ptr noundef %i.qd) #30
  br label %.loopexit250.i

.loopexit250.i:                                   ; preds = %bb.ak, %bb.bf, %.preheader249.i, %bb.aj
  call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.jf) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef 96) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

bb.bg:                                            ; preds = %_ZL20_preprocess_vignetteP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_ti.exit
  %i.we = load ptr, ptr %i.b, align 16, !tbaa !44 ; 8 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 104 ; 6 uses
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !129
  %.not.i56 = icmp eq i32 %i.wg, 0
  br i1 %.not.i56, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 4 ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !130
  %i.wj = icmp eq i32 %i.wi, 0
  br i1 %i.wj, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %.0, i64 noundef 4, ptr noundef %4, ptr noundef %5)
  br label %_ZL11_process_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKvPvPK12dt_iop_roi_tS8_.exit

bb.bj:                                            ; preds = %bb.bh
  %i.wk = getelementptr inbounds nuw i8, ptr %i.we, i64 96
  %i.wl = load float, ptr %i.wk, align 8, !tbaa !131
  %i.wm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !111
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.wp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.wl
  %i.wq = fmul reassoc nsz arcp contract afn float %i.wn, 5.000000e-01
  %i.wr = load <2 x i32>, ptr %i.wo, align 16, !tbaa !24
  %i.ws = sitofp reassoc nsz arcp contract afn <2 x i32> %i.wr to <2 x float>
  %i.wt = insertelement <2 x float> poison, float %i.wq, i64 0
  %i.wu = shufflevector <2 x float> %i.wt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wv = fmul reassoc nsz arcp contract afn <2 x float> %i.wu, %i.ws ; 7 uses
  %i.ww = extractelement <2 x float> %i.wv, i64 0 ; 3 uses
  %i.wx = extractelement <2 x float> %i.wv, i64 1 ; 3 uses
  %i.wy = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.ww, float noundef %i.wx) #32
  %i.wz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.wy ; 3 uses
  %i.xa = tail call ptr @dt_interpolation_new(i32 noundef 3) ; 4 uses
  %i.xb = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 628
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !340
  %i.xe = icmp eq i32 %i.xd, 128                  ; 3 uses
  br i1 %i.v, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.xf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !106
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !107
  %i.xk = sext i32 %i.xj to i64
  %i.xl = mul nsw i64 %i.xk, %i.xh                ; 2 uses
  %i.xm = shl i64 %i.xl, 2
  %i.xn = shl i64 %i.xl, 4
  %i.xo = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.xn) ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.xo, i64 64) ]
  tail call void @dt_iop_image_copy(ptr noundef %i.xo, ptr noundef %.0, i64 noundef %i.xm)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0132.i = phi ptr [ %.0, %bb.bj ], [ %i.xo, %bb.bk ] ; 7 uses
  br i1 %i.xe, label %.loopexit.i57, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.xp = load i32, ptr %i.wh, align 4, !tbaa !130
  %i.xq = and i32 %i.xp, 2
  %.not140.i = icmp eq i32 %i.xq, 0
  br i1 %.not140.i, label %.loopexit.i57, label %.preheader3.i

.preheader3.i:                                    ; preds = %bb.bm
  %i.xr = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !107 ; 2 uses
  %i.xt = icmp sgt i32 %i.xs, 0
  br i1 %i.xt, label %.preheader2.lr.ph.i, label %.loopexit.i57

.preheader2.lr.ph.i:                              ; preds = %.preheader3.i
  %i.xu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !106 ; 2 uses
  %i.xw = icmp sgt i32 %i.xv, 0
  %i.xx = getelementptr inbounds nuw i8, ptr %i.we, i64 172 ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.we, i64 428 ; 5 uses
  br i1 %i.xw, label %.preheader2.lr.ph.split.i, label %.loopexit.i57

.preheader2.lr.ph.split.i:                        ; preds = %.preheader2.lr.ph.i
  %i.xz = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ya = load i32, ptr %4, align 4, !tbaa !112   ; 2 uses
  %i.yb = load i32, ptr %i.xz, align 4, !tbaa !113 ; 2 uses
  %i.yc = load i32, ptr %i.wf, align 8, !tbaa !129
  %.fr26.i = freeze i32 %i.yc                     ; 3 uses
  %i.yd = icmp sgt i32 %.fr26.i, 1
  %wide.trip.count.i.i = zext nneg i32 %.fr26.i to i64
  %i.ye = sext i32 %.fr26.i to i64
  %i.yf = getelementptr [4 x i8], ptr %i.xy, i64 %i.ye
  %i.yg = getelementptr i8, ptr %i.yf, i64 -4     ; 2 uses
  %i.yh = zext nneg i32 %i.xv to i64              ; 4 uses
  %wide.trip.count55.i = zext nneg i32 %i.xs to i64 ; 2 uses
  br i1 %i.yd, label %.preheader2.us.i, label %.preheader2.i

.preheader2.us.i:                                 ; preds = %.preheader2.lr.ph.split.i, %._crit_edge.split.us.us.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %._crit_edge.split.us.us.i ], [ 0, %.preheader2.lr.ph.split.i ] ; 3 uses
  %i.yi = mul nuw nsw i64 %indvars.iv52.i, %i.yh
  %i.yj = trunc i64 %indvars.iv52.i to i32
  %i.yk = add i32 %i.yb, %i.yj
  %i.yl = sitofp reassoc nsz arcp contract afn i32 %i.yk to float
  %i.ym = fsub reassoc nsz arcp contract afn float %i.yl, %i.wx
  br label %bb.bn

bb.bn:                                            ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i, %.preheader2.us.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i ], [ 0, %.preheader2.us.i ] ; 3 uses
  %i.yn = add nuw nsw i64 %indvars.iv47.i, %i.yi
  %i.yo = shl i64 %i.yn, 2
  %i.yp = and i64 %i.yo, 4294967292
  %i.yq = trunc i64 %indvars.iv47.i to i32
  %i.yr = add i32 %i.ya, %i.yq
  %i.ys = sitofp reassoc nsz arcp contract afn i32 %i.yr to float
  %i.yt = fsub reassoc nsz arcp contract afn float %i.ys, %i.ww
  %i.yu = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.yt, float noundef %i.ym) #32
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yu, %i.wz ; 4 uses
  %i.yw = load float, ptr %i.xx, align 4, !tbaa !21
  %i.yx = fcmp reassoc nsz arcp contract afn olt float %i.yv, %i.yw
  br i1 %i.yx, label %bb.br, label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %bb.bn, %bb.bp
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %bb.bp ], [ 1, %bb.bn ] ; 4 uses
  %i.yy = add nsw i64 %indvars.iv.i.us.us.i, -1   ; 2 uses
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.xx, i64 %i.yy
  %i.za = load float, ptr %i.yz, align 4, !tbaa !21 ; 3 uses
  %i.zb = fcmp reassoc nsz arcp contract afn ult float %i.yv, %i.za
  br i1 %i.zb, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.us.us.i
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %indvars.iv.i.us.us.i
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !21 ; 2 uses
  %i.ze = fcmp reassoc nsz arcp contract afn ugt float %i.yv, %i.zd
  br i1 %i.ze, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.i.us.us.i
end_hunk_0
begin_hunk_1_@distort_backtransform:bb.a
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.us.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %._crit_edge.i.loopexit.us.i, label %.lr.ph.i.us.i, !llvm.loop !0

bb.k:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i.us.i
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !21
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bv
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !21 ; 2 uses
  %i.cg = fsub reassoc nsz arcp contract afn float %i.cd, %i.cf
  %i.ch = fsub reassoc nsz arcp contract afn float %i.ca, %i.bx
  %i.ci = fsub reassoc nsz arcp contract afn float %i.bt, %i.bx
  %i.cj = fmul reassoc nsz arcp contract afn float %i.cg, %i.ci
  %i.ck = fdiv reassoc nsz arcp contract afn float %i.cj, %i.ch
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.cf
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i

bb.l:                                             ; preds = %.lr.ph.split.us.i
  %i.cm = load float, ptr %i.bc, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i: ; preds = %._crit_edge.i.loopexit.us.i, %bb.l, %bb.k
  %.1.i.us.i = phi nsz float [ %i.cm, %bb.l ], [ %i.ct, %._crit_edge.i.loopexit.us.i ], [ %i.cl, %bb.k ]
  %i.cn = insertelement <2 x float> poison, float %.1.i.us.i, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul reassoc nsz arcp contract afn <2 x float> %i.co, %i.bp
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, %i.av
  store <2 x float> %i.cq, ptr %i.bm, align 4, !tbaa !21
  %i.cr = add nuw i64 %.0356.us.i, 2              ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.az
  br i1 %i.cs, label %.lr.ph.split.us.i, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, !llvm.loop !358

._crit_edge.i.loopexit.us.i:                      ; preds = %bb.j
  %i.ct = load float, ptr %i.bg, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.i
  %.0356.i = phi i64 [ %i.dh, %.lr.ph.split.i ], [ 0, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0356.i ; 2 uses
  %i.cv = load <2 x float>, ptr %i.cu, align 4, !tbaa !21
  %i.cw = fsub reassoc nsz arcp contract afn <2 x float> %i.cv, %i.av
  %i.cx = fmul reassoc nsz arcp contract afn <2 x float> %i.cw, %i.bj ; 3 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  %i.cz = extractelement <2 x float> %i.cx, i64 1
  %i.da = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.cy, float noundef %i.cz) #32
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.ba
  %i.dc = fcmp reassoc nsz arcp contract afn olt float %i.db, %i.bh
  %spec.select.i = select i1 %i.dc, ptr %i.bc, ptr %i.bg
  %.1.i.i = load float, ptr %spec.select.i, align 4, !tbaa !21
  %i.dd = insertelement <2 x float> poison, float %.1.i.i, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fmul reassoc nsz arcp contract afn <2 x float> %i.de, %i.cx
  %i.dg = fadd reassoc nsz arcp contract afn <2 x float> %i.df, %i.av
  store <2 x float> %i.dg, ptr %i.cu, align 4, !tbaa !21
  %i.dh = add nuw i64 %.0356.i, 2                 ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.az
  br i1 %i.di, label %.lr.ph.split.i, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, !llvm.loop !358

_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit: ; preds = %.lr.ph.split.i, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i, %bb.h, %bb.g, %bb.f, %.loopexit.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.loopexit.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.g ], [ 1, %bb.h ], [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i ], [ 1, %.lr.ph.split.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !44  ; 10 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !114
  switch i32 %i.d, label %bb.ab [
    i32 1, label %bb.b
    i32 0, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124
  %.not76.i = icmp eq ptr %i.g, null
  br i1 %.not76.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load float, ptr %i.h, align 8, !tbaa !125
  %i.j = fcmp reassoc nsz arcp contract afn ugt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !106
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !107
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, %i.m
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.q)
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !111 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.u = load <2 x i32>, ptr %i.t, align 16, !tbaa !24
  %i.v = sitofp reassoc nsz arcp contract afn <2 x i32> %i.u to <2 x float> ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = fmul reassoc nsz arcp contract afn float %i.s, %i.w
  %i.y = extractelement <2 x float> %i.v, i64 1
  %i.z = fmul reassoc nsz arcp contract afn float %i.s, %i.y
  %i.aa = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ab = fptosi float %i.x to i32
  %i.ac = fptosi float %i.z to i32
  %i.ad = call fastcc noundef ptr @_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii(ptr noundef nonnull %i.a, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef nonnull %i.c, i32 noundef 56, i32 noundef 0) ; 3 uses
  %i.ae = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2832)) #30 ; 0 uses
  %i.af = load i32, ptr %i.a, align 4, !tbaa !24
  %i.ag = and i32 %i.af, 57
  %.not77.i = icmp eq i32 %i.ag, 0
  br i1 %.not77.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !106
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !107
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.aj
  call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.an)
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.ao = call ptr @dt_interpolation_new(i32 noundef 3) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !106
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, 24
  %i.at = add nsw i64 %i.as, 56
  %i.au = and i64 %i.at, -64
  %i.av = call noundef ptr @dt_alloc_aligned(i64 noundef %i.au) ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.av, i64 64) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !107
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph6.i, label %._crit_edge7.i

.lr.ph6.i:                                        ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %.pre.i = load i32, ptr %i.ap, align 4, !tbaa !106
  br label %bb.i

._crit_edge7.i:                                   ; preds = %._crit_edge.i, %bb.h
  call void @free(ptr noundef %i.av) #30
  br label %bb.p

bb.i:                                             ; preds = %._crit_edge.i, %.lr.ph6.i
  %i.bd = phi i32 [ %.pre.i, %.lr.ph6.i ], [ %i.bq, %._crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.be = load i32, ptr %5, align 4, !tbaa !112
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.be to float
  %i.bg = load i32, ptr %i.az, align 4, !tbaa !113
  %i.bh = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bi = add nsw i32 %i.bg, %i.bh
  %i.bj = sitofp reassoc nsz arcp contract afn i32 %i.bi to float
  %i.bk = call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.ad, float noundef %i.bf, float noundef %i.bj, i32 noundef %i.bd, i32 noundef 1, ptr noundef %i.av) ; 0 uses
  %i.bl = load i32, ptr %i.ap, align 4, !tbaa !106 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = mul nuw nsw i64 %indvars.iv.i, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bo
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.o, %bb.i
  %i.bq = phi i32 [ %i.bl, %bb.i ], [ %i.cw, %bb.o ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = load i32, ptr %i.aw, align 4, !tbaa !107
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp slt i64 %indvars.iv.next.i, %i.bs
  br i1 %i.bt, label %bb.i, label %._crit_edge7.i, !llvm.loop !360

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %.03.i = phi i32 [ %i.ct, %bb.o ], [ 0, %.lr.ph.preheader.i ]
  %.0712.i = phi ptr [ %i.cv, %bb.o ], [ %i.bp, %.lr.ph.preheader.i ] ; 2 uses
  %.0721.i = phi ptr [ %i.cu, %bb.o ], [ %i.av, %.lr.ph.preheader.i ] ; 4 uses
  %i.bu = load i32, ptr %i.ba, align 4, !tbaa !128
  %.not78.i = icmp eq i32 %i.bu, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0721.i, i64 8
  %.pre9.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !21 ; 2 uses
  br i1 %.not78.i, label %.lr.ph._crit_edge.i, label %bb.j

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i
  %.phi.trans.insert10.i = getelementptr inbounds nuw i8, ptr %.0721.i, i64 12
  %.pre11.i = load float, ptr %.phi.trans.insert10.i, align 4, !tbaa !21
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.i
  %i.bv = call float @llvm.fabs.f32(float %.pre9.i)
  %i.bw = fcmp ueq float %i.bv, +inf
  br i1 %i.bw, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.0721.i, i64 12
  %i.by = load float, ptr %i.bx, align 4, !tbaa !21 ; 2 uses
  %i.bz = call float @llvm.fabs.f32(float %i.by)
  %i.ca = fcmp ueq float %i.bz, +inf
  br i1 %i.ca, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph._crit_edge.i
  %i.cb = phi float [ %.pre11.i, %.lr.ph._crit_edge.i ], [ %i.by, %bb.k ]
  %i.cc = load <2 x i32>, ptr %4, align 4, !tbaa !24
  %i.cd = sitofp reassoc nsz arcp contract afn <2 x i32> %i.cc to <2 x float> ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = fsub reassoc nsz arcp contract afn float %.pre9.i, %i.ce ; 3 uses
  %i.cg = extractelement <2 x float> %i.cd, i64 1
  %i.ch = fsub reassoc nsz arcp contract afn float %i.cb, %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.bb, align 4, !tbaa !106 ; 2 uses
  %i.cj = load i32, ptr %i.bc, align 4, !tbaa !107
  %i.ck = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef 1, i32 noundef %i.ci)
  %i.cl = fcmp reassoc nsz arcp contract afn ult float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = load i32, ptr %i.bb, align 4, !tbaa !106 ; 2 uses
  %i.cn = load i32, ptr %i.bc, align 4, !tbaa !107
  %i.co = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.cm, i32 noundef %i.cn, i32 noundef 1, i32 noundef %i.cm)
  %i.cp = fcmp reassoc nsz arcp contract afn ugt float %i.co, 1.000000e+00
  br i1 %i.cp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = load i32, ptr %i.bb, align 4, !tbaa !106 ; 2 uses
  %i.cr = load i32, ptr %i.bc, align 4, !tbaa !107
  %i.cs = call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ao, ptr noundef %2, float noundef %i.cf, float noundef %i.ch, i32 noundef %i.cq, i32 noundef %i.cr, i32 noundef 1, i32 noundef %i.cq)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %storemerge.i = phi float [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ], [ 1.000000e+00, %bb.m ], [ %i.cs, %bb.n ], [ 0.000000e+00, %bb.l ]
  store float %storemerge.i, ptr %.0712.i, align 4, !tbaa !21
  %i.ct = add nuw nsw i32 %.03.i, 1               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0721.i, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %.0712.i, i64 4
  %i.cw = load i32, ptr %i.ap, align 4, !tbaa !106 ; 2 uses
  %i.cx = icmp slt i32 %i.ct, %i.cw
  br i1 %i.cx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !361

bb.p:                                             ; preds = %._crit_edge7.i, %bb.g
  call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.ad) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 96) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

bb.q:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !129
  %.not.i19 = icmp eq i32 %i.cz, 0
  br i1 %.not.i19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !130
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !106
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !107
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul nsw i64 %i.di, %i.df
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.dj)
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

bb.t:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !131
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !111
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.dp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dl
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dn, 5.000000e-01
  %i.dr = load <2 x i32>, ptr %i.do, align 16, !tbaa !24
  %i.ds = sitofp reassoc nsz arcp contract afn <2 x i32> %i.dr to <2 x float>
  %i.dt = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul reassoc nsz arcp contract afn <2 x float> %i.du, %i.ds ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !106
  %i.dy = add nsw i32 %i.dx, -1
  %i.dz = sitofp reassoc nsz arcp contract afn i32 %i.dy to float ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !107
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = sitofp reassoc nsz arcp contract afn i32 %i.ec to float ; 2 uses
  %i.ee = tail call ptr @dt_interpolation_new(i32 noundef 3) ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !107 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.preheader.lr.ph.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

.preheader.lr.ph.i:                               ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 300 ; 4 uses
  %i.el = load i32, ptr %i.ei, align 4, !tbaa !106 ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.preheader.preheader.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.en = extractelement <2 x float> %i.dv, i64 0
  %i.eo = extractelement <2 x float> %i.dv, i64 1
  %i.ep = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.en, float noundef %i.eo) #32
  %i.eq = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ep
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i20, %.preheader.preheader.i
  %i.et = phi i32 [ %i.ex, %._crit_edge.i20 ], [ %i.eg, %.preheader.preheader.i ]
  %i.eu = phi i32 [ %i.ey, %._crit_edge.i20 ], [ %i.el, %.preheader.preheader.i ] ; 2 uses
  %.0888.i = phi i32 [ %i.ez, %._crit_edge.i20 ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.i21.preheader, label %._crit_edge.i20

.lr.ph.i21.preheader:                             ; preds = %.preheader.i
  %i.ew = insertelement <2 x i32> poison, i32 %.0888.i, i64 1
  br label %.lr.ph.i21

._crit_edge.loopexit.i:                           ; preds = %bb.aa
  %.pre.i22 = load i32, ptr %i.ef, align 4, !tbaa !107
  br label %._crit_edge.i20

._crit_edge.i20:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ex = phi i32 [ %.pre.i22, %._crit_edge.loopexit.i ], [ %i.et, %.preheader.i ] ; 2 uses
  %i.ey = phi i32 [ %i.ho, %._crit_edge.loopexit.i ], [ %i.eu, %.preheader.i ]
  %i.ez = add nuw nsw i32 %.0888.i, 1             ; 2 uses
  %i.fa = icmp slt i32 %i.ez, %i.ex
  br i1 %i.fa, label %.preheader.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit, !llvm.loop !362

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %bb.aa
  %.07.i = phi i32 [ %i.ht, %bb.aa ], [ 0, %.lr.ph.i21.preheader ] ; 3 uses
  %i.fb = load <2 x i32>, ptr %5, align 4, !tbaa !24
  %i.fc = insertelement <2 x i32> %i.ew, i32 %.07.i, i64 0
  %i.fd = add nsw <2 x i32> %i.fb, %i.fc
  %i.fe = sitofp reassoc nsz arcp contract afn <2 x i32> %i.fd to <2 x float>
  %i.ff = fsub reassoc nsz arcp contract afn <2 x float> %i.fe, %i.dv
  %i.fg = fmul reassoc nsz arcp contract afn <2 x float> %i.ff, %i.er ; 3 uses
  %i.fh = load i32, ptr %i.cy, align 8, !tbaa !129 ; 3 uses
  %i.fi = extractelement <2 x float> %i.fg, i64 0
  %i.fj = extractelement <2 x float> %i.fg, i64 1
  %i.fk = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.fi, float noundef %i.fj) #32
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, %i.es ; 4 uses
  %i.fm = load float, ptr %i.ej, align 4, !tbaa !21
  %i.fn = fcmp reassoc nsz arcp contract afn olt float %i.fl, %i.fm
  br i1 %i.fn, label %bb.u, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i21
  %i.fo = icmp sgt i32 %i.fh, 1
  br i1 %i.fo, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.fh to i64
  br label %.lr.ph.i.i

bb.u:                                             ; preds = %.lr.ph.i21
  %i.fp = load float, ptr %i.ek, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.w ] ; 4 uses
  %i.fq = add nsw i64 %indvars.iv.i.i, -1         ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !21 ; 3 uses
  %i.ft = fcmp reassoc nsz arcp contract afn ult float %i.fl, %i.fs
  br i1 %i.ft, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !21 ; 2 uses
  %i.fw = fcmp reassoc nsz arcp contract afn ugt float %i.fl, %i.fv
  br i1 %i.fw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

bb.x:                                             ; preds = %bb.v
end_hunk_1
