Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/timeline?download=true
inline.NumInlined: 87
inline.NumDeleted: 19
begin_hunk_0_@_lib_timeline_draw_callback:bb.a
  br i1 %i.nb, label %_time_compare_at_zoom.exit180.thread.i, label %bb.ee

_time_compare_at_zoom.exit180.thread.i:           ; preds = %_time_compare_at_zoom.exit180.i, %bb.ed, %bb.ea, %bb.dx, %bb.du, %bb.dr
  %i.nc = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !79
  %i.ne = add nsw i32 %i.nd, 1
  store i32 %i.ne, ptr %i.da, align 8, !tbaa !113
  br label %bb.ee

bb.ee:                                            ; preds = %_time_compare_at_zoom.exit180.thread.i, %_time_compare_at_zoom.exit180.i
  %.sroa.037.0.copyload.i = load i32, ptr %i.am, align 8 ; 2 uses
  %.sroa.438.0.copyload.i = load i32, ptr %.sroa.420.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.539.0.copyload.i = load i32, ptr %.sroa.521.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.640.0.copyload.i = load i32, ptr %.sroa.622.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.741.0.copyload.i = load i32, ptr %.sroa.723.0..sroa_idx.i, align 8 ; 2 uses
  %.not.i181.i = icmp eq i32 %.sroa.037.0.copyload.i, %i.mj
  br i1 %.not.i181.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.nf = sub nsw i32 %.sroa.037.0.copyload.i, %i.mj
  br label %_time_compare_at_zoom.exit192.i

bb.eg:                                            ; preds = %bb.ee
  %i.ng = load i32, ptr %i.cw, align 4, !tbaa !81 ; 2 uses
  %.not22.i183.i = icmp eq i32 %.sroa.438.0.copyload.i, %i.ng
  br i1 %.not22.i183.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.nh = sub nsw i32 %.sroa.438.0.copyload.i, %i.ng
  br label %_time_compare_at_zoom.exit192.i

bb.ei:                                            ; preds = %bb.eg
  %.not23.i184.i = icmp eq i32 %i.mi, 0
  br i1 %.not23.i184.i, label %_time_compare_at_zoom.exit192.thread.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ni = load i32, ptr %i.cx, align 8, !tbaa !82 ; 2 uses
  %.not24.i185.i = icmp eq i32 %.sroa.539.0.copyload.i, %i.ni
  br i1 %.not24.i185.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.nj = sub nsw i32 %.sroa.539.0.copyload.i, %i.ni
  br label %_time_compare_at_zoom.exit192.i

bb.el:                                            ; preds = %bb.ej
  %i.nk = icmp ugt i32 %i.mi, 2
  br i1 %i.nk, label %bb.em, label %_time_compare_at_zoom.exit192.thread.i

bb.em:                                            ; preds = %bb.el
  %i.nl = sdiv i32 %.sroa.640.0.copyload.i, 2     ; 2 uses
  %i.nm = load i32, ptr %i.cz, align 4, !tbaa !83 ; 3 uses
  %i.nn = sdiv i32 %i.nm, 2                       ; 2 uses
  %.not25.i186.i = icmp eq i32 %i.nl, %i.nn
  br i1 %.not25.i186.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.no = sub nsw i32 %i.nl, %i.nn
  br label %_time_compare_at_zoom.exit192.i

bb.eo:                                            ; preds = %bb.em
  %.not26.i187.i = icmp eq i32 %i.mi, 3
  br i1 %.not26.i187.i, label %_time_compare_at_zoom.exit192.thread.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %.not27.i188.i = icmp eq i32 %.sroa.640.0.copyload.i, %i.nm
  br i1 %.not27.i188.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.np = sub nsw i32 %.sroa.640.0.copyload.i, %i.nm
  br label %_time_compare_at_zoom.exit192.i

bb.er:                                            ; preds = %bb.ep
  %i.nq = icmp ugt i32 %i.mi, 4
  br i1 %i.nq, label %bb.es, label %_time_compare_at_zoom.exit192.thread.i

bb.es:                                            ; preds = %bb.er
  %i.nr = sdiv i32 %.sroa.741.0.copyload.i, 3     ; 2 uses
  %i.ns = load i32, ptr %i.cy, align 8, !tbaa !84 ; 2 uses
  %i.nt = sdiv i32 %i.ns, 3                       ; 2 uses
  %.not28.i189.i = icmp eq i32 %i.nr, %i.nt
  br i1 %.not28.i189.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.nu = sub nsw i32 %i.nr, %i.nt
  br label %_time_compare_at_zoom.exit192.i

bb.eu:                                            ; preds = %bb.es
  %.not29.i190.i = icmp eq i32 %i.mi, 5
  %i.nv = sub nsw i32 %.sroa.741.0.copyload.i, %i.ns
  br i1 %.not29.i190.i, label %_time_compare_at_zoom.exit192.thread.i, label %_time_compare_at_zoom.exit192.i

_time_compare_at_zoom.exit192.i:                  ; preds = %bb.eu, %bb.et, %bb.eq, %bb.en, %bb.ek, %bb.eh, %bb.ef
  %.0.i182.i = phi i32 [ %i.nf, %bb.ef ], [ %i.nh, %bb.eh ], [ %i.nj, %bb.ek ], [ %i.no, %bb.en ], [ %i.np, %bb.eq ], [ %i.nu, %bb.et ], [ %i.nv, %bb.eu ]
  %i.nw = icmp sgt i32 %.0.i182.i, -1
  br i1 %i.nw, label %_time_compare_at_zoom.exit192.thread.i, label %bb.ev

_time_compare_at_zoom.exit192.thread.i:           ; preds = %_time_compare_at_zoom.exit192.i, %bb.eu, %bb.er, %bb.eo, %bb.el, %bb.ei
  %i.nx = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !79
  %i.nz = add nsw i32 %i.ny, 2
  store i32 %i.nz, ptr %i.db, align 4, !tbaa !114
  br label %bb.ev

bb.ev:                                            ; preds = %_time_compare_at_zoom.exit192.thread.i, %_time_compare_at_zoom.exit192.i
  %i.oa = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.ob = call i32 @sqlite3_finalize(ptr noundef %i.oa) #15 ; 0 uses
  call void @g_free(ptr noundef %i.bi) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_block_get_at_zoom.exit

_block_get_at_zoom.exit:                          ; preds = %bb.ax, %bb.ev
  %.0101.i = phi i32 [ %i.gi, %bb.ev ], [ 0, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.oc = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i32 %.0101.i, ptr %i.oc, align 8, !tbaa !150
  store i32 %i.e, ptr %i.h, align 8, !tbaa !79
  %i.od = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  store i32 %i.g, ptr %i.od, align 4, !tbaa !147
  %i.oe = load i32, ptr %i.f, align 4, !tbaa !146 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  store i32 %i.oe, ptr %i.of, align 4, !tbaa !151
  %i.og = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !73 ; 2 uses
  %i.oi = icmp ult i32 %i.oh, 7
  br i1 %i.oi, label %switch.lookup, label %_block_get_bar_width.exit

switch.lookup:                                    ; preds = %_block_get_at_zoom.exit
  %i.oj = zext nneg i32 %i.oh to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._lib_timeline_draw_callback, i64 %i.oj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_block_get_bar_width.exit

_block_get_bar_width.exit:                        ; preds = %_block_get_at_zoom.exit, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 1, %_block_get_at_zoom.exit ] ; 3 uses
  %i.ok = load i32, ptr %i.d, align 4, !tbaa !145
  %i.ol = sitofp reassoc nsz arcp contract afn i32 %i.ok to double
  %i.om = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !87
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 1440
  %i.oo = load double, ptr %i.on, align 8, !tbaa !152 ; 2 uses
  %i.op = fmul reassoc nsz arcp contract afn double %i.oo, %i.ol
  %i.oq = fptosi double %i.op to i32
  %i.or = sitofp reassoc nsz arcp contract afn i32 %i.oe to double
  %i.os = fmul reassoc nsz arcp contract afn double %i.oo, %i.or
  %i.ot = fptosi double %i.os to i32
  %i.ou = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.oq, i32 noundef %i.ot) #15 ; 3 uses
  %i.ov = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !87
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 1440
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !152 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.ou, double noundef %i.ox, double noundef %i.ox) #15
  store ptr %i.ou, ptr %i.q, align 8, !tbaa !78
  %i.oy = call ptr @cairo_create(ptr noundef %i.ou) #15 ; 17 uses
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.oy, i32 noundef 21) #15
  call void @cairo_paint(ptr noundef %i.oy) #15
  %i.oz = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.0166196 = load ptr, ptr %i.oz, align 8, !tbaa !120 ; 2 uses
  %.not175197 = icmp eq ptr %.0166196, null
  br i1 %.not175197, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %_block_get_bar_width.exit
  %i.pa = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.pb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.pc = uitofp nneg i32 %.0.i to double         ; 2 uses
  br label %bb.ex

bb.ew:                                            ; preds = %._crit_edge
  %i.pd = getelementptr inbounds nuw i8, ptr %.0166199, i64 8
  %.0166 = load ptr, ptr %i.pd, align 8, !tbaa !120 ; 2 uses
  %.not175 = icmp eq ptr %.0166, null
  br i1 %.not175, label %._crit_edge201, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph200, %bb.ew
  %.0166199 = phi ptr [ %.0166196, %.lr.ph200 ], [ %.0166, %bb.ew ] ; 2 uses
  %.0167198 = phi i32 [ 0, %.lr.ph200 ], [ %i.qi, %bb.ew ] ; 3 uses
  %i.pe = load ptr, ptr %.0166199, align 8, !tbaa !76 ; 5 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 24 ; 3 uses
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !149
  %i.ph = mul nsw i32 %i.pg, %.0.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.oy, i32 noundef 25) #15
  %i.pi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !87
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 1432
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !153
  %i.pl = fmul reassoc nsz arcp contract afn double %i.pk, 5.000000e+00
  %i.pm = fadd reassoc nsz arcp contract afn double %i.pl, 5.000000e+00
  call void @cairo_set_font_size(ptr noundef %i.oy, double noundef %i.pm) #15
  %i.pn = load ptr, ptr %i.pe, align 8, !tbaa !116
  call void @cairo_text_extents(ptr noundef %i.oy, ptr noundef %i.pn, ptr noundef nonnull %9) #15
  %i.po = load i32, ptr %i.f, align 4, !tbaa !146 ; 2 uses
  %i.pp = sitofp reassoc nsz arcp contract afn i32 %i.po to double
  %i.pq = load double, ptr %i.pa, align 8, !tbaa !155
  %i.pr = fsub reassoc nsz arcp contract afn double -4.000000e+00, %i.pq
  %i.ps = fadd reassoc nsz arcp contract afn double %i.pr, %i.pp
  %i.pt = fptosi double %i.ps to i32              ; 3 uses
  %i.pu = sitofp reassoc nsz arcp contract afn i32 %.0167198 to double ; 2 uses
  %i.pv = sitofp reassoc nsz arcp contract afn i32 %i.ph to double ; 2 uses
  %i.pw = load double, ptr %i.pb, align 8, !tbaa !156
  %i.px = fsub reassoc nsz arcp contract afn double %i.pv, %i.pw
  %i.py = fmul reassoc nsz arcp contract afn double %i.px, 5.000000e-01
  %12 = load double, ptr %9, align 8, !tbaa !157
  %13 = fsub reassoc nsz arcp contract afn double %i.pu, %12
  %14 = fadd reassoc nsz arcp contract afn double %13, %i.py
  %i.pz = add nsw i32 %i.po, -2
  %i.qa = sitofp reassoc nsz arcp contract afn i32 %i.pz to double
  call void @cairo_move_to(ptr noundef %i.oy, double noundef %14, double noundef %i.qa) #15
  %i.qb = load ptr, ptr %i.pe, align 8, !tbaa !116
  call void @cairo_show_text(ptr noundef %i.oy, ptr noundef %i.qb) #15
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.oy, i32 noundef 22) #15
  %i.qc = sitofp reassoc nsz arcp contract afn i32 %i.pt to double ; 3 uses
  call void @cairo_rectangle(ptr noundef %i.oy, double noundef %i.pu, double noundef 0.000000e+00, double noundef %i.pv, double noundef %i.qc) #15
  call void @cairo_fill(ptr noundef %i.oy) #15
  %i.qd = load i32, ptr %i.pf, align 8, !tbaa !149
  %i.qe = icmp sgt i32 %i.qd, 0
  br i1 %i.qe, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ex
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  br label %bb.ey

._crit_edge:                                      ; preds = %bb.ey, %bb.ex
  %i.qh = add i32 %.0167198, 2
  %i.qi = add i32 %i.qh, %i.ph                    ; 2 uses
  %i.qj = load i32, ptr %i.d, align 4, !tbaa !145
  %.not176 = icmp slt i32 %i.qi, %i.qj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br i1 %.not176, label %bb.ew, label %._crit_edge201

bb.ey:                                            ; preds = %.lr.ph, %bb.ey
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ey ] ; 4 uses
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.oy, i32 noundef 23, float noundef 5.000000e-01) #15
  %i.qk = load ptr, ptr %i.qf, align 8, !tbaa !117
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %indvars.iv
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !72
  %i.qn = sitofp reassoc nsz arcp contract afn i32 %i.qm to double
  %i.qo = fadd reassoc nsz arcp contract afn double %i.qn, 4.000000e+00
  %i.qp = fptrunc reassoc nsz arcp contract afn double %i.qo to float
  %i.qq = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.qp)
  %i.qr = fpext reassoc nsz arcp contract afn float %i.qq to double
  %i.qs = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.qr
  %i.qt = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.qs
  %i.qu = fmul reassoc nsz arcp contract afn double %i.qt, %i.qc
  %i.qv = fptosi double %i.qu to i32              ; 2 uses
  %i.qw = trunc i64 %indvars.iv to i32
  %i.qx = mul i32 %.0.i, %i.qw
  %i.qy = add nsw i32 %i.qx, %.0167198
  %i.qz = sitofp reassoc nsz arcp contract afn i32 %i.qy to double ; 2 uses
  %i.ra = sub nsw i32 %i.pt, %i.qv
  %i.rb = sitofp reassoc nsz arcp contract afn i32 %i.ra to double
  %i.rc = sitofp reassoc nsz arcp contract afn i32 %i.qv to double
  call void @cairo_rectangle(ptr noundef %i.oy, double noundef %i.qz, double noundef %i.rb, double noundef %i.pc, double noundef %i.rc) #15
  call void @cairo_fill(ptr noundef %i.oy) #15
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.oy, i32 noundef 23, float noundef 1.000000e+00) #15
  %i.rd = load ptr, ptr %i.qg, align 8, !tbaa !118
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !72
  %i.rg = sitofp reassoc nsz arcp contract afn i32 %i.rf to double
  %i.rh = fadd reassoc nsz arcp contract afn double %i.rg, 4.000000e+00
  %i.ri = fptrunc reassoc nsz arcp contract afn double %i.rh to float
  %i.rj = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ri)
  %i.rk = fpext reassoc nsz arcp contract afn float %i.rj to double
  %i.rl = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.rk
  %i.rm = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.rl
  %i.rn = fmul reassoc nsz arcp contract afn double %i.rm, %i.qc
  %i.ro = fptosi double %i.rn to i32              ; 2 uses
  %i.rp = sub nsw i32 %i.pt, %i.ro
  %i.rq = sitofp reassoc nsz arcp contract afn i32 %i.rp to double
  %i.rr = sitofp reassoc nsz arcp contract afn i32 %i.ro to double
  call void @cairo_rectangle(ptr noundef %i.oy, double noundef %i.qz, double noundef %i.rq, double noundef %i.pc, double noundef %i.rr) #15
  call void @cairo_fill(ptr noundef %i.oy) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.rs = load i32, ptr %i.pf, align 8, !tbaa !149
  %i.rt = sext i32 %i.rs to i64
  %i.ru = icmp slt i64 %indvars.iv.next, %i.rt
  br i1 %i.ru, label %bb.ey, label %._crit_edge

._crit_edge201:                                   ; preds = %._crit_edge, %bb.ew, %_block_get_bar_width.exit
  call void @cairo_destroy(ptr noundef %i.oy) #15
  %.pre214 = load ptr, ptr %i.q, align 8, !tbaa !78
  br label %bb.ez

bb.ez:                                            ; preds = %._crit_edge201, %bb.e
  %i.rv = phi ptr [ %.pre214, %._crit_edge201 ], [ %.pre, %bb.e ]
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.rv, double noundef 0.000000e+00, double noundef 0.000000e+00) #15
  call void @cairo_paint(ptr noundef %1) #15
  %i.rw = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !71
  %.not177 = icmp eq i32 %i.rx, 0
  br i1 %.not177, label %bb.fg, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ry = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !121
  %.not178 = icmp eq i32 %i.rz, 0
  %.0163.in.v = select i1 %.not178, i64 140, i64 144
  %.0163.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0163.in.v
  %.0163 = load i32, ptr %.0163.in, align 4, !tbaa !72 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !113 ; 3 uses
  %.1 = call i32 @llvm.smax.i32(i32 %.0163, i32 %i.sb) ; 3 uses
  %.0 = call i32 @llvm.smin.i32(i32 %.0163, i32 %i.sb) ; 5 uses
  %i.sc = and i32 %i.sb, %.0163
  %or.cond.not = icmp sgt i32 %i.sc, -1
  br i1 %or.cond.not, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  %i.sd = load i32, ptr %i.h, align 8, !tbaa !79
  %i.se = icmp sgt i32 %.0, %i.sd
  br i1 %i.se, label %bb.fg, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sf = icmp sgt i32 %.0, -1
  br i1 %i.sf, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 23, float noundef 8.000000e-01) #15
  %i.sg = uitofp nneg i32 %.0 to double           ; 4 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sg, double noundef 0.000000e+00) #15
  %i.sh = load i32, ptr %i.f, align 4, !tbaa !146
  %i.si = sitofp reassoc nsz arcp contract afn i32 %i.sh to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sg, double noundef %i.si) #15
  call void @cairo_stroke(ptr noundef %1) #15
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 21, float noundef 3.000000e-01) #15
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sg, double noundef 0.000000e+00) #15
  %i.sj = load i32, ptr %i.f, align 4, !tbaa !146
  %i.sk = sitofp reassoc nsz arcp contract afn i32 %i.sj to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sg, double noundef %i.sk) #15
  call void @cairo_stroke(ptr noundef %1) #15
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 23, float noundef 5.000000e-01) #15
  %i.sl = sitofp reassoc nsz arcp contract afn i32 %.0 to double
  %i.sm = sub nsw i32 %.1, %.0
  %i.sn = sitofp reassoc nsz arcp contract afn i32 %i.sm to double
  %i.so = load i32, ptr %i.f, align 4, !tbaa !146
  %i.sp = sitofp reassoc nsz arcp contract afn i32 %i.so to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.sl, double noundef 0.000000e+00, double noundef %i.sn, double noundef %i.sp) #15
  call void @cairo_fill(ptr noundef %1) #15
  %i.sq = load i32, ptr %i.h, align 8, !tbaa !79
  %.not179 = icmp sgt i32 %.1, %i.sq
  br i1 %.not179, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 23, float noundef 8.000000e-01) #15
  %i.sr = sitofp reassoc nsz arcp contract afn i32 %.1 to double ; 4 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sr, double noundef 0.000000e+00) #15
  %i.ss = load i32, ptr %i.f, align 4, !tbaa !146
  %i.st = sitofp reassoc nsz arcp contract afn i32 %i.ss to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sr, double noundef %i.st) #15
  call void @cairo_stroke(ptr noundef %1) #15
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 21, float noundef 3.000000e-01) #15
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sr, double noundef 0.000000e+00) #15
  %i.su = load i32, ptr %i.f, align 4, !tbaa !146
  %i.sv = sitofp reassoc nsz arcp contract afn i32 %i.su to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sr, double noundef %i.sv) #15
  call void @cairo_stroke(ptr noundef %1) #15
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fa, %bb.ff, %bb.fe, %bb.fb, %bb.ez
  %i.sw = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !122
  %.not180 = icmp eq i32 %i.sx, 0
  br i1 %.not180, label %bb.ft, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.sy = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 5 uses
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !123 ; 2 uses
  %i.ta = icmp sgt i32 %i.sz, 0
  br i1 %i.ta, label %bb.fi, label %bb.ft

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.tb = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !121
  %.not181 = icmp eq i32 %i.tc, 0
  br i1 %.not181, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.td = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef nonnull align 8 dereferenceable(28) %i.td, i64 28, i1 false), !tbaa.struct !77
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias writable align 4 %10, i32 noundef %i.sz, ptr noundef nonnull %i.c)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.te = load i32, ptr %10, align 8, !tbaa !80
  %.not.i183 = icmp eq i32 %i.te, 0
  br i1 %.not.i183, label %bb.fm, label %_time_compare.exit.thread

bb.fm:                                            ; preds = %bb.fl
  %i.tf = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !81 ; 2 uses
  %.not11.i = icmp eq i32 %i.tg, 1
  br i1 %.not11.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.th = add nsw i32 %i.tg, -1
  br label %_time_compare.exit

end_hunk_0
