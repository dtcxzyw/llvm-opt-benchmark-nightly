Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawdenoise?download=true
inline.NumInlined: 72
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 30
begin_hunk_0_@dt_gui_box_add

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @rawdenoise_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %3 = alloca %struct.dt_iop_rawdenoise_params_t, align 4 ; 8 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %5 = alloca %struct._PangoRectangle, align 4    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !67  ; 63 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 680 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %3, ptr noundef nonnull align 4 dereferenceable(164) %i.d, i64 164, i1 false), !tbaa.struct !121
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !75   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.i = sext i32 %i.f to i64                     ; 2 uses
  %i.j = getelementptr inbounds [20 x i8], ptr %i.h, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, -1.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 4 uses
  %i.o = getelementptr inbounds [20 x i8], ptr %i.n, i64 %i.i ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store float %i.m, ptr %i.p, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.t = load <4 x float>, ptr %i.o, align 4, !tbaa !12 ; 2 uses
  %i.u = extractelement <4 x float> %i.t, i64 0
  store float %i.u, ptr %i.q, align 4, !tbaa !56
  %i.v = load <4 x float>, ptr %i.j, align 4, !tbaa !12
  %i.w = shufflevector <4 x float> %i.v, <4 x float> %i.t, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.w, ptr %i.r, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store float %i.y, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  store float %i.aa, ptr %i.ac, align 4, !tbaa !56
  %i.ad = load float, ptr %i.s, align 4, !tbaa !12
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ad, 1.000000e+00
  %i.af = load float, ptr %i.z, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store float %i.ae, ptr %i.ag, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store float %i.af, ptr %i.ah, align 4, !tbaa !56
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1432
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !127
  %i.al = fmul reassoc nsz arcp contract afn double %i.ak, 5.000000e+00
  %i.am = fptosi double %i.al to i32              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %4) #22
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !130 ; 2 uses
  %i.ar = sitofp reassoc nsz arcp contract afn i32 %i.ao to double
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1440
  %i.au = load double, ptr %i.at, align 8, !tbaa !179 ; 2 uses
  %i.av = fmul reassoc nsz arcp contract afn double %i.au, %i.ar
  %i.aw = fptosi double %i.av to i32
  %i.ax = sitofp reassoc nsz arcp contract afn i32 %i.aq to double
  %i.ay = fmul reassoc nsz arcp contract afn double %i.au, %i.ax
  %i.az = fptosi double %i.ay to i32
  %i.ba = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.aw, i32 noundef %i.az) #22 ; 4 uses
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1440
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !179 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.ba, double noundef %i.bd, double noundef %i.bd) #22
  %i.be = call ptr @cairo_create(ptr noundef %i.ba) #22 ; 110 uses
  call void @cairo_set_source_rgb(ptr noundef %i.be, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #22
  call void @cairo_paint(ptr noundef %i.be) #22
  %i.bf = sitofp reassoc nsz arcp contract afn i32 %i.am to double ; 2 uses
  call void @cairo_translate(ptr noundef %i.be, double noundef %i.bf, double noundef %i.bf) #22
  %i.bg = shl nsw i32 %i.am, 1                    ; 2 uses
  %i.bh = sub nsw i32 %i.ao, %i.bg                ; 7 uses
  %i.bi = sub nsw i32 %i.aq, %i.bg                ; 5 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1432
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !127
  call void @cairo_set_line_width(ptr noundef %i.be, double noundef %i.bl) #22
  call void @cairo_set_source_rgb(ptr noundef %i.be, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #22
  %i.bm = sitofp reassoc nsz arcp contract afn i32 %i.bh to double ; 5 uses
  %i.bn = sitofp reassoc nsz arcp contract afn i32 %i.bi to double ; 6 uses
  call void @cairo_rectangle(ptr noundef %i.be, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bm, double noundef %i.bn) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  call void @cairo_set_source_rgb(ptr noundef %i.be, double noundef 3.000000e-01, double noundef 3.000000e-01, double noundef 3.000000e-01) #22
  call void @cairo_rectangle(ptr noundef %i.be, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bm, double noundef %i.bn) #22
  call void @cairo_fill(ptr noundef %i.be) #22
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1432
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !127
  %i.br = fmul reassoc nsz arcp contract afn double %i.bq, 4.000000e-01
  call void @cairo_set_line_width(ptr noundef %i.be, double noundef %i.br) #22
  call void @cairo_set_source_rgb(ptr noundef %i.be, double noundef 1.000000e-01, double noundef 1.000000e-01, double noundef 1.000000e-01) #22
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.bh to float ; 14 uses
  %i.bt = sitofp reassoc nsz arcp contract afn i32 %i.bi to float ; 8 uses
  %invariant.op.i = fmul reassoc nnan nsz arcp contract afn float %i.bs, 1.250000e-01
  %factor.op.fmul.i = fmul reassoc nnan nsz arcp contract afn float %i.bt, 1.250000e-01
  %i.bu = fpext reassoc nsz arcp contract afn float %i.bt to double ; 7 uses
  %i.bv = fpext reassoc nsz arcp contract afn float %i.bs to double ; 7 uses
  %i.bw = fpext reassoc nsz arcp contract afn float %invariant.op.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef %i.bw, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.bw, double noundef %i.bu) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %i.bx = fpext reassoc nsz arcp contract afn float %factor.op.fmul.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef 0.000000e+00, double noundef %i.bx) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.bv, double noundef %i.bx) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %.reass31.1.i = fmul reassoc nnan nsz arcp contract afn float %i.bt, 2.500000e-01
  %.reass.1.i = fmul reassoc nnan nsz arcp contract afn float %i.bs, 2.500000e-01
  %i.by = fpext reassoc nsz arcp contract afn float %.reass.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef %i.by, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.by, double noundef %i.bu) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %i.bz = fpext reassoc nsz arcp contract afn float %.reass31.1.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef 0.000000e+00, double noundef %i.bz) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.bv, double noundef %i.bz) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %.reass31.2.i = fmul reassoc nnan nsz arcp contract afn float %i.bt, 3.750000e-01
  %.reass.2.i = fmul reassoc nnan nsz arcp contract afn float %i.bs, 3.750000e-01
  %i.ca = fpext reassoc nsz arcp contract afn float %.reass.2.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef %i.ca, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.ca, double noundef %i.bu) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %i.cb = fpext reassoc nsz arcp contract afn float %.reass31.2.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef 0.000000e+00, double noundef %i.cb) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.bv, double noundef %i.cb) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %.reass31.3.i = fmul reassoc nnan nsz arcp contract afn float %i.bt, 5.000000e-01
  %.reass.3.i = fmul reassoc nnan nsz arcp contract afn float %i.bs, 5.000000e-01
  %i.cc = fpext reassoc nsz arcp contract afn float %.reass.3.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef %i.cc, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.cc, double noundef %i.bu) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %i.cd = fpext reassoc nsz arcp contract afn float %.reass31.3.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef 0.000000e+00, double noundef %i.cd) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.bv, double noundef %i.cd) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %.reass31.4.i = fmul reassoc nnan nsz arcp contract afn float %i.bt, 6.250000e-01
  %.reass.4.i = fmul reassoc nnan nsz arcp contract afn float %i.bs, 6.250000e-01
  %i.ce = fpext reassoc nsz arcp contract afn float %.reass.4.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef %i.ce, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.ce, double noundef %i.bu) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %i.cf = fpext reassoc nsz arcp contract afn float %.reass31.4.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef 0.000000e+00, double noundef %i.cf) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.bv, double noundef %i.cf) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %.reass31.5.i = fmul reassoc nnan nsz arcp contract afn float %i.bt, 7.500000e-01
  %.reass.5.i = fmul reassoc nnan nsz arcp contract afn float %i.bs, 7.500000e-01
  %i.cg = fpext reassoc nsz arcp contract afn float %.reass.5.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef %i.cg, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.cg, double noundef %i.bu) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %i.ch = fpext reassoc nsz arcp contract afn float %.reass31.5.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef 0.000000e+00, double noundef %i.ch) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.bv, double noundef %i.ch) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %.reass31.6.i = fmul reassoc nnan nsz arcp contract afn float %i.bt, 8.750000e-01
  %.reass.6.i = fmul reassoc nnan nsz arcp contract afn float %i.bs, 8.750000e-01
  %i.ci = fpext reassoc nsz arcp contract afn float %.reass.6.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef %i.ci, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.ci, double noundef %i.bu) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %i.cj = fpext reassoc nsz arcp contract afn float %.reass31.6.i to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.be, double noundef 0.000000e+00, double noundef %i.cj) #22
  call void @cairo_line_to(ptr noundef %i.be, double noundef %i.bv, double noundef %i.cj) #22
  call void @cairo_stroke(ptr noundef %i.be) #22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !131
  %i.cm = fcmp reassoc nsz arcp contract afn ogt double %i.cl, 0.000000e+00
  br i1 %i.cm, label %vector.ph, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !77
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %dt_draw_curve_calc_values.exit265, label %vector.ph

vector.ph:                                        ; preds = %bb.b, %bb.a
  %i.cp = load i32, ptr %i.e, align 8, !tbaa !73
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !132 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !79 ; 2 uses
  %i.cu = sext i32 %i.cp to i64                   ; 2 uses
  %i.cv = getelementptr inbounds [20 x i8], ptr %i.h, i64 %i.cu ; 2 uses
  %i.cw = fmul reassoc nsz arcp contract afn float %i.ct, %i.ct
  %i.cx = fpext reassoc nsz arcp contract afn float %i.cw to double ; 2 uses
  %i.cy = getelementptr inbounds [20 x i8], ptr %i.n, i64 %i.cu ; 3 uses
  %i.cz = load <4 x float>, ptr %i.cv, align 4, !tbaa !12
  %i.da = fpext <4 x float> %i.cz to <4 x double>
  %i.db = insertelement <4 x double> poison, double %i.cr, i64 0
  %i.dc = shufflevector <4 x double> %i.db, <4 x double> poison, <4 x i32> zeroinitializer
  %i.dd = fsub reassoc nsz arcp contract afn <4 x double> %i.dc, %i.da ; 2 uses
  %i.de = fneg reassoc nsz arcp contract afn <4 x double> %i.dd
  %i.df = fmul reassoc nsz arcp contract afn <4 x double> %i.dd, %i.de
  %i.dg = insertelement <4 x double> poison, double %i.cx, i64 0
  %i.dh = shufflevector <4 x double> %i.dg, <4 x double> poison, <4 x i32> zeroinitializer
  %i.di = fdiv reassoc nsz arcp contract afn <4 x double> %i.df, %i.dh
  %i.dj = fptrunc <4 x double> %i.di to <4 x float>
  %i.dk = call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %i.dj) ; 2 uses
  %i.dl = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.dk
  %i.dm = load <4 x float>, ptr %i.cy, align 4, !tbaa !12
  %i.dn = fmul reassoc nsz arcp contract afn <4 x float> %i.dl, %i.dm
  %i.do = fadd reassoc nsz arcp contract afn <4 x float> %i.dn, %i.dk
  store <4 x float> %i.do, ptr %i.cy, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !12
  %i.dr = fpext reassoc nsz arcp contract afn float %i.dq to double
  %i.ds = fsub reassoc nsz arcp contract afn double %i.cr, %i.dr ; 2 uses
  %i.dt = fneg reassoc nsz arcp contract afn double %i.ds
  %i.du = fmul reassoc nsz arcp contract afn double %i.ds, %i.dt
  %i.dv = fdiv reassoc nsz arcp contract afn double %i.du, %i.cx
  %i.dw = fptrunc reassoc nsz arcp contract afn double %i.dv to float
  %i.dx = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.dw) ; 2 uses
  %i.dy = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !12
  %i.eb = fmul reassoc nsz arcp contract afn float %i.dy, %i.ea
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.dx
  store float %i.ec, ptr %i.dz, align 4, !tbaa !12
  %i.ed = load ptr, ptr %i.b, align 8, !tbaa !75  ; 11 uses
  %i.ee = load float, ptr %i.k, align 4, !tbaa !12
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, -1.000000e+00
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store float %i.ef, ptr %i.eg, align 8, !tbaa !55
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 28
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ej = load <4 x float>, ptr %i.o, align 4, !tbaa !12 ; 2 uses
  %i.ek = extractelement <4 x float> %i.ej, i64 0
  store float %i.ek, ptr %i.eh, align 4, !tbaa !56
  %i.el = load <4 x float>, ptr %i.j, align 4, !tbaa !12
  %i.em = shufflevector <4 x float> %i.el, <4 x float> %i.ej, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.em, ptr %i.ei, align 8, !tbaa !12
  %i.en = load float, ptr %i.x, align 4, !tbaa !12
  %i.eo = load float, ptr %i.z, align 4, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  store float %i.en, ptr %i.ep, align 8, !tbaa !55
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ed, i64 68
  store float %i.eo, ptr %i.eq, align 4, !tbaa !56
  %i.er = load float, ptr %i.s, align 4, !tbaa !12
  %i.es = fadd reassoc nsz arcp contract afn float %i.er, 1.000000e+00
  %i.et = load float, ptr %i.z, align 4, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  store float %i.es, ptr %i.eu, align 8, !tbaa !55
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ed, i64 76
  store float %i.et, ptr %i.ev, align 4, !tbaa !56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ed, i64 184 ; 2 uses
  store i32 64, ptr %i.ew, align 8, !tbaa !61
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ed, i64 188
  store i32 65536, ptr %i.ex, align 4, !tbaa !62
  %i.ey = call i32 @CurveDataSample(ptr noundef nonnull %i.ed, ptr noundef nonnull %i.ew) #22 ; 0 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 748
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 780
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 812
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 844
  store <8 x float> <float 0.000000e+00, float 1.562500e-02, float 3.125000e-02, float 4.687500e-02, float 6.250000e-02, float 7.812500e-02, float 9.375000e-02, float 1.093750e-01>, ptr %i.ez, align 4, !tbaa !12
  store <8 x float> <float 1.250000e-01, float 1.406250e-01, float 1.562500e-01, float 1.718750e-01, float 1.875000e-01, float 2.031250e-01, float 2.187500e-01, float 2.343750e-01>, ptr %i.fa, align 4, !tbaa !12
  store <8 x float> <float 2.500000e-01, float 2.656250e-01, float 2.812500e-01, float 2.968750e-01, float 3.125000e-01, float 3.281250e-01, float 3.437500e-01, float 3.593750e-01>, ptr %i.fb, align 4, !tbaa !12
  store <8 x float> <float 3.750000e-01, float 3.906250e-01, float 4.062500e-01, float 4.218750e-01, float 4.375000e-01, float 4.531250e-01, float 4.687500e-01, float 4.843750e-01>, ptr %i.fc, align 4, !tbaa !12
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 876
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 908
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 940
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 972
  store <8 x float> <float 5.000000e-01, float 5.156250e-01, float 5.312500e-01, float 5.468750e-01, float 5.625000e-01, float 5.781250e-01, float 5.937500e-01, float 6.093750e-01>, ptr %i.fd, align 4, !tbaa !12
  store <8 x float> <float 6.250000e-01, float 6.406250e-01, float 6.562500e-01, float 6.718750e-01, float 6.875000e-01, float 7.031250e-01, float 7.187500e-01, float 7.343750e-01>, ptr %i.fe, align 4, !tbaa !12
  store <8 x float> <float 7.500000e-01, float 7.656250e-01, float 7.812500e-01, float 7.968750e-01, float 8.125000e-01, float 8.281250e-01, float 8.437500e-01, float 8.593750e-01>, ptr %i.ff, align 4, !tbaa !12
  store <8 x float> <float 8.750000e-01, float 8.906250e-01, float 9.062500e-01, float 9.218750e-01, float 9.375000e-01, float 9.531250e-01, float 9.687500e-01, float 9.843750e-01>, ptr %i.fg, align 4, !tbaa !12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ed, i64 192
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !63 ; 8 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 1004
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %wide.load = load <8 x i16>, ptr %i.fi, align 2, !tbaa !64
  %wide.load304 = load <8 x i16>, ptr %i.fk, align 2, !tbaa !64
  %wide.load305 = load <8 x i16>, ptr %i.fl, align 2, !tbaa !64
  %wide.load306 = load <8 x i16>, ptr %i.fm, align 2, !tbaa !64
  %i.fn = uitofp <8 x i16> %wide.load to <8 x float>
  %i.fo = uitofp <8 x i16> %wide.load304 to <8 x float>
  %i.fp = uitofp <8 x i16> %wide.load305 to <8 x float>
  %i.fq = uitofp <8 x i16> %wide.load306 to <8 x float>
  %i.fr = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fn, splat (float f0x37800000)
  %i.fs = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fo, splat (float f0x37800000)
  %i.ft = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fp, splat (float f0x37800000)
  %i.fu = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.fq, splat (float f0x37800000)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 1036
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 1068
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 1100
  store <8 x float> %i.fr, ptr %i.fj, align 4, !tbaa !12
  store <8 x float> %i.fs, ptr %i.fv, align 4, !tbaa !12
  store <8 x float> %i.ft, ptr %i.fw, align 4, !tbaa !12
  store <8 x float> %i.fu, ptr %i.fx, align 4, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fi, i64 80
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fi, i64 96
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fi, i64 112
  %wide.load.1 = load <8 x i16>, ptr %i.fy, align 2, !tbaa !64
  %wide.load304.1 = load <8 x i16>, ptr %i.fz, align 2, !tbaa !64
  %wide.load305.1 = load <8 x i16>, ptr %i.ga, align 2, !tbaa !64
  %wide.load306.1 = load <8 x i16>, ptr %i.gb, align 2, !tbaa !64
  %i.gc = uitofp <8 x i16> %wide.load.1 to <8 x float>
  %i.gd = uitofp <8 x i16> %wide.load304.1 to <8 x float>
  %i.ge = uitofp <8 x i16> %wide.load305.1 to <8 x float>
  %i.gf = uitofp <8 x i16> %wide.load306.1 to <8 x float>
  %i.gg = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gc, splat (float f0x37800000)
  %i.gh = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gd, splat (float f0x37800000)
  %i.gi = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ge, splat (float f0x37800000)
  %i.gj = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.gf, splat (float f0x37800000)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 1132
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 1164
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 1196
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 1228
  store <8 x float> %i.gg, ptr %i.gk, align 4, !tbaa !12
  store <8 x float> %i.gh, ptr %i.gl, align 4, !tbaa !12
  store <8 x float> %i.gi, ptr %i.gm, align 4, !tbaa !12
  store <8 x float> %i.gj, ptr %i.gn, align 4, !tbaa !12
  %i.go = load ptr, ptr %i.c, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(164) %3, ptr noundef nonnull align 4 dereferenceable(164) %i.go, i64 164, i1 false), !tbaa.struct !121
  %i.gp = load i32, ptr %i.e, align 8, !tbaa !73
  %i.gq = load double, ptr %i.cq, align 8, !tbaa !132
  %i.gr = load float, ptr %i.cs, align 8, !tbaa !79
  call fastcc void @dt_iop_rawdenoise_get_params(ptr noundef nonnull %3, i32 noundef %i.gp, double noundef %i.gq, double noundef 0.000000e+00, float noundef %i.gr)
  %i.gs = load ptr, ptr %i.b, align 8, !tbaa !75  ; 11 uses
  %i.gt = load float, ptr %i.k, align 4, !tbaa !12
  %i.gu = fadd reassoc nsz arcp contract afn float %i.gt, -1.000000e+00
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  store float %i.gu, ptr %i.gv, align 8, !tbaa !55
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gy = load <4 x float>, ptr %i.o, align 4, !tbaa !12 ; 2 uses
  %i.gz = extractelement <4 x float> %i.gy, i64 0
  store float %i.gz, ptr %i.gw, align 4, !tbaa !56
  %i.ha = load <4 x float>, ptr %i.j, align 4, !tbaa !12
  %i.hb = shufflevector <4 x float> %i.ha, <4 x float> %i.gy, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %i.hb, ptr %i.gx, align 8, !tbaa !12
  %i.hc = load float, ptr %i.x, align 4, !tbaa !12
  %i.hd = load float, ptr %i.z, align 4, !tbaa !12
  %i.he = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  store float %i.hc, ptr %i.he, align 8, !tbaa !55
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gs, i64 68
  store float %i.hd, ptr %i.hf, align 4, !tbaa !56
  %i.hg = load float, ptr %i.s, align 4, !tbaa !12
  %i.hh = fadd reassoc nsz arcp contract afn float %i.hg, 1.000000e+00
  %i.hi = load float, ptr %i.z, align 4, !tbaa !12
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  store float %i.hh, ptr %i.hj, align 8, !tbaa !55
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gs, i64 76
  store float %i.hi, ptr %i.hk, align 4, !tbaa !56
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gs, i64 184 ; 2 uses
  store i32 64, ptr %i.hl, align 8, !tbaa !61
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gs, i64 188
  store i32 65536, ptr %i.hm, align 4, !tbaa !62
  %i.hn = call i32 @CurveDataSample(ptr noundef nonnull %i.gs, ptr noundef nonnull %i.hl) #22 ; 0 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 1260
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 1292
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 1324
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 1356
  store <8 x float> <float 0.000000e+00, float 1.562500e-02, float 3.125000e-02, float 4.687500e-02, float 6.250000e-02, float 7.812500e-02, float 9.375000e-02, float 1.093750e-01>, ptr %i.ho, align 4, !tbaa !12
  store <8 x float> <float 1.250000e-01, float 1.406250e-01, float 1.562500e-01, float 1.718750e-01, float 1.875000e-01, float 2.031250e-01, float 2.187500e-01, float 2.343750e-01>, ptr %i.hp, align 4, !tbaa !12
  store <8 x float> <float 2.500000e-01, float 2.656250e-01, float 2.812500e-01, float 2.968750e-01, float 3.125000e-01, float 3.281250e-01, float 3.437500e-01, float 3.593750e-01>, ptr %i.hq, align 4, !tbaa !12
  store <8 x float> <float 3.750000e-01, float 3.906250e-01, float 4.062500e-01, float 4.218750e-01, float 4.375000e-01, float 4.531250e-01, float 4.687500e-01, float 4.843750e-01>, ptr %i.hr, align 4, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 1388
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 1420
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 1452
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 1484
  store <8 x float> <float 5.000000e-01, float 5.156250e-01, float 5.312500e-01, float 5.468750e-01, float 5.625000e-01, float 5.781250e-01, float 5.937500e-01, float 6.093750e-01>, ptr %i.hs, align 4, !tbaa !12
  store <8 x float> <float 6.250000e-01, float 6.406250e-01, float 6.562500e-01, float 6.718750e-01, float 6.875000e-01, float 7.031250e-01, float 7.187500e-01, float 7.343750e-01>, ptr %i.ht, align 4, !tbaa !12
  store <8 x float> <float 7.500000e-01, float 7.656250e-01, float 7.812500e-01, float 7.968750e-01, float 8.125000e-01, float 8.281250e-01, float 8.437500e-01, float 8.593750e-01>, ptr %i.hu, align 4, !tbaa !12
  store <8 x float> <float 8.750000e-01, float 8.906250e-01, float 9.062500e-01, float 9.218750e-01, float 9.375000e-01, float 9.531250e-01, float 9.687500e-01, float 9.843750e-01>, ptr %i.hv, align 4, !tbaa !12
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gs, i64 192
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !63 ; 8 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 1516
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %wide.load322 = load <8 x i16>, ptr %i.hx, align 2, !tbaa !64
  %wide.load323 = load <8 x i16>, ptr %i.hz, align 2, !tbaa !64
  %wide.load324 = load <8 x i16>, ptr %i.ia, align 2, !tbaa !64
  %wide.load325 = load <8 x i16>, ptr %i.ib, align 2, !tbaa !64
  %i.ic = uitofp <8 x i16> %wide.load322 to <8 x float>
  %i.id = uitofp <8 x i16> %wide.load323 to <8 x float>
  %i.ie = uitofp <8 x i16> %wide.load324 to <8 x float>
  %i.if = uitofp <8 x i16> %wide.load325 to <8 x float>
  %i.ig = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ic, splat (float f0x37800000)
  %i.ih = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.id, splat (float f0x37800000)
  %i.ii = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ie, splat (float f0x37800000)
  %i.ij = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.if, splat (float f0x37800000)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 1548
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 1580
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 1612
  store <8 x float> %i.ig, ptr %i.hy, align 4, !tbaa !12
  store <8 x float> %i.ih, ptr %i.ik, align 4, !tbaa !12
  store <8 x float> %i.ii, ptr %i.il, align 4, !tbaa !12
  store <8 x float> %i.ij, ptr %i.im, align 4, !tbaa !12
  %i.in = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  %i.io = getelementptr inbounds nuw i8, ptr %i.hx, i64 80
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hx, i64 96
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hx, i64 112
  %wide.load322.1 = load <8 x i16>, ptr %i.in, align 2, !tbaa !64
end_hunk_0
begin_hunk_1_@introspection_init:bb.a
  %i.a = load i32, ptr @introspection, align 8, !tbaa !208
  %i.b = icmp ne i32 %i.a, 8
  %i.c = icmp ne i32 %1, 8
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 56), align 8, !tbaa !37
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 144), align 16, !tbaa !37
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 232), align 8, !tbaa !37
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 320), align 16, !tbaa !37
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 408), align 8, !tbaa !37
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 496), align 16, !tbaa !37
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 584), align 8, !tbaa !37
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 672), align 16, !tbaa !37
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 760), align 8, !tbaa !37
  store ptr @introspection_init.f7, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 688), align 16, !tbaa !37
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i32 [ 0, %.preheader.preheader ], [ 1, %bb.a ]
  ret i32 %.06
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_p(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.24) #23
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.tail22.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.26) #23
  %.not16 = icmp eq i32 %i.b, 0
  br i1 %.not16, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.tail22.thread

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.27) #23
  %.not17 = icmp eq i32 %i.d, 0
  br i1 %.not17, label %bb.e, label %sub_0

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.tail22.thread

sub_0:                                            ; preds = %bb.d
  %i.f = load i8, ptr %1, align 1                 ; 2 uses
  %.not26 = icmp eq i8 %i.f, 120
  br i1 %.not26, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.f, label %.tail.thread

bb.f:                                             ; preds = %.tail
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.tail22.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.29) #23
  %.not19 = icmp eq i32 %i.k, 0
  br i1 %.not19, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.tail.thread
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84
  br label %.tail22.thread

bb.h:                                             ; preds = %.tail.thread
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.30) #23
  %.not20 = icmp eq i32 %i.m, 0
  br i1 %.not20, label %bb.i, label %sub_023

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  br label %.tail22.thread

sub_023:                                          ; preds = %bb.h
  %.not27 = icmp eq i8 %i.f, 121
  br i1 %.not27, label %.tail22, label %.tail22.thread

.tail22:                                          ; preds = %sub_023
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %.fr = freeze i8 %i.p
  %i.q = icmp eq i8 %.fr, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84
  %spec.select = select i1 %i.q, ptr %i.r, ptr null
  br label %.tail22.thread

.tail22.thread:                                   ; preds = %.tail22, %sub_023, %bb.a, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ %0, %bb.a ], [ %i.c, %bb.c ], [ %i.n, %bb.i ], [ %i.l, %bb.g ], [ %i.j, %bb.f ], [ %i.e, %bb.e ], [ null, %sub_023 ], [ %spec.select, %.tail22 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.24) #22
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.26) #22
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.27) #22
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.28) #22
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.29) #22
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.30) #22
  %.not12 = icmp eq i32 %i.f, 0
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.31) #22
  %.not13 = icmp eq i32 %i.g, 0
  %. = select i1 %.not13, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), ptr null
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ %., %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

declare void @dwt_denoise(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #14

declare i32 @CurveDataSample(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #6

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_paint(ptr noundef) local_unnamed_addr #6

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #6

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #6

declare void @cairo_fill(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dt_iop_rawdenoise_get_params(ptr nofree noundef captures(none) %0, i32 noundef %1, double noundef %2, double noundef %3, float noundef %4) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [20 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %4, %4
  %i.e = fpext reassoc nsz arcp contract afn float %i.d to double ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = getelementptr inbounds [20 x i8], ptr %i.f, i64 %i.b ; 3 uses
  %i.h = load <4 x float>, ptr %i.c, align 4, !tbaa !12
  %i.i = fpext <4 x float> %i.h to <4 x double>
  %i.j = insertelement <4 x double> poison, double %2, i64 0
  %i.k = shufflevector <4 x double> %i.j, <4 x double> poison, <4 x i32> zeroinitializer
  %i.l = fsub reassoc nsz arcp contract afn <4 x double> %i.k, %i.i ; 2 uses
  %i.m = fneg reassoc nsz arcp contract afn <4 x double> %i.l
  %i.n = fmul reassoc nsz arcp contract afn <4 x double> %i.l, %i.m
  %i.o = insertelement <4 x double> poison, double %i.e, i64 0
  %i.p = shufflevector <4 x double> %i.o, <4 x double> poison, <4 x i32> zeroinitializer
  %i.q = fdiv reassoc nsz arcp contract afn <4 x double> %i.n, %i.p
  %i.r = fptrunc <4 x double> %i.q to <4 x float>
  %i.s = tail call reassoc nsz arcp contract afn <4 x float> @llvm.exp.v4f32(<4 x float> %i.r) ; 2 uses
  %i.t = fsub reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.s
  %i.u = load <4 x float>, ptr %i.g, align 4, !tbaa !12
  %i.v = fmul reassoc nsz arcp contract afn <4 x float> %i.t, %i.u
  %i.w = fpext <4 x float> %i.v to <4 x double>
  %i.x = fpext <4 x float> %i.s to <4 x double>
  %i.y = insertelement <4 x double> poison, double %3, i64 0
  %i.z = shufflevector <4 x double> %i.y, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aa = fmul reassoc nsz arcp contract afn <4 x double> %i.z, %i.x
  %i.ab = fadd reassoc nsz arcp contract afn <4 x double> %i.aa, %i.w
  %i.ac = fptrunc <4 x double> %i.ab to <4 x float>
  store <4 x float> %i.ac, ptr %i.g, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12
  %i.af = fpext reassoc nsz arcp contract afn float %i.ae to double
  %i.ag = fsub reassoc nsz arcp contract afn double %2, %i.af ; 2 uses
  %i.ah = fneg reassoc nsz arcp contract afn double %i.ag
  %i.ai = fmul reassoc nsz arcp contract afn double %i.ag, %i.ah
  %i.aj = fdiv reassoc nsz arcp contract afn double %i.ai, %i.e
  %i.ak = fptrunc reassoc nsz arcp contract afn double %i.aj to float
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ak) ; 2 uses
  %i.am = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12
  %i.ap = fmul reassoc nsz arcp contract afn float %i.am, %i.ao
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ap to double
  %i.ar = fpext reassoc nsz arcp contract afn float %i.al to double
  %i.as = fmul reassoc nsz arcp contract afn double %3, %i.ar
  %i.at = fadd reassoc nsz arcp contract afn double %i.as, %i.aq
  %i.au = fptrunc reassoc nsz arcp contract afn double %i.at to float
  store float %i.au, ptr %i.an, align 4, !tbaa !12
  ret void
}

declare void @cairo_save(ptr noundef) local_unnamed_addr #6

declare void @cairo_set_operator(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_arc(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #6

declare void @cairo_restore(ptr noundef) local_unnamed_addr #6

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #6

declare void @pango_font_description_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @pango_font_description_set_absolute_size(ptr noundef, double noundef) local_unnamed_addr #6

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #6

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @g_dpgettext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @cairo_rotate(ptr noundef, double noundef) local_unnamed_addr #6

declare void @pango_cairo_show_layout(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #6

declare void @g_object_unref(ptr noundef) local_unnamed_addr #6

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #6

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #6

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #14

declare void @dt_dev_add_history_item_target(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @interpolate_set(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare float @interpolate_val(i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @dt_gui_ignore_scroll(ptr noundef) local_unnamed_addr #6

declare i32 @gtk_widget_event(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @dt_gui_get_scroll_unit_delta(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #6

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #6

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i3 @llvm.bitreverse.i3(i3) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }

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
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!17 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!18 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!19 = !{!"dt_dev_histogram_collection_params_t", !18, i64 0, !8, i64 8}
!20 = !{!"p1 int", !13, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !21, i64 8, !8, i64 16, !8, i64 20}
!23 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!24 = !{!"short", !7, i64 0}
!25 = !{!"", !24, i64 0, !24, i64 2}
!26 = !{!"", !8, i64 0, !7, i64 16}
!27 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !25, i64 48, !26, i64 64, !7, i64 96, !8, i64 112}
!28 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!29 = !{!"p1 float", !13, i64 0}
!30 = !{!"dt_dev_distorted_mask_cache_t", !29, i64 0, !23, i64 8, !21, i64 32, !21, i64 40}
!31 = !{!"dt_dev_pixelpipe_iop_t", !16, i64 0, !17, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !19, i64 40, !20, i64 56, !22, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !21, i64 120, !8, i64 128, !8, i64 132, !23, i64 136, !23, i64 156, !23, i64 176, !23, i64 196, !8, i64 216, !8, i64 220, !27, i64 224, !27, i64 352, !7, i64 480, !8, i64 516, !28, i64 520, !30, i64 528, !30, i64 576}
!32 = !{!31, !13, i64 16}
!33 = !{!"dt_iop_rawdenoise_data_t", !11, i64 0, !7, i64 8, !8, i64 40, !7, i64 44}
!34 = !{!33, !11, i64 0}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!7, !7, i64 0}
!38 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!39 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!40 = !{!"dt_pthread_mutex_t", !7, i64 0}
!41 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!42 = !{!"", !28, i64 0, !28, i64 8}
!43 = !{!"", !16, i64 0, !8, i64 8}
!44 = !{!"", !42, i64 0, !43, i64 16}
!45 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!46 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!47 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!48 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !38, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !20, i64 608, !22, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !39, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !40, i64 712, !13, i64 752, !13, i64 760, !41, i64 768, !41, i64 776, !13, i64 784, !44, i64 792, !45, i64 824, !45, i64 832, !45, i64 840, !45, i64 848, !45, i64 856, !45, i64 864, !45, i64 872, !8, i64 880, !45, i64 888, !45, i64 896, !45, i64 904, !46, i64 912, !46, i64 920, !45, i64 928, !45, i64 936, !8, i64 944, !47, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !45, i64 1096, !13, i64 1104, !8, i64 1112}
!49 = !{!48, !13, i64 688}
end_hunk_1
