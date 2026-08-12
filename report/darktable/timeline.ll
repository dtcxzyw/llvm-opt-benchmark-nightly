inline.NumInlined: 87
inline.NumDeleted: 19
begin_hunk_0_@_lib_timeline_draw_callback:bb.a
  br i1 %i.nh, label %_time_compare_at_zoom.exit180.thread.i, label %bb.ee

_time_compare_at_zoom.exit180.thread.i:           ; preds = %_time_compare_at_zoom.exit180.i, %bb.ed, %bb.ea, %bb.dx, %bb.du, %bb.dr
  %i.ni = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !79
  %i.nk = add nsw i32 %i.nj, 1
  store i32 %i.nk, ptr %i.da, align 8, !tbaa !121
  br label %bb.ee

bb.ee:                                            ; preds = %_time_compare_at_zoom.exit180.thread.i, %_time_compare_at_zoom.exit180.i
  %.sroa.037.0.copyload.i = load i32, ptr %i.am, align 8 ; 2 uses
  %.sroa.438.0.copyload.i = load i32, ptr %.sroa.420.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.539.0.copyload.i = load i32, ptr %.sroa.521.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.640.0.copyload.i = load i32, ptr %.sroa.622.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.741.0.copyload.i = load i32, ptr %.sroa.723.0..sroa_idx.i, align 8 ; 2 uses
  %.not.i181.i = icmp eq i32 %.sroa.037.0.copyload.i, %i.mp
  br i1 %.not.i181.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.nl = sub nsw i32 %.sroa.037.0.copyload.i, %i.mp
  br label %_time_compare_at_zoom.exit192.i

bb.eg:                                            ; preds = %bb.ee
  %i.nm = load i32, ptr %i.cw, align 4, !tbaa !81 ; 2 uses
  %.not22.i183.i = icmp eq i32 %.sroa.438.0.copyload.i, %i.nm
  br i1 %.not22.i183.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.nn = sub nsw i32 %.sroa.438.0.copyload.i, %i.nm
  br label %_time_compare_at_zoom.exit192.i

bb.ei:                                            ; preds = %bb.eg
  %.not23.i184.i = icmp eq i32 %i.mo, 0
  br i1 %.not23.i184.i, label %_time_compare_at_zoom.exit192.thread.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.no = load i32, ptr %i.cx, align 8, !tbaa !82 ; 2 uses
  %.not24.i185.i = icmp eq i32 %.sroa.539.0.copyload.i, %i.no
  br i1 %.not24.i185.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.np = sub nsw i32 %.sroa.539.0.copyload.i, %i.no
  br label %_time_compare_at_zoom.exit192.i

bb.el:                                            ; preds = %bb.ej
  %i.nq = icmp ugt i32 %i.mo, 2
  br i1 %i.nq, label %bb.em, label %_time_compare_at_zoom.exit192.thread.i

bb.em:                                            ; preds = %bb.el
  %i.nr = sdiv i32 %.sroa.640.0.copyload.i, 2     ; 2 uses
  %i.ns = load i32, ptr %i.cz, align 4, !tbaa !83 ; 3 uses
  %i.nt = sdiv i32 %i.ns, 2                       ; 2 uses
  %.not25.i186.i = icmp eq i32 %i.nr, %i.nt
  br i1 %.not25.i186.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.nu = sub nsw i32 %i.nr, %i.nt
  br label %_time_compare_at_zoom.exit192.i

bb.eo:                                            ; preds = %bb.em
  %.not26.i187.i = icmp eq i32 %i.mo, 3
  br i1 %.not26.i187.i, label %_time_compare_at_zoom.exit192.thread.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %.not27.i188.i = icmp eq i32 %.sroa.640.0.copyload.i, %i.ns
  br i1 %.not27.i188.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.nv = sub nsw i32 %.sroa.640.0.copyload.i, %i.ns
  br label %_time_compare_at_zoom.exit192.i

bb.er:                                            ; preds = %bb.ep
  %i.nw = icmp ugt i32 %i.mo, 4
  br i1 %i.nw, label %bb.es, label %_time_compare_at_zoom.exit192.thread.i

bb.es:                                            ; preds = %bb.er
  %i.nx = sdiv i32 %.sroa.741.0.copyload.i, 3     ; 2 uses
  %i.ny = load i32, ptr %i.cy, align 8, !tbaa !84 ; 2 uses
  %i.nz = sdiv i32 %i.ny, 3                       ; 2 uses
  %.not28.i189.i = icmp eq i32 %i.nx, %i.nz
  br i1 %.not28.i189.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.oa = sub nsw i32 %i.nx, %i.nz
  br label %_time_compare_at_zoom.exit192.i

bb.eu:                                            ; preds = %bb.es
  %.not29.i190.i = icmp eq i32 %i.mo, 5
  %i.ob = sub nsw i32 %.sroa.741.0.copyload.i, %i.ny
  br i1 %.not29.i190.i, label %_time_compare_at_zoom.exit192.thread.i, label %_time_compare_at_zoom.exit192.i

_time_compare_at_zoom.exit192.i:                  ; preds = %bb.eu, %bb.et, %bb.eq, %bb.en, %bb.ek, %bb.eh, %bb.ef
  %.0.i182.i = phi i32 [ %i.nl, %bb.ef ], [ %i.nn, %bb.eh ], [ %i.np, %bb.ek ], [ %i.nu, %bb.en ], [ %i.nv, %bb.eq ], [ %i.oa, %bb.et ], [ %i.ob, %bb.eu ]
  %i.oc = icmp sgt i32 %.0.i182.i, -1
  br i1 %i.oc, label %_time_compare_at_zoom.exit192.thread.i, label %bb.ev

_time_compare_at_zoom.exit192.thread.i:           ; preds = %_time_compare_at_zoom.exit192.i, %bb.eu, %bb.er, %bb.eo, %bb.el, %bb.ei
  %i.od = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !79
  %i.of = add nsw i32 %i.oe, 2
  store i32 %i.of, ptr %i.db, align 4, !tbaa !122
  br label %bb.ev

bb.ev:                                            ; preds = %_time_compare_at_zoom.exit192.thread.i, %_time_compare_at_zoom.exit192.i
  %i.og = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.oh = call i32 @sqlite3_finalize(ptr noundef %i.og) #15 ; 0 uses
  call void @g_free(ptr noundef %i.bi) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_block_get_at_zoom.exit

_block_get_at_zoom.exit:                          ; preds = %bb.ax, %bb.ev
  %.095.i = phi i32 [ %i.gi, %bb.ev ], [ 0, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.oi = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i32 %.095.i, ptr %i.oi, align 8, !tbaa !130
  store i32 %i.e, ptr %i.h, align 8, !tbaa !79
  %i.oj = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  store i32 %i.g, ptr %i.oj, align 4, !tbaa !120
  %i.ok = load i32, ptr %i.f, align 4, !tbaa !119 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !131
  %i.om = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.on = load i32, ptr %i.om, align 8, !tbaa !73 ; 2 uses
  %i.oo = icmp ult i32 %i.on, 7
  br i1 %i.oo, label %switch.lookup, label %_block_get_bar_width.exit

switch.lookup:                                    ; preds = %_block_get_at_zoom.exit
  %i.op = zext nneg i32 %i.on to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._lib_timeline_draw_callback, i64 %i.op
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_block_get_bar_width.exit

_block_get_bar_width.exit:                        ; preds = %_block_get_at_zoom.exit, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 1, %_block_get_at_zoom.exit ] ; 3 uses
  %i.oq = load i32, ptr %i.d, align 4, !tbaa !117
  %i.or = sitofp reassoc nsz arcp contract afn i32 %i.oq to double
  %i.os = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !88
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 1440
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !132 ; 2 uses
  %i.ov = fmul reassoc nsz arcp contract afn double %i.ou, %i.or
  %i.ow = fptosi double %i.ov to i32
  %i.ox = sitofp reassoc nsz arcp contract afn i32 %i.ok to double
  %i.oy = fmul reassoc nsz arcp contract afn double %i.ou, %i.ox
  %i.oz = fptosi double %i.oy to i32
  %i.pa = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.ow, i32 noundef %i.oz) #15 ; 3 uses
  %i.pb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !88
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 1440
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !132 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.pa, double noundef %i.pd, double noundef %i.pd) #15
  store ptr %i.pa, ptr %i.q, align 8, !tbaa !78
  %i.pe = call ptr @cairo_create(ptr noundef %i.pa) #15 ; 17 uses
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.pe, i32 noundef 21) #15
  call void @cairo_paint(ptr noundef %i.pe) #15
  %i.pf = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %.0165196 = load ptr, ptr %i.pf, align 8, !tbaa !133 ; 2 uses
  %.not175197 = icmp eq ptr %.0165196, null
  br i1 %.not175197, label %._crit_edge201, label %.lr.ph200

.lr.ph200:                                        ; preds = %_block_get_bar_width.exit
  %i.pg = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ph = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.pi = uitofp nneg i32 %.0.i to double         ; 2 uses
  br label %bb.ex

bb.ew:                                            ; preds = %._crit_edge
  %i.pj = getelementptr inbounds nuw i8, ptr %.0165199, i64 8
  %.0165 = load ptr, ptr %i.pj, align 8, !tbaa !133 ; 2 uses
  %.not175 = icmp eq ptr %.0165, null
  br i1 %.not175, label %._crit_edge201, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph200, %bb.ew
  %.0165199 = phi ptr [ %.0165196, %.lr.ph200 ], [ %.0165, %bb.ew ] ; 2 uses
  %.0198 = phi i32 [ 0, %.lr.ph200 ], [ %i.qo, %bb.ew ] ; 3 uses
  %i.pk = load ptr, ptr %.0165199, align 8, !tbaa !75 ; 5 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24 ; 3 uses
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !126
  %i.pn = mul nsw i32 %i.pm, %.0.i                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.pe, i32 noundef 25) #15
  %i.po = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !88
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 1432
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !134
  %i.pr = fmul reassoc nsz arcp contract afn double %i.pq, 5.000000e+00
  %i.ps = fadd reassoc nsz arcp contract afn double %i.pr, 5.000000e+00
  call void @cairo_set_font_size(ptr noundef %i.pe, double noundef %i.ps) #15
  %i.pt = load ptr, ptr %i.pk, align 8, !tbaa !124
  call void @cairo_text_extents(ptr noundef %i.pe, ptr noundef %i.pt, ptr noundef nonnull %9) #15
  %i.pu = load i32, ptr %i.f, align 4, !tbaa !119 ; 2 uses
  %i.pv = sitofp reassoc nsz arcp contract afn i32 %i.pu to double
  %i.pw = load double, ptr %i.pg, align 8, !tbaa !135
  %i.px = fsub reassoc nsz arcp contract afn double -4.000000e+00, %i.pw
  %i.py = fadd reassoc nsz arcp contract afn double %i.px, %i.pv
  %i.pz = fptosi double %i.py to i32              ; 3 uses
  %i.qa = sitofp reassoc nsz arcp contract afn i32 %.0198 to double ; 2 uses
  %i.qb = sitofp reassoc nsz arcp contract afn i32 %i.pn to double ; 2 uses
  %i.qc = load double, ptr %i.ph, align 8, !tbaa !137
  %i.qd = fsub reassoc nsz arcp contract afn double %i.qb, %i.qc
  %i.qe = fmul reassoc nsz arcp contract afn double %i.qd, 5.000000e-01
  %12 = load double, ptr %9, align 8, !tbaa !138
  %13 = fsub reassoc nsz arcp contract afn double %i.qa, %12
  %14 = fadd reassoc nsz arcp contract afn double %13, %i.qe
  %i.qf = add nsw i32 %i.pu, -2
  %i.qg = sitofp reassoc nsz arcp contract afn i32 %i.qf to double
  call void @cairo_move_to(ptr noundef %i.pe, double noundef %14, double noundef %i.qg) #15
  %i.qh = load ptr, ptr %i.pk, align 8, !tbaa !124
  call void @cairo_show_text(ptr noundef %i.pe, ptr noundef %i.qh) #15
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.pe, i32 noundef 22) #15
  %i.qi = sitofp reassoc nsz arcp contract afn i32 %i.pz to double ; 3 uses
  call void @cairo_rectangle(ptr noundef %i.pe, double noundef %i.qa, double noundef 0.000000e+00, double noundef %i.qb, double noundef %i.qi) #15
  call void @cairo_fill(ptr noundef %i.pe) #15
  %i.qj = load i32, ptr %i.pl, align 8, !tbaa !126
  %i.qk = icmp sgt i32 %i.qj, 0
  br i1 %i.qk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ex
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  br label %bb.ey

._crit_edge:                                      ; preds = %bb.ey, %bb.ex
  %i.qn = add i32 %.0198, 2
  %i.qo = add i32 %i.qn, %i.pn                    ; 2 uses
  %i.qp = load i32, ptr %i.d, align 4, !tbaa !117
  %.not176 = icmp slt i32 %i.qo, %i.qp
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br i1 %.not176, label %bb.ew, label %._crit_edge201

bb.ey:                                            ; preds = %.lr.ph, %bb.ey
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ey ] ; 4 uses
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.pe, i32 noundef 23, float noundef 5.000000e-01) #15
  %i.qq = load ptr, ptr %i.ql, align 8, !tbaa !127
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %indvars.iv
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !72
  %i.qt = sitofp reassoc nsz arcp contract afn i32 %i.qs to double
  %i.qu = fadd reassoc nsz arcp contract afn double %i.qt, 4.000000e+00
  %i.qv = fptrunc reassoc nsz arcp contract afn double %i.qu to float
  %i.qw = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.qv)
  %i.qx = fpext reassoc nsz arcp contract afn float %i.qw to double
  %i.qy = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.qx
  %i.qz = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.qy
  %i.ra = fmul reassoc nsz arcp contract afn double %i.qz, %i.qi
  %i.rb = fptosi double %i.ra to i32              ; 2 uses
  %i.rc = trunc i64 %indvars.iv to i32
  %i.rd = mul i32 %.0.i, %i.rc
  %i.re = add nsw i32 %i.rd, %.0198
  %i.rf = sitofp reassoc nsz arcp contract afn i32 %i.re to double ; 2 uses
  %i.rg = sub nsw i32 %i.pz, %i.rb
  %i.rh = sitofp reassoc nsz arcp contract afn i32 %i.rg to double
  %i.ri = sitofp reassoc nsz arcp contract afn i32 %i.rb to double
  call void @cairo_rectangle(ptr noundef %i.pe, double noundef %i.rf, double noundef %i.rh, double noundef %i.pi, double noundef %i.ri) #15
  call void @cairo_fill(ptr noundef %i.pe) #15
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.pe, i32 noundef 23, float noundef 1.000000e+00) #15
  %i.rj = load ptr, ptr %i.qm, align 8, !tbaa !128
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !72
  %i.rm = sitofp reassoc nsz arcp contract afn i32 %i.rl to double
  %i.rn = fadd reassoc nsz arcp contract afn double %i.rm, 4.000000e+00
  %i.ro = fptrunc reassoc nsz arcp contract afn double %i.rn to float
  %i.rp = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ro)
  %i.rq = fpext reassoc nsz arcp contract afn float %i.rp to double
  %i.rr = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.rq
  %i.rs = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.rr
  %i.rt = fmul reassoc nsz arcp contract afn double %i.rs, %i.qi
  %i.ru = fptosi double %i.rt to i32              ; 2 uses
  %i.rv = sub nsw i32 %i.pz, %i.ru
  %i.rw = sitofp reassoc nsz arcp contract afn i32 %i.rv to double
  %i.rx = sitofp reassoc nsz arcp contract afn i32 %i.ru to double
  call void @cairo_rectangle(ptr noundef %i.pe, double noundef %i.rf, double noundef %i.rw, double noundef %i.pi, double noundef %i.rx) #15
  call void @cairo_fill(ptr noundef %i.pe) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ry = load i32, ptr %i.pl, align 8, !tbaa !126
  %i.rz = sext i32 %i.ry to i64
  %i.sa = icmp slt i64 %indvars.iv.next, %i.rz
  br i1 %i.sa, label %bb.ey, label %._crit_edge

._crit_edge201:                                   ; preds = %._crit_edge, %bb.ew, %_block_get_bar_width.exit
  call void @cairo_destroy(ptr noundef %i.pe) #15
  %.pre212 = load ptr, ptr %i.q, align 8, !tbaa !78
  br label %bb.ez

bb.ez:                                            ; preds = %._crit_edge201, %bb.e
  %i.sb = phi ptr [ %.pre212, %._crit_edge201 ], [ %.pre, %bb.e ]
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.sb, double noundef 0.000000e+00, double noundef 0.000000e+00) #15
  call void @cairo_paint(ptr noundef %1) #15
  %i.sc = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !68
  %.not177 = icmp eq i32 %i.sd, 0
  br i1 %.not177, label %bb.fg, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.se = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !139
  %.not178 = icmp eq i32 %i.sf, 0
  %.0164.in.v = select i1 %.not178, i64 140, i64 144
  %.0164.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0164.in.v
  %.0164 = load i32, ptr %.0164.in, align 4, !tbaa !72 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !121 ; 3 uses
  %.1 = call i32 @llvm.smax.i32(i32 %.0164, i32 %i.sh) ; 3 uses
  %.0163 = call i32 @llvm.smin.i32(i32 %.0164, i32 %i.sh) ; 5 uses
  %i.si = and i32 %i.sh, %.0164
  %or.cond.not = icmp sgt i32 %i.si, -1
  br i1 %or.cond.not, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  %i.sj = load i32, ptr %i.h, align 8, !tbaa !79
  %i.sk = icmp sgt i32 %.0163, %i.sj
  br i1 %i.sk, label %bb.fg, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sl = icmp sgt i32 %.0163, -1
  br i1 %i.sl, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 23, float noundef 8.000000e-01) #15
  %i.sm = uitofp nneg i32 %.0163 to double        ; 4 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sm, double noundef 0.000000e+00) #15
  %i.sn = load i32, ptr %i.f, align 4, !tbaa !119
  %i.so = sitofp reassoc nsz arcp contract afn i32 %i.sn to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sm, double noundef %i.so) #15
  call void @cairo_stroke(ptr noundef %1) #15
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 21, float noundef 3.000000e-01) #15
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sm, double noundef 0.000000e+00) #15
  %i.sp = load i32, ptr %i.f, align 4, !tbaa !119
  %i.sq = sitofp reassoc nsz arcp contract afn i32 %i.sp to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sm, double noundef %i.sq) #15
  call void @cairo_stroke(ptr noundef %1) #15
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 23, float noundef 5.000000e-01) #15
  %i.sr = sitofp reassoc nsz arcp contract afn i32 %.0163 to double
  %i.ss = sub nsw i32 %.1, %.0163
  %i.st = sitofp reassoc nsz arcp contract afn i32 %i.ss to double
  %i.su = load i32, ptr %i.f, align 4, !tbaa !119
  %i.sv = sitofp reassoc nsz arcp contract afn i32 %i.su to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.sr, double noundef 0.000000e+00, double noundef %i.st, double noundef %i.sv) #15
  call void @cairo_fill(ptr noundef %1) #15
  %i.sw = load i32, ptr %i.h, align 8, !tbaa !79
  %.not179 = icmp sgt i32 %.1, %i.sw
  br i1 %.not179, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 23, float noundef 8.000000e-01) #15
  %i.sx = sitofp reassoc nsz arcp contract afn i32 %.1 to double ; 4 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sx, double noundef 0.000000e+00) #15
  %i.sy = load i32, ptr %i.f, align 4, !tbaa !119
  %i.sz = sitofp reassoc nsz arcp contract afn i32 %i.sy to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sx, double noundef %i.sz) #15
  call void @cairo_stroke(ptr noundef %1) #15
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 21, float noundef 3.000000e-01) #15
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sx, double noundef 0.000000e+00) #15
  %i.ta = load i32, ptr %i.f, align 4, !tbaa !119
  %i.tb = sitofp reassoc nsz arcp contract afn i32 %i.ta to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sx, double noundef %i.tb) #15
  call void @cairo_stroke(ptr noundef %1) #15
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fa, %bb.ff, %bb.fe, %bb.fb, %bb.ez
  %i.tc = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !140
  %.not180 = icmp eq i32 %i.td, 0
  br i1 %.not180, label %bb.ft, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.te = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 5 uses
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !141 ; 2 uses
  %i.tg = icmp sgt i32 %i.tf, 0
  br i1 %i.tg, label %bb.fi, label %bb.ft

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.th = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !139
  %.not181 = icmp eq i32 %i.ti, 0
  br i1 %.not181, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.tj = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef nonnull align 8 dereferenceable(28) %i.tj, i64 28, i1 false), !tbaa.struct !77
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias writable align 4 %10, i32 noundef %i.tf, ptr noundef nonnull %i.c)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.tk = load i32, ptr %10, align 8, !tbaa !80
  %.not.i183 = icmp eq i32 %i.tk, 0
  br i1 %.not.i183, label %bb.fm, label %_time_compare.exit.thread

bb.fm:                                            ; preds = %bb.fl
  %i.tl = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !81 ; 2 uses
  %.not11.i = icmp eq i32 %i.tm, 1
  br i1 %.not11.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.tn = add nsw i32 %i.tm, -1
  br label %_time_compare.exit

end_hunk_0
