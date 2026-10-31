Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lowlight?download=true
inline.NumInlined: 52
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@lowlight_draw:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %3, ptr noundef nonnull align 4 dereferenceable(52) %i.d, i64 52, i1 false), !tbaa.struct !120
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !115  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = load <2 x float>, ptr %i.h, align 4, !tbaa !33 ; 3 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  store float %i.s, ptr %i.j, align 4, !tbaa !44
  %i.t = load <2 x float>, ptr %i.f, align 4, !tbaa !33 ; 2 uses
  %i.u = load float, ptr %i.l, align 4, !tbaa !33
  %i.v = load <8 x float>, ptr %i.n, align 4, !tbaa !33
  %i.w = shufflevector <2 x float> %i.t, <2 x float> %i.r, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <8 x float> %i.v, <8 x float> poison, <8 x i32> <i32 0, i32 6, i32 1, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.y = shufflevector <8 x float> %i.w, <8 x float> %i.x, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.y, ptr %i.k, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.ae = load <2 x float>, ptr %i.g, align 4, !tbaa !33 ; 3 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, -1.000000e+00 ; 2 uses
  store float %i.ag, ptr %i.i, align 8, !tbaa !43
  %i.ah = load <2 x float>, ptr %i.aa, align 4, !tbaa !33 ; 2 uses
  %i.ai = load float, ptr %i.ad, align 4, !tbaa !33
  %i.aj = shufflevector <2 x float> %i.ae, <2 x float> %i.ah, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.aj, ptr %i.ab, align 8, !tbaa !33
  %i.ak = fadd reassoc nsz arcp contract afn float %i.u, 1.000000e+00 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store float %i.ak, ptr %i.al, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  store float %i.ai, ptr %i.am, align 4, !tbaa !44
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1432
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !127
  %i.aq = fmul reassoc nsz arcp contract afn double %i.ap, 5.000000e+00
  %i.ar = fptosi double %i.aq to i32              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %4) #19
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !129 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !130
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %i.av to double
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1432
  %i.az = load double, ptr %i.ay, align 8, !tbaa !127
  %i.ba = fmul reassoc nsz arcp contract afn double %i.az, 5.000000e+00
  %i.bb = fsub reassoc nsz arcp contract afn double %i.aw, %i.ba
  %i.bc = fptosi double %i.bb to i32              ; 2 uses
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.at to double
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 1440
  %i.bf = load double, ptr %i.be, align 8, !tbaa !154 ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn double %i.bf, %i.bd
  %i.bh = fptosi double %i.bg to i32
  %i.bi = sitofp reassoc nsz arcp contract afn i32 %i.bc to double
  %i.bj = fmul reassoc nsz arcp contract afn double %i.bf, %i.bi
  %i.bk = fptosi double %i.bj to i32
  %i.bl = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.bh, i32 noundef %i.bk) #19 ; 4 uses
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1440
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !154 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.bl, double noundef %i.bo, double noundef %i.bo) #19
  %i.bp = call ptr @cairo_create(ptr noundef %i.bl) #19 ; 153 uses
  call void @cairo_set_source_rgb(ptr noundef %i.bp, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #19
  call void @cairo_paint(ptr noundef %i.bp) #19
  %i.bq = sitofp reassoc nsz arcp contract afn i32 %i.ar to double ; 2 uses
  call void @cairo_translate(ptr noundef %i.bp, double noundef %i.bq, double noundef %i.bq) #19
  %i.br = shl nsw i32 %i.ar, 1                    ; 2 uses
  %i.bs = sub nsw i32 %i.at, %i.br                ; 7 uses
  %i.bt = sub nsw i32 %i.bc, %i.br                ; 6 uses
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1432
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !127
  call void @cairo_set_line_width(ptr noundef %i.bp, double noundef %i.bw) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bp, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #19
  %i.bx = sitofp reassoc nsz arcp contract afn i32 %i.bs to double ; 5 uses
  %i.by = sitofp reassoc nsz arcp contract afn i32 %i.bt to double ; 6 uses
  call void @cairo_rectangle(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bx, double noundef %i.by) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bp, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01) #19
  call void @cairo_rectangle(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bx, double noundef %i.by) #19
  call void @cairo_fill(ptr noundef %i.bp) #19
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1432
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !127
  %i.cc = fmul reassoc nsz arcp contract afn double %i.cb, 4.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.bp, double noundef %i.cc) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bp, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #19
  %i.cd = sitofp reassoc nsz arcp contract afn i32 %i.bs to float ; 21 uses
  %i.ce = sitofp reassoc nsz arcp contract afn i32 %i.bt to float ; 8 uses
  %invariant.op.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 1.250000e-01
  %factor.op.fmul.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 1.250000e-01
  %i.cf = fpext reassoc nsz arcp contract afn float %i.ce to double ; 7 uses
  %i.cg = fpext reassoc nsz arcp contract afn float %i.cd to double ; 7 uses
  %i.ch = fpext reassoc nsz arcp contract afn float %invariant.op.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.ch, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.ch, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.ci = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.ci) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.ci) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 2.500000e-01
  %.reass.1.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 2.500000e-01
  %i.cj = fpext reassoc nsz arcp contract afn float %.reass.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.cj, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cj, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.ck = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.ck) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.ck) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 3.750000e-01
  %.reass.2.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 3.750000e-01
  %i.cl = fpext reassoc nsz arcp contract afn float %.reass.2.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.cl, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cl, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.cm = fpext reassoc nsz arcp contract afn float %.reass31.2.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.cm) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.cm) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.3.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 5.000000e-01
  %.reass.3.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 5.000000e-01
  %i.cn = fpext reassoc nsz arcp contract afn float %.reass.3.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.cn, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cn, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.co = fpext reassoc nsz arcp contract afn float %.reass31.3.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.co) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.co) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.4.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 6.250000e-01
  %.reass.4.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 6.250000e-01
  %i.cp = fpext reassoc nsz arcp contract afn float %.reass.4.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.cp, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cp, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.cq = fpext reassoc nsz arcp contract afn float %.reass31.4.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.cq) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.cq) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.5.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 7.500000e-01
  %.reass.5.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 7.500000e-01
  %i.cr = fpext reassoc nsz arcp contract afn float %.reass.5.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.cr, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cr, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.cs = fpext reassoc nsz arcp contract afn float %.reass31.5.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.cs) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.cs) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %.reass31.6.i = fmul reassoc nnan nsz arcp contract afn float %i.ce, 8.750000e-01
  %.reass.6.i = fmul reassoc nnan nsz arcp contract afn float %i.cd, 8.750000e-01
  %i.ct = fpext reassoc nsz arcp contract afn float %.reass.6.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef %i.ct, double noundef 0.000000e+00) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.ct, double noundef %i.cf) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.cu = fpext reassoc nsz arcp contract afn float %.reass31.6.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.bp, double noundef 0.000000e+00, double noundef %i.cu) #19
  call void @cairo_line_to(ptr noundef %i.bp, double noundef %i.cg, double noundef %i.cu) #19
  call void @cairo_stroke(ptr noundef %i.bp) #19
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !131
  %i.cx = fcmp reassoc nsz arcp contract afn ogt double %i.cw, 0.000000e+00
  br i1 %i.cx, label %vector.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !117
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %dt_draw_curve_calc_values.exit242, label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !132 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !119 ; 2 uses
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.dd
  %i.df = fpext reassoc nsz arcp contract afn float %i.de to double ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !33
  %i.do = insertelement <2 x float> %i.ae, float %i.dn, i64 1
  %i.dp = fpext <2 x float> %i.do to <2 x double>
  %i.dq = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fsub reassoc nsz arcp contract afn <2 x double> %i.dr, %i.dp ; 2 uses
  %i.dt = fneg reassoc nsz arcp contract afn <2 x double> %i.ds
  %i.du = fmul reassoc nsz arcp contract afn <2 x double> %i.ds, %i.dt
  %i.dv = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = fdiv reassoc nsz arcp contract afn <2 x double> %i.du, %i.dw
  %i.dy = fptrunc <2 x double> %i.dx to <2 x float>
  %i.dz = call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.dy) ; 2 uses
  %i.ea = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.dz
  %i.eb = insertelement <2 x float> %i.ah, float %i.dl, i64 0
  %i.ec = fmul reassoc nsz arcp contract afn <2 x float> %i.eb, %i.ea
  %i.ed = fadd reassoc nsz arcp contract afn <2 x float> %i.ec, %i.dz ; 2 uses
  store <2 x float> %i.ed, ptr %i.dk, align 4, !tbaa !33
  %i.ee = load ptr, ptr %i.b, align 8, !tbaa !115 ; 10 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store float %i.ag, ptr %i.ef, align 8, !tbaa !43
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.ei = load <4 x float>, ptr %i.f, align 4, !tbaa !33 ; 2 uses
  %i.ej = load <4 x float>, ptr %i.dj, align 4
  %i.ek = load <4 x float>, ptr %i.di, align 4
  %i.el = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.em = shufflevector <4 x float> %i.ei, <4 x float> %i.el, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.en = shufflevector <4 x float> %i.em, <4 x float> %i.ek, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.eo = fpext <4 x float> %i.en to <4 x double>
  %i.ep = insertelement <4 x double> poison, double %i.db, i64 0
  %i.eq = shufflevector <4 x double> %i.ep, <4 x double> poison, <4 x i32> zeroinitializer
  %i.er = fsub reassoc nsz arcp contract afn <4 x double> %i.eq, %i.eo ; 2 uses
  %i.es = fneg reassoc nsz arcp contract afn <4 x double> %i.er
  %i.et = fmul reassoc nsz arcp contract afn <4 x double> %i.er, %i.es
  %i.eu = insertelement <4 x double> poison, double %i.df, i64 0
  %i.ev = shufflevector <4 x double> %i.eu, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ew = fdiv reassoc nsz arcp contract afn <4 x double> %i.et, %i.ev
  %i.ex = fptrunc <4 x double> %i.ew to <4 x float>
  %i.ey = call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %i.ex) ; 2 uses
  %i.ez = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ey
  %i.fa = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fb = insertelement <4 x float> %i.fa, float %i.dh, i64 1
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fd = fmul reassoc nsz arcp contract afn <4 x float> %i.ez, %i.fc
  %i.fe = fadd reassoc nsz arcp contract afn <4 x float> %i.fd, %i.ey ; 3 uses
  store <4 x float> %i.fe, ptr %i.h, align 4, !tbaa !33
  %i.ff = extractelement <4 x float> %i.fe, i64 0
  store float %i.ff, ptr %i.eg, align 4, !tbaa !44
  %i.fg = shufflevector <4 x float> %i.ei, <4 x float> %i.fe, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.fg, ptr %i.eh, align 8, !tbaa !33
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.fi = load <8 x float>, ptr %i.z, align 4, !tbaa !33
  %i.fj = shufflevector <8 x float> %i.fi, <8 x float> poison, <4 x i32> <i32 0, i32 6, i32 1, i32 7>
  store <4 x float> %i.fj, ptr %i.fh, align 8, !tbaa !33
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  store float %i.ak, ptr %i.fk, align 8, !tbaa !43
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ee, i64 84
  %i.fm = extractelement <2 x float> %i.ed, i64 1
  store float %i.fm, ptr %i.fl, align 4, !tbaa !44
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 184 ; 2 uses
  store i32 64, ptr %i.fn, align 8, !tbaa !49
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ee, i64 188
  store i32 65536, ptr %i.fo, align 4, !tbaa !50
  %i.fp = call i32 @CurveDataSample(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.fn) #19 ; 0 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  store <8 x float> <float 0.000000e+00, float 1.562500e-02, float 3.125000e-02, float 4.687500e-02, float 6.250000e-02, float 7.812500e-02, float 9.375000e-02, float 1.093750e-01>, ptr %i.fq, align 8, !tbaa !33
  store <8 x float> <float 1.250000e-01, float 1.406250e-01, float 1.562500e-01, float 1.718750e-01, float 1.875000e-01, float 2.031250e-01, float 2.187500e-01, float 2.343750e-01>, ptr %i.fr, align 8, !tbaa !33
  store <8 x float> <float 2.500000e-01, float 2.656250e-01, float 2.812500e-01, float 2.968750e-01, float 3.125000e-01, float 3.281250e-01, float 3.437500e-01, float 3.593750e-01>, ptr %i.fs, align 8, !tbaa !33
  store <8 x float> <float 3.750000e-01, float 3.906250e-01, float 4.062500e-01, float 4.218750e-01, float 4.375000e-01, float 4.531250e-01, float 4.687500e-01, float 4.843750e-01>, ptr %i.ft, align 8, !tbaa !33
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 752
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  store <8 x float> <float 5.000000e-01, float 5.156250e-01, float 5.312500e-01, float 5.468750e-01, float 5.625000e-01, float 5.781250e-01, float 5.937500e-01, float 6.093750e-01>, ptr %i.fu, align 8, !tbaa !33
  store <8 x float> <float 6.250000e-01, float 6.406250e-01, float 6.562500e-01, float 6.718750e-01, float 6.875000e-01, float 7.031250e-01, float 7.187500e-01, float 7.343750e-01>, ptr %i.fv, align 8, !tbaa !33
  store <8 x float> <float 7.500000e-01, float 7.656250e-01, float 7.812500e-01, float 7.968750e-01, float 8.125000e-01, float 8.281250e-01, float 8.437500e-01, float 8.593750e-01>, ptr %i.fw, align 8, !tbaa !33
  store <8 x float> <float 8.750000e-01, float 8.906250e-01, float 9.062500e-01, float 9.218750e-01, float 9.375000e-01, float 9.531250e-01, float 9.687500e-01, float 9.843750e-01>, ptr %i.fx, align 8, !tbaa !33
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ee, i64 192
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !51 ; 8 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %wide.load = load <8 x i16>, ptr %i.fz, align 2, !tbaa !52
  %wide.load281 = load <8 x i16>, ptr %i.gb, align 2, !tbaa !52
  %wide.load282 = load <8 x i16>, ptr %i.gc, align 2, !tbaa !52
  %wide.load283 = load <8 x i16>, ptr %i.gd, align 2, !tbaa !52
  %i.ge = uitofp <8 x i16> %wide.load to <8 x float>
  %i.gf = uitofp <8 x i16> %wide.load281 to <8 x float>
  %i.gg = uitofp <8 x i16> %wide.load282 to <8 x float>
  %i.gh = uitofp <8 x i16> %wide.load283 to <8 x float>
  %i.gi = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ge, splat (float f0x37800000)
  %i.gj = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gf, splat (float f0x37800000)
  %i.gk = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gg, splat (float f0x37800000)
  %i.gl = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gh, splat (float f0x37800000)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 944
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 976
  store <8 x float> %i.gi, ptr %i.ga, align 8, !tbaa !33
  store <8 x float> %i.gj, ptr %i.gm, align 8, !tbaa !33
  store <8 x float> %i.gk, ptr %i.gn, align 8, !tbaa !33
  store <8 x float> %i.gl, ptr %i.go, align 8, !tbaa !33
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fz, i64 112
  %wide.load.1 = load <8 x i16>, ptr %i.gp, align 2, !tbaa !52
  %wide.load281.1 = load <8 x i16>, ptr %i.gq, align 2, !tbaa !52
  %wide.load282.1 = load <8 x i16>, ptr %i.gr, align 2, !tbaa !52
  %wide.load283.1 = load <8 x i16>, ptr %i.gs, align 2, !tbaa !52
  %i.gt = uitofp <8 x i16> %wide.load.1 to <8 x float>
  %i.gu = uitofp <8 x i16> %wide.load281.1 to <8 x float>
  %i.gv = uitofp <8 x i16> %wide.load282.1 to <8 x float>
  %i.gw = uitofp <8 x i16> %wide.load283.1 to <8 x float>
  %i.gx = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gt, splat (float f0x37800000)
  %i.gy = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gu, splat (float f0x37800000)
  %i.gz = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gv, splat (float f0x37800000)
  %i.ha = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gw, splat (float f0x37800000)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 1008
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 1072
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  store <8 x float> %i.gx, ptr %i.hb, align 8, !tbaa !33
  store <8 x float> %i.gy, ptr %i.hc, align 8, !tbaa !33
  store <8 x float> %i.gz, ptr %i.hd, align 8, !tbaa !33
  store <8 x float> %i.ha, ptr %i.he, align 8, !tbaa !33
  %i.hf = load ptr, ptr %i.c, align 8, !tbaa !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %3, ptr noundef nonnull align 4 dereferenceable(52) %i.hf, i64 52, i1 false), !tbaa.struct !120
  %i.hg = load double, ptr %i.da, align 8, !tbaa !132
  %i.hh = load float, ptr %i.dc, align 8, !tbaa !119
  call fastcc void @dt_iop_lowlight_get_params(ptr noundef nonnull %3, double noundef %i.hg, double noundef 0.000000e+00, float noundef %i.hh)
  %i.hi = load ptr, ptr %i.b, align 8, !tbaa !115 ; 10 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 28
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.hm = load <2 x float>, ptr %i.h, align 4, !tbaa !33 ; 2 uses
  %i.hn = extractelement <2 x float> %i.hm, i64 0
  store float %i.hn, ptr %i.hk, align 4, !tbaa !44
  %i.ho = load <2 x float>, ptr %i.f, align 4, !tbaa !33
  %i.hp = load float, ptr %i.l, align 4, !tbaa !33
  %i.hq = load <8 x float>, ptr %i.n, align 4, !tbaa !33
  %i.hr = shufflevector <2 x float> %i.ho, <2 x float> %i.hm, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hs = shufflevector <8 x float> %i.hq, <8 x float> poison, <8 x i32> <i32 0, i32 6, i32 1, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ht = shufflevector <8 x float> %i.hr, <8 x float> %i.hs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x float> %i.ht, ptr %i.hl, align 8, !tbaa !33
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hi, i64 64
  %i.hv = load <2 x float>, ptr %i.g, align 4, !tbaa !33 ; 2 uses
  %i.hw = extractelement <2 x float> %i.hv, i64 0
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hw, -1.000000e+00
  store float %i.hx, ptr %i.hj, align 8, !tbaa !43
  %i.hy = load <2 x float>, ptr %i.aa, align 4, !tbaa !33
  %i.hz = load float, ptr %i.ad, align 4, !tbaa !33
  %i.ia = shufflevector <2 x float> %i.hv, <2 x float> %i.hy, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ia, ptr %i.hu, align 8, !tbaa !33
  %i.ib = fadd reassoc nsz arcp contract afn float %i.hp, 1.000000e+00
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hi, i64 80
  store float %i.ib, ptr %i.ic, align 8, !tbaa !43
  %i.id = getelementptr inbounds nuw i8, ptr %i.hi, i64 84
  store float %i.hz, ptr %i.id, align 4, !tbaa !44
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hi, i64 184 ; 2 uses
  store i32 64, ptr %i.ie, align 8, !tbaa !49
  %i.if = getelementptr inbounds nuw i8, ptr %i.hi, i64 188
  store i32 65536, ptr %i.if, align 4, !tbaa !50
  %i.ig = call i32 @CurveDataSample(ptr noundef nonnull %i.hi, ptr noundef nonnull %i.ie) #19 ; 0 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 1200
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 1232
  store <8 x float> <float 0.000000e+00, float 1.562500e-02, float 3.125000e-02, float 4.687500e-02, float 6.250000e-02, float 7.812500e-02, float 9.375000e-02, float 1.093750e-01>, ptr %i.ih, align 8, !tbaa !33
  store <8 x float> <float 1.250000e-01, float 1.406250e-01, float 1.562500e-01, float 1.718750e-01, float 1.875000e-01, float 2.031250e-01, float 2.187500e-01, float 2.343750e-01>, ptr %i.ii, align 8, !tbaa !33
  store <8 x float> <float 2.500000e-01, float 2.656250e-01, float 2.812500e-01, float 2.968750e-01, float 3.125000e-01, float 3.281250e-01, float 3.437500e-01, float 3.593750e-01>, ptr %i.ij, align 8, !tbaa !33
  store <8 x float> <float 3.750000e-01, float 3.906250e-01, float 4.062500e-01, float 4.218750e-01, float 4.375000e-01, float 4.531250e-01, float 4.687500e-01, float 4.843750e-01>, ptr %i.ik, align 8, !tbaa !33
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 1264
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 1296
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 1328
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  store <8 x float> <float 5.000000e-01, float 5.156250e-01, float 5.312500e-01, float 5.468750e-01, float 5.625000e-01, float 5.781250e-01, float 5.937500e-01, float 6.093750e-01>, ptr %i.il, align 8, !tbaa !33
  store <8 x float> <float 6.250000e-01, float 6.406250e-01, float 6.562500e-01, float 6.718750e-01, float 6.875000e-01, float 7.031250e-01, float 7.187500e-01, float 7.343750e-01>, ptr %i.im, align 8, !tbaa !33
  store <8 x float> <float 7.500000e-01, float 7.656250e-01, float 7.812500e-01, float 7.968750e-01, float 8.125000e-01, float 8.281250e-01, float 8.437500e-01, float 8.593750e-01>, ptr %i.in, align 8, !tbaa !33
  store <8 x float> <float 8.750000e-01, float 8.906250e-01, float 9.062500e-01, float 9.218750e-01, float 9.375000e-01, float 9.531250e-01, float 9.687500e-01, float 9.843750e-01>, ptr %i.io, align 8, !tbaa !33
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hi, i64 192
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !51 ; 8 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 1392
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  %wide.load299 = load <8 x i16>, ptr %i.iq, align 2, !tbaa !52
  %wide.load300 = load <8 x i16>, ptr %i.is, align 2, !tbaa !52
  %wide.load301 = load <8 x i16>, ptr %i.it, align 2, !tbaa !52
  %wide.load302 = load <8 x i16>, ptr %i.iu, align 2, !tbaa !52
  %i.iv = uitofp <8 x i16> %wide.load299 to <8 x float>
  %i.iw = uitofp <8 x i16> %wide.load300 to <8 x float>
  %i.ix = uitofp <8 x i16> %wide.load301 to <8 x float>
  %i.iy = uitofp <8 x i16> %wide.load302 to <8 x float>
  %i.iz = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.iv, splat (float f0x37800000)
  %i.ja = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.iw, splat (float f0x37800000)
  %i.jb = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ix, splat (float f0x37800000)
  %i.jc = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.iy, splat (float f0x37800000)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 1424
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 1456
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 1488
  store <8 x float> %i.iz, ptr %i.ir, align 8, !tbaa !33
  store <8 x float> %i.ja, ptr %i.jd, align 8, !tbaa !33
  store <8 x float> %i.jb, ptr %i.je, align 8, !tbaa !33
  store <8 x float> %i.jc, ptr %i.jf, align 8, !tbaa !33
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iq, i64 80
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iq, i64 96
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iq, i64 112
  %wide.load299.1 = load <8 x i16>, ptr %i.jg, align 2, !tbaa !52
  %wide.load300.1 = load <8 x i16>, ptr %i.jh, align 2, !tbaa !52
  %wide.load301.1 = load <8 x i16>, ptr %i.ji, align 2, !tbaa !52
  %wide.load302.1 = load <8 x i16>, ptr %i.jj, align 2, !tbaa !52
  %i.jk = uitofp <8 x i16> %wide.load299.1 to <8 x float>
  %i.jl = uitofp <8 x i16> %wide.load300.1 to <8 x float>
  %i.jm = uitofp <8 x i16> %wide.load301.1 to <8 x float>
  %i.jn = uitofp <8 x i16> %wide.load302.1 to <8 x float>
  %i.jo = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.jk, splat (float f0x37800000)
  %i.jp = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.jl, splat (float f0x37800000)
  %i.jq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.jm, splat (float f0x37800000)
  %i.jr = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.jn, splat (float f0x37800000)
  %i.js = getelementptr inbounds nuw i8, ptr %i.b, i64 1520
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 1552
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 1616
  store <8 x float> %i.jo, ptr %i.js, align 8, !tbaa !33
  store <8 x float> %i.jp, ptr %i.jt, align 8, !tbaa !33
  store <8 x float> %i.jq, ptr %i.ju, align 8, !tbaa !33
  store <8 x float> %i.jr, ptr %i.jv, align 8, !tbaa !33
  br label %dt_draw_curve_calc_values.exit242

dt_draw_curve_calc_values.exit242:                ; preds = %vector.ph, %bb.b
  call void @cairo_save(ptr noundef %i.bp) #19
  call void @cairo_set_source_rgb(ptr noundef %i.bp, double noundef 6.000000e-01, double noundef 6.000000e-01, double noundef 6.000000e-01) #19
  %i.jw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
end_hunk_0
begin_hunk_1_@lowlight_button_press:bb.a
dt_draw_curve_calc_value.exit:                    ; preds = %._crit_edge.i, %bb.e
  %.026.i = phi nsz float [ %i.dl, %bb.e ], [ 0.000000e+00, %._crit_edge.i ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !173 ; 2 uses
  %i.do = fcmp reassoc nsz arcp contract afn ogt float %.026.i, %i.dn
  %.026..i = select reassoc nsz arcp contract afn i1 %i.do, float %.026.i, float %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !174 ; 2 uses
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %.026..i, %i.dq
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.dr, float %.026..i, float %i.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ds = fpext reassoc nsz arcp contract afn float %spec.select.i to double
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = load double, ptr %i.du, align 8, !tbaa !175
  %i.dw = fsub reassoc nsz arcp contract afn double %i.dv, %i.bz ; 3 uses
  %i.dx = sitofp reassoc nsz arcp contract afn i32 %i.bs to double ; 2 uses
  %i.dy = fcmp reassoc nsz arcp contract afn ogt double %i.dw, %i.dx
  %i.dz = fcmp reassoc nsz arcp contract afn olt double %i.dw, 0.000000e+00
  %spec.select51 = select reassoc nsz arcp contract afn i1 %i.dz, double 0.000000e+00, double %i.dw
  %i.ea = select reassoc nsz arcp contract afn i1 %i.dy, double %i.dx, double %spec.select51
  %i.eb = sitofp reassoc nsz arcp contract afn i32 %i.bs to float
  %i.ec = fpext reassoc nsz arcp contract afn float %i.eb to double
  %i.ed = fdiv reassoc nsz arcp contract afn double %i.ea, %i.ec
  %i.ee = fadd reassoc nsz arcp contract afn double %i.ds, -1.000000e+00
  %i.ef = fadd reassoc nsz arcp contract afn double %i.ee, %i.ed
  store double %i.ef, ptr %i.dt, align 8, !tbaa !116
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i32 1, ptr %i.eg, align 8, !tbaa !117
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %dt_draw_curve_calc_value.exit
  %.046 = phi i32 [ 1, %dt_draw_curve_calc_value.exit ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.046
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @lowlight_button_release(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !137
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i32 0, ptr %i.f, align 8, !tbaa !117
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lowlight_motion_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !70  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 8 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1432
  %i.g = load double, ptr %i.f, align 8, !tbaa !127
  %i.h = fmul reassoc nsz arcp contract afn double %i.g, 5.000000e+00
  %i.i = fptosi double %i.h to i32                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #19
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !130
  %i.l = shl nsw i32 %i.i, 1                      ; 2 uses
  %i.m = sub nsw i32 %i.k, %i.l
  %i.n = sitofp reassoc nsz arcp contract afn i32 %i.m to double
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !121
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1432
  %i.q = load double, ptr %i.p, align 8, !tbaa !127
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, 5.000000e+00
  %i.s = fsub reassoc nsz arcp contract afn double %i.n, %i.r
  %i.t = fptosi double %i.s to i32                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !129
  %i.w = sub nsw i32 %i.v, %i.l                   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.y = load i32, ptr %i.x, align 8, !tbaa !117
  %.not = icmp eq i32 %i.y, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load double, ptr %i.z, align 8, !tbaa !177
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.i to double ; 2 uses
  %i.ac = fsub reassoc nsz arcp contract afn double %i.aa, %i.ab ; 3 uses
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.w to double ; 2 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ogt double %i.ac, %i.ad
  %i.af = fcmp reassoc nsz arcp contract afn olt double %i.ac, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.af, double 0.000000e+00, double %i.ac
  %i.ag = select reassoc nsz arcp contract afn i1 %i.ae, double %i.ad, double %spec.select
  %i.ah = sitofp reassoc nsz arcp contract afn i32 %i.w to float
  %i.ai = fpext reassoc nsz arcp contract afn float %i.ah to double
  %i.aj = fdiv reassoc nsz arcp contract afn double %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %i.aj, ptr %i.ak, align 8, !tbaa !132
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi double [ %.pre, %._crit_edge ], [ %i.ab, %bb.b ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load double, ptr %i.al, align 8, !tbaa !178 ; 2 uses
  %i.an = fsub reassoc nsz arcp contract afn double %i.am, %.pre-phi ; 3 uses
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.t to double ; 3 uses
  %i.ap = fcmp reassoc nsz arcp contract afn ogt double %i.an, %i.ao
  %i.aq = fcmp reassoc nsz arcp contract afn olt double %i.an, 0.000000e+00
  %spec.select85 = select reassoc nsz arcp contract afn i1 %i.aq, double 0.000000e+00, double %i.an
  %i.ar = select reassoc nsz arcp contract afn i1 %i.ap, double %i.ao, double %spec.select85
  %i.as = sitofp reassoc nsz arcp contract afn i32 %i.t to float
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double
  %i.au = fdiv reassoc nsz arcp contract afn double %i.ar, %i.at
  %i.av = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store double %i.av, ptr %i.aw, align 8, !tbaa !131
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.d, ptr noundef nonnull align 4 dereferenceable(52) %i.ax, i64 52, i1 false), !tbaa.struct !120
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !118 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bb = add nsw i32 %i.az, -1
  %or.cond = icmp ult i32 %i.bb, 4
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !177
  %i.be = fsub reassoc nsz arcp contract afn double %i.bd, %.pre-phi ; 3 uses
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.w to double ; 2 uses
  %i.bg = fcmp reassoc nsz arcp contract afn ogt double %i.be, %i.bf
  %i.bh = fcmp reassoc nsz arcp contract afn olt double %i.be, 0.000000e+00
  %spec.select86 = select reassoc nsz arcp contract afn i1 %i.bh, double 0.000000e+00, double %i.be
  %i.bi = select reassoc nsz arcp contract afn i1 %i.bg, double %i.bf, double %spec.select86
  %i.bj = sitofp reassoc nsz arcp contract afn i32 %i.w to float
  %i.bk = fpext reassoc nsz arcp contract afn float %i.bj to double
  %i.bl = fdiv reassoc nsz arcp contract afn double %i.bi, %i.bk
  %i.bm = fptrunc reassoc nsz arcp contract afn double %i.bl to float
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bo = zext nneg i32 %i.az to i64
  %i.bp = getelementptr [4 x i8], ptr %i.bn, i64 %i.bo ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !33
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, 1.000000e-03
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !33
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, -1.000000e-03
  %i.bw = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bs, float %i.bm)
  %i.bx = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bv, float %i.bw)
  store float %i.bx, ptr %i.bp, align 4, !tbaa !33
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bz = load double, ptr %i.by, align 8, !tbaa !132
  %i.ca = load double, ptr %i.aw, align 8, !tbaa !131
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !116
  %i.cd = fadd reassoc nsz arcp contract afn double %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !119
  call fastcc void @dt_iop_lowlight_get_params(ptr noundef nonnull %i.d, double noundef %i.bz, double noundef %i.cd, float noundef %i.cf)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  call void @gtk_widget_queue_draw(ptr noundef %0) #19
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !138
  call void @dt_dev_add_history_item_target(ptr noundef %i.cg, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %0) #19
  br label %bb.v

bb.i:                                             ; preds = %bb.c
  %i.ch = fcmp reassoc nsz arcp contract afn ogt double %i.am, %i.ao
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 7 uses
  br i1 %i.ch, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ci, align 4, !tbaa !118
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !132 ; 5 uses
  %i.cm = load <2 x float>, ptr %i.cj, align 4, !tbaa !33
  %i.cn = fpext <2 x float> %i.cm to <2 x double>
  %i.co = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fsub reassoc nsz arcp contract afn <2 x double> %i.cn, %i.cp
  %i.cr = fptrunc <2 x double> %i.cq to <2 x float>
  %i.cs = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cr) ; 2 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0 ; 2 uses
  %i.cu = extractelement <2 x float> %i.cs, i64 1 ; 2 uses
  %i.cv = fcmp reassoc nsz arcp contract afn olt float %i.cu, %i.ct
  br i1 %i.cv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.ci, align 4, !tbaa !118
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi nsz float [ %i.cu, %bb.k ], [ %i.ct, %bb.j ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !33
  %i.cy = fpext reassoc nsz arcp contract afn float %i.cx to double
  %i.cz = fsub reassoc nsz arcp contract afn double %i.cy, %i.cl
  %i.da = fptrunc double %i.cz to float
  %i.db = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.da) ; 2 uses
  %i.dc = fcmp reassoc nsz arcp contract afn olt float %i.db, %.1
  br i1 %i.dc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %i.ci, align 4, !tbaa !118
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1.1 = phi nsz float [ %i.db, %bb.m ], [ %.1, %bb.l ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.de = load float, ptr %i.dd, align 4, !tbaa !33
  %i.df = fpext reassoc nsz arcp contract afn float %i.de to double
  %i.dg = fsub reassoc nsz arcp contract afn double %i.df, %i.cl
  %i.dh = fptrunc double %i.dg to float
  %i.di = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dh) ; 2 uses
  %i.dj = fcmp reassoc nsz arcp contract afn olt float %i.di, %.1.1
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 3, ptr %i.ci, align 4, !tbaa !118
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.2 = phi nsz float [ %i.di, %bb.o ], [ %.1.1, %bb.n ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !33
  %i.dm = fpext reassoc nsz arcp contract afn float %i.dl to double
  %i.dn = fsub reassoc nsz arcp contract afn double %i.dm, %i.cl
  %i.do = fptrunc double %i.dn to float
  %i.dp = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.do) ; 2 uses
  %i.dq = fcmp reassoc nsz arcp contract afn olt float %i.dp, %.1.2
  br i1 %i.dq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 4, ptr %i.ci, align 4, !tbaa !118
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.3 = phi nsz float [ %i.dp, %bb.q ], [ %.1.2, %bb.p ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !33
  %i.dt = fpext reassoc nsz arcp contract afn float %i.ds to double
  %i.du = fsub reassoc nsz arcp contract afn double %i.dt, %i.cl
  %i.dv = fptrunc double %i.du to float
  %i.dw = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp reassoc nsz arcp contract afn olt float %i.dw, %.1.3
  br i1 %i.dx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 5, ptr %i.ci, align 4, !tbaa !118
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @gtk_widget_queue_draw(ptr noundef %0) #19
  br label %bb.v

bb.u:                                             ; preds = %bb.i
  store i32 -1, ptr %i.ci, align 4, !tbaa !118
  call void @gtk_widget_queue_draw(ptr noundef %0) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lowlight_leave_notify(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !70  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !117
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double -1.000000e+00, ptr %i.e, align 8, !tbaa !131
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @gtk_widget_queue_draw(ptr noundef %0) #19
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @lowlight_scrolled(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !70
  %i.d = tail call i32 @dt_gui_ignore_scroll(ptr noundef %1) #19
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.e = call i32 @dt_gui_get_scroll_unit_delta(ptr noundef %1, ptr noundef nonnull %i.a) #19
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !119
  %i.h = fpext reassoc nsz arcp contract afn float %i.g to double
  %i.i = load i32, ptr %i.a, align 4, !tbaa !179
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.k = fmul reassoc nnan nsz arcp contract afn double %i.j, 1.000000e-01
  %i.l = fadd reassoc nnan nsz arcp contract afn double %i.k, 1.000000e+00
  %i.m = fmul reassoc nsz arcp contract afn double %i.l, %i.h ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn ogt double %i.m, 1.000000e+00
  %i.o = fcmp reassoc nsz arcp contract afn olt double %i.m, f0x3FA1111111111111
  %i.p = fptrunc reassoc nsz arcp contract afn double %i.m to float
  %spec.select = select i1 %i.o, float f0x3D088889, float %i.p
  %i.q = select i1 %i.n, float 1.000000e+00, float %spec.select
  store float %i.q, ptr %i.f, align 8, !tbaa !119
  call void @gtk_widget_queue_draw(ptr noundef %0) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_tooltip_text(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @gui_cleanup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !70
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !115  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.e) #19
  tail call void @free(ptr noundef %i.c) #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection_linear() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection_linear
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @get_introspection() local_unnamed_addr #0 {
bb.a:
  ret ptr @introspection
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @introspection_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @introspection, align 8, !tbaa !182
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !34
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !34
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !34
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !34
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !34
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !34
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !34
  store ptr @introspection_init.f5, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 512), align 16, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.25) #22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.28) #22
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.29) #22
  %.not13 = icmp eq i32 %i.d, 0
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(16) @.str.30) #22
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.31) #22
  %.not15 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %spec.select = select i1 %.not15, ptr %i.i, ptr null
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.g, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %spec.select, %bb.h ], [ %i.g, %bb.g ], [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.25) #19
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.28) #19
  %.not6 = icmp eq i32 %i.b, 0
  br i1 %.not6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.29) #19
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.30) #19
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.31) #19
  %.not9 = icmp eq i32 %i.e, 0
  %. = select i1 %.not9, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ %., %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #15

declare i32 @CurveDataSample(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dt_iop_lowlight_get_params(ptr nofree noundef captures(none) %0, double noundef %1, double noundef %2, float noundef %3) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = fmul reassoc nsz arcp contract afn float %3, %3
  %i.c = fpext reassoc nsz arcp contract afn float %i.b to double ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load <4 x float>, ptr %i.a, align 4, !tbaa !33
  %i.f = fpext <4 x float> %i.e to <4 x double>
  %i.g = insertelement <4 x double> poison, double %1, i64 0
  %i.h = shufflevector <4 x double> %i.g, <4 x double> poison, <4 x i32> zeroinitializer
  %i.i = fsub reassoc nsz arcp contract afn <4 x double> %i.h, %i.f ; 2 uses
  %i.j = fneg reassoc nsz arcp contract afn <4 x double> %i.i
  %i.k = fmul reassoc nsz arcp contract afn <4 x double> %i.i, %i.j
  %i.l = insertelement <4 x double> poison, double %i.c, i64 0
  %i.m = shufflevector <4 x double> %i.l, <4 x double> poison, <4 x i32> zeroinitializer
  %i.n = fdiv reassoc nsz arcp contract afn <4 x double> %i.k, %i.m
  %i.o = fptrunc <4 x double> %i.n to <4 x float>
  %i.p = tail call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %i.o) ; 2 uses
  %i.q = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.p
  %i.r = load <4 x float>, ptr %i.d, align 4, !tbaa !33
  %i.s = fmul reassoc nsz arcp contract afn <4 x float> %i.q, %i.r
  %i.t = fpext <4 x float> %i.s to <4 x double>
  %i.u = fpext <4 x float> %i.p to <4 x double>
  %i.v = insertelement <4 x double> poison, double %2, i64 0
  %i.w = shufflevector <4 x double> %i.v, <4 x double> poison, <4 x i32> zeroinitializer
  %i.x = fmul reassoc nsz arcp contract afn <4 x double> %i.w, %i.u
  %i.y = fadd reassoc nsz arcp contract afn <4 x double> %i.x, %i.t
  %i.z = fptrunc <4 x double> %i.y to <4 x float>
  store <4 x float> %i.z, ptr %i.d, align 4, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.aa, align 4, !tbaa !33
  %i.ad = fpext <2 x float> %i.ac to <2 x double>
  %i.ae = insertelement <2 x double> poison, double %1, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fsub reassoc nsz arcp contract afn <2 x double> %i.af, %i.ad ; 2 uses
  %i.ah = fneg reassoc nsz arcp contract afn <2 x double> %i.ag
  %i.ai = fmul reassoc nsz arcp contract afn <2 x double> %i.ag, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.c, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fdiv reassoc nsz arcp contract afn <2 x double> %i.ai, %i.ak
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  %i.an = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.am) ; 2 uses
  %i.ao = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.an
  %i.ap = load <2 x float>, ptr %i.ab, align 4, !tbaa !33
  %i.aq = fmul reassoc nsz arcp contract afn <2 x float> %i.ao, %i.ap
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = fpext <2 x float> %i.an to <2 x double>
  %i.at = insertelement <2 x double> poison, double %2, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul reassoc nsz arcp contract afn <2 x double> %i.au, %i.as
  %i.aw = fadd reassoc nsz arcp contract afn <2 x double> %i.av, %i.ar
  %i.ax = fptrunc <2 x double> %i.aw to <2 x float>
  store <2 x float> %i.ax, ptr %i.ab, align 4, !tbaa !33
  ret void
}

declare void @cairo_save(ptr noundef) local_unnamed_addr #3

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_rel_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_restore(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_operator(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #3

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_rotate(ptr noundef, double noundef) local_unnamed_addr #3

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item_target(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #18

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #3

declare i32 @dt_gui_get_scroll_unit_delta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!13 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!14 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!15 = !{!"dt_dev_histogram_collection_params_t", !14, i64 0, !8, i64 8}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 20}
!19 = !{!"float", !7, i64 0}
!20 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !19, i64 16}
!21 = !{!"short", !7, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 2}
!23 = !{!"", !8, i64 0, !7, i64 16}
!24 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !22, i64 48, !23, i64 64, !7, i64 96, !8, i64 112}
!25 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!26 = !{!"p1 float", !11, i64 0}
!27 = !{!"dt_dev_distorted_mask_cache_t", !26, i64 0, !20, i64 8, !17, i64 32, !17, i64 40}
!28 = !{!"dt_dev_pixelpipe_iop_t", !12, i64 0, !13, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !15, i64 40, !16, i64 56, !18, i64 64, !7, i64 88, !19, i64 104, !8, i64 108, !8, i64 112, !17, i64 120, !8, i64 128, !8, i64 132, !20, i64 136, !20, i64 156, !20, i64 176, !20, i64 196, !8, i64 216, !8, i64 220, !24, i64 224, !24, i64 352, !7, i64 480, !8, i64 516, !25, i64 520, !27, i64 528, !27, i64 576}
!29 = !{!28, !11, i64 16}
!30 = !{!"p1 _ZTS15dt_draw_curve_t", !11, i64 0}
!31 = !{!"dt_iop_lowlight_data_t", !19, i64 0, !30, i64 8, !7, i64 16}
!32 = !{!31, !19, i64 0}
!33 = !{!19, !19, i64 0}
!34 = !{!7, !7, i64 0}
!35 = !{!"p1 omnipotent char", !11, i64 0}
!36 = !{!"p1 _ZTS11dt_action_t", !11, i64 0}
!37 = !{!"dt_action_t", !8, i64 0, !35, i64 8, !35, i64 16, !11, i64 24, !36, i64 32, !36, i64 40}
!38 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!39 = !{!"dt_iop_module_so_t", !37, i64 0, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !38, i64 488, !7, i64 496, !11, i64 520, !8, i64 528, !11, i64 536, !8, i64 544, !8, i64 548}
!40 = !{!39, !11, i64 520}
!41 = !{!31, !30, i64 8}
!42 = !{!"", !19, i64 0, !19, i64 4}
!43 = !{!42, !19, i64 0}
!44 = !{!42, !19, i64 4}
!45 = !{!"", !8, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !7, i64 20, !7, i64 24}
!46 = !{!"p1 short", !11, i64 0}
!47 = !{!"", !8, i64 0, !8, i64 4, !46, i64 8}
!48 = !{!"dt_draw_curve_t", !45, i64 0, !47, i64 184}
!49 = !{!48, !8, i64 184}
!50 = !{!48, !8, i64 188}
!51 = !{!48, !46, i64 192}
!52 = !{!21, !21, i64 0}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!"dt_iop_lowlight_params_t", !19, i64 0, !7, i64 4, !7, i64 28}
!56 = !{!55, !19, i64 0}
!57 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!58 = !{!"dt_pthread_mutex_t", !7, i64 0}
!59 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!60 = !{!"", !25, i64 0, !25, i64 8}
!61 = !{!"", !12, i64 0, !8, i64 8}
!62 = !{!"", !60, i64 0, !61, i64 16}
!63 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!64 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!65 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!66 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !38, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !16, i64 608, !18, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !57, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !58, i64 712, !11, i64 752, !11, i64 760, !59, i64 768, !59, i64 776, !11, i64 784, !62, i64 792, !63, i64 824, !63, i64 832, !63, i64 840, !63, i64 848, !63, i64 856, !63, i64 864, !63, i64 872, !8, i64 880, !63, i64 888, !63, i64 896, !63, i64 904, !64, i64 912, !64, i64 920, !63, i64 928, !63, i64 936, !8, i64 944, !65, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !63, i64 1096, !11, i64 1104, !8, i64 1112}
!67 = !{!66, !11, i64 688}
!68 = !{!48, !8, i64 0}
!69 = !{!48, !7, i64 20}
!70 = !{!66, !11, i64 704}
!71 = !{!66, !11, i64 680}
!72 = !{!"p1 _ZTS15_GtkDrawingArea", !11, i64 0}
!73 = !{!"double", !7, i64 0}
!74 = !{!"dt_iop_lowlight_gui_data_t", !30, i64 0, !63, i64 8, !72, i64 16, !73, i64 24, !73, i64 32, !73, i64 40, !19, i64 48, !55, i64 52, !8, i64 104, !8, i64 108, !7, i64 112, !7, i64 368, !7, i64 624, !7, i64 880, !7, i64 1136, !7, i64 1392}
!75 = !{!74, !63, i64 8}
!76 = !{!74, !72, i64 16}
!77 = !{!"dt_codepath_t", !8, i64 0}
!78 = !{!"p1 _ZTS6_GList", !11, i64 0}
!79 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!80 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!81 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!82 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!83 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!84 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!85 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!86 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
end_hunk_1
