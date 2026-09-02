Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/print_settings?download=true
inline.NumInlined: 118
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@gui_post_expose:bb.a
  %i.gw = icmp eq i64 %indvars.iv, %i.gv
  br i1 %i.gw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 1.000000e+00) #18
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.gy = load <4 x float>, ptr %i.gx, align 8, !tbaa !33
  %i.gz = fpext <4 x float> %i.gy to <4 x double> ; 4 uses
  %i.ha = extractelement <4 x double> %i.gz, i64 0
  %i.hb = extractelement <4 x double> %i.gz, i64 1
  %i.hc = extractelement <4 x double> %i.gz, i64 2
  %i.hd = extractelement <4 x double> %i.gz, i64 3
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.ha, double noundef %i.hb, double noundef %i.hc, double noundef %i.hd) #18
  call void @cairo_fill(ptr noundef %1) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.he = load i32, ptr %i.dk, align 8, !tbaa !98
  %i.hf = sext i32 %i.he to i64
  %i.hg = icmp slt i64 %indvars.iv.next, %i.hf
  br i1 %i.hg, label %bb.h, label %._crit_edge579

bb.ab:                                            ; preds = %._crit_edge579
  %i.hh = getelementptr inbounds nuw i8, ptr %i.g, i64 3420
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !106
  %.not514 = icmp eq i32 %i.hi, -1
  br i1 %.not514, label %bb.av, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge579
  %i.hj = getelementptr inbounds nuw i8, ptr %i.g, i64 336 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.g, i64 768
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.hl, 0                  ; 4 uses
  %..i = select i1 %.not.i, i64 728, i64 736
  %.11.i = select i1 %.not.i, i64 736, i64 728
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 %..i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.11.i
  %.sink.in.i = load double, ptr %i.hm, align 8, !tbaa !31
  %storemerge.in.i = load double, ptr %i.hn, align 8, !tbaa !31
  %i.ho = insertelement <2 x double> poison, double %.sink.in.i, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %storemerge.in.i, i64 1
  %i.hq = fptrunc <2 x double> %i.hp to <2 x float> ; 3 uses
  br i1 %.not513, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hr = getelementptr inbounds nuw i8, ptr %i.g, i64 3404
  %i.hs = select i1 %.not.i, i64 1064, i64 1072
  %i.ht = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.hs
  %.sink.in.i.i532 = load double, ptr %i.ht, align 8, !tbaa !31
  %i.hu = getelementptr inbounds nuw i8, ptr %i.g, i64 3296
  %i.hv = getelementptr inbounds nuw i8, ptr %i.g, i64 3304
  %i.hw = load i32, ptr %i.o, align 8, !tbaa !32
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !33
  %i.ia = select i1 %.not.i, i64 1072, i64 1064
  %i.ib = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ia
  %storemerge.in.i.i535 = load double, ptr %i.ib, align 8, !tbaa !31
  %i.ic = load <4 x float>, ptr %i.hr, align 4, !tbaa !33 ; 2 uses
  %i.id = insertelement <2 x double> poison, double %.sink.in.i.i532, i64 0
  %i.ie = insertelement <2 x double> %i.id, double %storemerge.in.i.i535, i64 1
  %i.if = fptrunc <2 x double> %i.ie to <2 x float>
  %i.ig = load <2 x float>, ptr %i.hu, align 8, !tbaa !33
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ii = load <2 x float>, ptr %i.hv, align 8, !tbaa !33
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ik = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <4 x i32> zeroinitializer
  %i.im = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.in = fmul reassoc nsz arcp contract afn <4 x float> %i.il, %i.im
  %i.io = fsub reassoc nsz arcp contract afn <4 x float> %i.ic, %i.ih
  %i.ip = fmul reassoc nsz arcp contract afn <4 x float> %i.in, %i.io
  %i.iq = fdiv reassoc nsz arcp contract afn <4 x float> %i.ip, %i.ij ; 3 uses
  %i.ir = shufflevector <4 x float> %i.iq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.is = shufflevector <4 x float> %i.iq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.it = fsub reassoc nsz arcp contract afn <2 x float> %i.ir, %i.is
  %i.iu = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.it)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.iv = getelementptr inbounds nuw i8, ptr %i.g, i64 1360
  %i.iw = getelementptr inbounds nuw i8, ptr %i.g, i64 3420
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !106
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [96 x i8], ptr %i.iv, i64 %i.iy ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %.val526 = load i32, ptr %i.o, align 8, !tbaa !32
  %i.jb = zext i32 %.val526 to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.jb
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !33
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 48
  %i.jf = load <2 x float>, ptr %i.ja, align 8, !tbaa !33
  %i.jg = insertelement <2 x float> poison, float %i.jd, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = fmul reassoc nsz arcp contract afn <2 x float> %i.jh, %i.hq ; 2 uses
  %i.jj = fmul reassoc nsz arcp contract afn <2 x float> %i.ji, %i.jf ; 2 uses
  %i.jk = load <2 x float>, ptr %i.je, align 8, !tbaa !33
  %i.jl = fmul reassoc nsz arcp contract afn <2 x float> %i.ji, %i.jk ; 2 uses
  %i.jm = fadd reassoc nsz arcp contract afn <2 x float> %i.jl, %i.jj
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iz, i64 56
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iz, i64 64
  %i.jp = load <2 x float>, ptr %i.jn, align 8, !tbaa !33 ; 2 uses
  %i.jq = load <2 x float>, ptr %i.jo, align 8, !tbaa !33
  %i.jr = fadd reassoc nsz arcp contract afn <2 x float> %i.jq, %i.jp
  %i.js = shufflevector <2 x float> %i.jj, <2 x float> %i.jm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jt = shufflevector <2 x float> %i.jp, <2 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ju = phi <4 x float> [ %i.iq, %bb.ad ], [ %i.js, %bb.ae ] ; 4 uses
  %i.jv = phi <4 x float> [ %i.ic, %bb.ad ], [ %i.jt, %bb.ae ] ; 6 uses
  %i.jw = phi <2 x float> [ %i.iu, %bb.ad ], [ %i.jl, %bb.ae ]
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 4.000000e-01, double noundef 4.000000e-01, double noundef 4.000000e-01, double noundef 1.000000e+00) #18
  %i.jx = getelementptr inbounds nuw i8, ptr %i.g, i64 3428
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !109
  %i.jz = extractelement <4 x float> %i.jv, i64 0 ; 6 uses
  %i.ka = fptosi float %i.jz to i32
  %i.kb = extractelement <4 x float> %i.jv, i64 1 ; 5 uses
  %i.kc = fptosi float %i.kb to i32
  %i.kd = extractelement <4 x float> %i.jv, i64 2 ; 8 uses
  %i.ke = fptosi float %i.kd to i32
  %i.kf = extractelement <4 x float> %i.jv, i64 3 ; 8 uses
  %i.kg = fptosi float %i.kf to i32
  call void @_cairo_rectangle(ptr noundef %1, i32 noundef %i.jy, i32 noundef %i.ka, i32 noundef %i.kc, i32 noundef %i.ke, i32 noundef %i.kg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !207
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 336
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !217
  %i.kk = call ptr @pango_font_description_copy_static(ptr noundef %i.kj) #18 ; 4 uses
  call void @pango_font_description_set_weight(ptr noundef %i.kk, i32 noundef 700) #18
  %i.kl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1432
  %i.kn = load double, ptr %i.km, align 8, !tbaa !125
  %i.ko = fmul reassoc nsz arcp contract afn double %i.kn, 1.638400e+04
  call void @pango_font_description_set_absolute_size(ptr noundef %i.kk, double noundef %i.ko) #18
  %i.kp = call ptr @pango_cairo_create_layout(ptr noundef %1) #18 ; 23 uses
  call void @pango_layout_set_font_description(ptr noundef %i.kp, ptr noundef %i.kk) #18
  %i.kq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !74
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1432
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !125 ; 25 uses
  %i.kt = fmul reassoc nsz arcp contract afn double %i.ks, 1.800000e+01 ; 8 uses
  %i.ku = fmul reassoc nsz arcp contract afn double %i.ks, 6.000000e+00 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.kv = fmul reassoc nsz arcp contract afn double %i.ks, 4.000000e+00
  store double %i.kv, ptr %i.e, align 8, !tbaa !31
  %i.kw = load i32, ptr %i.o, align 8, !tbaa !32
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.kx
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !33
  %i.la = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kz
  %i.lb = call reassoc nsz arcp contract afn float @llvm.log10.f32(float %i.la)
  %i.lc = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.lb)
  %i.ld = fptosi float %i.lc to i32
  %i.le = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.107, i32 noundef %i.ld) #18 ; 7 uses
  %i.lf = fpext reassoc nsz arcp contract afn float %i.kb to double ; 7 uses
  %i.lg = fsub reassoc nsz arcp contract afn float %i.kf, %i.kb
  %i.lh = fpext reassoc nsz arcp contract afn float %i.lg to double
  %i.li = fsub reassoc nsz arcp contract afn double %i.lh, %i.kt
  %i.lj = fmul reassoc nsz arcp contract afn double %i.li, 5.000000e-01
  %i.lk = fadd reassoc nsz arcp contract afn double %i.lj, %i.lf ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.g, i64 3296 ; 6 uses
  %i.lm = load float, ptr %i.ll, align 8, !tbaa !100 ; 4 uses
  %i.ln = fcmp reassoc nsz arcp contract afn ult float %i.jz, %i.lm
  br i1 %i.ln, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lo = getelementptr inbounds nuw i8, ptr %i.g, i64 3304
  %i.lp = load float, ptr %i.lo, align 8, !tbaa !102
  %i.lq = fadd reassoc nsz arcp contract afn float %i.lp, %i.lm
  %i.lr = fcmp reassoc nsz arcp contract afn ugt float %i.jz, %i.lq
  br i1 %i.lr, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ls = extractelement <4 x float> %i.ju, i64 0
  %i.lt = fpext reassoc nsz arcp contract afn float %i.ls to double
  %i.lu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.lt) #18 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #18
  %i.lv = load float, ptr %i.ll, align 8, !tbaa !100
  %i.lw = fpext reassoc nsz arcp contract afn float %i.lv to double ; 2 uses
  %i.lx = fpext reassoc nsz arcp contract afn float %i.jz to double ; 3 uses
  %i.ly = fadd reassoc nsz arcp contract afn double %i.kt, %i.lw ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !219
  %i.mb = sitofp reassoc nsz arcp contract afn i32 %i.ma to double ; 2 uses
  %i.mc = fadd reassoc nsz arcp contract afn double %i.ly, %i.mb
  %i.md = fsub reassoc nsz arcp contract afn double %i.lx, %i.mc
  %i.me = fmul reassoc nsz arcp contract afn double %i.md, 5.000000e-01
  %i.mf = fadd reassoc nsz arcp contract afn double %i.me, %i.lw ; 2 uses
  %i.mg = fcmp reassoc nsz arcp contract afn olt double %i.mf, %i.ly
  %i.mh = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  br i1 %i.mg, label %bb.ai, label %._crit_edge583

bb.ai:                                            ; preds = %bb.ah
  %i.mi = fadd reassoc nsz arcp contract afn double %i.mh, %i.lx
  %i.mj = fpext reassoc nsz arcp contract afn float %i.kf to double
  %i.mk = fsub reassoc nsz arcp contract afn double %i.mj, %i.kt ; 2 uses
  %i.ml = fmul reassoc nsz arcp contract afn double %i.ks, 2.700000e+01
  %i.mm = fadd reassoc nsz arcp contract afn double %i.ml, %i.lk
  %i.mn = fadd reassoc nsz arcp contract afn double %i.mm, %i.mb ; 2 uses
  %i.mo = fcmp reassoc nsz arcp contract afn olt double %i.mk, %i.mn
  %. = select reassoc nsz arcp contract afn i1 %i.mo, double %i.mk, double %i.mn
  br label %._crit_edge583

._crit_edge583:                                   ; preds = %bb.ah, %bb.ai
  %.0477 = phi nsz double [ %i.mi, %bb.ai ], [ %i.mf, %bb.ah ] ; 2 uses
  %.0 = phi nsz double [ %., %bb.ai ], [ %i.lk, %bb.ah ] ; 4 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #18
  %i.mp = load float, ptr %i.ll, align 8, !tbaa !100
  %i.mq = fpext reassoc nsz arcp contract afn float %i.mp to double
  %i.mr = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %i.ms = fadd reassoc nsz arcp contract afn double %.0, %i.mr ; 2 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.mq, double noundef %i.ms) #18
  call void @cairo_line_to(ptr noundef %1, double noundef %i.lx, double noundef %i.ms) #18
  call void @cairo_stroke_preserve(ptr noundef %1) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.mt = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.mt) #18
  call void @cairo_stroke(ptr noundef %1) #18
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #18
  %i.mu = load i32, ptr %i.lz, align 4, !tbaa !219
  %i.mv = sitofp reassoc nsz arcp contract afn i32 %i.mu to double
  %i.mw = fadd reassoc nsz arcp contract afn double %i.mh, %i.mv
  %i.mx = fptrunc reassoc nsz arcp contract afn double %i.mw to float
  %i.my = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.mz = fptrunc reassoc nsz arcp contract afn double %i.my to float
  %i.na = fsub reassoc nsz arcp contract afn double %.0477, %i.ku
  %i.nb = fptrunc reassoc nsz arcp contract afn double %i.na to float
  %i.nc = fsub reassoc nsz arcp contract afn double %.0, %i.ku
  %i.nd = fptrunc reassoc nsz arcp contract afn double %i.nc to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.mx, float noundef %i.mz, float noundef %i.nb, float noundef %i.nd) #18
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  call void @cairo_move_to(ptr noundef %1, double noundef %.0477, double noundef %.0) #18
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #18
  %.pre581 = load float, ptr %i.ll, align 8, !tbaa !100
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge583, %bb.ag, %bb.af
  %i.ne = phi float [ %.pre581, %._crit_edge583 ], [ %i.lm, %bb.ag ], [ %i.lm, %bb.af ] ; 2 uses
  %.1 = phi nsz double [ %.0, %._crit_edge583 ], [ %i.lk, %bb.ag ], [ %i.lk, %bb.af ] ; 3 uses
  %i.nf = fcmp reassoc nsz arcp contract afn ult float %i.kd, %i.ne
  br i1 %i.nf, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ng = getelementptr inbounds nuw i8, ptr %i.g, i64 3304 ; 3 uses
  %i.nh = load float, ptr %i.ng, align 8, !tbaa !102
  %i.ni = fadd reassoc nsz arcp contract afn float %i.nh, %i.ne
  %i.nj = fcmp reassoc nsz arcp contract afn ugt float %i.kd, %i.ni
  br i1 %i.nj, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.nk = load i32, ptr %i.o, align 8, !tbaa !32
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.nl
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !33
  %i.no = extractelement <2 x float> %i.hq, i64 0
  %i.np = fmul reassoc nsz arcp contract afn float %i.nn, %i.no
  %i.nq = extractelement <4 x float> %i.ju, i64 2
  %i.nr = fsub reassoc nsz arcp contract afn float %i.np, %i.nq
  %i.ns = fpext reassoc nsz arcp contract afn float %i.nr to double
  %i.nt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.ns) #18 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #18
  %i.nu = fpext reassoc nsz arcp contract afn float %i.kd to double ; 2 uses
  %i.nv = load float, ptr %i.ll, align 8, !tbaa !100
  %i.nw = load float, ptr %i.ng, align 8, !tbaa !102
  %i.nx = fadd reassoc nsz arcp contract afn float %i.nw, %i.nv ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !219 ; 2 uses
  %i.oa = sitofp reassoc nsz arcp contract afn i32 %i.nz to float ; 2 uses
  %i.ob = fadd reassoc nsz arcp contract afn float %i.kd, %i.oa
  %i.oc = fsub reassoc nsz arcp contract afn float %i.nx, %i.ob
  %i.od = fpext reassoc nsz arcp contract afn float %i.oc to double
  %i.oe = fmul reassoc nsz arcp contract afn double %i.od, 5.000000e-01
  %i.of = fadd reassoc nsz arcp contract afn double %i.oe, %i.nu ; 2 uses
  %i.og = sitofp reassoc nsz arcp contract afn i32 %i.nz to double
  %i.oh = fadd reassoc nsz arcp contract afn double %i.ku, %i.og
  %i.oi = fadd reassoc nsz arcp contract afn double %i.oh, %i.of
  %i.oj = fpext reassoc nsz arcp contract afn float %i.nx to double
  %i.ok = fcmp reassoc nsz arcp contract afn ogt double %i.oi, %i.oj
  %i.ol = fsub reassoc nsz arcp contract afn float %i.kd, %i.oa
  %i.om = fpext reassoc nsz arcp contract afn float %i.ol to double
  %i.on = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  %i.oo = fsub reassoc nsz arcp contract afn double %i.om, %i.on
  %.1478 = select nsz i1 %i.ok, double %i.oo, double %i.of ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #18
  %i.op = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %i.oq = fadd reassoc nsz arcp contract afn double %.1, %i.op ; 2 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.nu, double noundef %i.oq) #18
  %i.or = load float, ptr %i.ll, align 8, !tbaa !100
  %i.os = load float, ptr %i.ng, align 8, !tbaa !102
  %i.ot = fadd reassoc nsz arcp contract afn float %i.os, %i.or
  %i.ou = fpext reassoc nsz arcp contract afn float %i.ot to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.ou, double noundef %i.oq) #18
  call void @cairo_stroke_preserve(ptr noundef %1) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.ov = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.ov) #18
  call void @cairo_stroke(ptr noundef %1) #18
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #18
  %i.ow = load i32, ptr %i.ny, align 4, !tbaa !219
  %i.ox = sitofp reassoc nsz arcp contract afn i32 %i.ow to double
  %i.oy = fadd reassoc nsz arcp contract afn double %i.on, %i.ox
  %i.oz = fptrunc reassoc nsz arcp contract afn double %i.oy to float
  %i.pa = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.pb = fptrunc reassoc nsz arcp contract afn double %i.pa to float
  %i.pc = fsub reassoc nsz arcp contract afn double %.1478, %i.ku
  %i.pd = fptrunc reassoc nsz arcp contract afn double %i.pc to float
  %i.pe = fsub reassoc nsz arcp contract afn double %.1, %i.ku
  %i.pf = fptrunc reassoc nsz arcp contract afn double %i.pe to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.oz, float noundef %i.pb, float noundef %i.pd, float noundef %i.pf) #18
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  call void @cairo_move_to(ptr noundef %1, double noundef %.1478, double noundef %.1) #18
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.pg = fpext reassoc nsz arcp contract afn float %i.jz to double ; 4 uses
  %i.ph = fsub reassoc nsz arcp contract afn float %i.kd, %i.jz
  %i.pi = fpext reassoc nsz arcp contract afn float %i.ph to double
  %i.pj = fsub reassoc nsz arcp contract afn double %i.pi, %i.kt
  %i.pk = fmul reassoc nsz arcp contract afn double %i.pj, 5.000000e-01
  %i.pl = fadd reassoc nsz arcp contract afn double %i.pk, %i.pg ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.g, i64 3300 ; 6 uses
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !101 ; 4 uses
  %i.po = fcmp reassoc nsz arcp contract afn ult float %i.kb, %i.pn
  br i1 %i.po, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pp = getelementptr inbounds nuw i8, ptr %i.g, i64 3308
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !103
  %i.pr = fadd reassoc nsz arcp contract afn float %i.pq, %i.pn
  %i.ps = fcmp reassoc nsz arcp contract afn ugt float %i.kb, %i.pr
  br i1 %i.ps, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pt = extractelement <4 x float> %i.ju, i64 1
  %i.pu = fpext reassoc nsz arcp contract afn float %i.pt to double
  %i.pv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.pu) #18 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #18
  %i.pw = load float, ptr %i.pm, align 4, !tbaa !101
  %i.px = fpext reassoc nsz arcp contract afn float %i.pw to double ; 2 uses
  %i.py = fadd reassoc nsz arcp contract afn double %i.kt, %i.px ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !219
  %i.qb = sitofp reassoc nsz arcp contract afn i32 %i.qa to double ; 2 uses
  %i.qc = fadd reassoc nsz arcp contract afn double %i.py, %i.qb
  %i.qd = fsub reassoc nsz arcp contract afn double %i.lf, %i.qc
  %i.qe = fmul reassoc nsz arcp contract afn double %i.qd, 5.000000e-01
  %i.qf = fadd reassoc nsz arcp contract afn double %i.qe, %i.px ; 2 uses
  %i.qg = fcmp reassoc nsz arcp contract afn olt double %i.qf, %i.py
  br i1 %i.qg, label %bb.ap, label %._crit_edge584

._crit_edge584:                                   ; preds = %bb.ao
  %.pre585 = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.qh = fpext reassoc nsz arcp contract afn float %i.kd to double
  %i.qi = fsub reassoc nsz arcp contract afn double %i.qh, %i.kt ; 2 uses
  %i.qj = fmul reassoc nsz arcp contract afn double %i.ks, 2.700000e+01
  %i.qk = fadd reassoc nsz arcp contract afn double %i.qj, %i.pl
  %i.ql = fadd reassoc nsz arcp contract afn double %i.qk, %i.qb ; 2 uses
  %i.qm = fcmp reassoc nsz arcp contract afn olt double %i.qi, %i.ql
  %.523 = select reassoc nsz arcp contract afn i1 %i.qm, double %i.qi, double %i.ql
  %i.qn = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  %i.qo = fadd reassoc nsz arcp contract afn double %i.qn, %i.lf
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge584, %bb.ap
  %.pre-phi = phi double [ %.pre585, %._crit_edge584 ], [ %i.qn, %bb.ap ]
  %.2479 = phi nsz double [ %i.pl, %._crit_edge584 ], [ %.523, %bb.ap ] ; 3 uses
  %.2 = phi nsz double [ %i.qf, %._crit_edge584 ], [ %i.qo, %bb.ap ] ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #18
  %i.qp = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %i.qq = fadd reassoc nsz arcp contract afn double %.2479, %i.qp ; 3 uses
  %i.qr = load float, ptr %i.pm, align 4, !tbaa !101
  %i.qs = fpext reassoc nsz arcp contract afn float %i.qr to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.qq, double noundef %i.qs) #18
  call void @cairo_line_to(ptr noundef %1, double noundef %i.qq, double noundef %i.lf) #18
  call void @cairo_stroke_preserve(ptr noundef %1) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.qt = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.qt) #18
  call void @cairo_stroke(ptr noundef %1) #18
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #18
  %i.qu = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.qv = fptrunc reassoc nsz arcp contract afn double %i.qu to float
  %i.qw = load i32, ptr %i.pz, align 4, !tbaa !219
  %i.qx = sitofp reassoc nsz arcp contract afn i32 %i.qw to double
  %i.qy = fadd reassoc nsz arcp contract afn double %.pre-phi, %i.qx
  %i.qz = fptrunc reassoc nsz arcp contract afn double %i.qy to float
  %i.ra = fsub reassoc nsz arcp contract afn double %.2479, %i.ku
  %i.rb = fptrunc reassoc nsz arcp contract afn double %i.ra to float
  %i.rc = fsub reassoc nsz arcp contract afn double %.2, %i.ku
  %i.rd = fptrunc reassoc nsz arcp contract afn double %i.rc to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.qv, float noundef %i.qz, float noundef %i.rb, float noundef %i.rd) #18
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  %i.re = load i32, ptr %i.pz, align 4, !tbaa !219
  %i.rf = sitofp reassoc nsz arcp contract afn i32 %i.re to double
  %i.rg = fmul reassoc nnan nsz arcp contract afn double %i.rf, 5.000000e-01
  %i.rh = fadd reassoc nsz arcp contract afn double %i.rg, %.2
  call void @cairo_move_to(ptr noundef %1, double noundef %i.qq, double noundef %i.rh) #18
  call void @cairo_save(ptr noundef %1) #18
  call void @cairo_rotate(ptr noundef %1, double noundef f0xBFF921FB54442D18) #18
  %i.ri = load i32, ptr %i.pz, align 4, !tbaa !219
  %i.rj = sitofp reassoc nsz arcp contract afn i32 %i.ri to double
  %i.rk = fmul reassoc nnan nsz arcp contract afn double %i.rj, -5.000000e-01
  %i.rl = fmul reassoc nsz arcp contract afn double %i.ks, -9.000000e+00
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.rk, double noundef %i.rl) #18
  call void @pango_cairo_update_layout(ptr noundef %1, ptr noundef %i.kp) #18
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #18
  call void @cairo_restore(ptr noundef %1) #18
  %.pre582 = load float, ptr %i.pm, align 4, !tbaa !101
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %i.rm = phi float [ %.pre582, %bb.aq ], [ %i.pn, %bb.an ], [ %i.pn, %bb.am ] ; 2 uses
  %.3480 = phi nsz double [ %.2479, %bb.aq ], [ %i.pl, %bb.an ], [ %i.pl, %bb.am ] ; 2 uses
  %i.rn = fcmp reassoc nsz arcp contract afn ult float %i.kf, %i.rm
  br i1 %i.rn, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ro = getelementptr inbounds nuw i8, ptr %i.g, i64 3308 ; 3 uses
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !103
  %i.rq = fadd reassoc nsz arcp contract afn float %i.rp, %i.rm
  %i.rr = fcmp reassoc nsz arcp contract afn ugt float %i.kf, %i.rq
  br i1 %i.rr, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.rs = load i32, ptr %i.o, align 8, !tbaa !32
  %i.rt = zext i32 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.rt
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !33
  %i.rw = extractelement <2 x float> %i.hq, i64 1
  %i.rx = fmul reassoc nsz arcp contract afn float %i.rv, %i.rw
  %i.ry = extractelement <4 x float> %i.ju, i64 3
  %i.rz = fsub reassoc nsz arcp contract afn float %i.rx, %i.ry
  %i.sa = fpext reassoc nsz arcp contract afn float %i.rz to double
  %i.sb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.sa) #18 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #18
  %i.sc = fpext reassoc nsz arcp contract afn float %i.kf to double ; 2 uses
  %i.sd = load float, ptr %i.pm, align 4, !tbaa !101
  %i.se = load float, ptr %i.ro, align 4, !tbaa !103
  %i.sf = fadd reassoc nsz arcp contract afn float %i.se, %i.sd ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !219 ; 2 uses
  %i.si = sitofp reassoc nsz arcp contract afn i32 %i.sh to float ; 2 uses
  %i.sj = fadd reassoc nsz arcp contract afn float %i.kf, %i.si
  %i.sk = fsub reassoc nsz arcp contract afn float %i.sf, %i.sj
  %i.sl = fpext reassoc nsz arcp contract afn float %i.sk to double
  %i.sm = fmul reassoc nsz arcp contract afn double %i.sl, 5.000000e-01
  %i.sn = fadd reassoc nsz arcp contract afn double %i.sm, %i.sc ; 2 uses
  %i.so = sitofp reassoc nsz arcp contract afn i32 %i.sh to double
  %i.sp = fadd reassoc nsz arcp contract afn double %i.ku, %i.so
  %i.sq = fadd reassoc nsz arcp contract afn double %i.sp, %i.sn
  %i.sr = fpext reassoc nsz arcp contract afn float %i.sf to double
  %i.ss = fcmp reassoc nsz arcp contract afn ogt double %i.sq, %i.sr
  %i.st = fsub reassoc nsz arcp contract afn float %i.kf, %i.si
  %i.su = fpext reassoc nsz arcp contract afn float %i.st to double
  %i.sv = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  %i.sw = fsub reassoc nsz arcp contract afn double %i.su, %i.sv
  %.3 = select nsz i1 %i.ss, double %i.sw, double %i.sn ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #18
  %i.sx = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %i.sy = fadd reassoc nsz arcp contract afn double %.3480, %i.sx ; 3 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sy, double noundef %i.sc) #18
  %i.sz = load float, ptr %i.pm, align 4, !tbaa !101
  %i.ta = load float, ptr %i.ro, align 4, !tbaa !103
  %i.tb = fadd reassoc nsz arcp contract afn float %i.ta, %i.sz
  %i.tc = fpext reassoc nsz arcp contract afn float %i.tb to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sy, double noundef %i.tc) #18
  call void @cairo_stroke_preserve(ptr noundef %1) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.td = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.td) #18
  call void @cairo_stroke(ptr noundef %1) #18
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #18
  %i.te = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.tf = fptrunc reassoc nsz arcp contract afn double %i.te to float
  %i.tg = load i32, ptr %i.sg, align 4, !tbaa !219
  %i.th = sitofp reassoc nsz arcp contract afn i32 %i.tg to double
  %i.ti = fadd reassoc nsz arcp contract afn double %i.sv, %i.th
  %i.tj = fptrunc reassoc nsz arcp contract afn double %i.ti to float
  %i.tk = fsub reassoc nsz arcp contract afn double %.3480, %i.ku
  %i.tl = fptrunc reassoc nsz arcp contract afn double %i.tk to float
  %i.tm = fsub reassoc nsz arcp contract afn double %.3, %i.ku
  %i.tn = fptrunc reassoc nsz arcp contract afn double %i.tm to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.tf, float noundef %i.tj, float noundef %i.tl, float noundef %i.tn) #18
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  %i.to = load i32, ptr %i.sg, align 4, !tbaa !219
  %i.tp = sitofp reassoc nsz arcp contract afn i32 %i.to to double
  %i.tq = fmul reassoc nnan nsz arcp contract afn double %i.tp, 5.000000e-01
  %i.tr = fadd reassoc nsz arcp contract afn double %i.tq, %.3
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sy, double noundef %i.tr) #18
  call void @cairo_save(ptr noundef %1) #18
  call void @cairo_rotate(ptr noundef %1, double noundef f0xBFF921FB54442D18) #18
  %i.ts = load i32, ptr %i.sg, align 4, !tbaa !219
  %i.tt = sitofp reassoc nsz arcp contract afn i32 %i.ts to double
  %i.tu = fmul reassoc nnan nsz arcp contract afn double %i.tt, -5.000000e-01
  %i.tv = fmul reassoc nsz arcp contract afn double %i.ks, -9.000000e+00
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.tu, double noundef %i.tv) #18
  call void @pango_cairo_update_layout(ptr noundef %1, ptr noundef %i.kp) #18
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #18
  call void @cairo_restore(ptr noundef %1) #18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.tw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.tx = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00 ; 3 uses
  %i.ty = fmul reassoc nsz arcp contract afn double %i.ks, 1.500000e+01 ; 2 uses
  %i.tz = fcmp reassoc nsz arcp contract afn olt double %i.ty, %i.lf
  %i.ua = fsub reassoc nsz arcp contract afn double %i.lf, %i.tx
  %i.ub = fadd reassoc nsz arcp contract afn double %i.kt, %i.lf
  %i.uc = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 4 uses
  %i.ud = fsub reassoc nsz arcp contract afn double %i.ub, %i.uc
  %.4 = select nsz i1 %i.tz, double %i.ua, double %i.ud ; 2 uses
  %i.ue = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.uf = fptrunc reassoc nsz arcp contract afn double %i.ue to float ; 2 uses
  %i.ug = fsub reassoc nsz arcp contract afn double %.4, %i.ku
  %i.uh = fptrunc reassoc nsz arcp contract afn double %i.ug to float
  %i.ui = fpext <2 x float> %i.jw to <2 x double> ; 2 uses
  %i.uj = extractelement <2 x double> %i.ui, i64 0
  %i.uk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.uj) #18 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #18
  %i.ul = load i32, ptr %i.tw, align 4, !tbaa !219
  %i.um = sitofp reassoc nsz arcp contract afn i32 %i.ul to float
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.un = load i32, ptr %i.tw, align 4, !tbaa !219
  %i.uo = sitofp reassoc nsz arcp contract afn i32 %i.un to double
  %i.up = fadd reassoc nsz arcp contract afn double %i.uc, %i.uo
  %i.uq = fptrunc reassoc nsz arcp contract afn double %i.up to float
  %i.ur = fcmp reassoc nsz arcp contract afn olt double %i.ty, %i.pg
  %i.us = fsub reassoc nsz arcp contract afn double %i.pg, %i.tx
  %i.ut = fadd reassoc nsz arcp contract afn double %i.kt, %i.pg
  %i.uu = fsub reassoc nsz arcp contract afn double %i.ut, %i.uc
  %.4481 = select nsz i1 %i.ur, double %i.us, double %i.uu ; 2 uses
  %i.uv = shufflevector <4 x float> %i.jv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.uw = shufflevector <4 x float> %i.jv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ux = fadd reassoc nsz arcp contract afn <2 x float> %i.uv, %i.uw ; 2 uses
  %i.uy = extractelement <2 x float> %i.ux, i64 0
  %i.uz = fsub reassoc nsz arcp contract afn float %i.uy, %i.um
  %i.va = fpext reassoc nsz arcp contract afn float %i.uz to double
  %i.vb = fmul reassoc nsz arcp contract afn double %i.va, 5.000000e-01 ; 2 uses
  %i.vc = fsub reassoc nsz arcp contract afn double %i.vb, %i.ku
  %i.vd = fptrunc reassoc nsz arcp contract afn double %i.vc to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.uq, float noundef %i.uf, float noundef %i.vd, float noundef %i.uh) #18
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  call void @cairo_move_to(ptr noundef %1, double noundef %i.vb, double noundef %.4) #18
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #18
  %i.ve = extractelement <2 x double> %i.ui, i64 1
  %i.vf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.ve) #18 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #18
  %i.vg = extractelement <2 x float> %i.ux, i64 1
  %i.vh = fpext reassoc nsz arcp contract afn float %i.vg to double
  %i.vi = fmul reassoc nsz arcp contract afn double %i.vh, 5.000000e-01 ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.vj = load i32, ptr %i.tw, align 4, !tbaa !219
  %i.vk = sitofp reassoc nsz arcp contract afn i32 %i.vj to double ; 2 uses
  %i.vl = fadd reassoc nsz arcp contract afn double %i.uc, %i.vk
end_hunk_0
