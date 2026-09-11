Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorchecker?download=true
inline.NumInlined: 70
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 64
begin_hunk_0_@checker_draw:bb.a
  %i.gj = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.gi)
  %i.gk = fcmp reassoc nsz arcp contract afn ogt float %i.gj, f0x3727C5AC
  br i1 %i.gk, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.az
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !12
  %i.gn = load float, ptr %i.bg, align 4, !tbaa !12
  %i.go = fsub reassoc nsz arcp contract afn float %i.gm, %i.gn
  %i.gp = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.go)
  %i.gq = fcmp reassoc nsz arcp contract afn ogt float %i.gp, f0x3727C5AC
  br i1 %i.gq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h, %dt_XYZ_to_sRGB.exit
  %i.gr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 1432
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !225
  %i.gu = fmul reassoc nsz arcp contract afn double %i.gt, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.gu) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 8.000000e-01, double noundef 8.000000e-01, double noundef 8.000000e-01) #23
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1432
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !225 ; 3 uses
  %i.gy = fadd reassoc nsz arcp contract afn double %i.gx, %i.ft
  %i.gz = fadd reassoc nsz arcp contract afn double %i.gx, %i.aw
  %i.ha = fmul reassoc nsz arcp contract afn double %i.gx, 3.000000e+00 ; 2 uses
  %i.hb = fsub reassoc nsz arcp contract afn double %i.ah, %i.ha
  %i.hc = fsub reassoc nsz arcp contract afn double %i.ak, %i.ha
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.gy, double noundef %i.gz, double noundef %i.hb, double noundef %i.hc) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1432
  %i.hf = load double, ptr %i.he, align 8, !tbaa !225
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.hf) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef 2.000000e-01, double noundef 2.000000e-01, double noundef 2.000000e-01) #23
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1432
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !225 ; 2 uses
  %i.hj = fmul reassoc nsz arcp contract afn double %i.hi, 2.000000e+00 ; 2 uses
  %i.hk = fadd reassoc nsz arcp contract afn double %i.hj, %i.ft
  %i.hl = fadd reassoc nsz arcp contract afn double %i.hj, %i.aw
  %i.hm = fmul reassoc nsz arcp contract afn double %i.hi, 5.000000e+00 ; 2 uses
  %i.hn = fsub reassoc nsz arcp contract afn double %i.ah, %i.hm
  %i.ho = fsub reassoc nsz arcp contract afn double %i.ak, %i.hm
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.hk, double noundef %i.hl, double noundef %i.hn, double noundef %i.ho) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ao
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.l:                                             ; preds = %bb.b
  %i.hp = srem i32 %i.ay, %i.z
  %i.hq = sdiv i32 %i.ay, %i.z
  %i.hr = sext i32 %i.ay to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !12
  %i.hu = fcmp reassoc nsz arcp contract afn ogt float %i.ht, 8.000000e+01
  %spec.select = select i1 %i.hu, double 0.000000e+00, double 1.000000e+00 ; 3 uses
  %i.hv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1432
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !225
  %i.hy = fmul reassoc nsz arcp contract afn double %i.hx, 2.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.v, double noundef %i.hy) #23
  call void @cairo_set_source_rgb(ptr noundef %i.v, double noundef %spec.select, double noundef %spec.select, double noundef %spec.select) #23
  %i.hz = mul nsw i32 %i.hp, %i.f
  %i.ia = sitofp reassoc nsz arcp contract afn i32 %i.hz to float
  %i.ib = fdiv reassoc nsz arcp contract afn float %i.ia, %i.ad
  %i.ic = fpext reassoc nsz arcp contract afn float %i.ib to double
  %i.id = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1432
  %i.if = load double, ptr %i.ie, align 8, !tbaa !225 ; 2 uses
  %i.ig = fmul reassoc nsz arcp contract afn double %i.if, 5.000000e+00 ; 2 uses
  %i.ih = fadd reassoc nsz arcp contract afn double %i.ig, %i.ic
  %i.ii = mul nsw i32 %i.hq, %i.h
  %i.ij = sitofp reassoc nsz arcp contract afn i32 %i.ii to float
  %i.ik = fdiv reassoc nsz arcp contract afn float %i.ij, %i.ae
  %i.il = fpext reassoc nsz arcp contract afn float %i.ik to double
  %i.im = fadd reassoc nsz arcp contract afn double %i.ig, %i.il
  %i.in = fmul reassoc nsz arcp contract afn double %i.if, 1.100000e+01 ; 2 uses
  %i.io = fsub reassoc nsz arcp contract afn double %i.ah, %i.in
  %i.ip = fsub reassoc nsz arcp contract afn double %i.ak, %i.in
  call void @cairo_rectangle(ptr noundef %i.v, double noundef %i.ih, double noundef %i.im, double noundef %i.io, double noundef %i.ip) #23
  call void @cairo_stroke(ptr noundef %i.v) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  call void @cairo_destroy(ptr noundef %i.v) #23
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.r, double noundef 0.000000e+00, double noundef 0.000000e+00) #23
  call void @cairo_paint(ptr noundef %1) #23
  call void @cairo_surface_destroy(ptr noundef %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @checker_button_press(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !60  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #23
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load <2 x i32>, ptr %i.e, align 4, !tbaa !15 ; 2 uses
  %i.h = load <2 x double>, ptr %i.f, align 8, !tbaa !47 ; 3 uses
  %i.i = sitofp <2 x i32> %i.g to <2 x double>    ; 2 uses
  %i.j = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.h, %i.i
  %i.k = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.h, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x double> zeroinitializer, <2 x double> %i.h
  %i.m = select <2 x i1> %i.j, <2 x double> %i.i, <2 x double> %i.l
  %i.n = fptrunc <2 x double> %i.m to <2 x float>
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 11 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17   ; 4 uses
  %i.q = icmp sgt i32 %i.p, 24                    ; 2 uses
  %spec.select167 = select i1 %i.q, i32 7, i32 6  ; 2 uses
  %spec.select168 = select i1 %i.q, float 7.000000e+00, float 4.000000e+00
  %i.r = uitofp nneg i32 %spec.select167 to float
  %i.s = sitofp <2 x i32> %i.g to <2 x float>
  %i.t = insertelement <2 x float> poison, float %i.r, i64 0
  %i.u = insertelement <2 x float> %i.t, float %spec.select168, i64 1
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.u, %i.n
  %i.w = fdiv reassoc nsz arcp contract afn <2 x float> %i.v, %i.s ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = fptosi float %i.x to i32
  %i.z = extractelement <2 x float> %i.w, i64 1
  %i.aa = fptosi float %i.z to i32
  %i.ab = mul nsw i32 %spec.select167, %i.aa
  %i.ac = add nsw i32 %i.ab, %i.y                 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !233
  switch i32 %i.ae, label %.thread173 [
    i32 1, label %bb.b
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.af = load i32, ptr %1, align 8, !tbaa !234
  %i.ag = icmp eq i32 %i.af, 5
  br i1 %i.ag, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ah = icmp sgt i32 %i.ac, -1
  %.not165 = icmp slt i32 %i.ac, %i.p
  %or.cond = select i1 %i.ah, i1 %.not165, i1 false
  br i1 %or.cond, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.ai = zext nneg i32 %i.ac to i64              ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ai
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ai
  store float %i.ak, ptr %i.am, align 4, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ai
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ai
  store float %i.ap, ptr %i.ar, align 4, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ai
  %i.au = load float, ptr %i.at, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ai
  store float %i.au, ptr %i.aw, align 4, !tbaa !12
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  call void @dt_dev_add_history_item(ptr noundef %i.ax, ptr noundef nonnull %2, i32 noundef 1) #23
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.ba = atomicrmw add ptr %i.az, i32 1 seq_cst, align 4 ; 0 uses
  call void @_colorchecker_update_sliders(ptr noundef nonnull %2)
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  %i.bd = atomicrmw sub ptr %i.bc, i32 1 seq_cst, align 4 ; 0 uses
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !64
  call void @gtk_widget_queue_draw(ptr noundef %i.be) #23
  br label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.bf = icmp slt i32 %i.ac, %i.p
  br i1 %i.bf, label %bb.f, label %.thread173

bb.f:                                             ; preds = %bb.e
  %i.bg = icmp sgt i32 %i.ac, -1
  br i1 %i.bg, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.bi = zext nneg i32 %i.ac to i64              ; 6 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = xor i32 %i.ac, -1                       ; 6 uses
  %i.bm = add i32 %i.p, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr nonnull align 4 %i.bk, i64 %i.bo, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bi ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.o, align 4, !tbaa !17
  %i.bt = add i32 %i.bs, %i.bl
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr nonnull align 4 %i.br, i64 %i.bv, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bi ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.o, align 4, !tbaa !17
  %i.ca = add i32 %i.bz, %i.bl
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr nonnull align 4 %i.by, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bi ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.o, align 4, !tbaa !17
  %i.cg = add i32 %i.cf, %i.bl
  %i.ch = sext i32 %i.cg to i64
  %i.ci = shl nsw i64 %i.ch, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cd, ptr nonnull align 4 %i.ce, i64 %i.ci, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.bi ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.o, align 4, !tbaa !17
  %i.cn = add i32 %i.cm, %i.bl
  %i.co = sext i32 %i.cn to i64
  %i.cp = shl nsw i64 %i.co, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr nonnull align 4 %i.cl, i64 %i.cp, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.bi ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.o, align 4, !tbaa !17
  %i.cu = add i32 %i.ct, %i.bl
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr nonnull align 4 %i.cs, i64 %i.cw, i1 false)
  %i.cx = load i32, ptr %i.o, align 4, !tbaa !17
  %i.cy = add nsw i32 %i.cx, -1
  store i32 %i.cy, ptr %i.o, align 4, !tbaa !17
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  call void @dt_dev_add_history_item(ptr noundef %i.cz, ptr noundef nonnull %2, i32 noundef 1) #23
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dc = atomicrmw add ptr %i.db, i32 1 seq_cst, align 4 ; 0 uses
  call void @_colorchecker_rebuild_patch_list(ptr noundef nonnull %2)
  call void @_colorchecker_update_sliders(ptr noundef nonnull %2)
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 104
  %i.df = atomicrmw sub ptr %i.de, i32 1 seq_cst, align 4 ; 0 uses
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !64
  call void @gtk_widget_queue_draw(ptr noundef %i.dg) #23
  br label %bb.u

bb.h:                                             ; preds = %bb.b
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !235
  %i.dj = call i32 @gtk_accelerator_get_default_mod_mask() #23
  %i.dk = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !15
  %i.dl = or i32 %i.dk, %i.di
  %i.dm = and i32 %i.dl, %i.dj
  %.not = icmp eq i32 %i.dm, 1
  br i1 %.not, label %bb.i, label %.thread173

bb.i:                                             ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 492
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !73
  %i.dp = icmp eq i32 %i.do, 1
  br i1 %i.dp, label %bb.j, label %.thread173

bb.j:                                             ; preds = %bb.i
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.dr = load float, ptr %i.dq, align 16, !tbaa !12 ; 6 uses
  %i.ds = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dr)
  %i.dt = fcmp reassoc nsz arcp contract afn ogt float %i.ds, 1.000000e-03
  br i1 %i.dt, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 516
  %i.dv = load float, ptr %i.du, align 4, !tbaa !12
  %i.dw = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp reassoc nsz arcp contract afn ogt float %i.dw, 1.000000e-03
  br i1 %i.dx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !12
  %i.ea = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dz)
  %i.eb = fcmp reassoc nsz arcp contract afn ogt float %i.ea, 1.000000e-03
  %i.ec = zext i1 %i.eb to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ed = phi i32 [ 0, %bb.k ], [ 0, %bb.j ], [ %i.ec, %bb.l ] ; 6 uses
  %i.ee = load i32, ptr %i.o, align 4, !tbaa !17  ; 8 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 516 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 520 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ee to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ee, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check181 = icmp ult i32 %i.ee, 32
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ek = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x ptr> poison, ptr %i.ei, i64 0
  %broadcast.splat = shufflevector <8 x ptr> %broadcast.splatinsert, <8 x ptr> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert182 = insertelement <8 x ptr> poison, ptr %i.ej, i64 0
  %broadcast.splat183 = shufflevector <8 x ptr> %broadcast.splatinsert182, <8 x ptr> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert184 = insertelement <8 x float> poison, float %i.dr, i64 0
  %broadcast.splat185 = shufflevector <8 x float> %broadcast.splatinsert184, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi186 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi206, %vector.body ]
  %vec.phi187 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi207, %vector.body ]
  %vec.phi188 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi208, %vector.body ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  %wide.load = load <8 x float>, ptr %i.el, align 4, !tbaa !12
  %wide.load189 = load <8 x float>, ptr %i.em, align 4, !tbaa !12
  %wide.load190 = load <8 x float>, ptr %i.en, align 4, !tbaa !12
  %wide.load191 = load <8 x float>, ptr %i.eo, align 4, !tbaa !12
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  %wide.load192 = load <8 x float>, ptr %i.ep, align 4, !tbaa !12
  %wide.load193 = load <8 x float>, ptr %i.eq, align 4, !tbaa !12
  %wide.load194 = load <8 x float>, ptr %i.er, align 4, !tbaa !12
  %wide.load195 = load <8 x float>, ptr %i.es, align 4, !tbaa !12
  %i.et = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load
  %i.eu = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load189
  %i.ev = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load190
  %i.ew = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load191
  %i.ex = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.et)
  %i.ey = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eu)
  %i.ez = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ev)
  %i.fa = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ew)
  %i.fb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ex, splat (float 1.000000e-03) ; 4 uses
  %i.fc = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ey, splat (float 1.000000e-03) ; 4 uses
  %i.fd = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ez, splat (float 1.000000e-03) ; 4 uses
  %i.fe = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fa, splat (float 1.000000e-03) ; 4 uses
  %i.ff = getelementptr [4 x i8], ptr %i.eh, i64 %index ; 4 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 32
  %i.fh = getelementptr i8, ptr %i.ff, i64 64
  %i.fi = getelementptr i8, ptr %i.ff, i64 96
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ff, <8 x i1> %i.fb, <8 x float> poison), !tbaa !12
  %wide.masked.load196 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fg, <8 x i1> %i.fc, <8 x float> poison), !tbaa !12
  %wide.masked.load197 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fh, <8 x i1> %i.fd, <8 x float> poison), !tbaa !12
  %wide.masked.load198 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fi, <8 x i1> %i.fe, <8 x float> poison), !tbaa !12
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fb, <8 x float> poison), !tbaa !12
  %wide.masked.gather199 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fc, <8 x float> poison), !tbaa !12
  %wide.masked.gather200 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fd, <8 x float> poison), !tbaa !12
  %wide.masked.gather201 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fe, <8 x float> poison), !tbaa !12
  %i.fj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.load
  %i.fk = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather199, %wide.masked.load196
  %i.fl = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather200, %wide.masked.load197
  %i.fm = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather201, %wide.masked.load198
  %i.fn = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fj)
  %i.fo = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fk)
  %i.fp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fl)
  %i.fq = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fm)
  %i.fr = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fn, splat (float 1.000000e-03) ; 2 uses
  %i.fs = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fo, splat (float 1.000000e-03) ; 2 uses
  %i.ft = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fp, splat (float 1.000000e-03) ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fq, splat (float 1.000000e-03) ; 2 uses
  %i.fv = select <8 x i1> %i.fb, <8 x i1> %i.fr, <8 x i1> zeroinitializer
  %i.fw = select <8 x i1> %i.fc, <8 x i1> %i.fs, <8 x i1> zeroinitializer
  %i.fx = select <8 x i1> %i.fd, <8 x i1> %i.ft, <8 x i1> zeroinitializer
  %i.fy = select <8 x i1> %i.fe, <8 x i1> %i.fu, <8 x i1> zeroinitializer
  %wide.masked.gather202 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fv, <8 x float> poison), !tbaa !12
  %wide.masked.gather203 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fw, <8 x float> poison), !tbaa !12
  %wide.masked.gather204 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fx, <8 x float> poison), !tbaa !12
  %wide.masked.gather205 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fy, <8 x float> poison), !tbaa !12
  %i.fz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather202, %wide.load192
  %i.ga = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather203, %wide.load193
  %i.gb = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather204, %wide.load194
  %i.gc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather205, %wide.load195
  %i.gd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fz)
  %i.ge = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ga)
  %i.gf = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gb)
  %i.gg = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gc)
  %i.gh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gd, splat (float 1.000000e-03)
end_hunk_0
