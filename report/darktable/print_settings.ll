Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/print_settings?download=true
inline.NumInlined: 118
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@gui_post_expose:bb.a
bb.u:                                             ; preds = %bb.t
  %i.fn = load i32, ptr %i.eb, align 4, !tbaa !107
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.fo = phi i32 [ %i.fn, %bb.u ], [ 0, %bb.t ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %i.fr = load <2 x float>, ptr %i.fp, align 8, !tbaa !33 ; 3 uses
  %i.fs = extractelement <2 x float> %i.fr, i64 0
  %i.ft = fptosi float %i.fs to i32
  %i.fu = extractelement <2 x float> %i.fr, i64 1
  %i.fv = fptosi float %i.fu to i32
  %i.fw = load <2 x float>, ptr %i.fq, align 8, !tbaa !33
  %i.fx = fadd reassoc nsz arcp contract afn <2 x float> %i.fw, %i.fr ; 2 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0
  %i.fz = fptosi float %i.fy to i32
  %i.ga = extractelement <2 x float> %i.fx, i64 1
  %i.gb = fptosi float %i.ga to i32
  call void @_cairo_rectangle(ptr noundef %1, i32 noundef %i.fo, i32 noundef %i.ft, i32 noundef %i.fv, i32 noundef %i.fz, i32 noundef %i.gb)
  call void @cairo_stroke(ptr noundef %1) #18
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.gc = load i32, ptr %i.dz, align 8, !tbaa !11
  %i.gd = zext i32 %i.gc to i64
  %i.ge = icmp eq i64 %indvars.iv, %i.gd
  br i1 %i.ge, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.gf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !34
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 1432
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !120
  %i.gi = fmul reassoc nsz arcp contract afn double %i.gh, 5.000000e+00 ; 2 uses
  store double %i.gi, ptr %i.c, align 16, !tbaa !31
  store double %i.gi, ptr %i.ea, align 8, !tbaa !31
  call void @cairo_set_line_width(ptr noundef %1, double noundef 1.000000e+00) #18
  %i.gj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !34
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1432
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !120
  %i.gm = fmul reassoc nsz arcp contract afn double %i.gl, 5.000000e+00
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef 1, double noundef %i.gm) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 1.000000e+00) #18
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.go = load <4 x float>, ptr %i.gn, align 8, !tbaa !33
  %i.gp = fpext <4 x float> %i.go to <4 x double> ; 4 uses
  %i.gq = extractelement <4 x double> %i.gp, i64 0
  %i.gr = extractelement <4 x double> %i.gp, i64 1
  %i.gs = extractelement <4 x double> %i.gp, i64 2
  %i.gt = extractelement <4 x double> %i.gp, i64 3
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.gq, double noundef %i.gr, double noundef %i.gs, double noundef %i.gt) #18
  call void @cairo_stroke(ptr noundef %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %i.gu = load i32, ptr %i.ec, align 4, !tbaa !141
  %i.gv = zext i32 %i.gu to i64
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
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !107
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
  %i.kh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !142
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 336
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !143
  %i.kk = call ptr @pango_font_description_copy_static(ptr noundef %i.kj) #18 ; 4 uses
  call void @pango_font_description_set_weight(ptr noundef %i.kk, i32 noundef 700) #18
  %i.kl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !34
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1432
  %i.kn = load double, ptr %i.km, align 8, !tbaa !120
  %i.ko = fmul reassoc nsz arcp contract afn double %i.kn, 1.638400e+04
  call void @pango_font_description_set_absolute_size(ptr noundef %i.kk, double noundef %i.ko) #18
  %i.kp = call ptr @pango_cairo_create_layout(ptr noundef %1) #18 ; 23 uses
  call void @pango_layout_set_font_description(ptr noundef %i.kp, ptr noundef %i.kk) #18
  %i.kq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !34
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1432
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !120 ; 26 uses
  %i.kt = fmul reassoc nsz arcp contract afn double %i.ks, 1.800000e+01 ; 10 uses
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
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !153
  %i.mb = sitofp reassoc nsz arcp contract afn i32 %i.ma to double ; 2 uses
  %i.mc = fadd reassoc nsz arcp contract afn double %i.ly, %i.mb
  %i.md = fsub reassoc nsz arcp contract afn double %i.lx, %i.mc
  %i.me = fmul reassoc nsz arcp contract afn double %i.md, 5.000000e-01
  %i.mf = fadd reassoc nsz arcp contract afn double %i.me, %i.lw ; 2 uses
  %i.mg = fcmp reassoc nsz arcp contract afn olt double %i.mf, %i.ly
  br i1 %i.mg, label %bb.ai, label %._crit_edge583

._crit_edge583:                                   ; preds = %bb.ah
  %.pre588 = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %.pre590 = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01
  br label %._crit_edge583.a

bb.ai:                                            ; preds = %bb.ah
  %8 = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  %i.mh = fadd reassoc nsz arcp contract afn double %8, %i.lx
  %i.mi = fpext reassoc nsz arcp contract afn float %i.kf to double
  %i.mj = fsub reassoc nsz arcp contract afn double %i.mi, %i.kt ; 2 uses
  %9 = fadd reassoc nsz arcp contract afn double %i.lk, %i.mb
  %i.mk = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00 ; 2 uses
  %i.ml = fadd reassoc nsz arcp contract afn double %i.mk, %9
  %i.mm = fadd reassoc nsz arcp contract afn double %i.ml, %i.kt ; 2 uses
  %i.mn = fcmp reassoc nsz arcp contract afn olt double %i.mj, %i.mm
  %. = select reassoc nsz arcp contract afn i1 %i.mn, double %i.mj, double %i.mm
  br label %._crit_edge583.a

._crit_edge583.a:                                 ; preds = %._crit_edge583, %bb.ai
  %.pre-phi591 = phi double [ %.pre590, %._crit_edge583 ], [ %8, %bb.ai ]
  %.pre-phi589 = phi double [ %.pre588, %._crit_edge583 ], [ %i.mk, %bb.ai ]
  %.0477 = phi nsz double [ %i.mf, %._crit_edge583 ], [ %i.mh, %bb.ai ] ; 2 uses
  %.0 = phi nsz double [ %i.lk, %._crit_edge583 ], [ %., %bb.ai ] ; 4 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #18
  %i.mo = load float, ptr %i.ll, align 8, !tbaa !100
  %i.mp = fpext reassoc nsz arcp contract afn float %i.mo to double
  %i.mq = fadd reassoc nsz arcp contract afn double %.0, %.pre-phi589 ; 2 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.mp, double noundef %i.mq) #18
  call void @cairo_line_to(ptr noundef %1, double noundef %i.lx, double noundef %i.mq) #18
  call void @cairo_stroke_preserve(ptr noundef %1) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.mr = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.mr) #18
  call void @cairo_stroke(ptr noundef %1) #18
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #18
  %i.ms = load i32, ptr %i.lz, align 4, !tbaa !153
  %i.mt = sitofp reassoc nsz arcp contract afn i32 %i.ms to double
  %i.mu = fadd reassoc nsz arcp contract afn double %.pre-phi591, %i.mt
  %i.mv = fptrunc reassoc nsz arcp contract afn double %i.mu to float
  %i.mw = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.mx = fptrunc reassoc nsz arcp contract afn double %i.mw to float
  %i.my = fsub reassoc nsz arcp contract afn double %.0477, %i.ku
  %i.mz = fptrunc reassoc nsz arcp contract afn double %i.my to float
  %i.na = fsub reassoc nsz arcp contract afn double %.0, %i.ku
  %i.nb = fptrunc reassoc nsz arcp contract afn double %i.na to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.mv, float noundef %i.mx, float noundef %i.mz, float noundef %i.nb) #18
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  call void @cairo_move_to(ptr noundef %1, double noundef %.0477, double noundef %.0) #18
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #18
  %.pre581 = load float, ptr %i.ll, align 8, !tbaa !100
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge583.a, %bb.ag, %bb.af
  %i.nc = phi float [ %.pre581, %._crit_edge583.a ], [ %i.lm, %bb.ag ], [ %i.lm, %bb.af ] ; 2 uses
  %.1 = phi nsz double [ %.0, %._crit_edge583.a ], [ %i.lk, %bb.ag ], [ %i.lk, %bb.af ] ; 3 uses
  %i.nd = fcmp reassoc nsz arcp contract afn ult float %i.kd, %i.nc
  br i1 %i.nd, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ne = getelementptr inbounds nuw i8, ptr %i.g, i64 3304 ; 3 uses
  %i.nf = load float, ptr %i.ne, align 8, !tbaa !102
  %i.ng = fadd reassoc nsz arcp contract afn float %i.nf, %i.nc
  %i.nh = fcmp reassoc nsz arcp contract afn ugt float %i.kd, %i.ng
  br i1 %i.nh, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ni = load i32, ptr %i.o, align 8, !tbaa !32
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.nj
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !33
  %i.nm = extractelement <2 x float> %i.hq, i64 0
  %i.nn = fmul reassoc nsz arcp contract afn float %i.nl, %i.nm
  %i.no = extractelement <4 x float> %i.ju, i64 2
  %i.np = fsub reassoc nsz arcp contract afn float %i.nn, %i.no
  %i.nq = fpext reassoc nsz arcp contract afn float %i.np to double
  %i.nr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.nq) #18 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #18
  %i.ns = fpext reassoc nsz arcp contract afn float %i.kd to double ; 2 uses
  %i.nt = load float, ptr %i.ll, align 8, !tbaa !100
  %i.nu = load float, ptr %i.ne, align 8, !tbaa !102
  %i.nv = fadd reassoc nsz arcp contract afn float %i.nu, %i.nt ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !153 ; 2 uses
  %i.ny = sitofp reassoc nsz arcp contract afn i32 %i.nx to float ; 2 uses
  %i.nz = fadd reassoc nsz arcp contract afn float %i.kd, %i.ny
  %i.oa = fsub reassoc nsz arcp contract afn float %i.nv, %i.nz
  %i.ob = fpext reassoc nsz arcp contract afn float %i.oa to double
  %i.oc = fmul reassoc nsz arcp contract afn double %i.ob, 5.000000e-01
  %i.od = fadd reassoc nsz arcp contract afn double %i.oc, %i.ns ; 2 uses
  %i.oe = sitofp reassoc nsz arcp contract afn i32 %i.nx to double
  %i.of = fadd reassoc nsz arcp contract afn double %i.ku, %i.oe
  %i.og = fadd reassoc nsz arcp contract afn double %i.of, %i.od
  %i.oh = fpext reassoc nsz arcp contract afn float %i.nv to double
  %i.oi = fcmp reassoc nsz arcp contract afn ogt double %i.og, %i.oh
  %i.oj = fsub reassoc nsz arcp contract afn float %i.kd, %i.ny
  %i.ok = fpext reassoc nsz arcp contract afn float %i.oj to double
  %i.ol = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  %i.om = fsub reassoc nsz arcp contract afn double %i.ok, %i.ol
  %.1478 = select nsz i1 %i.oi, double %i.om, double %i.od ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #18
  %i.on = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %i.oo = fadd reassoc nsz arcp contract afn double %.1, %i.on ; 2 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.ns, double noundef %i.oo) #18
  %i.op = load float, ptr %i.ll, align 8, !tbaa !100
  %i.oq = load float, ptr %i.ne, align 8, !tbaa !102
  %i.or = fadd reassoc nsz arcp contract afn float %i.oq, %i.op
  %i.os = fpext reassoc nsz arcp contract afn float %i.or to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.os, double noundef %i.oo) #18
  call void @cairo_stroke_preserve(ptr noundef %1) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.ot = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.ot) #18
  call void @cairo_stroke(ptr noundef %1) #18
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #18
  %i.ou = load i32, ptr %i.nw, align 4, !tbaa !153
  %i.ov = sitofp reassoc nsz arcp contract afn i32 %i.ou to double
  %i.ow = fadd reassoc nsz arcp contract afn double %i.ol, %i.ov
  %i.ox = fptrunc reassoc nsz arcp contract afn double %i.ow to float
  %i.oy = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.oz = fptrunc reassoc nsz arcp contract afn double %i.oy to float
  %i.pa = fsub reassoc nsz arcp contract afn double %.1478, %i.ku
  %i.pb = fptrunc reassoc nsz arcp contract afn double %i.pa to float
  %i.pc = fsub reassoc nsz arcp contract afn double %.1, %i.ku
  %i.pd = fptrunc reassoc nsz arcp contract afn double %i.pc to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.ox, float noundef %i.oz, float noundef %i.pb, float noundef %i.pd) #18
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  call void @cairo_move_to(ptr noundef %1, double noundef %.1478, double noundef %.1) #18
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.pe = fpext reassoc nsz arcp contract afn float %i.jz to double ; 4 uses
  %i.pf = fsub reassoc nsz arcp contract afn float %i.kd, %i.jz
  %i.pg = fpext reassoc nsz arcp contract afn float %i.pf to double
  %i.ph = fsub reassoc nsz arcp contract afn double %i.pg, %i.kt
  %i.pi = fmul reassoc nsz arcp contract afn double %i.ph, 5.000000e-01
  %i.pj = fadd reassoc nsz arcp contract afn double %i.pi, %i.pe ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.g, i64 3300 ; 6 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !101 ; 4 uses
  %i.pm = fcmp reassoc nsz arcp contract afn ult float %i.kb, %i.pl
  br i1 %i.pm, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pn = getelementptr inbounds nuw i8, ptr %i.g, i64 3308
  %i.po = load float, ptr %i.pn, align 4, !tbaa !103
  %i.pp = fadd reassoc nsz arcp contract afn float %i.po, %i.pl
  %i.pq = fcmp reassoc nsz arcp contract afn ugt float %i.kb, %i.pp
  br i1 %i.pq, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pr = extractelement <4 x float> %i.ju, i64 1
  %i.ps = fpext reassoc nsz arcp contract afn float %i.pr to double
  %i.pt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.ps) #18 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #18
  %i.pu = load float, ptr %i.pk, align 4, !tbaa !101
  %i.pv = fpext reassoc nsz arcp contract afn float %i.pu to double ; 2 uses
  %i.pw = fadd reassoc nsz arcp contract afn double %i.kt, %i.pv ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !153
  %i.pz = sitofp reassoc nsz arcp contract afn i32 %i.py to double ; 2 uses
  %i.qa = fadd reassoc nsz arcp contract afn double %i.pw, %i.pz
  %i.qb = fsub reassoc nsz arcp contract afn double %i.lf, %i.qa
  %i.qc = fmul reassoc nsz arcp contract afn double %i.qb, 5.000000e-01
  %i.qd = fadd reassoc nsz arcp contract afn double %i.qc, %i.pv ; 2 uses
  %i.qe = fcmp reassoc nsz arcp contract afn olt double %i.qd, %i.pw
  br i1 %i.qe, label %bb.ap, label %._crit_edge584

._crit_edge584:                                   ; preds = %bb.ao
  %.pre585 = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %.pre585.a = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.qf = fpext reassoc nsz arcp contract afn float %i.kd to double
  %i.qg = fsub reassoc nsz arcp contract afn double %i.qf, %i.kt ; 2 uses
  %10 = fadd reassoc nsz arcp contract afn double %i.pj, %i.pz
  %i.qh = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00 ; 2 uses
  %i.qi = fadd reassoc nsz arcp contract afn double %i.qh, %10
  %i.qj = fadd reassoc nsz arcp contract afn double %i.qi, %i.kt ; 2 uses
  %i.qk = fcmp reassoc nsz arcp contract afn olt double %i.qg, %i.qj
  %.523 = select reassoc nsz arcp contract afn i1 %i.qk, double %i.qg, double %i.qj
  %i.ql = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  %i.qm = fadd reassoc nsz arcp contract afn double %i.ql, %i.lf
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge584, %bb.ap
  %.pre-phi.a = phi double [ %.pre585.a, %._crit_edge584 ], [ %i.ql, %bb.ap ]
  %.pre-phi = phi double [ %.pre585, %._crit_edge584 ], [ %i.qh, %bb.ap ]
  %.2479 = phi nsz double [ %i.pj, %._crit_edge584 ], [ %.523, %bb.ap ] ; 3 uses
  %.2 = phi nsz double [ %i.qd, %._crit_edge584 ], [ %i.qm, %bb.ap ] ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #18
  %i.qn = fadd reassoc nsz arcp contract afn double %.2479, %.pre-phi ; 3 uses
  %i.qo = load float, ptr %i.pk, align 4, !tbaa !101
  %i.qp = fpext reassoc nsz arcp contract afn float %i.qo to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.qn, double noundef %i.qp) #18
  call void @cairo_line_to(ptr noundef %1, double noundef %i.qn, double noundef %i.lf) #18
  call void @cairo_stroke_preserve(ptr noundef %1) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.qq = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.qq) #18
  call void @cairo_stroke(ptr noundef %1) #18
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #18
  %i.qr = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.qs = fptrunc reassoc nsz arcp contract afn double %i.qr to float
  %i.qt = load i32, ptr %i.px, align 4, !tbaa !153
  %i.qu = sitofp reassoc nsz arcp contract afn i32 %i.qt to double
  %i.qv = fadd reassoc nsz arcp contract afn double %.pre-phi.a, %i.qu
  %i.qw = fptrunc reassoc nsz arcp contract afn double %i.qv to float
  %i.qx = fsub reassoc nsz arcp contract afn double %.2479, %i.ku
  %i.qy = fptrunc reassoc nsz arcp contract afn double %i.qx to float
  %i.qz = fsub reassoc nsz arcp contract afn double %.2, %i.ku
  %i.ra = fptrunc reassoc nsz arcp contract afn double %i.qz to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.qs, float noundef %i.qw, float noundef %i.qy, float noundef %i.ra) #18
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  %i.rb = load i32, ptr %i.px, align 4, !tbaa !153
  %i.rc = sitofp reassoc nsz arcp contract afn i32 %i.rb to double
  %i.rd = fmul reassoc nnan nsz arcp contract afn double %i.rc, 5.000000e-01
  %i.re = fadd reassoc nsz arcp contract afn double %i.rd, %.2
  call void @cairo_move_to(ptr noundef %1, double noundef %i.qn, double noundef %i.re) #18
  call void @cairo_save(ptr noundef %1) #18
  call void @cairo_rotate(ptr noundef %1, double noundef f0xBFF921FB54442D18) #18
  %i.rf = load i32, ptr %i.px, align 4, !tbaa !153
  %i.rg = sitofp reassoc nsz arcp contract afn i32 %i.rf to double
  %i.rh = fmul reassoc nnan nsz arcp contract afn double %i.rg, -5.000000e-01
  %i.ri = fmul reassoc nsz arcp contract afn double %i.ks, -9.000000e+00
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.rh, double noundef %i.ri) #18
  call void @pango_cairo_update_layout(ptr noundef %1, ptr noundef %i.kp) #18
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #18
  call void @cairo_restore(ptr noundef %1) #18
  %.pre582 = load float, ptr %i.pk, align 4, !tbaa !101
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %i.rj = phi float [ %.pre582, %bb.aq ], [ %i.pl, %bb.an ], [ %i.pl, %bb.am ] ; 2 uses
  %.3480 = phi nsz double [ %.2479, %bb.aq ], [ %i.pj, %bb.an ], [ %i.pj, %bb.am ] ; 2 uses
  %i.rk = fcmp reassoc nsz arcp contract afn ult float %i.kf, %i.rj
  br i1 %i.rk, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.rl = getelementptr inbounds nuw i8, ptr %i.g, i64 3308 ; 3 uses
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !103
  %i.rn = fadd reassoc nsz arcp contract afn float %i.rm, %i.rj
  %i.ro = fcmp reassoc nsz arcp contract afn ugt float %i.kf, %i.rn
  br i1 %i.ro, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.rp = load i32, ptr %i.o, align 8, !tbaa !32
  %i.rq = zext i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr @units, i64 %i.rq
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !33
  %i.rt = extractelement <2 x float> %i.hq, i64 1
  %i.ru = fmul reassoc nsz arcp contract afn float %i.rs, %i.rt
  %i.rv = extractelement <4 x float> %i.ju, i64 3
  %i.rw = fsub reassoc nsz arcp contract afn float %i.ru, %i.rv
  %i.rx = fpext reassoc nsz arcp contract afn float %i.rw to double
  %i.ry = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.rx) #18 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #18
  %i.rz = fpext reassoc nsz arcp contract afn float %i.kf to double ; 2 uses
  %i.sa = load float, ptr %i.pk, align 4, !tbaa !101
  %i.sb = load float, ptr %i.rl, align 4, !tbaa !103
  %i.sc = fadd reassoc nsz arcp contract afn float %i.sb, %i.sa ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !153 ; 2 uses
  %i.sf = sitofp reassoc nsz arcp contract afn i32 %i.se to float ; 2 uses
  %i.sg = fadd reassoc nsz arcp contract afn float %i.kf, %i.sf
  %i.sh = fsub reassoc nsz arcp contract afn float %i.sc, %i.sg
  %i.si = fpext reassoc nsz arcp contract afn float %i.sh to double
  %i.sj = fmul reassoc nsz arcp contract afn double %i.si, 5.000000e-01
  %i.sk = fadd reassoc nsz arcp contract afn double %i.sj, %i.rz ; 2 uses
  %i.sl = sitofp reassoc nsz arcp contract afn i32 %i.se to double
  %i.sm = fadd reassoc nsz arcp contract afn double %i.ku, %i.sl
  %i.sn = fadd reassoc nsz arcp contract afn double %i.sm, %i.sk
  %i.so = fpext reassoc nsz arcp contract afn float %i.sc to double
  %i.sp = fcmp reassoc nsz arcp contract afn ogt double %i.sn, %i.so
  %i.sq = fsub reassoc nsz arcp contract afn float %i.kf, %i.sf
  %i.sr = fpext reassoc nsz arcp contract afn float %i.sq to double
  %i.ss = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 2 uses
  %i.st = fsub reassoc nsz arcp contract afn double %i.sr, %i.ss
  %.3 = select nsz i1 %i.sp, double %i.st, double %i.sk ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 9.000000e-01) #18
  %i.su = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00
  %i.sv = fadd reassoc nsz arcp contract afn double %.3480, %i.su ; 3 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sv, double noundef %i.rz) #18
  %i.sw = load float, ptr %i.pk, align 4, !tbaa !101
  %i.sx = load float, ptr %i.rl, align 4, !tbaa !103
  %i.sy = fadd reassoc nsz arcp contract afn float %i.sx, %i.sw
  %i.sz = fpext reassoc nsz arcp contract afn float %i.sy to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sv, double noundef %i.sz) #18
  call void @cairo_stroke_preserve(ptr noundef %1) #18
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.ta = load double, ptr %i.e, align 8, !tbaa !31
  call void @cairo_set_dash(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef 1, double noundef %i.ta) #18
  call void @cairo_stroke(ptr noundef %1) #18
  call void @cairo_set_dash(ptr noundef %1, ptr noundef null, i32 noundef 0, double noundef 0.000000e+00) #18
  %i.tb = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.tc = fptrunc reassoc nsz arcp contract afn double %i.tb to float
  %i.td = load i32, ptr %i.sd, align 4, !tbaa !153
  %i.te = sitofp reassoc nsz arcp contract afn i32 %i.td to double
  %i.tf = fadd reassoc nsz arcp contract afn double %i.ss, %i.te
  %i.tg = fptrunc reassoc nsz arcp contract afn double %i.tf to float
  %i.th = fsub reassoc nsz arcp contract afn double %.3480, %i.ku
  %i.ti = fptrunc reassoc nsz arcp contract afn double %i.th to float
  %i.tj = fsub reassoc nsz arcp contract afn double %.3, %i.ku
  %i.tk = fptrunc reassoc nsz arcp contract afn double %i.tj to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.tc, float noundef %i.tg, float noundef %i.ti, float noundef %i.tk) #18
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  %i.tl = load i32, ptr %i.sd, align 4, !tbaa !153
  %i.tm = sitofp reassoc nsz arcp contract afn i32 %i.tl to double
  %i.tn = fmul reassoc nnan nsz arcp contract afn double %i.tm, 5.000000e-01
  %i.to = fadd reassoc nsz arcp contract afn double %i.tn, %.3
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sv, double noundef %i.to) #18
  call void @cairo_save(ptr noundef %1) #18
  call void @cairo_rotate(ptr noundef %1, double noundef f0xBFF921FB54442D18) #18
  %i.tp = load i32, ptr %i.sd, align 4, !tbaa !153
  %i.tq = sitofp reassoc nsz arcp contract afn i32 %i.tp to double
  %i.tr = fmul reassoc nnan nsz arcp contract afn double %i.tq, -5.000000e-01
  %i.ts = fmul reassoc nsz arcp contract afn double %i.ks, -9.000000e+00
  call void @cairo_rel_move_to(ptr noundef %1, double noundef %i.tr, double noundef %i.ts) #18
  call void @pango_cairo_update_layout(ptr noundef %1, ptr noundef %i.kp) #18
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #18
  call void @cairo_restore(ptr noundef %1) #18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.tt = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.tu = fmul reassoc nsz arcp contract afn double %i.ks, 9.000000e+00 ; 3 uses
  %i.tv = fmul reassoc nsz arcp contract afn double %i.ks, 1.500000e+01 ; 2 uses
  %i.tw = fcmp reassoc nsz arcp contract afn olt double %i.tv, %i.lf
  %i.tx = fsub reassoc nsz arcp contract afn double %i.lf, %i.tu
  %i.ty = fadd reassoc nsz arcp contract afn double %i.kt, %i.lf
  %i.tz = fmul reassoc nsz arcp contract afn double %i.ks, 1.200000e+01 ; 4 uses
  %i.ua = fsub reassoc nsz arcp contract afn double %i.ty, %i.tz
  %.4 = select nsz i1 %i.tw, double %i.tx, double %i.ua ; 2 uses
  %i.ub = fmul reassoc nsz arcp contract afn double %i.ks, 3.000000e+01
  %i.uc = fptrunc reassoc nsz arcp contract afn double %i.ub to float ; 2 uses
  %i.ud = fsub reassoc nsz arcp contract afn double %.4, %i.ku
  %i.ue = fptrunc reassoc nsz arcp contract afn double %i.ud to float
  %i.uf = fpext <2 x float> %i.jw to <2 x double> ; 2 uses
  %i.ug = extractelement <2 x double> %i.uf, i64 0
  %i.uh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.ug) #18 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #18
  %i.ui = load i32, ptr %i.tt, align 4, !tbaa !153
  %i.uj = sitofp reassoc nsz arcp contract afn i32 %i.ui to float
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.uk = load i32, ptr %i.tt, align 4, !tbaa !153
  %i.ul = sitofp reassoc nsz arcp contract afn i32 %i.uk to double
  %i.um = fadd reassoc nsz arcp contract afn double %i.tz, %i.ul
  %i.un = fptrunc reassoc nsz arcp contract afn double %i.um to float
  %i.uo = fcmp reassoc nsz arcp contract afn olt double %i.tv, %i.pe
  %i.up = fsub reassoc nsz arcp contract afn double %i.pe, %i.tu
  %i.uq = fadd reassoc nsz arcp contract afn double %i.kt, %i.pe
  %i.ur = fsub reassoc nsz arcp contract afn double %i.uq, %i.tz
  %.4481 = select nsz i1 %i.uo, double %i.up, double %i.ur ; 2 uses
  %i.us = shufflevector <4 x float> %i.jv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ut = shufflevector <4 x float> %i.jv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.uu = fadd reassoc nsz arcp contract afn <2 x float> %i.us, %i.ut ; 2 uses
  %i.uv = extractelement <2 x float> %i.uu, i64 0
  %i.uw = fsub reassoc nsz arcp contract afn float %i.uv, %i.uj
  %i.ux = fpext reassoc nsz arcp contract afn float %i.uw to double
  %i.uy = fmul reassoc nsz arcp contract afn double %i.ux, 5.000000e-01 ; 2 uses
  %i.uz = fsub reassoc nsz arcp contract afn double %i.uy, %i.ku
  %i.va = fptrunc reassoc nsz arcp contract afn double %i.uz to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.un, float noundef %i.uc, float noundef %i.va, float noundef %i.ue) #18
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  call void @cairo_move_to(ptr noundef %1, double noundef %i.uy, double noundef %.4) #18
  call void @pango_cairo_show_layout(ptr noundef %1, ptr noundef %i.kp) #18
  %i.vb = extractelement <2 x double> %i.uf, i64 1
  %i.vc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 16, ptr noundef %i.le, double noundef %i.vb) #18 ; 0 uses
  call void @pango_layout_set_text(ptr noundef %i.kp, ptr noundef nonnull %i.d, i32 noundef -1) #18
  call void @pango_layout_get_pixel_extents(ptr noundef %i.kp, ptr noundef null, ptr noundef nonnull %7) #18
  %i.vd = extractelement <2 x float> %i.uu, i64 1
  %i.ve = fpext reassoc nsz arcp contract afn float %i.vd to double
  %i.vf = fmul reassoc nsz arcp contract afn double %i.ve, 5.000000e-01 ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 9.000000e-01) #18
  %i.vg = load i32, ptr %i.tt, align 4, !tbaa !153
  %i.vh = sitofp reassoc nsz arcp contract afn i32 %i.vg to double ; 2 uses
  %i.vi = fadd reassoc nsz arcp contract afn double %i.tz, %i.vh
  %i.vj = fptrunc reassoc nsz arcp contract afn double %i.vi to float
  %i.vk = fsub reassoc nsz arcp contract afn double %.4481, %i.ku
  %i.vl = fptrunc reassoc nsz arcp contract afn double %i.vk to float
  %.neg567 = fmul reassoc nnan nsz arcp contract afn double %i.vh, -5.000000e-01
  %.neg568 = fsub reassoc nsz arcp contract afn double %i.vf, %i.ku
  %i.vm = fadd reassoc nsz arcp contract afn double %.neg568, %.neg567
  %i.vn = fptrunc reassoc nsz arcp contract afn double %i.vm to float
  call void @dt_gui_draw_rounded_rectangle(ptr noundef %1, float noundef %i.uc, float noundef %i.vj, float noundef %i.vl, float noundef %i.vn) #18
  call void @cairo_set_source_rgb(ptr noundef %1, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #18
  %i.vo = fadd reassoc nsz arcp contract afn double %.4481, %i.tu
  call void @cairo_move_to(ptr noundef %1, double noundef %i.vo, double noundef %i.vf) #18
  call void @cairo_save(ptr noundef %1) #18
  call void @cairo_rotate(ptr noundef %1, double noundef f0xBFF921FB54442D18) #18
end_hunk_0
