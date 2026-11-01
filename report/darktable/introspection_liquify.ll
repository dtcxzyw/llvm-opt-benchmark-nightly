Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_liquify?download=true
inline.NumInlined: 223
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@gui_post_expose:bb.a
  %i.aa = zext i1 %i.z to i32
  %spec.select.i.1 = add i32 %spec.select.i, %i.aa ; 2 uses
  %i.ab = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !140 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.split.loop.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ae = icmp eq i32 %i.ac, 1
  %i.af = zext i1 %i.ae to i32
  %spec.select.i.2 = add i32 %spec.select.i.1, %i.af ; 2 uses
  %i.ag = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i.2
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !140 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.split.loop.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ah, 1
  %i.ak = zext i1 %i.aj to i32
  %spec.select.i.3 = add i32 %spec.select.i.2, %i.ak ; 2 uses
  %i.al = getelementptr inbounds nuw [76 x i8], ptr %.val, i64 %indvars.iv.next.i.3
  %i.am = load i32, ptr %i.al, align 4, !tbaa !140 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.split.loop.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.ao = icmp eq i32 %i.am, 1
  %i.ap = zext i1 %i.ao to i32
  %spec.select.i.4 = add i32 %spec.select.i.3, %i.ap ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 100
  br i1 %exitcond.not.i.4, label %.split.loop.exit7.i, label %bb.d

.split.loop.exit.i:                               ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.d ], [ %indvars.iv.next.i, %bb.e ], [ %indvars.iv.next.i.1, %bb.f ], [ %indvars.iv.next.i.2, %bb.g ], [ %indvars.iv.next.i.3, %bb.h ]
  %.0141.i.lcssa = phi i32 [ %.0141.i, %bb.d ], [ %spec.select.i, %bb.e ], [ %spec.select.i.1, %bb.f ], [ %spec.select.i.2, %bb.g ], [ %spec.select.i.3, %bb.h ]
  %indvars6.le.i = trunc i64 %indvars.iv.i.lcssa to i32
  br label %.split.loop.exit7.i

.split.loop.exit7.i:                              ; preds = %bb.i, %.split.loop.exit.i
  %.014.lcssa.i = phi i32 [ %.0141.i.lcssa, %.split.loop.exit.i ], [ %spec.select.i.4, %bb.i ]
  %.013.lcssa.i = phi i32 [ %indvars6.le.i, %.split.loop.exit.i ], [ 100, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 10, ptr noundef nonnull @.str.61, i32 noundef %.014.lcssa.i, i32 noundef %.013.lcssa.i) #30 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val30, i64 72 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !168
  %i.at = tail call ptr @gtk_label_get_text(ptr noundef %i.as) #30
  %i.au = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.at) #33
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %update_warp_count.exit, label %bb.j

bb.j:                                             ; preds = %.split.loop.exit7.i
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
  %.071.i.i = phi ptr [ %i.by, %.lr.ph73.i.i ], [ %i.aib, %bb.br ] ; 2 uses
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
  %i.dh = getelementptr inbounds nuw [76 x i8], ptr %7, i64 %indvars.iv.i.i ; 34 uses
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
  %i.et = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.0278.1.i.i to <2 x double> ; 2 uses
  %i.eu = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.25300.1.i.i to <2 x double> ; 2 uses
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
  %i.fh = fpext reassoc nsz arcp contract afn <2 x float> %i.fb to <2 x double> ; 2 uses
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
  %i.gc = fpext reassoc nsz arcp contract afn <2 x float> %i.ft to <2 x double> ; 2 uses
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
  %i.gx = fpext reassoc nsz arcp contract afn <2 x float> %i.go to <2 x double> ; 2 uses
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  %i.gy = fmul reassoc nsz arcp contract afn double %i.gw, 5.000000e-01
end_hunk_0
begin_hunk_1_@gui_post_expose:bb.a
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.nh, double noundef %i.nh, double noundef %i.ne, double noundef %i.ne) #30
  br label %.sink.split.i.i

bb.ao:                                            ; preds = %bb.ak
  %i.ni = fpext reassoc nsz arcp contract afn float %i.mk to double
  %i.nj = fpext reassoc nsz arcp contract afn float %i.eg to double
  %i.nk = fpext reassoc nsz arcp contract afn float %i.ef to double
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  %i.nl = fmul reassoc nsz arcp contract afn double %i.ni, 5.000000e-01
  call void @cairo_arc(ptr noundef %1, double noundef %i.nj, double noundef %i.nk, double noundef %i.nl, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  call void @cairo_restore(ptr noundef %1) #30
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1432
  %.pre36.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !132
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i.i, %bb.ak
  %i.nm = phi double [ %.pre36.i, %.sink.split.i.i ], [ %i.mh, %bb.ak ]
  %i.nn = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.no = fpext reassoc nsz arcp contract afn float %i.nn to double
  %i.np = fmul reassoc nsz arcp contract afn double %i.nm, %i.cl
  %i.nq = fmul reassoc nsz arcp contract afn double %i.np, %i.no
  %i.nr = fptrunc reassoc nsz arcp contract afn double %i.nq to float
  %i.ns = fpext reassoc nsz arcp contract afn float %i.nr to double
  %i.nt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.nu = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.nt) #30
  %.not.i607.i.i = icmp eq i32 %i.nu, 0
  %i.nv = select reassoc nsz arcp contract afn i1 %.not.i607.i.i, double 1.000000e+00, double 5.000000e-01
  %i.nw = fmul reassoc nsz arcp contract afn double %i.nv, %i.ns
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.nw) #30
  %.sroa.0.0.vec.extract.i608.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 0
  %i.nx = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i608.i.i to double
  %.sroa.0.4.vec.extract.i609.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 1
  %i.ny = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i609.i.i to double
  %.sroa.3.8.vec.extract.i610.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 0
  %i.nz = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i610.i.i to double
  %.sroa.3.12.vec.extract.i611.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 1
  %i.oa = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i611.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.nx, double noundef %i.ny, double noundef %i.nz, double noundef %i.oa) #30
  call void @cairo_fill_preserve(ptr noundef %1) #30
  %.sroa.0.0.vec.extract.i612.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.ob = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i612.i.i to double
  %.sroa.0.4.vec.extract.i613.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.oc = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i613.i.i to double
  %.sroa.3.8.vec.extract.i614.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.od = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i614.i.i to double
  %.sroa.3.12.vec.extract.i615.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.oe = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i615.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ob, double noundef %i.oc, double noundef %i.od, double noundef %i.oe) #30
  call void @cairo_stroke(ptr noundef %1) #30
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ai, %._crit_edge56.i.i, %._crit_edge60.i.i, %._crit_edge64.i.i, %._crit_edge68.i.i, %bb.ac
  %i.of = icmp eq i32 %i.di, 3
  br i1 %i.of, label %bb.ar, label %.thread.i.i

bb.ar:                                            ; preds = %bb.aq
  br i1 %or.cond.i.i, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  br i1 %i.dl, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.og = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !145
  %i.oi = icmp eq i32 %i.oh, 3
  br i1 %i.oi, label %.thread22.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.oj = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.ok = fpext reassoc nsz arcp contract afn float %i.oj to double
  %i.ol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 1432
  %i.on = load double, ptr %i.om, align 8, !tbaa !132
  %i.oo = fmul reassoc nsz arcp contract afn double %i.ok, %i.cl
  %i.op = fmul reassoc nsz arcp contract afn double %i.oo, %i.on
  %i.oq = fptrunc reassoc nsz arcp contract afn double %i.op to float
  %i.or = fpext reassoc nsz arcp contract afn float %i.oq to double
  %i.os = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.ot = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.os) #30
  %.not.i616.i.i = icmp eq i32 %i.ot, 0
  %i.ou = select reassoc nsz arcp contract afn i1 %.not.i616.i.i, double 1.000000e+00, double 5.000000e-01
  %i.ov = fmul reassoc nsz arcp contract afn double %i.ou, %i.or
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.ov) #30
  %.sroa.0.0.vec.extract.i617.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.ow = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i617.i.i to double
  %.sroa.0.4.vec.extract.i618.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.ox = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i618.i.i to double
  %.sroa.3.8.vec.extract.i619.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.oy = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i619.i.i to double
  %.sroa.3.12.vec.extract.i620.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.oz = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i620.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ow, double noundef %i.ox, double noundef %i.oy, double noundef %i.oz) #30
  %i.pa = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.pb = load float, ptr %i.pa, align 4
  %i.pc = fpext reassoc nsz arcp contract afn float %i.pb to double
  %i.pd = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.pe = load float, ptr %i.pd, align 4
  %i.pf = fpext reassoc nsz arcp contract afn float %i.pe to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.pc, double noundef %i.pf) #30
  %i.pg = getelementptr inbounds nuw i8, ptr %i.dh, i64 60
  %i.ph = load float, ptr %i.pg, align 4
  %i.pi = fpext reassoc nsz arcp contract afn float %i.ph to double
  %i.pj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.pk = load float, ptr %i.pj, align 4
  %i.pl = fpext reassoc nsz arcp contract afn float %i.pk to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.pi, double noundef %i.pl) #30
  br label %.thread22.sink.split.i.i

bb.av:                                            ; preds = %bb.ar
  br i1 %or.cond3.i.i, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.pm = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !145
  %.not552.i.i = icmp eq i32 %i.pn, 3
  br i1 %.not552.i.i, label %.thread22.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.po = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.pp = fpext reassoc nsz arcp contract afn float %i.po to double
  %i.pq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 1432
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !132
  %i.pt = fmul reassoc nsz arcp contract afn double %i.pp, %i.cl
  %i.pu = fmul reassoc nsz arcp contract afn double %i.pt, %i.ps
  %i.pv = fptrunc reassoc nsz arcp contract afn double %i.pu to float
  %i.pw = fpext reassoc nsz arcp contract afn float %i.pv to double
  %i.px = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.py = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.px) #30
  %.not.i621.i.i = icmp eq i32 %i.py, 0
  %i.pz = select reassoc nsz arcp contract afn i1 %.not.i621.i.i, double 1.000000e+00, double 5.000000e-01
  %i.qa = fmul reassoc nsz arcp contract afn double %i.pz, %i.pw
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.qa) #30
  %.sroa.0.0.vec.extract.i622.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.qb = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i622.i.i to double
  %.sroa.0.4.vec.extract.i623.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.qc = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i623.i.i to double
  %.sroa.3.8.vec.extract.i624.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.qd = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i624.i.i to double
  %.sroa.3.12.vec.extract.i625.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.qe = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i625.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.qb, double noundef %i.qc, double noundef %i.qd, double noundef %i.qe) #30
  %i.qf = fpext reassoc nsz arcp contract afn float %i.eg to double
  %i.qg = fpext reassoc nsz arcp contract afn float %i.ef to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.qf, double noundef %i.qg) #30
  %i.qh = getelementptr inbounds nuw i8, ptr %i.dh, i64 68
  %i.qi = load float, ptr %i.qh, align 4
  %i.qj = fpext reassoc nsz arcp contract afn float %i.qi to double
  %i.qk = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.ql = load float, ptr %i.qk, align 4
  %i.qm = fpext reassoc nsz arcp contract afn float %i.ql to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.qj, double noundef %i.qm) #30
  br label %.thread22.sink.split.i.i

bb.ay:                                            ; preds = %bb.av
  switch i32 %i.cq, label %.thread.i.i [
    i32 13, label %bb.az
    i32 14, label %bb.bc
  ]

bb.az:                                            ; preds = %bb.ay
  br i1 %i.dl, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.qn = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !145
  %i.qp = icmp eq i32 %i.qo, 3
  br i1 %i.qp, label %.thread22.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.qq = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.qr = fpext reassoc nsz arcp contract afn float %i.qq to double
  %i.qs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 1432
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !132
  %i.qv = fmul reassoc nsz arcp contract afn double %i.qr, %i.cl
  %i.qw = fmul reassoc nsz arcp contract afn double %i.qv, %i.qu
  %i.qx = fptrunc reassoc nsz arcp contract afn double %i.qw to float
  %i.qy = fpext reassoc nsz arcp contract afn float %i.qx to double
  %i.qz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.ra = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.qz) #30
  %.not.i626.i.i = icmp eq i32 %i.ra, 0
  %i.rb = select reassoc nsz arcp contract afn i1 %.not.i626.i.i, double 1.000000e+00, double 5.000000e-01
  %i.rc = fmul reassoc nsz arcp contract afn double %i.rb, %i.qy
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.rc) #30
  %.sroa.0.0.vec.extract.i627.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 0
  %i.rd = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i627.i.i to double
  %.sroa.0.4.vec.extract.i628.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 1
  %i.re = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i628.i.i to double
  %.sroa.3.8.vec.extract.i629.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 0
  %i.rf = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i629.i.i to double
  %.sroa.3.12.vec.extract.i630.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 1
  %i.rg = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i630.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.rd, double noundef %i.re, double noundef %i.rf, double noundef %i.rg) #30
  %i.rh = getelementptr inbounds nuw i8, ptr %i.dh, i64 60
  %9 = load float, ptr %i.rh, align 4
  %10 = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %11 = load float, ptr %10, align 4
  %i.ri = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 16), align 16, !tbaa !13
  %i.rj = fpext reassoc nsz arcp contract afn float %i.ri to double
  %i.rk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 1432
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !132
  %i.rn = fmul reassoc nsz arcp contract afn double %i.rj, %i.cl
  %i.ro = fmul reassoc nsz arcp contract afn double %i.rn, %i.rm
  %i.rp = fptrunc reassoc nsz arcp contract afn double %i.ro to float
  %i.rq = fpext reassoc nsz arcp contract afn float %i.rp to double
  %12 = fpext reassoc nsz arcp contract afn float %9 to double
  %13 = fpext reassoc nsz arcp contract afn float %11 to double
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  %i.rr = fmul reassoc nsz arcp contract afn double %i.rq, 5.000000e-01
  call void @cairo_arc(ptr noundef %1, double noundef %12, double noundef %13, double noundef %i.rr, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  call void @cairo_restore(ptr noundef %1) #30
  call void @cairo_fill_preserve(ptr noundef %1) #30
  %.sroa.0.0.vec.extract.i633.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.rs = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i633.i.i to double
  %.sroa.0.4.vec.extract.i634.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.rt = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i634.i.i to double
  %.sroa.3.8.vec.extract.i635.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.ru = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i635.i.i to double
  %.sroa.3.12.vec.extract.i636.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.rv = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i636.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.rs, double noundef %i.rt, double noundef %i.ru, double noundef %i.rv) #30
  br label %.thread22.sink.split.i.i

bb.bc:                                            ; preds = %bb.ay
  %i.rw = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !145
  %.not554.i.i = icmp eq i32 %i.rx, 3
  br i1 %.not554.i.i, label %.thread22.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ry = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.rz = fpext reassoc nsz arcp contract afn float %i.ry to double
  %i.sa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 1432
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !132
  %i.sd = fmul reassoc nsz arcp contract afn double %i.rz, %i.cl
  %i.se = fmul reassoc nsz arcp contract afn double %i.sd, %i.sc
  %i.sf = fptrunc reassoc nsz arcp contract afn double %i.se to float
  %i.sg = fpext reassoc nsz arcp contract afn float %i.sf to double
  %i.sh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.si = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.sh) #30
  %.not.i637.i.i = icmp eq i32 %i.si, 0
  %i.sj = select reassoc nsz arcp contract afn i1 %.not.i637.i.i, double 1.000000e+00, double 5.000000e-01
  %i.sk = fmul reassoc nsz arcp contract afn double %i.sj, %i.sg
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.sk) #30
  %.sroa.0.0.vec.extract.i638.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 0
  %i.sl = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i638.i.i to double
  %.sroa.0.4.vec.extract.i639.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 1
  %i.sm = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i639.i.i to double
  %.sroa.3.8.vec.extract.i640.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 0
  %i.sn = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i640.i.i to double
  %.sroa.3.12.vec.extract.i641.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 1
  %i.so = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i641.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.sl, double noundef %i.sm, double noundef %i.sn, double noundef %i.so) #30
  %i.sp = getelementptr inbounds nuw i8, ptr %i.dh, i64 68
  %14 = load float, ptr %i.sp, align 4
  %15 = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %16 = load float, ptr %15, align 4
  %i.sq = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 16), align 16, !tbaa !13
  %i.sr = fpext reassoc nsz arcp contract afn float %i.sq to double
  %i.ss = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 1432
  %i.su = load double, ptr %i.st, align 8, !tbaa !132
  %i.sv = fmul reassoc nsz arcp contract afn double %i.sr, %i.cl
  %i.sw = fmul reassoc nsz arcp contract afn double %i.sv, %i.su
  %i.sx = fptrunc reassoc nsz arcp contract afn double %i.sw to float
  %i.sy = fpext reassoc nsz arcp contract afn float %i.sx to double
  %17 = fpext reassoc nsz arcp contract afn float %14 to double
  %18 = fpext reassoc nsz arcp contract afn float %16 to double
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  %i.sz = fmul reassoc nsz arcp contract afn double %i.sy, 5.000000e-01
  call void @cairo_arc(ptr noundef %1, double noundef %17, double noundef %18, double noundef %i.sz, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  call void @cairo_restore(ptr noundef %1) #30
  call void @cairo_fill_preserve(ptr noundef %1) #30
  %.sroa.0.0.vec.extract.i644.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.ta = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i644.i.i to double
  %.sroa.0.4.vec.extract.i645.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.tb = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i645.i.i to double
  %.sroa.3.8.vec.extract.i646.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.tc = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i646.i.i to double
  %.sroa.3.12.vec.extract.i647.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.td = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i647.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ta, double noundef %i.tb, double noundef %i.tc, double noundef %i.td) #30
  br label %.thread22.sink.split.i.i

.thread.i.i:                                      ; preds = %bb.ay, %bb.aq
  br i1 %or.cond5.i.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.thread.i.i
  %i.te = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %i.tf = load <2 x float>, ptr %i.te, align 4
  %i.tg = fsub reassoc nsz arcp contract afn <2 x float> %i.tf, %i.ee
  %i.th = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.tg) #31
  %i.ti = fpext reassoc nsz arcp contract afn float %i.th to double
  %i.tj = fpext reassoc nsz arcp contract afn float %i.eg to double
  %i.tk = fpext reassoc nsz arcp contract afn float %i.ef to double
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  call void @cairo_arc(ptr noundef %1, double noundef %i.tj, double noundef %i.tk, double noundef %i.ti, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  call void @cairo_restore(ptr noundef %1) #30
  %i.tl = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 4), align 4, !tbaa !13
  %i.tm = fpext reassoc nsz arcp contract afn float %i.tl to double
  %i.tn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 1432
  %i.tp = load double, ptr %i.to, align 8, !tbaa !132
  %i.tq = fmul reassoc nsz arcp contract afn double %i.tm, %i.cl
  %i.tr = fmul reassoc nsz arcp contract afn double %i.tq, %i.tp
  %i.ts = fptrunc reassoc nsz arcp contract afn double %i.tr to float
  %i.tt = fpext reassoc nsz arcp contract afn float %i.ts to double
  %i.tu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.tv = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.tu) #30
  %.not.i650.i.i = icmp eq i32 %i.tv, 0
  %i.tw = select reassoc nsz arcp contract afn i1 %.not.i650.i.i, double 1.000000e+00, double 5.000000e-01
  %i.tx = fmul reassoc nsz arcp contract afn double %i.tw, %i.tt
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.tx) #30
  %i.ty = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.0278.1.i.i to <2 x double> ; 2 uses
  %i.tz = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.25300.1.i.i to <2 x double> ; 2 uses
  %i.ua = extractelement <2 x double> %i.ty, i64 0
  %i.ub = extractelement <2 x double> %i.ty, i64 1
  %i.uc = extractelement <2 x double> %i.tz, i64 0
  %i.ud = extractelement <2 x double> %i.tz, i64 1
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ua, double noundef %i.ub, double noundef %i.uc, double noundef %i.ud) #30
  call void @cairo_stroke_preserve(ptr noundef %1) #30
  %i.ue = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.uf = fpext reassoc nsz arcp contract afn float %i.ue to double
  %i.ug = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1432
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !132
  %i.uj = fmul reassoc nsz arcp contract afn double %i.uf, %i.cl
  %i.uk = fmul reassoc nsz arcp contract afn double %i.uj, %i.ui
  %i.ul = fptrunc reassoc nsz arcp contract afn double %i.uk to float
  %i.um = fpext reassoc nsz arcp contract afn float %i.ul to double
  %i.un = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.uo = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.un) #30
  %.not.i655.i.i = icmp eq i32 %i.uo, 0
  %i.up = select reassoc nsz arcp contract afn i1 %.not.i655.i.i, double 1.000000e+00, double 5.000000e-01
  %i.uq = fmul reassoc nsz arcp contract afn double %i.up, %i.um
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.uq) #30
  %i.ur = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.0250.0.copyload263.i.i to <2 x double> ; 2 uses
  %i.us = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.17.0.copyload265.i.i to <2 x double> ; 2 uses
  %i.ut = extractelement <2 x double> %i.ur, i64 0
  %i.uu = extractelement <2 x double> %i.ur, i64 1
  %i.uv = extractelement <2 x double> %i.us, i64 0
  %i.uw = extractelement <2 x double> %i.us, i64 1
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.ut, double noundef %i.uu, double noundef %i.uv, double noundef %i.uw) #30
  br label %.thread22.sink.split.i.i

bb.bf:                                            ; preds = %.thread.i.i
  br i1 %i.dc, label %.thread12.i.i, label %.thread11.i.i

.thread12.i.i:                                    ; preds = %bb.bf
  %i.ux = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.uy = fpext reassoc nsz arcp contract afn float %i.ux to double
  %i.uz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 1432
  %i.vb = load double, ptr %i.va, align 8, !tbaa !132
  %i.vc = fmul reassoc nsz arcp contract afn double %i.uy, %i.cl
  %i.vd = fmul reassoc nsz arcp contract afn double %i.vc, %i.vb
  %i.ve = fptrunc reassoc nsz arcp contract afn double %i.vd to float
  %i.vf = fpext reassoc nsz arcp contract afn float %i.ve to double
  %i.vg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.vh = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.vg) #30
  %.not.i660.i.i = icmp eq i32 %i.vh, 0
  %i.vi = select reassoc nsz arcp contract afn i1 %.not.i660.i.i, double 1.000000e+00, double 5.000000e-01
  %i.vj = fmul reassoc nsz arcp contract afn double %i.vi, %i.vf
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.vj) #30
  %.sroa.0.0.vec.extract.i661.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 0
  %i.vk = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i661.i.i to double
  %.sroa.0.4.vec.extract.i662.i.i = extractelement <2 x float> %.sroa.0250.0.copyload263.i.i, i64 1
  %i.vl = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i662.i.i to double
  %.sroa.3.8.vec.extract.i663.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 0
  %i.vm = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i663.i.i to double
  %.sroa.3.12.vec.extract.i664.i.i = extractelement <2 x float> %.sroa.17.0.copyload265.i.i, i64 1
  %i.vn = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i664.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.vk, double noundef %i.vl, double noundef %i.vm, double noundef %i.vn) #30
  %i.vo = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %19 = load float, ptr %i.vo, align 4
  %20 = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %21 = load float, ptr %20, align 4
  %i.vp = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 16), align 16, !tbaa !13
  %i.vq = fpext reassoc nsz arcp contract afn float %i.vp to double
  %i.vr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 1432
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !132
  %i.vu = fmul reassoc nsz arcp contract afn double %i.vq, %i.cl
  %i.vv = fmul reassoc nsz arcp contract afn double %i.vu, %i.vt
  %i.vw = fptrunc reassoc nsz arcp contract afn double %i.vv to float
  %i.vx = fpext reassoc nsz arcp contract afn float %i.vw to double
  %22 = fpext reassoc nsz arcp contract afn float %19 to double
  %23 = fpext reassoc nsz arcp contract afn float %21 to double
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  %i.vy = fmul reassoc nsz arcp contract afn double %i.vx, 5.000000e-01
  call void @cairo_arc(ptr noundef %1, double noundef %22, double noundef %23, double noundef %i.vy, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  call void @cairo_restore(ptr noundef %1) #30
  call void @cairo_fill_preserve(ptr noundef %1) #30
  %.sroa.0.0.vec.extract.i667.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 0
  %i.vz = fpext reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i667.i.i to double
  %.sroa.0.4.vec.extract.i668.i.i = extractelement <2 x float> %.sroa.0278.1.i.i, i64 1
  %i.wa = fpext reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract.i668.i.i to double
  %.sroa.3.8.vec.extract.i669.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 0
  %i.wb = fpext reassoc nsz arcp contract afn float %.sroa.3.8.vec.extract.i669.i.i to double
  %.sroa.3.12.vec.extract.i670.i.i = extractelement <2 x float> %.sroa.25300.1.i.i, i64 1
  %i.wc = fpext reassoc nsz arcp contract afn float %.sroa.3.12.vec.extract.i670.i.i to double
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.vz, double noundef %i.wa, double noundef %i.wb, double noundef %i.wc) #30
  br label %.thread22.sink.split.i.i

.thread11.i.i:                                    ; preds = %bb.bf
  br i1 %or.cond7.i.i, label %bb.bg, label %.thread11.thread.i.i

bb.bg:                                            ; preds = %.thread11.i.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %i.we = load <2 x float>, ptr %i.wd, align 4
  %i.wf = fsub reassoc nsz arcp contract afn <2 x float> %i.we, %i.ee
  %i.wg = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.wf) #31
  %i.wh = fpext reassoc nsz arcp contract afn float %i.wg to double
  %i.wi = getelementptr inbounds nuw i8, ptr %i.dh, i64 44
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !79
  %i.wk = fpext reassoc nsz arcp contract afn float %i.wj to double
  %i.wl = fpext reassoc nsz arcp contract afn float %i.eg to double
  %i.wm = fpext reassoc nsz arcp contract afn float %i.ef to double
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  %i.wn = fmul reassoc nsz arcp contract afn double %i.wk, %i.wh
  call void @cairo_arc(ptr noundef %1, double noundef %i.wl, double noundef %i.wm, double noundef %i.wn, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  call void @cairo_restore(ptr noundef %1) #30
  %i.wo = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 4), align 4, !tbaa !13
  %i.wp = fpext reassoc nsz arcp contract afn float %i.wo to double
  %i.wq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 1432
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !132
  %i.wt = fmul reassoc nsz arcp contract afn double %i.wp, %i.cl
  %i.wu = fmul reassoc nsz arcp contract afn double %i.wt, %i.ws
  %i.wv = fptrunc reassoc nsz arcp contract afn double %i.wu to float
  %i.ww = fpext reassoc nsz arcp contract afn float %i.wv to double
  %i.wx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.wy = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.wx) #30
  %.not.i673.i.i = icmp eq i32 %i.wy, 0
  %i.wz = select reassoc nsz arcp contract afn i1 %.not.i673.i.i, double 1.000000e+00, double 5.000000e-01
  %i.xa = fmul reassoc nsz arcp contract afn double %i.wz, %i.ww
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.xa) #30
  %i.xb = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.0278.1.i.i to <2 x double> ; 2 uses
  %i.xc = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.25300.1.i.i to <2 x double> ; 2 uses
  %i.xd = extractelement <2 x double> %i.xb, i64 0
  %i.xe = extractelement <2 x double> %i.xb, i64 1
  %i.xf = extractelement <2 x double> %i.xc, i64 0
  %i.xg = extractelement <2 x double> %i.xc, i64 1
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.xd, double noundef %i.xe, double noundef %i.xf, double noundef %i.xg) #30
  call void @cairo_stroke_preserve(ptr noundef %1) #30
  %i.xh = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.xi = fpext reassoc nsz arcp contract afn float %i.xh to double
  %i.xj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 1432
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !132
  %i.xm = fmul reassoc nsz arcp contract afn double %i.xi, %i.cl
  %i.xn = fmul reassoc nsz arcp contract afn double %i.xm, %i.xl
  %i.xo = fptrunc reassoc nsz arcp contract afn double %i.xn to float
  %i.xp = fpext reassoc nsz arcp contract afn float %i.xo to double
  %i.xq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.xr = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.xq) #30
  %.not.i678.i.i = icmp eq i32 %i.xr, 0
  %i.xs = select reassoc nsz arcp contract afn i1 %.not.i678.i.i, double 1.000000e+00, double 5.000000e-01
  %i.xt = fmul reassoc nsz arcp contract afn double %i.xs, %i.xp
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.xt) #30
  %i.xu = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.0250.0.copyload263.i.i to <2 x double> ; 2 uses
  %i.xv = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.17.0.copyload265.i.i to <2 x double> ; 2 uses
  %i.xw = extractelement <2 x double> %i.xu, i64 0
  %i.xx = extractelement <2 x double> %i.xu, i64 1
  %i.xy = extractelement <2 x double> %i.xv, i64 0
  %i.xz = extractelement <2 x double> %i.xv, i64 1
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.xw, double noundef %i.xx, double noundef %i.xy, double noundef %i.xz) #30
  br label %.thread22.sink.split.i.i

.thread11.thread.i.i:                             ; preds = %.thread11.i.i
  br i1 %or.cond9.i.i, label %.thread17.i.i, label %.thread15.i.i

.thread17.i.i:                                    ; preds = %.thread11.thread.i.i
  %i.ya = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %i.yb = load <2 x float>, ptr %i.ya, align 4
  %i.yc = fsub reassoc nsz arcp contract afn <2 x float> %i.yb, %i.ee
  %i.yd = call reassoc nsz arcp contract afn float @cabsf(<2 x float> noundef %i.yc) #31
  %i.ye = fpext reassoc nsz arcp contract afn float %i.yd to double
  %i.yf = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !80
  %i.yh = fpext reassoc nsz arcp contract afn float %i.yg to double
  %i.yi = fpext reassoc nsz arcp contract afn float %i.eg to double
  %i.yj = fpext reassoc nsz arcp contract afn float %i.ef to double
  call void @cairo_save(ptr noundef %1) #30
  call void @cairo_new_sub_path(ptr noundef %1) #30
  %i.yk = fmul reassoc nsz arcp contract afn double %i.yh, %i.ye
  call void @cairo_arc(ptr noundef %1, double noundef %i.yi, double noundef %i.yj, double noundef %i.yk, double noundef 0.000000e+00, double noundef f0x401921FB54442D18) #30
  call void @cairo_restore(ptr noundef %1) #30
  %i.yl = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 4), align 4, !tbaa !13
  %i.ym = fpext reassoc nsz arcp contract afn float %i.yl to double
  %i.yn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 1432
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !132
  %i.yq = fmul reassoc nsz arcp contract afn double %i.ym, %i.cl
  %i.yr = fmul reassoc nsz arcp contract afn double %i.yq, %i.yp
  %i.ys = fptrunc reassoc nsz arcp contract afn double %i.yr to float
  %i.yt = fpext reassoc nsz arcp contract afn float %i.ys to double
  %i.yu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.yv = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.yu) #30
  %.not.i685.i.i = icmp eq i32 %i.yv, 0
  %i.yw = select reassoc nsz arcp contract afn i1 %.not.i685.i.i, double 1.000000e+00, double 5.000000e-01
  %i.yx = fmul reassoc nsz arcp contract afn double %i.yw, %i.yt
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.yx) #30
  %i.yy = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.0278.1.i.i to <2 x double> ; 2 uses
  %i.yz = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.25300.1.i.i to <2 x double> ; 2 uses
  %i.za = extractelement <2 x double> %i.yy, i64 0
  %i.zb = extractelement <2 x double> %i.yy, i64 1
  %i.zc = extractelement <2 x double> %i.yz, i64 0
  %i.zd = extractelement <2 x double> %i.yz, i64 1
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.za, double noundef %i.zb, double noundef %i.zc, double noundef %i.zd) #30
  call void @cairo_stroke_preserve(ptr noundef %1) #30
  %i.ze = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.zf = fpext reassoc nsz arcp contract afn float %i.ze to double
  %i.zg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 1432
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !132
  %i.zj = fmul reassoc nsz arcp contract afn double %i.zf, %i.cl
  %i.zk = fmul reassoc nsz arcp contract afn double %i.zj, %i.zi
  %i.zl = fptrunc reassoc nsz arcp contract afn double %i.zk to float
  %i.zm = fpext reassoc nsz arcp contract afn float %i.zl to double
  %i.zn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.zo = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.zn) #30
  %.not.i690.i.i = icmp eq i32 %i.zo, 0
  %i.zp = select reassoc nsz arcp contract afn i1 %.not.i690.i.i, double 1.000000e+00, double 5.000000e-01
  %i.zq = fmul reassoc nsz arcp contract afn double %i.zp, %i.zm
  call void @cairo_set_line_width(ptr noundef %1, double noundef %i.zq) #30
  %i.zr = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.0250.0.copyload263.i.i to <2 x double> ; 2 uses
  %i.zs = fpext reassoc nsz arcp contract afn <2 x float> %.sroa.17.0.copyload265.i.i to <2 x double> ; 2 uses
  %i.zt = extractelement <2 x double> %i.zr, i64 0
  %i.zu = extractelement <2 x double> %i.zr, i64 1
  %i.zv = extractelement <2 x double> %i.zs, i64 0
  %i.zw = extractelement <2 x double> %i.zs, i64 1
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.zt, double noundef %i.zu, double noundef %i.zv, double noundef %i.zw) #30
  br label %.thread22.sink.split.i.i

.thread15.i.i:                                    ; preds = %.thread11.thread.i.i
  switch i32 %i.cq, label %.thread15.thread.i.i [
    i32 16, label %bb.bh
    i32 17, label %bb.bi
  ]

bb.bh:                                            ; preds = %.thread15.i.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.dh, i64 36
  %i.zy = getelementptr inbounds nuw i8, ptr %i.dh, i64 44
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !79
  %i.aaa = load <2 x float>, ptr %i.zx, align 4
  %i.aab = fsub reassoc nsz arcp contract afn <2 x float> %i.aaa, %i.ee ; 2 uses
  %i.aac = insertelement <2 x float> poison, float %i.zz, i64 0
  %i.aad = shufflevector <2 x float> %i.aac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aae = fmul reassoc nsz arcp contract afn <2 x float> %i.aad, %i.aab
  %i.aaf = fadd reassoc nsz arcp contract afn <2 x float> %i.aae, %i.ee
  %i.aag = call reassoc nsz arcp contract afn float @cargf(<2 x float> noundef %i.aab) #31
  %i.aah = fpext reassoc nsz arcp contract afn float %i.aag to double
  %i.aai = load float, ptr getelementptr inbounds nuw (i8, ptr @dt_liquify_ui_widths, i64 16), align 16, !tbaa !13
  %i.aaj = fpext reassoc nsz arcp contract afn float %i.aai to double
  %i.aak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 1432
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !132
  %i.aan = fmul reassoc nsz arcp contract afn double %i.aaj, %i.cl
  %i.aao = fmul reassoc nsz arcp contract afn double %i.aan, %i.aam
  %i.aap = fptrunc reassoc nsz arcp contract afn double %i.aao to float
  %i.aaq = fpext reassoc nsz arcp contract afn float %i.aap to double ; 3 uses
  %i.aar = fpext reassoc nsz arcp contract afn <2 x float> %i.aaf to <2 x double> ; 2 uses
  call void @cairo_save(ptr noundef %1) #30
  %i.aas = extractelement <2 x double> %i.aar, i64 0
  %i.aat = extractelement <2 x double> %i.aar, i64 1
  call void @cairo_translate(ptr noundef %1, double noundef %i.aas, double noundef %i.aat) #30
  call void @cairo_rotate(ptr noundef %1, double noundef %i.aah) #30
  %i.aau = fneg reassoc nsz arcp contract afn double %i.aaq ; 2 uses
  %i.aav = fmul reassoc nsz arcp contract afn double %i.aaq, -5.000000e-01
  call void @cairo_move_to(ptr noundef %1, double noundef %i.aau, double noundef %i.aav) #30
  call void @cairo_line_to(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00) #30
  %i.aaw = fmul reassoc nsz arcp contract afn double %i.aaq, 5.000000e-01
  call void @cairo_line_to(ptr noundef %1, double noundef %i.aau, double noundef %i.aaw) #30
  call void @cairo_close_path(ptr noundef %1) #30
  call void @cairo_restore(ptr noundef %1) #30
  %i.aax = load float, ptr @dt_liquify_ui_widths, align 16, !tbaa !13
  %i.aay = fpext reassoc nsz arcp contract afn float %i.aax to double
  %i.aaz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !126
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 1432
  %i.abb = load double, ptr %i.aba, align 8, !tbaa !132
  %i.abc = fmul reassoc nsz arcp contract afn double %i.aay, %i.cl
  %i.abd = fmul reassoc nsz arcp contract afn double %i.abc, %i.abb
  %i.abe = fptrunc reassoc nsz arcp contract afn double %i.abd to float
  %i.abf = fpext reassoc nsz arcp contract afn float %i.abe to double
  %i.abg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !173
  %i.abh = call i32 @dt_iop_canvas_not_sensitive(ptr noundef %i.abg) #30
  %.not.i699.i.i = icmp eq i32 %i.abh, 0
  %i.abi = select reassoc nsz arcp contract afn i1 %.not.i699.i.i, double 1.000000e+00, double 5.000000e-01
  %i.abj = fmul reassoc nsz arcp contract afn double %i.abi, %i.abf
end_hunk_1
