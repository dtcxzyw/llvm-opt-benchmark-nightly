Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basecurve?download=true
inline.NumInlined: 119
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 44
begin_hunk_0_@dt_iop_basecurve_draw:bb.a
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 1440
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !324 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.km, double noundef %i.kp, double noundef %i.kp) #26
  %i.kq = call ptr @cairo_create(ptr noundef %i.km) #26 ; 63 uses
  call void @cairo_set_source_rgb(ptr noundef %i.kq, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #26
  call void @cairo_paint(ptr noundef %i.kq) #26
  call void @cairo_translate(ptr noundef %i.kq, double noundef %i.kc, double noundef %i.kc) #26
  %i.kr = sub nsw i32 %i.ke, %i.kd                ; 7 uses
  %i.ks = sub nsw i32 %i.kf, %i.kd                ; 6 uses
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1432
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !167
  call void @cairo_set_line_width(ptr noundef %i.kq, double noundef %i.kv) #26
  call void @cairo_set_source_rgb(ptr noundef %i.kq, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #26
  %i.kw = sitofp reassoc nsz arcp contract afn i32 %i.kr to double ; 3 uses
  %i.kx = sitofp reassoc nsz arcp contract afn i32 %i.ks to double ; 4 uses
  call void @cairo_rectangle(ptr noundef %i.kq, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.kw, double noundef %i.kx) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  call void @cairo_set_source_rgb(ptr noundef %i.kq, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01) #26
  call void @cairo_rectangle(ptr noundef %i.kq, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.kw, double noundef %i.kx) #26
  call void @cairo_fill(ptr noundef %i.kq) #26
  call void @cairo_translate(ptr noundef %i.kq, double noundef 0.000000e+00, double noundef %i.kx) #26
  %i.ky = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 4 uses
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !158
  %i.la = icmp sgt i32 %i.kz, -1
  br i1 %i.la, label %bb.i, label %bb.j

bb.i:                                             ; preds = %dt_iop_estimate_exp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.lb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !326
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 336
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !333
  %i.le = call ptr @pango_font_description_copy_static(ptr noundef %i.ld) #26 ; 6 uses
  call void @pango_font_description_set_weight(ptr noundef %i.le, i32 noundef 700) #26
  call void @pango_font_description_set_absolute_size(ptr noundef %i.le, double noundef 1.024000e+03) #26
  %i.lf = call ptr @pango_cairo_create_layout(ptr noundef %i.kq) #26 ; 8 uses
  call void @pango_layout_set_font_description(ptr noundef %i.lf, ptr noundef %i.le) #26
  %i.lg = load i32, ptr %i.ky, align 8, !tbaa !158
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.lh
  %i.lj = load <2 x float>, ptr %i.li, align 4, !tbaa !13
  %i.lk = fmul reassoc nsz arcp contract afn <2 x float> %i.lj, splat (float 1.000000e+02) ; 2 uses
  %i.ll = extractelement <2 x float> %i.lk, i64 0 ; 2 uses
  %i.lm = extractelement <2 x float> %i.lk, i64 1 ; 2 uses
  %i.ln = fsub reassoc nsz arcp contract afn float %i.lm, %i.ll
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.a, ptr noundef nonnull align 1 dereferenceable(27) @.str.137, i64 27, i1 false)
  call void @pango_layout_set_text(ptr noundef %i.lf, ptr noundef nonnull %i.a, i32 noundef -1) #26
  call void @pango_layout_get_pixel_extents(ptr noundef %i.lf, ptr noundef nonnull %4, ptr noundef null) #26
  %i.lo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !335
  %i.lq = sitofp reassoc nsz arcp contract afn i32 %i.lp to double
  %i.lr = fmul reassoc nnan nsz arcp contract afn double %i.kw, 1.024000e+03
  %i.ls = fdiv reassoc nsz arcp contract afn double %i.lr, %i.lq
  call void @pango_font_description_set_absolute_size(ptr noundef %i.le, double noundef %i.ls) #26
  call void @pango_layout_set_font_description(ptr noundef %i.lf, ptr noundef %i.le) #26
  %i.lt = fpext reassoc nsz arcp contract afn float %i.ll to double
  %i.lu = fpext reassoc nsz arcp contract afn float %i.lm to double
  %i.lv = fpext reassoc nsz arcp contract afn float %i.ln to double
  %i.lw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 30, ptr noundef nonnull @.str.138, double noundef %i.lt, double noundef %i.lu, double noundef %i.lv) #26 ; 0 uses
  call void @cairo_set_source_rgb(ptr noundef %i.kq, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #26
  call void @pango_layout_set_text(ptr noundef %i.lf, ptr noundef nonnull %i.a, i32 noundef -1) #26
  call void @pango_layout_get_pixel_extents(ptr noundef %i.lf, ptr noundef nonnull %4, ptr noundef null) #26
  %i.lx = sitofp reassoc nsz arcp contract afn i32 %i.kr to float
  %i.ly = fmul reassoc nnan nsz arcp contract afn float %i.lx, 9.800000e-01
  %i.lz = load i32, ptr %i.lo, align 4, !tbaa !335
  %i.ma = sitofp reassoc nsz arcp contract afn i32 %i.lz to float
  %i.mb = load i32, ptr %4, align 4, !tbaa !336
  %i.mc = sitofp reassoc nsz arcp contract afn i32 %i.mb to float
  %i.md = fadd reassoc nsz arcp contract afn float %i.ma, %i.mc
  %i.me = fsub reassoc nsz arcp contract afn float %i.ly, %i.md
  %i.mf = fpext reassoc nsz arcp contract afn float %i.me to double
  %i.mg = fmul reassoc nnan nsz arcp contract afn double %i.kx, -2.000000e-02
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !337
  %i.mj = sitofp reassoc nsz arcp contract afn i32 %i.mi to double
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !338
  %i.mm = sitofp reassoc nsz arcp contract afn i32 %i.ml to double
  %i.mn = fadd reassoc nsz arcp contract afn double %i.mj, %i.mm
  %i.mo = fsub reassoc nsz arcp contract afn double %i.mg, %i.mn
  call void @cairo_move_to(ptr noundef %i.kq, double noundef %i.mf, double noundef %i.mo) #26
  call void @pango_cairo_show_layout(ptr noundef %i.kq, ptr noundef %i.lf) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  call void @pango_font_description_free(ptr noundef %i.le) #26
  call void @g_object_unref(ptr noundef %i.lf) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %dt_iop_estimate_exp.exit
  call void @cairo_scale(ptr noundef %i.kq, double noundef 1.000000e+00, double noundef -1.000000e+00) #26
  %i.mp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 1432
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !167
  %i.ms = fmul reassoc nsz arcp contract afn double %i.mr, 4.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.kq, double noundef %i.ms) #26
  call void @cairo_set_source_rgb(ptr noundef %i.kq, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #26
  %i.mt = getelementptr inbounds nuw i8, ptr %i.c, i64 6264 ; 6 uses
  %i.mu = load float, ptr %i.mt, align 8, !tbaa !159 ; 2 uses
  %i.mv = fcmp reassoc nsz arcp contract afn une float %i.mu, 0.000000e+00
  br i1 %i.mv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mw = fadd reassoc nsz arcp contract afn float %i.mu, 1.000000e+00 ; 2 uses
  %i.mx = sitofp reassoc nsz arcp contract afn i32 %i.kr to float ; 2 uses
  %i.my = sitofp reassoc nsz arcp contract afn i32 %i.ks to float ; 2 uses
  %i.mz = fmul reassoc nsz arcp contract afn float %i.mw, 2.500000e-01 ; 2 uses
  %i.na = fadd reassoc nsz arcp contract afn float %i.mz, -2.500000e-01 ; 2 uses
  %i.nb = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.mw)
  %i.nc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.nb ; 2 uses
  %invariant.op.i = fmul reassoc nsz arcp contract afn float %i.nc, %i.mx ; 3 uses
  %factor.op.fmul.i = fmul reassoc nsz arcp contract afn float %i.nc, %i.my ; 3 uses
  %i.nd = fpext reassoc nsz arcp contract afn float %i.my to double ; 3 uses
  %i.ne = fpext reassoc nsz arcp contract afn float %i.mx to double ; 3 uses
  %i.nf = fadd reassoc nsz arcp contract afn float %i.mz, 7.500000e-01
  %i.ng = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.nf) ; 2 uses
  %.reass30.i = fmul reassoc nsz arcp contract afn float %i.ng, %factor.op.fmul.i
  %.reass.i = fmul reassoc nsz arcp contract afn float %i.ng, %invariant.op.i
  %i.nh = fpext reassoc nsz arcp contract afn float %.reass.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.kq, double noundef %i.nh, double noundef 0.000000e+00) #26
  call void @cairo_line_to(ptr noundef %i.kq, double noundef %i.nh, double noundef %i.nd) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  %i.ni = fpext reassoc nsz arcp contract afn float %.reass30.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.kq, double noundef 0.000000e+00, double noundef %i.ni) #26
  call void @cairo_line_to(ptr noundef %i.kq, double noundef %i.ne, double noundef %i.ni) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  %i.nj = fmul reassoc nsz arcp contract afn float %i.na, 2.000000e+00
  %i.nk = fadd reassoc nsz arcp contract afn float %i.nj, 1.000000e+00
  %i.nl = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.nk) ; 2 uses
  %.reass30.1.i = fmul reassoc nsz arcp contract afn float %i.nl, %factor.op.fmul.i
  %.reass.1.i = fmul reassoc nsz arcp contract afn float %i.nl, %invariant.op.i
  %i.nm = fpext reassoc nsz arcp contract afn float %.reass.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.kq, double noundef %i.nm, double noundef 0.000000e+00) #26
  call void @cairo_line_to(ptr noundef %i.kq, double noundef %i.nm, double noundef %i.nd) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  %i.nn = fpext reassoc nsz arcp contract afn float %.reass30.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.kq, double noundef 0.000000e+00, double noundef %i.nn) #26
  call void @cairo_line_to(ptr noundef %i.kq, double noundef %i.ne, double noundef %i.nn) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  %i.no = fmul reassoc nsz arcp contract afn float %i.na, 3.000000e+00
  %i.np = fadd reassoc nsz arcp contract afn float %i.no, 1.000000e+00
  %i.nq = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.np) ; 2 uses
  %.reass30.2.i = fmul reassoc nsz arcp contract afn float %i.nq, %factor.op.fmul.i
  %.reass.2.i = fmul reassoc nsz arcp contract afn float %i.nq, %invariant.op.i
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.nr = sitofp reassoc nsz arcp contract afn i32 %i.kr to float ; 4 uses
  %i.ns = sitofp reassoc nsz arcp contract afn i32 %i.ks to float ; 4 uses
  %invariant.op.i194 = fmul reassoc nnan nsz arcp contract afn float %i.nr, 2.500000e-01
  %factor.op.fmul.i195 = fmul reassoc nnan nsz arcp contract afn float %i.ns, 2.500000e-01
  %i.nt = fpext reassoc nsz arcp contract afn float %i.ns to double ; 3 uses
  %i.nu = fpext reassoc nsz arcp contract afn float %i.nr to double ; 3 uses
  %i.nv = fpext reassoc nsz arcp contract afn float %invariant.op.i194 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.kq, double noundef %i.nv, double noundef 0.000000e+00) #26
  call void @cairo_line_to(ptr noundef %i.kq, double noundef %i.nv, double noundef %i.nt) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  %i.nw = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i195 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.kq, double noundef 0.000000e+00, double noundef %i.nw) #26
  call void @cairo_line_to(ptr noundef %i.kq, double noundef %i.nu, double noundef %i.nw) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ns, 5.000000e-01
  %.reass.1.i196 = fmul reassoc nnan nsz arcp contract afn float %i.nr, 5.000000e-01
  %i.nx = fpext reassoc nsz arcp contract afn float %.reass.1.i196 to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.kq, double noundef %i.nx, double noundef 0.000000e+00) #26
  call void @cairo_line_to(ptr noundef %i.kq, double noundef %i.nx, double noundef %i.nt) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  %i.ny = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.kq, double noundef 0.000000e+00, double noundef %i.ny) #26
  call void @cairo_line_to(ptr noundef %i.kq, double noundef %i.nu, double noundef %i.ny) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ns, 7.500000e-01
  %.reass.2.i197 = fmul reassoc nnan nsz arcp contract afn float %i.nr, 7.500000e-01
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.reass.2.i197.sink = phi float [ %.reass.2.i197, %bb.l ], [ %.reass.2.i, %bb.k ]
  %.sink286 = phi double [ %i.nt, %bb.l ], [ %i.nd, %bb.k ]
  %.reass31.2.i.sink = phi float [ %.reass31.2.i, %bb.l ], [ %.reass30.2.i, %bb.k ]
  %.sink = phi double [ %i.nu, %bb.l ], [ %i.ne, %bb.k ]
  %i.nz = fpext reassoc nsz arcp contract afn float %.reass.2.i197.sink to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.kq, double noundef %i.nz, double noundef 0.000000e+00) #26
  call void @cairo_line_to(ptr noundef %i.kq, double noundef %i.nz, double noundef %.sink286) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  %i.oa = fpext reassoc nsz arcp contract afn float %.reass31.2.i.sink to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.kq, double noundef 0.000000e+00, double noundef %i.oa) #26
  call void @cairo_line_to(ptr noundef %i.kq, double noundef %.sink, double noundef %i.oa) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  %i.ob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 1432
  %i.od = load double, ptr %i.oc, align 8, !tbaa !167
  call void @cairo_set_line_width(ptr noundef %i.kq, double noundef %i.od) #26
  call void @cairo_set_source_rgb(ptr noundef %i.kq, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 6.000000e-01) #26
  %i.oe = icmp sgt i32 %i.g, 0
  br i1 %i.oe, label %.lr.ph248, label %._crit_edge

.lr.ph248:                                        ; preds = %bb.m
  %i.of = insertelement <2 x i32> poison, i32 %i.kr, i64 0
  %i.og = insertelement <2 x i32> %i.of, i32 %i.ks, i64 1
  %i.oh = sitofp <2 x i32> %i.og to <2 x float>
  %wide.trip.count261 = zext nneg i32 %i.g to i64
  br label %bb.n

._crit_edge:                                      ; preds = %to_log.exit199, %bb.m
  %i.oi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 1432
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !167
  call void @cairo_set_line_width(ptr noundef %i.kq, double noundef %i.ok) #26
  %i.ol = load i32, ptr %i.ky, align 8, !tbaa !158
  %i.om = icmp sgt i32 %i.ol, -1
  br i1 %i.om, label %bb.p, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre267 = sitofp reassoc nsz arcp contract afn i32 %i.ks to float
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph248, %to_log.exit199
  %indvars.iv258 = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next259, %to_log.exit199 ] ; 2 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv258 ; 3 uses
  %i.oo = load float, ptr %i.on, align 4, !tbaa !143 ; 2 uses
  %i.op = load float, ptr %i.mt, align 8, !tbaa !159 ; 4 uses
  %i.oq = fcmp reassoc nsz arcp contract afn ogt float %i.op, 0.000000e+00
  br i1 %i.oq, label %bb.o, label %to_log.exit

to_log.exit:                                      ; preds = %bb.n
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.os = load float, ptr %i.or, align 4, !tbaa !170
  %i.ot = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.ou = insertelement <2 x float> %i.ot, float %i.os, i64 1
  br label %to_log.exit199

bb.o:                                             ; preds = %bb.n
  %i.ov = fadd reassoc nnan nsz arcp contract afn float %i.op, 1.000000e+00
  %i.ow = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.ov)
  %i.ox = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !170
  %i.oz = fmul reassoc nsz arcp contract afn float %i.op, %i.oo
  %i.pa = fadd reassoc nsz arcp contract afn float %i.oz, 1.000000e+00
  %i.pb = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.pa)
  %i.pc = fmul reassoc nsz arcp contract afn float %i.oy, %i.op
  %i.pd = fadd reassoc nsz arcp contract afn float %i.pc, 1.000000e+00
  %i.pe = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.pd)
  %i.pf = insertelement <2 x float> poison, float %i.ow, i64 0
  %i.pg = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ph = insertelement <2 x float> poison, float %i.pb, i64 0
  %i.pi = insertelement <2 x float> %i.ph, float %i.pe, i64 1
  %i.pj = fdiv reassoc nsz arcp contract afn <2 x float> %i.pi, %i.pg
  br label %to_log.exit199

to_log.exit199:                                   ; preds = %to_log.exit, %bb.o
  %i.pk = phi <2 x float> [ %i.pj, %bb.o ], [ %i.ou, %to_log.exit ]
  %i.pl = fmul reassoc nsz arcp contract afn <2 x float> %i.pk, %i.oh
  %i.pm = fpext <2 x float> %i.pl to <2 x double> ; 2 uses
  %i.pn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 1432
  %i.pp = load double, ptr %i.po, align 8, !tbaa !167
  %i.pq = fmul reassoc nsz arcp contract afn double %i.pp, 3.000000e+00
  %i.pr = extractelement <2 x double> %i.pm, i64 0
  %i.ps = extractelement <2 x double> %i.pm, i64 1
  call void @cairo_arc(ptr noundef %i.kq, double noundef %i.pr, double noundef %i.ps, double noundef %i.pq, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %wide.trip.count261
  br i1 %exitcond262.not, label %._crit_edge, label %bb.n

bb.p:                                             ; preds = %._crit_edge
  call void @cairo_set_source_rgb(ptr noundef %i.kq, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 9.000000e-01) #26
  %i.pt = load i32, ptr %i.ky, align 8, !tbaa !158
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pu ; 3 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !143 ; 2 uses
  %i.px = load float, ptr %i.mt, align 8, !tbaa !159 ; 4 uses
  %i.py = fcmp reassoc nsz arcp contract afn ogt float %i.px, 0.000000e+00
  br i1 %i.py, label %bb.q, label %to_log.exit201

to_log.exit201:                                   ; preds = %bb.p
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !170
  br label %to_log.exit203

bb.q:                                             ; preds = %bb.p
  %i.qb = fmul reassoc nsz arcp contract afn float %i.px, %i.pw
  %i.qc = fadd reassoc nsz arcp contract afn float %i.qb, 1.000000e+00
  %i.qd = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.qc)
  %i.qe = fadd reassoc nnan nsz arcp contract afn float %i.px, 1.000000e+00
  %i.qf = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.qe) ; 2 uses
  %i.qg = fdiv reassoc nsz arcp contract afn float %i.qd, %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !170
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qi, %i.px
  %i.qk = fadd reassoc nsz arcp contract afn float %i.qj, 1.000000e+00
  %i.ql = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.qk)
  %i.qm = fdiv reassoc nsz arcp contract afn float %i.ql, %i.qf
  br label %to_log.exit203

to_log.exit203:                                   ; preds = %to_log.exit201, %bb.q
  %.0.i200227 = phi float [ %i.qg, %bb.q ], [ %i.pw, %to_log.exit201 ]
  %.0.i202 = phi nsz float [ %i.qm, %bb.q ], [ %i.qa, %to_log.exit201 ]
  %i.qn = sitofp reassoc nsz arcp contract afn i32 %i.kr to float
  %i.qo = fmul reassoc nsz arcp contract afn float %.0.i200227, %i.qn
  %i.qp = fpext reassoc nsz arcp contract afn float %i.qo to double
  %i.qq = sitofp reassoc nsz arcp contract afn i32 %i.ks to float ; 2 uses
  %i.qr = fmul reassoc nsz arcp contract afn float %.0.i202, %i.qq
  %i.qs = fpext reassoc nsz arcp contract afn float %i.qr to double
  %i.qt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 1432
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !167
  %i.qw = fmul reassoc nsz arcp contract afn double %i.qv, 4.000000e+00
  call void @cairo_arc(ptr noundef %i.kq, double noundef %i.qp, double noundef %i.qs, double noundef %i.qw, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #26
  call void @cairo_stroke(ptr noundef %i.kq) #26
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge._crit_edge, %to_log.exit203
  %.pre-phi = phi float [ %.pre267, %._crit_edge._crit_edge ], [ %i.qq, %to_log.exit203 ] ; 2 uses
  %i.qx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 1432
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !167
  %i.ra = fmul reassoc nsz arcp contract afn double %i.qz, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.kq, double noundef %i.ra) #26
  call void @cairo_set_source_rgb(ptr noundef %i.kq, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 9.000000e-01) #26
  %i.rb = load float, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %i.rc = load float, ptr %i.mt, align 8, !tbaa !159 ; 3 uses
  %i.rd = fcmp reassoc nsz arcp contract afn ogt float %i.rc, 0.000000e+00
  br i1 %i.rd, label %bb.s, label %to_log.exit205

bb.s:                                             ; preds = %bb.r
  %i.re = fmul reassoc nsz arcp contract afn float %i.rc, %i.rb
  %i.rf = fadd reassoc nsz arcp contract afn float %i.re, 1.000000e+00
  %i.rg = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.rf)
  %i.rh = fadd reassoc nnan nsz arcp contract afn float %i.rc, 1.000000e+00
  %i.ri = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.rh)
  %i.rj = fdiv reassoc nsz arcp contract afn float %i.rg, %i.ri
  br label %to_log.exit205

to_log.exit205:                                   ; preds = %bb.r, %bb.s
  %.0.i204 = phi nsz float [ %i.rj, %bb.s ], [ %i.rb, %bb.r ]
  %i.rk = fmul reassoc nsz arcp contract afn float %.0.i204, %.pre-phi
  %i.rl = fpext reassoc nsz arcp contract afn float %i.rk to double
  call void @cairo_move_to(ptr noundef %i.kq, double noundef 0.000000e+00, double noundef %i.rl) #26
  %i.rm = sitofp reassoc nsz arcp contract afn i32 %i.kr to float
  %i.rn = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hl
  br label %bb.u

bb.t:                                             ; preds = %to_log.exit209
  call void @cairo_stroke(ptr noundef %i.kq) #26
  call void @cairo_destroy(ptr noundef %i.kq) #26
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.km, double noundef 0.000000e+00, double noundef 0.000000e+00) #26
  call void @cairo_paint(ptr noundef %1) #26
  call void @cairo_surface_destroy(ptr noundef %i.km) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i32 1

bb.u:                                             ; preds = %to_log.exit205, %to_log.exit209
  %indvars.iv263 = phi i64 [ 1, %to_log.exit205 ], [ %indvars.iv.next264, %to_log.exit209 ] ; 3 uses
  %i.ro = trunc nuw nsw i64 %indvars.iv263 to i32
  %i.rp = uitofp nsz nneg i32 %i.ro to float
  %i.rq = fmul reassoc nnan nsz arcp contract afn float %i.rp, f0x3B808081 ; 6 uses
  %i.rr = fcmp reassoc nsz arcp contract afn ogt float %i.rq, %i.hl
  br i1 %i.rr, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.rs = fmul reassoc nsz arcp contract afn float %i.rq, %i.rn
  %i.rt = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rs, float %.2.i)
  %i.ru = fmul reassoc nsz arcp contract afn float %i.rt, %i.iq ; 2 uses
  %i.rv = load float, ptr %i.mt, align 8, !tbaa !159 ; 4 uses
  %i.rw = fcmp reassoc nsz arcp contract afn ogt float %i.rv, 0.000000e+00
  br i1 %i.rw, label %bb.w, label %to_log.exit209

bb.w:                                             ; preds = %bb.v
  %i.rx = fmul reassoc nsz arcp contract afn float %i.rv, %i.rq
  %i.ry = fadd reassoc nsz arcp contract afn float %i.rx, 1.000000e+00
  %i.rz = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ry)
  %i.sa = fadd reassoc nnan nsz arcp contract afn float %i.rv, 1.000000e+00
  %i.sb = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.sa) ; 2 uses
  %i.sc = fdiv reassoc nsz arcp contract afn float %i.rz, %i.sb
  %i.sd = fmul reassoc nsz arcp contract afn float %i.rv, %i.ru
  %i.se = fadd reassoc nsz arcp contract afn float %i.sd, 1.000000e+00
  %i.sf = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.se)
  %i.sg = fdiv reassoc nsz arcp contract afn float %i.sf, %i.sb
  br label %to_log.exit209

bb.x:                                             ; preds = %bb.u
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv263
  %i.si = load float, ptr %i.sh, align 4, !tbaa !13 ; 2 uses
  %i.sj = load float, ptr %i.mt, align 8, !tbaa !159 ; 4 uses
  %i.sk = fcmp reassoc nsz arcp contract afn ogt float %i.sj, 0.000000e+00
  br i1 %i.sk, label %bb.y, label %to_log.exit209

bb.y:                                             ; preds = %bb.x
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sj, %i.rq
  %i.sm = fadd reassoc nsz arcp contract afn float %i.sl, 1.000000e+00
  %i.sn = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.sm)
  %i.so = fadd reassoc nnan nsz arcp contract afn float %i.sj, 1.000000e+00
  %i.sp = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.so) ; 2 uses
  %i.sq = fdiv reassoc nsz arcp contract afn float %i.sn, %i.sp
  %i.sr = fmul reassoc nsz arcp contract afn float %i.sj, %i.si
  %i.ss = fadd reassoc nsz arcp contract afn float %i.sr, 1.000000e+00
  %i.st = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ss)
  %i.su = fdiv reassoc nsz arcp contract afn float %i.st, %i.sp
  br label %to_log.exit209

to_log.exit209:                                   ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.0.i210233.sink = phi float [ %i.rq, %bb.v ], [ %i.sc, %bb.w ], [ %i.sq, %bb.y ], [ %i.rq, %bb.x ]
  %.0.i212.sink = phi float [ %i.ru, %bb.v ], [ %i.sg, %bb.w ], [ %i.su, %bb.y ], [ %i.si, %bb.x ]
  %i.sv = fmul reassoc nsz arcp contract afn float %.0.i210233.sink, %i.rm
  %i.sw = fpext reassoc nsz arcp contract afn float %i.sv to double
  %i.sx = fmul reassoc nsz arcp contract afn float %.0.i212.sink, %.pre-phi
  %i.sy = fpext reassoc nsz arcp contract afn float %i.sx to double
  call void @cairo_line_to(ptr noundef %i.kq, double noundef %i.sw, double noundef %i.sy) #26
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next264, 256
  br i1 %exitcond266.not, label %bb.t, label %bb.u
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dt_iop_basecurve_button_press(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #5 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 48 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 688
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !33  ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !145 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16   ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !358
  switch i32 %i.j, label %bb.ai [
    i32 1, label %bb.b
    i32 3, label %bb.ae
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %1, align 8, !tbaa !359    ; 2 uses
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !360
  %i.o = tail call i32 @gtk_accelerator_get_default_mod_mask() #26
  %i.p = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !16
  %i.q = or i32 %i.p, %i.n
  %i.r = and i32 %i.q, %i.o
  %i.s = icmp eq i32 %i.r, 4
  %i.t = icmp slt i32 %i.h, 20
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 15 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !158
end_hunk_0
begin_hunk_1_@dt_iop_basecurve_button_press:bb.a
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next179.2
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next179.2
  %i.iz = load <2 x float>, ptr %i.ix, align 4, !tbaa !13
  store <2 x float> %i.iz, ptr %i.iy, align 4, !tbaa !13
  %indvars.iv.next179.3 = add nuw nsw i64 %indvars.iv178, 4 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next179.3
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next179.3
  %i.jc = load <2 x float>, ptr %i.ja, align 4, !tbaa !13
  store <2 x float> %i.jc, ptr %i.jb, align 4, !tbaa !13
  %indvars.iv.next179.4 = add nuw nsw i64 %indvars.iv178, 5 ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next179.4
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next179.4
  %i.jf = load <2 x float>, ptr %i.jd, align 4, !tbaa !13
  store <2 x float> %i.jf, ptr %i.je, align 4, !tbaa !13
  %indvars.iv.next179.5 = add nuw nsw i64 %indvars.iv178, 6 ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next179.5
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next179.5
  %i.ji = load <2 x float>, ptr %i.jg, align 4, !tbaa !13
  store <2 x float> %i.ji, ptr %i.jh, align 4, !tbaa !13
  %indvars.iv.next179.6 = add nuw nsw i64 %indvars.iv178, 7 ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next179.6
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next179.6
  %i.jl = load <2 x float>, ptr %i.jj, align 4, !tbaa !13
  store <2 x float> %i.jl, ptr %i.jk, align 4, !tbaa !13
  %indvars.iv.next179.7 = add nuw nsw i64 %indvars.iv178, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next179.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge168, label %.lr.ph167, !llvm.loop !353

bb.ae:                                            ; preds = %bb.a
  %i.jm = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !158 ; 7 uses
  %i.jo = icmp sgt i32 %i.jn, -1
  br i1 %i.jo, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.jp = icmp ne i32 %i.jn, 0                    ; 2 uses
  br i1 %i.jp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jq = add nsw i32 %i.h, -1                    ; 4 uses
  %i.jr = icmp eq i32 %i.jn, %i.jq
  br i1 %i.jr, label %bb.ah, label %.preheader162

.preheader162:                                    ; preds = %bb.ag
  %i.js = icmp slt i32 %i.jn, %i.jq
  br i1 %i.js, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader162
  %i.jt = zext nneg i32 %i.jn to i64              ; 5 uses
  %i.ju = add i32 %i.h, -2
  %i.jv = sub i32 %i.ju, %i.jn                    ; 3 uses
  %i.jw = zext i32 %i.jv to i64
  %i.jx = add nuw nsw i64 %i.jw, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.jv, 3
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check208 = icmp ult i32 %i.jv, 15
  br i1 %min.iters.check208, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.jy = and i64 %i.jx, 12
  %n.vec = and i64 %i.jx, 8589934576              ; 4 uses
  %i.jz = add nuw nsw i64 %n.vec, %i.jt
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ka = add nuw i64 %index, %i.jt               ; 4 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = getelementptr [8 x i8], ptr %i.b, i64 %i.ka
  %i.ke = getelementptr i8, ptr %i.kd, i64 72
  %wide.vec = load <16 x float>, ptr %i.kc, align 4, !tbaa !13
  %wide.vec210 = load <16 x float>, ptr %i.ke, align 4, !tbaa !13
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ka
  %i.kg = getelementptr [8 x i8], ptr %i.b, i64 %i.ka
  %i.kh = getelementptr i8, ptr %i.kg, i64 64
  store <16 x float> %wide.vec, ptr %i.kf, align 4, !tbaa !13
  store <16 x float> %wide.vec210, ptr %i.kh, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ki = icmp eq i64 %index.next, %n.vec
  br i1 %i.ki, label %middle.block, label %vector.body, !llvm.loop !354

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.jy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !175

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec214 = and i64 %i.jx, 8589934588           ; 3 uses
  %i.kj = add nuw nsw i64 %n.vec214, %i.jt
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index215 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next220, %vec.epilog.vector.body ] ; 2 uses
  %i.kk = add nuw i64 %index215, %i.jt            ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %wide.vec216 = load <8 x float>, ptr %i.km, align 4, !tbaa !13
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kk
  store <8 x float> %wide.vec216, ptr %i.kn, align 4, !tbaa !13
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.ko = icmp eq i64 %index.next220, %n.vec214
  br i1 %i.ko, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !355

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n221 = icmp eq i64 %i.jx, %n.vec214
  br i1 %cmp.n221, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.jt, %iter.check ], [ %i.jz, %vec.epilog.iter.check ], [ %i.kj, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.kp = uitofp i1 %i.jp to float                ; 2 uses
  %i.kq = zext nneg i32 %i.jn to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kq ; 2 uses
  store float %i.kp, ptr %i.kr, align 4, !tbaa !143
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store float %i.kp, ptr %i.ks, align 4, !tbaa !170
  %i.kt = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !151
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ku) #26
  %i.kv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !174
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.kv, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %0) #26
  br label %bb.ai

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader162
  %i.kw = sext i32 %i.jq to i64
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kw
  store <2 x float> zeroinitializer, ptr %i.kx, align 4, !tbaa !13
  store i32 -2, ptr %i.jm, align 8, !tbaa !158
  %i.ky = load i32, ptr %i.g, align 4, !tbaa !16
  %i.kz = add nsw i32 %i.ky, -1
  store i32 %i.kz, ptr %i.g, align 4, !tbaa !16
  %i.la = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !151
  tail call void @gtk_widget_queue_draw(ptr noundef %i.lb) #26
  %i.lc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !174
  tail call void @dt_dev_add_history_item_target(ptr noundef %i.lc, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %0) #26
  br label %bb.ai

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.lf = load <2 x float>, ptr %i.ld, align 4, !tbaa !13
  store <2 x float> %i.lf, ptr %i.le, align 4, !tbaa !13
  %i.lg = trunc nuw i64 %indvars.iv.next to i32
  %i.lh = icmp sgt i32 %i.jq, %i.lg
  br i1 %i.lh, label %.lr.ph, label %._crit_edge, !llvm.loop !356

bb.ai:                                            ; preds = %bb.ac, %bb.ae, %bb.a, %._crit_edge, %bb.ah, %._crit_edge168, %bb.ab
  %.0142 = phi i32 [ 1, %bb.ab ], [ 1, %._crit_edge168 ], [ 1, %._crit_edge ], [ 1, %bb.ah ], [ 0, %bb.a ], [ 0, %bb.ae ], [ 0, %bb.ac ]
  ret i32 %.0142
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dt_iop_basecurve_motion_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #5 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !145 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144  ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 480 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #26
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !161
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1432
  %i.i = load double, ptr %i.h, align 8, !tbaa !167
  %i.j = fmul reassoc nsz arcp contract afn double %i.i, 5.000000e+00
  %i.k = fptosi double %i.j to i32                ; 2 uses
  %i.l = shl nsw i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !368
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !369
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = sitofp reassoc nsz arcp contract afn i32 %i.k to double
  %i.t = load <2 x i32>, ptr %i.m, align 4, !tbaa !16
  %i.u = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.v = shufflevector <2 x i32> %i.u, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.w = sub nsw <2 x i32> %i.t, %i.v             ; 2 uses
  %i.x = load <2 x double>, ptr %i.r, align 8, !tbaa !157
  %i.y = insertelement <2 x double> poison, double %i.s, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fsub reassoc nsz arcp contract afn <2 x double> %i.x, %i.z ; 6 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  store double %i.ab, ptr %i.n, align 8, !tbaa !368
  %i.ac = extractelement <2 x double> %i.aa, i64 1 ; 3 uses
  store double %i.ac, ptr %i.p, align 8, !tbaa !369
  %i.ad = sitofp <2 x i32> %i.w to <2 x double>   ; 5 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.aa, %i.ad
  %i.af = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.aa, zeroinitializer
  %i.ag = select <2 x i1> %i.af, <2 x double> zeroinitializer, <2 x double> %i.aa
  %i.ah = select <2 x i1> %i.ae, <2 x double> %i.ad, <2 x double> %i.ag
  %i.ai = sitofp <2 x i32> %i.w to <2 x float>
  %i.aj = fpext <2 x float> %i.ai to <2 x double>
  %i.ak = fdiv reassoc nsz arcp contract afn <2 x double> %i.ah, %i.aj ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = fptrunc reassoc nsz arcp contract afn double %i.al to float ; 10 uses
  %i.an = extractelement <2 x double> %i.ak, i64 1
  %i.ao = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.an
  %i.ap = fptrunc reassoc nsz arcp contract afn double %i.ao to float ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 6264
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !159 ; 12 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %i.ar, 0.000000e+00 ; 4 uses
  %i.at = insertelement <2 x float> poison, float %i.am, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.ap, i64 1
  br i1 %i.as, label %bb.b, label %to_lin.exit121

bb.b:                                             ; preds = %bb.a
  %i.av = fadd reassoc nsz arcp contract afn float %i.ar, -1.000000e+00 ; 2 uses
  %i.aw = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.av, float %i.am)
  %i.ax = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.av, float %i.ap)
  %i.ay = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.az = insertelement <2 x float> %i.ay, float %i.ax, i64 1
  %i.ba = fadd reassoc nsz arcp contract afn <2 x float> %i.az, splat (float -1.000000e+00)
  %i.bb = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fdiv reassoc nsz arcp contract afn <2 x float> %i.ba, %i.bc
  br label %to_lin.exit121

to_lin.exit121:                                   ; preds = %bb.a, %bb.b
  %i.be = phi <2 x float> [ %i.bd, %bb.b ], [ %i.au, %bb.a ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !371 ; 2 uses
  %i.bh = and i32 %i.bg, 256
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %to_lin.exit121
  %i.bi = icmp sgt i32 %i.f, 0
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %wide.trip.count173 = zext nneg i32 %i.f to i64 ; 4 uses
  br i1 %i.as, label %to_log.exit140.us.preheader, label %to_log.exit138.preheader

to_log.exit138.preheader:                         ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count173, 3      ; 3 uses
  %i.bj = icmp ult i32 %i.f, 4
  br i1 %i.bj, label %to_log.exit138.epil.preheader, label %to_log.exit138.preheader.new

to_log.exit138.preheader.new:                     ; preds = %to_log.exit138.preheader
  %unroll_iter = and i64 %wide.trip.count173, 2147483644
  br label %to_log.exit138

to_log.exit140.us.preheader:                      ; preds = %.lr.ph
  %i.bk = fadd reassoc nnan nsz arcp contract afn float %i.ar, 1.000000e+00
  %i.bl = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %i.bk)
  %i.bm = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bo = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %xtraiter192 = and i64 %wide.trip.count173, 1
  %i.bq = icmp eq i32 %i.f, 1
  br i1 %i.bq, label %to_log.exit140.us.epil.preheader, label %to_log.exit140.us.preheader.new

to_log.exit140.us.preheader.new:                  ; preds = %to_log.exit140.us.preheader
  %unroll_iter197 = and i64 %wide.trip.count173, 2147483646
  %i.br = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.bp
  %i.bs = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.bp
  br label %to_log.exit140.us

to_log.exit140.us:                                ; preds = %to_log.exit140.us, %to_log.exit140.us.preheader.new
  %indvars.iv170 = phi i64 [ 0, %to_log.exit140.us.preheader.new ], [ %indvars.iv.next171.1, %to_log.exit140.us ] ; 4 uses
  %.0106165.us = phi i32 [ -1, %to_log.exit140.us.preheader.new ], [ %spec.select119.us.1, %to_log.exit140.us ]
  %.0107164.us = phi float [ 1.600000e-03, %to_log.exit140.us.preheader.new ], [ %spec.select118.us.1, %to_log.exit140.us ] ; 2 uses
  %niter198 = phi i64 [ 0, %to_log.exit140.us.preheader.new ], [ %niter198.next.1, %to_log.exit140.us ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv170
  %i.bu = load <2 x float>, ptr %i.bt, align 4, !tbaa !13
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bu, %i.bn
  %i.bw = fadd reassoc nsz arcp contract afn <2 x float> %i.bv, splat (float 1.000000e+00)
  %i.bx = call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.bw)
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, %i.br ; 2 uses
  %i.bz = extractelement <2 x float> %i.by, i64 1
  %i.ca = fsub reassoc nsz arcp contract afn float %i.ap, %i.bz ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.ca
  %i.cc = extractelement <2 x float> %i.by, i64 0
  %i.cd = fsub reassoc nsz arcp contract afn float %i.am, %i.cc ; 2 uses
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %i.cd
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, %i.cb ; 2 uses
  %i.cg = fcmp reassoc nsz arcp contract afn olt float %i.cf, %.0107164.us ; 2 uses
  %spec.select118.us = select nsz i1 %i.cg, float %i.cf, float %.0107164.us ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv170 to i32
  %spec.select119.us = select i1 %i.cg, i32 %i.ch, i32 %.0106165.us
  %indvars.iv.next171 = or disjoint i64 %indvars.iv170, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next171
  %i.cj = load <2 x float>, ptr %i.ci, align 4, !tbaa !13
  %i.ck = fmul reassoc nsz arcp contract afn <2 x float> %i.cj, %i.bn
  %i.cl = fadd reassoc nsz arcp contract afn <2 x float> %i.ck, splat (float 1.000000e+00)
  %i.cm = call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.cl)
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, %i.bs ; 2 uses
  %i.co = extractelement <2 x float> %i.cn, i64 1
  %i.cp = fsub reassoc nsz arcp contract afn float %i.ap, %i.co ; 2 uses
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.cp
  %i.cr = extractelement <2 x float> %i.cn, i64 0
  %i.cs = fsub reassoc nsz arcp contract afn float %i.am, %i.cr ; 2 uses
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cs
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.cq ; 2 uses
  %i.cv = fcmp reassoc nsz arcp contract afn olt float %i.cu, %spec.select118.us ; 2 uses
  %spec.select118.us.1 = select nsz i1 %i.cv, float %i.cu, float %spec.select118.us ; 2 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv.next171 to i32
  %spec.select119.us.1 = select i1 %i.cv, i32 %i.cw, i32 %spec.select119.us ; 3 uses
  %indvars.iv.next171.1 = add nuw nsw i64 %indvars.iv170, 2 ; 2 uses
  %niter198.next.1 = add i64 %niter198, 2         ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %to_log.exit140.us

bb.c:                                             ; preds = %to_lin.exit121
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !158 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, -1
  br i1 %i.cz, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.da = extractelement <2 x double> %i.ad, i64 0
  %i.db = fdiv reassoc nsz arcp contract afn double %i.o, %i.da ; 3 uses
  %i.dc = zext nneg i32 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dc ; 3 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !143 ; 2 uses
  br i1 %i.as, label %bb.e, label %to_log.exit

to_log.exit:                                      ; preds = %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dg = load float, ptr %i.df, align 4, !tbaa !170
  br label %to_log.exit124

bb.e:                                             ; preds = %bb.d
  %i.dh = fmul reassoc nsz arcp contract afn float %i.de, %i.ar
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, 1.000000e+00
  %i.dj = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.di)
  %i.dk = fadd reassoc nsz arcp contract afn float %i.ar, 1.000000e+00
  %i.dl = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.dk) ; 2 uses
  %i.dm = fdiv reassoc nsz arcp contract afn float %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !170
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.ar
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, 1.000000e+00
  %i.dr = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.dq)
  %i.ds = fdiv reassoc nsz arcp contract afn float %i.dr, %i.dl
  br label %to_log.exit124

to_log.exit124:                                   ; preds = %to_log.exit, %bb.e
  %.pn156.in = phi float [ %i.dm, %bb.e ], [ %i.de, %to_log.exit ]
  %.0.i123 = phi nsz float [ %i.ds, %bb.e ], [ %i.dg, %to_log.exit ]
  %.pn156 = fpext float %.pn156.in to double
  %.in = fsub reassoc nsz arcp contract afn double %i.db, %.pn156
  %i.dt = fptrunc double %.in to float
  %i.du = extractelement <2 x double> %i.ad, i64 1 ; 3 uses
  %.pn = fdiv reassoc nsz arcp contract afn double %i.q, %i.du
  %i.dv = fsub reassoc nsz arcp contract afn double 1.000000e+00, %.pn ; 3 uses
  %i.dw = fpext reassoc nsz arcp contract afn float %.0.i123 to double
  %i.dx = fsub reassoc nsz arcp contract afn double %i.dv, %i.dw
  %i.dy = fptrunc reassoc nsz arcp contract afn double %i.dx to float ; 2 uses
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x double> %i.aa, %i.ad
  %i.dz = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ea = fpext reassoc nsz arcp contract afn float %i.dt to double ; 3 uses
  %i.eb = fsub reassoc nsz arcp contract afn double %i.dz, %i.ea
  %i.ec = fptrunc reassoc nsz arcp contract afn double %i.eb to float ; 2 uses
  br i1 %i.as, label %bb.f, label %to_lin.exit130

to_lin.exit130:                                   ; preds = %to_log.exit124
  %i.ed = fsub reassoc nsz arcp contract afn double %i.db, %i.ea
  %i.ee = fptrunc reassoc nsz arcp contract afn double %i.ed to float
  %i.ef = fsub reassoc nsz arcp contract afn float %i.ec, %i.ee
  %i.eg = fpext reassoc nsz arcp contract afn float %i.dy to double ; 2 uses
  %i.eh = fdiv reassoc nsz arcp contract afn double %i.ac, %i.du
  %i.ei = fadd reassoc nsz arcp contract afn double %i.eh, %i.eg
  %i.ej = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ei
  %i.ek = fptrunc reassoc nsz arcp contract afn double %i.ej to float
  %i.el = fsub reassoc nsz arcp contract afn double %i.dv, %i.eg
  %i.em = fptrunc reassoc nsz arcp contract afn double %i.el to float
  br label %to_lin.exit132

bb.f:                                             ; preds = %to_log.exit124
  %i.en = fadd reassoc nsz arcp contract afn float %i.ar, -1.000000e+00 ; 4 uses
  %i.eo = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.en, float %i.ec)
  %i.ep = fsub reassoc nsz arcp contract afn double %i.db, %i.ea
  %i.eq = fptrunc reassoc nsz arcp contract afn double %i.ep to float
  %i.er = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.en, float %i.eq)
  %i.es = fsub reassoc nsz arcp contract afn float %i.eo, %i.er
  %i.et = fdiv reassoc nsz arcp contract afn float %i.es, %i.ar
  %i.eu = fpext reassoc nsz arcp contract afn float %i.dy to double ; 2 uses
  %i.ev = fdiv reassoc nsz arcp contract afn double %i.ac, %i.du
  %i.ew = fadd reassoc nsz arcp contract afn double %i.ev, %i.eu
  %i.ex = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ew
  %i.ey = fptrunc reassoc nsz arcp contract afn double %i.ex to float
  %i.ez = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.en, float %i.ey)
  %i.fa = fadd reassoc nsz arcp contract afn float %i.ez, -1.000000e+00
  %i.fb = fdiv reassoc nsz arcp contract afn float %i.fa, %i.ar
  %i.fc = fsub reassoc nsz arcp contract afn double %i.dv, %i.eu
  %i.fd = fptrunc reassoc nsz arcp contract afn double %i.fc to float
  %i.fe = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.en, float %i.fd)
  %i.ff = fadd reassoc nsz arcp contract afn float %i.fe, -1.000000e+00
  %i.fg = fdiv reassoc nsz arcp contract afn float %i.ff, %i.ar
  br label %to_lin.exit132
end_hunk_1
