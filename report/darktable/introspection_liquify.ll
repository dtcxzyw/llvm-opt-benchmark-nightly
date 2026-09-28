Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_liquify?download=true
inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@gui_post_expose:bb.a
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !168
  call void @gtk_label_set_text(ptr noundef %i.av, ptr noundef nonnull %i.a) #30
  br label %update_warp_count.exit

update_warp_count.exit:                           ; preds = %.split.loop.exit7.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call fastcc void @smooth_paths_linsys(ptr noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7600) %7, ptr noundef nonnull align 4 dereferenceable(7600) %i.g, i64 7600, i1 false)
  %i.aw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.p) #30 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !169
  %i.az = call i32 @gtk_toggle_button_get_active(ptr noundef %i.ay) #30
  %.not.i31 = icmp eq i32 %i.az, 0
  br i1 %.not.i31, label %bb.k, label %_layers_showing.exit.thread

bb.k:                                             ; preds = %update_warp_count.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !170
  %i.bc = call i32 @gtk_toggle_button_get_active(ptr noundef %i.bb) #30
  %.not4.i = icmp eq i32 %i.bc, 0
  br i1 %.not4.i, label %bb.l, label %_layers_showing.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !171
  %i.bf = call i32 @gtk_toggle_button_get_active(ptr noundef %i.be) #30
  %.not5.i = icmp eq i32 %i.bf, 0
  br i1 %.not5.i, label %_layers_showing.exit, label %_layers_showing.exit.thread

_layers_showing.exit:                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !172
  %i.bi = call i32 @gtk_toggle_button_get_active(ptr noundef %i.bh) #30
  %.not37 = icmp eq i32 %i.bi, 0
  br i1 %.not37, label %bb.cf, label %_layers_showing.exit.thread

_layers_showing.exit.thread:                      ; preds = %update_warp_count.exit, %bb.k, %bb.l, %_layers_showing.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.c, ptr %8, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bk = load ptr, ptr %i.h, align 16, !tbaa !164
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !53
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store float %i.k, ptr %i.bl, align 8, !tbaa !70
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.bn = fpext reassoc nsz arcp contract afn float %i.m to double ; 2 uses
  %i.bo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.m
  store float %i.bo, ptr %i.bm, align 4, !tbaa !71
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 0, ptr %i.bp, align 8, !tbaa !72
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 0, ptr %i.bq, align 4
  call fastcc void @_distort_paths_locked(ptr noundef nonnull %0, ptr noundef %8, ptr noundef %7)
  call void @cairo_scale(ptr noundef %1, double noundef %i.bn, double noundef %i.bn) #30
  %i.br = load ptr, ptr %i.d, align 16, !tbaa !146 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  br label %bb.bs

bb.m:                                             ; preds = %bb.ce
  %i.bw = fmul reassoc nsz arcp contract afn float %6, %i.m
  %i.bx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bw ; 2 uses
  %i.by = call ptr @g_list_reverse(ptr noundef %.4.i) #30 ; 3 uses
  %.val.i = load ptr, ptr %i.d, align 16, !tbaa !146 ; 3 uses
  call void @cairo_set_line_cap(ptr noundef %1, i32 noundef 1) #30
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.ca = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.bz) #30
  %i.cb = icmp eq i32 %i.ca, 0                    ; 6 uses
  %i.cc = getelementptr i8, ptr %.val.i, i64 48
  %.val558.i.i = load ptr, ptr %i.cc, align 8, !tbaa !174
  %.not47.i.i = icmp eq ptr %.val558.i.i, null
  br i1 %.not47.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  %i.ce = load <2 x float>, ptr %i.cd, align 4
  %i.cf = fcmp reassoc nsz arcp contract afn une <2 x float> %i.ce, <float -1.000000e+00, float 0.000000e+00>
  %i.cg = bitcast <2 x i1> %i.cf to i2
  %.not52 = icmp eq i2 %i.cg, 0
  br i1 %.not52, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !175
  %.not539.i.i = icmp eq i32 %i.ci, 18
  br i1 %.not539.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cj = call fastcc ptr @interpolate_paths(ptr noundef nonnull readonly %7)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ck = phi ptr [ %i.cj, %bb.p ], [ null, %bb.o ] ; 7 uses
  %.not54070.i.i = icmp eq ptr %i.by, null
  br i1 %.not54070.i.i, label %draw_paths.exit, label %.lr.ph73.i.i

.lr.ph73.i.i:                                     ; preds = %bb.q
  %i.cl = fpext reassoc nsz arcp contract afn float %i.bx to double ; 29 uses
  %i.cm = fmul reassoc nsz arcp contract afn float %i.bx, 5.000000e-01
  %i.cn = fpext reassoc nsz arcp contract afn float %i.cm to double
  %.not54650.i.i = icmp eq ptr %i.ck, null        ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.br, %.lr.ph73.i.i
  %.071.i.i = phi ptr [ %i.by, %.lr.ph73.i.i ], [ %i.aig, %bb.br ] ; 2 uses
  %i.co = load ptr, ptr %.071.i.i, align 8, !tbaa !74
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = trunc i64 %i.cp to i32                  ; 12 uses
  %i.cr = and i64 %i.cp, 4294967295
  %i.cs = getelementptr inbounds nuw [56 x i8], ptr @dt_liquify_layers, i64 %i.cr ; 7 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %.sroa.25300.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %.sroa.17.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 28
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 36 ; 3 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !229
  %i.cx = fcmp reassoc nsz arcp contract afn olt float %i.cw, 1.000000e+00
  br i1 %i.cx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @cairo_push_group(ptr noundef %1) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cz = icmp eq i32 %i.cq, 6
  %or.cond.i.i = select i1 %i.cz, i1 %i.cb, i1 false
  %i.da = icmp eq i32 %i.cq, 7
  %or.cond3.i.i = select i1 %i.da, i1 %i.cb, i1 false
  %i.db = icmp eq i32 %i.cq, 8
  %or.cond5.i.i = select i1 %i.db, i1 %i.cb, i1 false
  %i.dc = icmp eq i32 %i.cq, 15
  %i.dd = icmp eq i32 %i.cq, 9
  %or.cond7.i.i = select i1 %i.dd, i1 %i.cb, i1 false
  %i.de = icmp eq i32 %i.cq, 10
  %or.cond9.i.i = select i1 %i.de, i1 %i.cb, i1 false
  %i.df = icmp eq i32 %i.cq, 11
  %or.cond11.i.i = select i1 %i.df, i1 %i.cb, i1 false
  %i.dg = icmp eq i32 %i.cq, 18
  br label %bb.u

bb.u:                                             ; preds = %.thread22.i.i, %bb.t
  %indvars.iv.i.i = phi i64 [ 0, %bb.t ], [ %indvars.iv.next.i.i, %.thread22.i.i ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [76 x i8], ptr %7, i64 %indvars.iv.i.i ; 31 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !140 ; 6 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.bp, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr i8, ptr %i.dh, i64 16
  %.val.i.i = load i8, ptr %i.dk, align 4, !tbaa !139 ; 2 uses
  %i.dl = icmp eq i8 %.val.i.i, -1                ; 3 uses
  %i.dm = sext i8 %.val.i.i to i64
  %i.dn = getelementptr inbounds [76 x i8], ptr %7, i64 %i.dm ; 6 uses
  %i.do = load i32, ptr %i.cy, align 8, !tbaa !135 ; 2 uses
  %i.dp = and i32 %i.do, 4
  %.not541.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not541.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !141
  %.not542.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not542.i.i, label %.thread22.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ds = and i32 %i.do, 2
  %.not543.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not543.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.dl, label %.thread22.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !141
  %.not545.i.i = icmp eq i32 %i.du, 0
  br i1 %.not545.i.i, label %.thread22.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.sroa.0278.0.copyload297.i.i = load <2 x float>, ptr %i.ct, align 4, !tbaa !13
  %.sroa.25300.0.copyload302.i.i = load <2 x float>, ptr %.sroa.25300.0..sroa_idx.i.i, align 4, !tbaa !13
  %.sroa.0250.0.copyload263.i.i = load <2 x float>, ptr %i.cu, align 4, !tbaa !13 ; 23 uses
  %.sroa.17.0.copyload265.i.i = load <2 x float>, ptr %.sroa.17.0..sroa_idx.i.i, align 4, !tbaa !13 ; 23 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.dx = icmp eq i32 %i.dw, %i.cq                ; 2 uses
  %spec.select555.i.i = select nsz i1 %i.dx, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.25300.0.copyload302.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !176
  %i.ea = load i32, ptr %i.cs, align 8, !tbaa !230
  %i.eb = icmp eq i32 %i.dz, %i.ea                ; 2 uses
  %i.ec = select i1 %i.eb, i1 true, i1 %i.dx
  %.sroa.0278.1.i.i = select nsz i1 %i.ec, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.0278.0.copyload297.i.i ; 32 uses
  %.sroa.25300.1.i.i = select nsz i1 %i.eb, <2 x float> <float 1.000000e+00, float 8.000000e-01>, <2 x float> %spec.select555.i.i ; 32 uses
  call void @cairo_new_path(ptr noundef %1) #30
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %i.ee = load <2 x float>, ptr %i.ed, align 4    ; 16 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 1 ; 12 uses
  %i.eg = extractelement <2 x float> %i.ee, i64 0 ; 12 uses
  %i.eh = icmp eq i32 %i.di, 1
  br i1 %i.eh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ei = fpext reassoc nsz arcp contract afn float %i.eg to double
  %i.ej = fpext reassoc nsz arcp contract afn float %i.ef to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.ei, double noundef %i.ej) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  switch i32 %i.cq, label %bb.aq [
    i32 1, label %.preheader.i.i
    i32 2, label %.preheader48.i.i
    i32 3, label %.preheader49.i.i
    i32 4, label %bb.ad
    i32 5, label %bb.ae
    i32 12, label %bb.aj
  ]

.preheader49.i.i:                                 ; preds = %bb.ac
  br i1 %.not54650.i.i, label %._crit_edge60.i.i, label %.lr.ph59.i.i

.preheader48.i.i:                                 ; preds = %bb.ac
  br i1 %.not54650.i.i, label %._crit_edge64.i.i, label %.lr.ph63.i.i

.preheader.i.i:                                   ; preds = %bb.ac
  br i1 %.not54650.i.i, label %._crit_edge68.i.i, label %.lr.ph67.i.i

._crit_edge68.i.i:                                ; preds = %.lr.ph67.i.i, %.preheader.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %i.el = load <2 x float>, ptr %i.ek, align 4
  %i.em = fsub reassoc nsz arcp contract afn <2 x float> %i.el, %i.ee
  %i.en = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.em) #31
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, 2.000000e+00
  %i.ep = fpext reassoc nsz arcp contract afn float %i.eo to double
  %i.eq = fpext reassoc nsz arcp contract afn float %i.eg to double
  %i.er = fpext reassoc nsz arcp contract afn float %i.ef to double
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  %i.es = fmul reassoc nsz arcp contract afn double %i.ep, 5.000000e-01
  call void @cairo_arc(ptr noundef %1, double noundef %i.eq, double noundef %i.er, double noundef %i.es, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  call void @cairo_restore(ptr noundef %1) #30
  %i.et = fpext <2 x float> %.sroa.0278.1.i.i to <2 x double> ; 2 uses
  %i.eu = fpext <2 x float> %.sroa.25300.1.i.i to <2 x double> ; 2 uses
  %i.ev = extractelement <2 x double> %i.et, i64 0
  %i.ew = extractelement <2 x double> %i.et, i64 1
  %i.ex = extractelement <2 x double> %i.eu, i64 0
  %i.ey = extractelement <2 x double> %i.eu, i64 1
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ev, double noundef %i.ew, double noundef %i.ex, double noundef %i.ey) #30
  call void @cairo_fill(ptr noundef %1) #30
  br label %bb.aq

.lr.ph67.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph67.i.i
  %.053466.i.i = phi ptr [ %i.fm, %.lr.ph67.i.i ], [ %i.ck, %.preheader.i.i ] ; 2 uses
  %i.ez = load ptr, ptr %.053466.i.i, align 8, !tbaa !74 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load <2 x float>, ptr %i.ez, align 4    ; 2 uses
  %i.fc = load <2 x float>, ptr %i.fa, align 4
  %i.fd = fsub reassoc nsz arcp contract afn <2 x float> %i.fc, %i.fb
  %i.fe = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.fd) #31
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fe, 2.000000e+00
  %i.fg = fpext reassoc nsz arcp contract afn float %i.ff to double
  %i.fh = fpext <2 x float> %i.fb to <2 x double> ; 2 uses
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  %i.fi = fmul reassoc nsz arcp contract afn double %i.fg, 5.000000e-01
  %i.fj = extractelement <2 x double> %i.fh, i64 0
  %i.fk = extractelement <2 x double> %i.fh, i64 1
  call void @cairo_arc(ptr noundef %1, double noundef %i.fj, double noundef %i.fk, double noundef %i.fi, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  call void @cairo_restore(ptr noundef %1) #30
  %i.fl = getelementptr inbounds nuw i8, ptr %.053466.i.i, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !75 ; 2 uses
  %.not550.i.i = icmp eq ptr %i.fm, null
  br i1 %.not550.i.i, label %._crit_edge68.i.i, label %.lr.ph67.i.i

._crit_edge64.i.i:                                ; preds = %.lr.ph63.i.i, %.preheader48.i.i
  %.sroa.0.0.vec.extract.i561.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.fn = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i561.i.i to double
  %.sroa.0.4.vec.extract.i562.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.fo = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i562.i.i to double
  %.sroa.3.8.vec.extract.i563.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.fp = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i563.i.i to double
  %.sroa.3.12.vec.extract.i564.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.fq = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i564.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.fn, double noundef %i.fo, double noundef %i.fp, double noundef %i.fq) #30
  call void @cairo_fill(ptr noundef %1) #30
  br label %bb.aq

.lr.ph63.i.i:                                     ; preds = %.preheader48.i.i, %.lr.ph63.i.i
  %.053362.i.i = phi ptr [ %i.gh, %.lr.ph63.i.i ], [ %i.ck, %.preheader48.i.i ] ; 2 uses
  %i.fr = load ptr, ptr %.053362.i.i, align 8, !tbaa !74 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load <2 x float>, ptr %i.fr, align 4    ; 2 uses
  %i.fu = load <2 x float>, ptr %i.fs, align 4
  %i.fv = fsub reassoc nsz arcp contract afn <2 x float> %i.fu, %i.ft
  %i.fw = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.fv) #31
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fw, 2.000000e+00
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !79
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fx, %i.fz
  %i.gb = fpext reassoc nsz arcp contract afn float %i.ga to double
  %i.gc = fpext <2 x float> %i.ft to <2 x double> ; 2 uses
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  %i.gd = fmul reassoc nsz arcp contract afn double %i.gb, 5.000000e-01
  %i.ge = extractelement <2 x double> %i.gc, i64 0
  %i.gf = extractelement <2 x double> %i.gc, i64 1
  call void @cairo_arc(ptr noundef %1, double noundef %i.ge, double noundef %i.gf, double noundef %i.gd, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  call void @cairo_restore(ptr noundef %1) #30
  %i.gg = getelementptr inbounds nuw i8, ptr %.053362.i.i, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !75 ; 2 uses
  %.not549.i.i = icmp eq ptr %i.gh, null
  br i1 %.not549.i.i, label %._crit_edge64.i.i, label %.lr.ph63.i.i

._crit_edge60.i.i:                                ; preds = %.lr.ph59.i.i, %.preheader49.i.i
  %.sroa.0.0.vec.extract.i567.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.gi = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i567.i.i to double
  %.sroa.0.4.vec.extract.i568.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.gj = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i568.i.i to double
  %.sroa.3.8.vec.extract.i569.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.gk = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i569.i.i to double
  %.sroa.3.12.vec.extract.i570.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.gl = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i570.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.gi, double noundef %i.gj, double noundef %i.gk, double noundef %i.gl) #30
  call void @cairo_fill(ptr noundef %1) #30
  br label %bb.aq

.lr.ph59.i.i:                                     ; preds = %.preheader49.i.i, %.lr.ph59.i.i
  %.053158.i.i = phi ptr [ %i.hc, %.lr.ph59.i.i ], [ %i.ck, %.preheader49.i.i ] ; 2 uses
  %i.gm = load ptr, ptr %.053158.i.i, align 8, !tbaa !74 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load <2 x float>, ptr %i.gm, align 4    ; 2 uses
  %i.gp = load <2 x float>, ptr %i.gn, align 4
  %i.gq = fsub reassoc nsz arcp contract afn <2 x float> %i.gp, %i.go
  %i.gr = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.gq) #31
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gr, 2.000000e+00
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !80
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gs, %i.gu
  %i.gw = fpext reassoc nsz arcp contract afn float %i.gv to double
  %i.gx = fpext <2 x float> %i.go to <2 x double> ; 2 uses
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  %i.gy = fmul reassoc nsz arcp contract afn double %i.gw, 5.000000e-01
  %i.gz = extractelement <2 x double> %i.gx, i64 0
  %i.ha = extractelement <2 x double> %i.gx, i64 1
  call void @cairo_arc(ptr noundef %1, double noundef %i.gz, double noundef %i.ha, double noundef %i.gy, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  call void @cairo_restore(ptr noundef %1) #30
  %i.hb = getelementptr inbounds nuw i8, ptr %.053158.i.i, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !75 ; 2 uses
  %.not548.i.i = icmp eq ptr %i.hc, null
  br i1 %.not548.i.i, label %._crit_edge60.i.i, label %.lr.ph59.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.hd = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.he = fpext reassoc nsz arcp contract afn float %i.hd to double
  %i.hf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 1432
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !132
  %i.hi = fmul reassoc nsz arcp contract afn double %i.he, %i.cn
  %i.hj = fmul reassoc nsz arcp contract afn double %i.hi, %i.hh
  %i.hk = fptrunc reassoc nsz arcp contract afn double %i.hj to float
  %i.hl = fpext reassoc nsz arcp contract afn float %i.hk to double
  %i.hm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.hn = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.hm) #30
  %.not.i.i.i = icmp eq i32 %i.hn, 0
  %i.ho = select reassoc nsz arcp contract afn i1 %.not.i.i.i, double 1.000000e+00, double 5.000000e-01
  %i.hp = fmul reassoc nsz arcp contract afn double %i.ho, %i.hl
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.hp) #30
  %.sroa.0.0.vec.extract.i573.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.hq = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i573.i.i to double ; 2 uses
  %.sroa.0.4.vec.extract.i574.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.hr = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i574.i.i to double ; 2 uses
  %.sroa.3.8.vec.extract.i575.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.hs = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i575.i.i to double ; 2 uses
  %.sroa.3.12.vec.extract.i576.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.ht = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i576.i.i to double ; 2 uses
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.hq, double noundef %i.hr, double noundef %i.hs, double noundef %i.ht) #30
  br i1 %.not54650.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.ad
  call void @cairo_stroke(ptr noundef %1) #30
  br label %._crit_edge56.i.i

.lr.ph55.preheader.i.i:                           ; preds = %.lr.ph.i.i
  call void @cairo_stroke(ptr noundef %1) #30
  br label %.lr.ph55.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %.lr.ph.i.i
  %.053051.i.i = phi ptr [ %i.ih, %.lr.ph.i.i ], [ %i.ck, %bb.ad ] ; 2 uses
  %i.hu = load ptr, ptr %.053051.i.i, align 8, !tbaa !74 ; 4 uses
  %i.hv = load float, ptr %i.hu, align 4
  %i.hw = fpext reassoc nsz arcp contract afn float %i.hv to double
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hy = load float, ptr %i.hx, align 4
  %i.hz = fpext reassoc nsz arcp contract afn float %i.hy to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.hw, double noundef %i.hz) #30
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.ib = load float, ptr %i.ia, align 4
  %i.ic = fpext reassoc nsz arcp contract afn float %i.ib to double
end_hunk_0
begin_hunk_1_@gui_post_expose:bb.a
  %i.zo = extractelement <2 x double> %i.zl, i64 0
  %i.zp = extractelement <2 x double> %i.zl, i64 1
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.zm, double noundef %i.zn, double noundef %i.zo, double noundef %i.zp) #30
  call void @cairo_stroke_preserve(ptr noundef %1) #30
  %i.zq = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.zr = fpext reassoc nsz arcp contract afn float %i.zq to double
  %i.zs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 1432
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !132
  %i.zv = fmul reassoc nsz arcp contract afn double %i.zr, %i.cl
  %i.zw = fmul reassoc nsz arcp contract afn double %i.zv, %i.zu
  %i.zx = fptrunc reassoc nsz arcp contract afn double %i.zw to float
  %i.zy = fpext reassoc nsz arcp contract afn float %i.zx to double
  %i.zz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.aaa = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.zz) #30
  %.not.i690.i.i = icmp eq i32 %i.aaa, 0
  %i.aab = select reassoc nsz arcp contract afn i1 %.not.i690.i.i, double 1.000000e+00, double 5.000000e-01
  %i.aac = fmul reassoc nsz arcp contract afn double %i.aab, %i.zy
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.aac) #30
  %i.aad = fpext <2 x float> %.sroa.0250.0.copyload263.i.i to <2 x double> ; 2 uses
  %i.aae = fpext <2 x float> %.sroa.17.0.copyload265.i.i to <2 x double> ; 2 uses
  %i.aaf = extractelement <2 x double> %i.aad, i64 0
  %i.aag = extractelement <2 x double> %i.aad, i64 1
  %i.aah = extractelement <2 x double> %i.aae, i64 0
  %i.aai = extractelement <2 x double> %i.aae, i64 1
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.aaf, double noundef %i.aag, double noundef %i.aah, double noundef %i.aai) #30
  br label %.thread22.sink.split.i.i

.thread15.i.i:                                    ; preds = %.thread11.thread.i.i
  switch i32 %i.cq, label %.thread15.thread.i.i [
    i32 16, label %bb.bh
    i32 17, label %bb.bi
  ]

bb.bh:                                            ; preds = %.thread15.i.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %i.aak = getelementptr inbounds nuw i8, ptr %i.dh, i64 44
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !79
  %i.aam = load <2 x float>, ptr %i.aaj, align 4
  %i.aan = fsub reassoc nsz arcp contract afn <2 x float> %i.aam, %i.ee ; 2 uses
  %i.aao = insertelement <2 x float> poison, float %i.aal, i64 0
  %i.aap = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaq = fmul reassoc nsz arcp contract afn <2 x float> %i.aap, %i.aan
  %i.aar = fadd reassoc nsz arcp contract afn <2 x float> %i.aaq, %i.ee
  %i.aas = call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.aan) #31
  %i.aat = fpext reassoc nsz arcp contract afn float %i.aas to double
  %i.aau = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 16), align 16, !tbaa !13
  %i.aav = fpext reassoc nsz arcp contract afn float %i.aau to double
  %i.aaw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1432
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !132
  %i.aaz = fmul reassoc nsz arcp contract afn double %i.aav, %i.cl
  %i.aba = fmul reassoc nsz arcp contract afn double %i.aaz, %i.aay
  %i.abb = fptrunc reassoc nsz arcp contract afn double %i.aba to float
  %i.abc = fpext reassoc nsz arcp contract afn float %i.abb to double ; 3 uses
  %i.abd = fpext <2 x float> %i.aar to <2 x double> ; 2 uses
  call void @cairo_save(ptr noundef %1) #30
  %i.abe = extractelement <2 x double> %i.abd, i64 0
  %i.abf = extractelement <2 x double> %i.abd, i64 1
  call void @cairo_translate(ptr noundef %1, double noundef %i.abe, double noundef %i.abf) #30
  call void @cairo_rotate(ptr noundef %1, double noundef %i.aat) #30
  %i.abg = fneg reassoc nsz arcp contract afn double %i.abc ; 2 uses
  %i.abh = fmul reassoc nsz arcp contract afn double %i.abc, -5.000000e-01
  call void @cairo_move_to(ptr noundef %1, double noundef %i.abg, double noundef %i.abh) #30
  call void @cairo_line_to(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #30
  %i.abi = fmul reassoc nsz arcp contract afn double %i.abc, 5.000000e-01
  call void @cairo_line_to(ptr noundef %1, double noundef %i.abg, double noundef %i.abi) #30
  call void @cairo_close_path(ptr noundef %1) #30
  call void @cairo_restore(ptr noundef %1) #30
  %i.abj = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.abk = fpext reassoc nsz arcp contract afn float %i.abj to double
  %i.abl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 1432
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !132
  %i.abo = fmul reassoc nsz arcp contract afn double %i.abk, %i.cl
  %i.abp = fmul reassoc nsz arcp contract afn double %i.abo, %i.abn
  %i.abq = fptrunc reassoc nsz arcp contract afn double %i.abp to float
  %i.abr = fpext reassoc nsz arcp contract afn float %i.abq to double
  %i.abs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.abt = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.abs) #30
  %.not.i699.i.i = icmp eq i32 %i.abt, 0
  %i.abu = select reassoc nsz arcp contract afn i1 %.not.i699.i.i, double 1.000000e+00, double 5.000000e-01
  %i.abv = fmul reassoc nsz arcp contract afn double %i.abu, %i.abr
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.abv) #30
  %.sroa.0.0.vec.extract.i700.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 0
  %i.abw = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i700.i.i to double
  %.sroa.0.4.vec.extract.i701.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 1
  %i.abx = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i701.i.i to double
  %.sroa.3.8.vec.extract.i702.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 0
  %i.aby = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i702.i.i to double
  %.sroa.3.12.vec.extract.i703.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 1
  %i.abz = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i703.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.abw, double noundef %i.abx, double noundef %i.aby, double noundef %i.abz) #30
  call void @cairo_fill_preserve(ptr noundef %1) #30
  %.sroa.0.0.vec.extract.i704.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.aca = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i704.i.i to double
  %.sroa.0.4.vec.extract.i705.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.acb = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i705.i.i to double
  %.sroa.3.8.vec.extract.i706.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.acc = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i706.i.i to double
  %.sroa.3.12.vec.extract.i707.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.acd = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i707.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.aca, double noundef %i.acb, double noundef %i.acc, double noundef %i.acd) #30
  br label %.thread22.sink.split.i.i

bb.bi:                                            ; preds = %.thread15.i.i
  %i.ace = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %i.acf = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !80
  %i.ach = load <2 x float>, ptr %i.ace, align 4  ; 2 uses
  %i.aci = fsub reassoc nsz arcp contract afn <2 x float> %i.ach, %i.ee
  %i.acj = insertelement <2 x float> poison, float %i.acg, i64 0
  %i.ack = shufflevector <2 x float> %i.acj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acl = fmul reassoc nsz arcp contract afn <2 x float> %i.ack, %i.aci
  %i.acm = fadd reassoc nsz arcp contract afn <2 x float> %i.acl, %i.ee
  %i.acn = fsub reassoc nsz arcp contract afn <2 x float> %i.ee, %i.ach
  %i.aco = call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.acn) #31
  %i.acp = fpext reassoc nsz arcp contract afn float %i.aco to double
  %i.acq = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 16), align 16, !tbaa !13
  %i.acr = fpext reassoc nsz arcp contract afn float %i.acq to double
  %i.acs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 1432
  %i.acu = load double, ptr %i.act, align 8, !tbaa !132
  %i.acv = fmul reassoc nsz arcp contract afn double %i.acr, %i.cl
  %i.acw = fmul reassoc nsz arcp contract afn double %i.acv, %i.acu
  %i.acx = fptrunc reassoc nsz arcp contract afn double %i.acw to float
  %i.acy = fpext reassoc nsz arcp contract afn float %i.acx to double ; 3 uses
  %i.acz = fpext <2 x float> %i.acm to <2 x double> ; 2 uses
  call void @cairo_save(ptr noundef %1) #30
  %i.ada = extractelement <2 x double> %i.acz, i64 0
  %i.adb = extractelement <2 x double> %i.acz, i64 1
  call void @cairo_translate(ptr noundef %1, double noundef %i.ada, double noundef %i.adb) #30
  call void @cairo_rotate(ptr noundef %1, double noundef %i.acp) #30
  %i.adc = fneg reassoc nsz arcp contract afn double %i.acy ; 2 uses
  %i.add = fmul reassoc nsz arcp contract afn double %i.acy, -5.000000e-01
  call void @cairo_move_to(ptr noundef %1, double noundef %i.adc, double noundef %i.add) #30
  call void @cairo_line_to(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #30
  %i.ade = fmul reassoc nsz arcp contract afn double %i.acy, 5.000000e-01
  call void @cairo_line_to(ptr noundef %1, double noundef %i.adc, double noundef %i.ade) #30
  call void @cairo_close_path(ptr noundef %1) #30
  call void @cairo_restore(ptr noundef %1) #30
  %i.adf = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.adg = fpext reassoc nsz arcp contract afn float %i.adf to double
  %i.adh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 1432
  %i.adj = load double, ptr %i.adi, align 8, !tbaa !132
  %i.adk = fmul reassoc nsz arcp contract afn double %i.adg, %i.cl
  %i.adl = fmul reassoc nsz arcp contract afn double %i.adk, %i.adj
  %i.adm = fptrunc reassoc nsz arcp contract afn double %i.adl to float
  %i.adn = fpext reassoc nsz arcp contract afn float %i.adm to double
  %i.ado = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.adp = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.ado) #30
  %.not.i714.i.i = icmp eq i32 %i.adp, 0
  %i.adq = select reassoc nsz arcp contract afn i1 %.not.i714.i.i, double 1.000000e+00, double 5.000000e-01
  %i.adr = fmul reassoc nsz arcp contract afn double %i.adq, %i.adn
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.adr) #30
  %.sroa.0.0.vec.extract.i715.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 0
  %i.ads = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i715.i.i to double
  %.sroa.0.4.vec.extract.i716.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 1
  %i.adt = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i716.i.i to double
  %.sroa.3.8.vec.extract.i717.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 0
  %i.adu = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i717.i.i to double
  %.sroa.3.12.vec.extract.i718.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 1
  %i.adv = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i718.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ads, double noundef %i.adt, double noundef %i.adu, double noundef %i.adv) #30
  call void @cairo_fill_preserve(ptr noundef %1) #30
  %.sroa.0.0.vec.extract.i719.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.adw = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i719.i.i to double
  %.sroa.0.4.vec.extract.i720.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.adx = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i720.i.i to double
  %.sroa.3.8.vec.extract.i721.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.ady = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i721.i.i to double
  %.sroa.3.12.vec.extract.i722.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.adz = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i722.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.adw, double noundef %i.adx, double noundef %i.ady, double noundef %i.adz) #30
  br label %.thread22.sink.split.i.i

.thread15.thread.i.i:                             ; preds = %.thread15.i.i
  br i1 %or.cond11.i.i, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %.thread15.thread.i.i
  %i.aea = fpext reassoc nsz arcp contract afn float %i.eg to double ; 2 uses
  %i.aeb = fpext reassoc nsz arcp contract afn float %i.ef to double ; 2 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.aea, double noundef %i.aeb) #30
  %i.aec = getelementptr inbounds nuw i8, ptr %i.dh, i64 52
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !78
  %i.aee = icmp eq i32 %i.aed, 0
  %i.aef = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.aeg = load <2 x float>, ptr %i.aef, align 4  ; 2 uses
  br i1 %i.aee, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aeh = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 16), align 16, !tbaa !13
  %i.aei = fpext reassoc nsz arcp contract afn float %i.aeh to double
  %i.aej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 1432
  %i.ael = load double, ptr %i.aek, align 8, !tbaa !132
  %i.aem = fmul reassoc nsz arcp contract afn double %i.aei, %i.cl
  %i.aen = fmul reassoc nsz arcp contract afn double %i.aem, %i.ael
  %i.aeo = fptrunc reassoc nsz arcp contract afn double %i.aen to float
  %i.aep = fsub reassoc nsz arcp contract afn <2 x float> %i.aeg, %i.ee ; 2 uses
  %i.aeq = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.aep) #31
  %i.aer = fdiv reassoc nsz arcp contract afn float %i.aeo, %i.aeq
  %i.aes = fpext reassoc nsz arcp contract afn float %i.aer to double
  %i.aet = fmul reassoc nsz arcp contract afn double %i.aes, 5.000000e-01
  %i.aeu = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.aet
  %i.aev = fptrunc reassoc nsz arcp contract afn double %i.aeu to float
  %9 = insertelement <2 x float> poison, float %i.aev, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul reassoc nsz arcp contract afn <2 x float> %i.aep, %10
  %12 = fadd reassoc nsz arcp contract afn <2 x float> %11, %i.ee
  %13 = fpext <2 x float> %12 to <2 x double>     ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0
  %15 = extractelement <2 x double> %13, i64 1
  call void @cairo_line_to(ptr noundef %1, double noundef %14, double noundef %15) #30
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.aew = fsub reassoc nsz arcp contract afn <2 x float> %i.aeg, %i.ee
  %i.aex = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.aew) #31
  %i.aey = fpext reassoc nsz arcp contract afn float %i.aex to double
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  call void @cairo_arc(ptr noundef %1, double noundef %i.aea, double noundef %i.aeb, double noundef %i.aey, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  call void @cairo_restore(ptr noundef %1) #30
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.aez = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 4), align 4, !tbaa !13
  %i.afa = fpext reassoc nsz arcp contract afn float %i.aez to double
  %i.afb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 1432
  %i.afd = load double, ptr %i.afc, align 8, !tbaa !132
  %i.afe = fmul reassoc nsz arcp contract afn double %i.afa, %i.cl
  %i.aff = fmul reassoc nsz arcp contract afn double %i.afe, %i.afd
  %i.afg = fptrunc reassoc nsz arcp contract afn double %i.aff to float
  %i.afh = fpext reassoc nsz arcp contract afn float %i.afg to double
  %i.afi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.afj = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.afi) #30
  %.not.i729.i.i = icmp eq i32 %i.afj, 0
  %i.afk = select reassoc nsz arcp contract afn i1 %.not.i729.i.i, double 1.000000e+00, double 5.000000e-01
  %i.afl = fmul reassoc nsz arcp contract afn double %i.afk, %i.afh
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.afl) #30
  %.sroa.0.0.vec.extract.i730.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.afm = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i730.i.i to double
  %.sroa.0.4.vec.extract.i731.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.afn = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i731.i.i to double
  %.sroa.3.8.vec.extract.i732.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.afo = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i732.i.i to double
  %.sroa.3.12.vec.extract.i733.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.afp = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i733.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.afm, double noundef %i.afn, double noundef %i.afo, double noundef %i.afp) #30
  call void @cairo_stroke_preserve(ptr noundef %1) #30
  %i.afq = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.afr = fpext reassoc nsz arcp contract afn float %i.afq to double
  %i.afs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afs, i64 1432
  %i.afu = load double, ptr %i.aft, align 8, !tbaa !132
  %i.afv = fmul reassoc nsz arcp contract afn double %i.afr, %i.cl
  %i.afw = fmul reassoc nsz arcp contract afn double %i.afv, %i.afu
  %i.afx = fptrunc reassoc nsz arcp contract afn double %i.afw to float
  %i.afy = fpext reassoc nsz arcp contract afn float %i.afx to double
  %i.afz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.aga = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.afz) #30
  %.not.i734.i.i = icmp eq i32 %i.aga, 0
  %i.agb = select reassoc nsz arcp contract afn i1 %.not.i734.i.i, double 1.000000e+00, double 5.000000e-01
  %i.agc = fmul reassoc nsz arcp contract afn double %i.agb, %i.afy
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.agc) #30
  %.sroa.0.0.vec.extract.i735.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 0
  %i.agd = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i735.i.i to double
  %.sroa.0.4.vec.extract.i736.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 1
  %i.age = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i736.i.i to double
  %.sroa.3.8.vec.extract.i737.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 0
  %i.agf = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i737.i.i to double
  %.sroa.3.12.vec.extract.i738.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 1
  %i.agg = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i738.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.agd, double noundef %i.age, double noundef %i.agf, double noundef %i.agg) #30
  br label %.thread22.sink.split.i.i

bb.bn:                                            ; preds = %.thread15.thread.i.i
  br i1 %i.dg, label %bb.bo, label %.thread22.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.agh = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.agi = getelementptr inbounds nuw i8, ptr %i.dh, i64 52
  %i.agj = load <2 x float>, ptr %i.agh, align 4  ; 3 uses
  %i.agk = extractelement <2 x float> %i.agj, i64 0
  %i.agl = fpext reassoc nsz arcp contract afn float %i.agk to double ; 2 uses
  %i.agm = extractelement <2 x float> %i.agj, i64 1
  %i.agn = fpext reassoc nsz arcp contract afn float %i.agm to double ; 2 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.agl, double noundef %i.agn) #30
  %i.ago = load i32, ptr %i.agi, align 4, !tbaa !78
  %i.agp = icmp eq i32 %i.ago, 2
  %..i739.i.i = select nsz i1 %i.agp, float f0x40490FDB, float 0.000000e+00
  %i.agq = fsub reassoc nsz arcp contract afn <2 x float> %i.agj, %i.ee
  %i.agr = call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.agq) #31
  %i.ags = fadd reassoc nsz arcp contract afn float %..i739.i.i, %i.agr
  %i.agt = fpext reassoc nsz arcp contract afn float %i.ags to double
  %i.agu = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 16), align 16, !tbaa !13
  %i.agv = fpext reassoc nsz arcp contract afn float %i.agu to double
  %i.agw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 1432
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !132
  %i.agz = fmul reassoc nsz arcp contract afn double %i.agv, %i.cl
  %i.aha = fmul reassoc nsz arcp contract afn double %i.agz, %i.agy
  %i.ahb = fptrunc reassoc nsz arcp contract afn double %i.aha to float
  %i.ahc = fpext reassoc nsz arcp contract afn float %i.ahb to double ; 3 uses
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_translate(ptr noundef %1, double noundef %i.agl, double noundef %i.agn) #30
  call void @cairo_rotate(ptr noundef %1, double noundef %i.agt) #30
  %i.ahd = fneg reassoc nsz arcp contract afn double %i.ahc ; 2 uses
  %i.ahe = fmul reassoc nsz arcp contract afn double %i.ahc, -5.000000e-01
  call void @cairo_move_to(ptr noundef %1, double noundef %i.ahd, double noundef %i.ahe) #30
  call void @cairo_line_to(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #30
  %i.ahf = fmul reassoc nsz arcp contract afn double %i.ahc, 5.000000e-01
  call void @cairo_line_to(ptr noundef %1, double noundef %i.ahd, double noundef %i.ahf) #30
  call void @cairo_close_path(ptr noundef %1) #30
  call void @cairo_restore(ptr noundef %1) #30
  %i.ahg = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.ahh = fpext reassoc nsz arcp contract afn float %i.ahg to double
  %i.ahi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 1432
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !132
  %i.ahl = fmul reassoc nsz arcp contract afn double %i.ahh, %i.cl
  %i.ahm = fmul reassoc nsz arcp contract afn double %i.ahl, %i.ahk
  %i.ahn = fptrunc reassoc nsz arcp contract afn double %i.ahm to float
  %i.aho = fpext reassoc nsz arcp contract afn float %i.ahn to double
  %i.ahp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.ahq = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.ahp) #30
  %.not.i742.i.i = icmp eq i32 %i.ahq, 0
  %i.ahr = select reassoc nsz arcp contract afn i1 %.not.i742.i.i, double 1.000000e+00, double 5.000000e-01
  %i.ahs = fmul reassoc nsz arcp contract afn double %i.ahr, %i.aho
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.ahs) #30
  %.sroa.0.0.vec.extract.i743.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 0
  %i.aht = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i743.i.i to double
  %.sroa.0.4.vec.extract.i744.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 1
  %i.ahu = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i744.i.i to double
  %.sroa.3.8.vec.extract.i745.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 0
  %i.ahv = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i745.i.i to double
  %.sroa.3.12.vec.extract.i746.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 1
  %i.ahw = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i746.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.aht, double noundef %i.ahu, double noundef %i.ahv, double noundef %i.ahw) #30
  call void @cairo_fill_preserve(ptr noundef %1) #30
  %.sroa.0.0.vec.extract.i747.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.ahx = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i747.i.i to double
  %.sroa.0.4.vec.extract.i748.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.ahy = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i748.i.i to double
  %.sroa.3.8.vec.extract.i749.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.ahz = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i749.i.i to double
  %.sroa.3.12.vec.extract.i750.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.aia = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i750.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ahx, double noundef %i.ahy, double noundef %i.ahz, double noundef %i.aia) #30
  br label %.thread22.sink.split.i.i

.thread22.sink.split.i.i:                         ; preds = %bb.bo, %bb.bm, %bb.bi, %bb.bh, %.thread17.i.i, %bb.bg, %.thread12.i.i, %bb.be, %bb.bd, %bb.bb, %bb.ax, %bb.au
  call void @cairo_stroke(ptr noundef %1) #30
  br label %.thread22.i.i

.thread22.i.i:                                    ; preds = %.thread22.sink.split.i.i, %bb.bn, %bb.bc, %bb.ba, %bb.aw, %bb.at, %bb.aj, %bb.ae, %bb.z, %bb.y, %bb.w
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 100
  br i1 %exitcond.not.i.i, label %bb.bp, label %bb.u

bb.bp:                                            ; preds = %.thread22.i.i, %bb.u
  %i.aib = load float, ptr %i.cv, align 4, !tbaa !229
  %i.aic = fcmp reassoc nsz arcp contract afn olt float %i.aib, 1.000000e+00
  br i1 %i.aic, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @cairo_pop_group_to_source(ptr noundef %1) #30
  %i.aid = load float, ptr %i.cv, align 4, !tbaa !229
  %i.aie = fpext reassoc nsz arcp contract afn float %i.aid to double
  call void @cairo_paint_with_alpha(ptr noundef %1, double noundef %i.aie) #30
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.aif = getelementptr inbounds nuw i8, ptr %.071.i.i, i64 8
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !75 ; 2 uses
  %.not540.i.i = icmp eq ptr %i.aig, null
  br i1 %.not540.i.i, label %draw_paths.exit, label %bb.r

bb.bs:                                            ; preds = %bb.ce, %_layers_showing.exit.thread
  %indvars.iv.i32 = phi i64 [ 0, %_layers_showing.exit.thread ], [ %indvars.iv.next.i34, %bb.ce ] ; 9 uses
  %.02533.i = phi ptr [ null, %_layers_showing.exit.thread ], [ %.4.i, %bb.ce ] ; 3 uses
  %i.aih = load ptr, ptr %i.bs, align 8, !tbaa !170
  %i.aii = call i32 @gtk_toggle_button_get_active(ptr noundef %i.aih) #30
  %.not.i33 = icmp eq i32 %i.aii, 0
  br i1 %.not.i33, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.aij = getelementptr inbounds nuw [56 x i8], ptr @dt_liquify_layers, i64 %indvars.iv.i32
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 40
  %i.ail = load i32, ptr %i.aik, align 8, !tbaa !135
  %i.aim = and i32 %i.ail, 8
  %.not26.i = icmp eq i32 %i.aim, 0
  br i1 %.not26.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ain = inttoptr i64 %indvars.iv.i32 to ptr
  %i.aio = call ptr @g_list_prepend(ptr noundef %.02533.i, ptr noundef %i.ain) #30
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %.1.i = phi ptr [ %i.aio, %bb.bu ], [ %.02533.i, %bb.bt ], [ %.02533.i, %bb.bs ] ; 3 uses
  %i.aip = load ptr, ptr %i.bt, align 8, !tbaa !171
  %i.aiq = call i32 @gtk_toggle_button_get_active(ptr noundef %i.aip) #30
  %.not27.i = icmp eq i32 %i.aiq, 0
  br i1 %.not27.i, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.air = getelementptr inbounds nuw [56 x i8], ptr @dt_liquify_layers, i64 %indvars.iv.i32
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 40
  %i.ait = load i32, ptr %i.ais, align 8, !tbaa !135
  %i.aiu = and i32 %i.ait, 16
  %.not28.i = icmp eq i32 %i.aiu, 0
end_hunk_1
