Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/timeline?download=true
inline.NumInlined: 87
inline.NumDeleted: 19
begin_hunk_0_@_lib_timeline_draw_callback:bb.a
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
  %i.pz = fadd reassoc nsz arcp contract afn double %i.py, %i.pu
  %i.qa = load double, ptr %9, align 8, !tbaa !157
  %i.qb = fsub reassoc nsz arcp contract afn double %i.pz, %i.qa
  %i.qc = add nsw i32 %i.po, -2
  %i.qd = sitofp reassoc nsz arcp contract afn i32 %i.qc to double
  call void @cairo_move_to(ptr noundef %i.oy, double noundef %i.qb, double noundef %i.qd) #15
  %i.qe = load ptr, ptr %i.pe, align 8, !tbaa !116
  call void @cairo_show_text(ptr noundef %i.oy, ptr noundef %i.qe) #15
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %i.oy, i32 noundef 22) #15
  %i.qf = sitofp reassoc nsz arcp contract afn i32 %i.pt to double ; 3 uses
  call void @cairo_rectangle(ptr noundef %i.oy, double noundef %i.pu, double noundef 0.000000e+00, double noundef %i.pv, double noundef %i.qf) #15
  call void @cairo_fill(ptr noundef %i.oy) #15
  %i.qg = load i32, ptr %i.pf, align 8, !tbaa !149
  %i.qh = icmp sgt i32 %i.qg, 0
  br i1 %i.qh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ex
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  br label %bb.ey

._crit_edge:                                      ; preds = %bb.ey, %bb.ex
  %i.qk = add i32 %.0167198, 2
  %i.ql = add i32 %i.qk, %i.ph                    ; 2 uses
  %i.qm = load i32, ptr %i.d, align 4, !tbaa !145
  %.not176 = icmp slt i32 %i.ql, %i.qm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br i1 %.not176, label %bb.ew, label %._crit_edge201

bb.ey:                                            ; preds = %.lr.ph, %bb.ey
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ey ] ; 4 uses
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.oy, i32 noundef 23, float noundef 5.000000e-01) #15
  %i.qn = load ptr, ptr %i.qi, align 8, !tbaa !117
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %indvars.iv
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !72
  %i.qq = sitofp reassoc nsz arcp contract afn i32 %i.qp to double
  %i.qr = fadd reassoc nsz arcp contract afn double %i.qq, 4.000000e+00
  %i.qs = fptrunc reassoc nsz arcp contract afn double %i.qr to float
  %i.qt = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.qs)
  %i.qu = fpext reassoc nsz arcp contract afn float %i.qt to double
  %i.qv = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.qu
  %i.qw = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.qv
  %i.qx = fmul reassoc nsz arcp contract afn double %i.qw, %i.qf
  %i.qy = fptosi double %i.qx to i32              ; 2 uses
  %i.qz = trunc i64 %indvars.iv to i32
  %i.ra = mul i32 %.0.i, %i.qz
  %i.rb = add nsw i32 %i.ra, %.0167198
  %i.rc = sitofp reassoc nsz arcp contract afn i32 %i.rb to double ; 2 uses
  %i.rd = sub nsw i32 %i.pt, %i.qy
  %i.re = sitofp reassoc nsz arcp contract afn i32 %i.rd to double
  %i.rf = sitofp reassoc nsz arcp contract afn i32 %i.qy to double
  call void @cairo_rectangle(ptr noundef %i.oy, double noundef %i.rc, double noundef %i.re, double noundef %i.pc, double noundef %i.rf) #15
  call void @cairo_fill(ptr noundef %i.oy) #15
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %i.oy, i32 noundef 23, float noundef 1.000000e+00) #15
  %i.rg = load ptr, ptr %i.qj, align 8, !tbaa !118
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !72
  %i.rj = sitofp reassoc nsz arcp contract afn i32 %i.ri to double
  %i.rk = fadd reassoc nsz arcp contract afn double %i.rj, 4.000000e+00
  %i.rl = fptrunc reassoc nsz arcp contract afn double %i.rk to float
  %i.rm = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.rl)
  %i.rn = fpext reassoc nsz arcp contract afn float %i.rm to double
  %i.ro = fdiv reassoc nsz arcp contract afn double 2.000000e+00, %i.rn
  %i.rp = fsub reassoc nsz arcp contract afn double 1.000000e+00, %i.ro
  %i.rq = fmul reassoc nsz arcp contract afn double %i.rp, %i.qf
  %i.rr = fptosi double %i.rq to i32              ; 2 uses
  %i.rs = sub nsw i32 %i.pt, %i.rr
  %i.rt = sitofp reassoc nsz arcp contract afn i32 %i.rs to double
  %i.ru = sitofp reassoc nsz arcp contract afn i32 %i.rr to double
  call void @cairo_rectangle(ptr noundef %i.oy, double noundef %i.rc, double noundef %i.rt, double noundef %i.pc, double noundef %i.ru) #15
  call void @cairo_fill(ptr noundef %i.oy) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.rv = load i32, ptr %i.pf, align 8, !tbaa !149
  %i.rw = sext i32 %i.rv to i64
  %i.rx = icmp slt i64 %indvars.iv.next, %i.rw
  br i1 %i.rx, label %bb.ey, label %._crit_edge

._crit_edge201:                                   ; preds = %._crit_edge, %bb.ew, %_block_get_bar_width.exit
  call void @cairo_destroy(ptr noundef %i.oy) #15
  %.pre214 = load ptr, ptr %i.q, align 8, !tbaa !78
  br label %bb.ez

bb.ez:                                            ; preds = %._crit_edge201, %bb.e
  %i.ry = phi ptr [ %.pre214, %._crit_edge201 ], [ %.pre, %bb.e ]
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.ry, double noundef 0.000000e+00, double noundef 0.000000e+00) #15
  call void @cairo_paint(ptr noundef %1) #15
  %i.rz = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !71
  %.not177 = icmp eq i32 %i.sa, 0
  br i1 %.not177, label %bb.fg, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.sb = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !121
  %.not178 = icmp eq i32 %i.sc, 0
  %.0163.in.v = select i1 %.not178, i64 140, i64 144
  %.0163.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0163.in.v
  %.0163 = load i32, ptr %.0163.in, align 4, !tbaa !72 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !113 ; 3 uses
  %.1 = call i32 @llvm.smax.i32(i32 %.0163, i32 %i.se) ; 3 uses
  %.0 = call i32 @llvm.smin.i32(i32 %.0163, i32 %i.se) ; 5 uses
  %i.sf = and i32 %i.se, %.0163
  %or.cond.not = icmp sgt i32 %i.sf, -1
  br i1 %or.cond.not, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  %i.sg = load i32, ptr %i.h, align 8, !tbaa !79
  %i.sh = icmp sgt i32 %.0, %i.sg
  br i1 %i.sh, label %bb.fg, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.si = icmp sgt i32 %.0, -1
  br i1 %i.si, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 23, float noundef 8.000000e-01) #15
  %i.sj = uitofp nneg i32 %.0 to double           ; 4 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sj, double noundef 0.000000e+00) #15
  %i.sk = load i32, ptr %i.f, align 4, !tbaa !146
  %i.sl = sitofp reassoc nsz arcp contract afn i32 %i.sk to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sj, double noundef %i.sl) #15
  call void @cairo_stroke(ptr noundef %1) #15
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 21, float noundef 3.000000e-01) #15
  call void @cairo_move_to(ptr noundef %1, double noundef %i.sj, double noundef 0.000000e+00) #15
  %i.sm = load i32, ptr %i.f, align 4, !tbaa !146
  %i.sn = sitofp reassoc nsz arcp contract afn i32 %i.sm to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.sj, double noundef %i.sn) #15
  call void @cairo_stroke(ptr noundef %1) #15
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 23, float noundef 5.000000e-01) #15
  %i.so = sitofp reassoc nsz arcp contract afn i32 %.0 to double
  %i.sp = sub nsw i32 %.1, %.0
  %i.sq = sitofp reassoc nsz arcp contract afn i32 %i.sp to double
  %i.sr = load i32, ptr %i.f, align 4, !tbaa !146
  %i.ss = sitofp reassoc nsz arcp contract afn i32 %i.sr to double
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.so, double noundef 0.000000e+00, double noundef %i.sq, double noundef %i.ss) #15
  call void @cairo_fill(ptr noundef %1) #15
  %i.st = load i32, ptr %i.h, align 8, !tbaa !79
  %.not179 = icmp sgt i32 %.1, %i.st
  br i1 %.not179, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 23, float noundef 8.000000e-01) #15
  %i.su = sitofp reassoc nsz arcp contract afn i32 %.1 to double ; 4 uses
  call void @cairo_move_to(ptr noundef %1, double noundef %i.su, double noundef 0.000000e+00) #15
  %i.sv = load i32, ptr %i.f, align 4, !tbaa !146
  %i.sw = sitofp reassoc nsz arcp contract afn i32 %i.sv to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.su, double noundef %i.sw) #15
  call void @cairo_stroke(ptr noundef %1) #15
  call void @dt_gui_gtk_set_source_rgba(ptr noundef %1, i32 noundef 21, float noundef 3.000000e-01) #15
  call void @cairo_move_to(ptr noundef %1, double noundef %i.su, double noundef 0.000000e+00) #15
  %i.sx = load i32, ptr %i.f, align 4, !tbaa !146
  %i.sy = sitofp reassoc nsz arcp contract afn i32 %i.sx to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.su, double noundef %i.sy) #15
  call void @cairo_stroke(ptr noundef %1) #15
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fa, %bb.ff, %bb.fe, %bb.fb, %bb.ez
  %i.sz = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !122
  %.not180 = icmp eq i32 %i.ta, 0
  br i1 %.not180, label %bb.fp, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.tb = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 5 uses
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !123 ; 2 uses
  %i.td = icmp sgt i32 %i.tc, 0
  br i1 %i.td, label %bb.fi, label %bb.fp

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.te = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !121
  %.not181 = icmp eq i32 %i.tf, 0
  br i1 %.not181, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.tg = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef nonnull align 8 dereferenceable(28) %i.tg, i64 28, i1 false), !tbaa.struct !77
  br label %12

bb.fk:                                            ; preds = %bb.fi
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias writable align 4 %10, i32 noundef %i.tc, ptr noundef nonnull %i.c)
  br label %12

12:                                               ; preds = %bb.fk, %bb.fj
  %13 = load i32, ptr %10, align 8, !tbaa !80
  %.not.i183 = icmp eq i32 %13, 0
  br i1 %.not.i183, label %bb.fl, label %_time_compare.exit.thread

bb.fl:                                            ; preds = %12
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.th = load i32, ptr %14, align 4, !tbaa !81   ; 2 uses
  %.not11.i.a = icmp eq i32 %i.th, 1
  br i1 %.not11.i.a, label %bb.fm, label %15

15:                                               ; preds = %bb.fl
  %16 = add nsw i32 %i.th, -1
  br label %_time_compare.exit

bb.fm:                                            ; preds = %bb.fl
  %i.ti = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !82 ; 2 uses
  %.not12.i = icmp eq i32 %i.tj, 1
  br i1 %.not12.i, label %bb.fn, label %17

17:                                               ; preds = %bb.fm
  %18 = add nsw i32 %i.tj, -1
  br label %_time_compare.exit

bb.fn:                                            ; preds = %bb.fm
  %i.tk = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !83
  %.not13.i.a = icmp eq i32 %i.tl, 0
  br i1 %.not13.i.a, label %19, label %_time_compare.exit.thread

19:                                               ; preds = %bb.fn
  %20 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %21 = load i32, ptr %20, align 8, !tbaa !84
  br label %_time_compare.exit

_time_compare.exit:                               ; preds = %15, %17, %19
  %.0.i184 = phi i32 [ %21, %19 ], [ %16, %15 ], [ %18, %17 ]
  %.not182 = icmp eq i32 %.0.i184, 0
  br i1 %.not182, label %bb.fo, label %_time_compare.exit.thread

_time_compare.exit.thread:                        ; preds = %bb.fn, %12, %_time_compare.exit
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 24) #15
  %i.tm = load i32, ptr %i.tb, align 8, !tbaa !123
  %i.tn = sitofp reassoc nsz arcp contract afn i32 %i.tm to double
  call void @cairo_move_to(ptr noundef %1, double noundef %i.tn, double noundef 0.000000e+00) #15
  %i.to = load i32, ptr %i.tb, align 8, !tbaa !123
  %i.tp = sitofp reassoc nsz arcp contract afn i32 %i.to to double
  %i.tq = load i32, ptr %i.f, align 4, !tbaa !146
  %i.tr = sitofp reassoc nsz arcp contract afn i32 %i.tq to double
  call void @cairo_line_to(ptr noundef %1, double noundef %i.tp, double noundef %i.tr) #15
  call void @cairo_stroke(ptr noundef %1) #15
  %i.ts = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !85
  %i.tu = call fastcc ptr @_time_format_for_ui(ptr noundef nonnull byval(%struct.dt_datetime_t) align 8 %10, i32 noundef %i.tt) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.tv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !87
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 1432
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !153
  %i.ty = fmul reassoc nsz arcp contract afn double %i.tx, 1.000000e+01
  call void @cairo_set_font_size(ptr noundef %1, double noundef %i.ty) #15
  call void @cairo_text_extents(ptr noundef %1, ptr noundef %i.tu, ptr noundef nonnull %11) #15
  %i.tz = load i32, ptr %i.tb, align 8, !tbaa !123
  %i.ua = sitofp reassoc nsz arcp contract afn i32 %i.tz to double
  %i.ub = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.uc = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ud = load <2 x double>, ptr %i.ub, align 8, !tbaa !158
  %i.ue = fadd reassoc nsz arcp contract afn <2 x double> %i.ud, splat (double 4.000000e+00) ; 2 uses
  %i.uf = extractelement <2 x double> %i.ue, i64 0
  %i.ug = extractelement <2 x double> %i.ue, i64 1
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.ua, double noundef 8.000000e+00, double noundef %i.uf, double noundef %i.ug) #15
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 24) #15
  call void @cairo_fill(ptr noundef %1) #15
  %i.uh = load i32, ptr %i.tb, align 8, !tbaa !123
  %i.ui = add nsw i32 %i.uh, 2
  %i.uj = sitofp reassoc nsz arcp contract afn i32 %i.ui to double
  %i.uk = load double, ptr %i.uc, align 8, !tbaa !155
  %i.ul = fadd reassoc nsz arcp contract afn double %i.uk, 1.000000e+01
  call void @cairo_move_to(ptr noundef %1, double noundef %i.uj, double noundef %i.ul) #15
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 25) #15
  call void @cairo_show_text(ptr noundef %1, ptr noundef %i.tu) #15
  call void @g_free(ptr noundef %i.tu) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.fo

bb.fo:                                            ; preds = %_time_compare.exit.thread, %_time_compare.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fh, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_timeline_button_press_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct.dt_datetime_t, align 4      ; 4 uses
  %4 = alloca %struct.dt_datetime_t, align 4      ; 4 uses
  %5 = alloca %struct.dt_datetime_t, align 8      ; 10 uses
  %i.a = alloca [200 x i8], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !159
  switch i32 %i.e, label %bb.m [
    i32 1, label %bb.b
    i32 3, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 8, !tbaa !160
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !128 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !113
  %i.l = sitofp reassoc nsz arcp contract afn i32 %i.k to double
  %i.m = fsub reassoc nsz arcp contract afn double %i.i, %i.l
  %i.n = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.m)
  %or.cond = fcmp reassoc nsz arcp contract afn olt double %i.n, 2.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 140 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !114  ; 2 uses
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.p, ptr %i.j, align 8, !tbaa !113
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.q, ptr noundef nonnull align 8 dereferenceable(28) %i.r, i64 28, i1 false), !tbaa.struct !77
  %i.s = load double, ptr %i.h, align 8, !tbaa !128
  %i.t = fptosi double %i.s to i32                ; 2 uses
  store i32 %i.t, ptr %i.o, align 4, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias writable align 4 %3, i32 noundef %i.t, ptr noundef nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.r, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  store i32 1, ptr %i.u, align 4, !tbaa !129
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.v = sitofp reassoc nsz arcp contract afn i32 %i.p to double
  %i.w = fsub reassoc nsz arcp contract afn double %i.i, %i.v
  %i.x = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.w)
  %or.cond48 = fcmp reassoc nsz arcp contract afn olt double %i.x, 2.000000e+00
  %i.y = fptosi double %i.i to i32                ; 4 uses
  store i32 %i.y, ptr %i.o, align 4, !tbaa !114
  br i1 %or.cond48, label %bb.f, label %6

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias writable align 4 %4, i32 noundef %i.y, ptr noundef nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.z, ptr noundef nonnull align 4 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  store i32 1, ptr %i.aa, align 4, !tbaa !129
  br label %bb.h

6:                                                ; preds = %bb.e
  store i32 %i.y, ptr %i.j, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias writable align 4 %5, i32 noundef %i.y, ptr noundef nonnull %i.c)
  %7 = load i32, ptr %5, align 8, !tbaa !80
  %.not.i = icmp eq i32 %7, 0
  br i1 %.not.i, label %8, label %_time_compare.exit.thread

8:                                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !81      ; 2 uses
  %.not11.i = icmp eq i32 %10, 1
  br i1 %.not11.i, label %13, label %11

11:                                               ; preds = %8
  %12 = add nsw i32 %10, -1
  br label %_time_compare.exit

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %15 = load i32, ptr %14, align 8, !tbaa !82     ; 2 uses
  %.not12.i = icmp eq i32 %15, 1
  br i1 %.not12.i, label %18, label %16

16:                                               ; preds = %13
  %17 = add nsw i32 %15, -1
  br label %_time_compare.exit

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %20 = load i32, ptr %19, align 4, !tbaa !83
  %.not13.i = icmp eq i32 %20, 0
  br i1 %.not13.i, label %21, label %_time_compare.exit.thread

21:                                               ; preds = %18
  %22 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %23 = load i32, ptr %22, align 8, !tbaa !84
  br label %_time_compare.exit

_time_compare.exit:                               ; preds = %11, %16, %21
  %.0.i = phi i32 [ %23, %21 ], [ %12, %11 ], [ %17, %16 ]
  %24 = icmp eq i32 %.0.i, 0
  br i1 %24, label %bb.g, label %_time_compare.exit.thread

bb.g:                                             ; preds = %_time_compare.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, ptr noundef nonnull align 4 dereferenceable(28) %i.ad, i64 28, i1 false), !tbaa.struct !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ab, ptr noundef nonnull align 4 dereferenceable(28) %i.ad, i64 28, i1 false)
  br label %27

_time_compare.exit.thread:                        ; preds = %18, %6, %_time_compare.exit
  %25 = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %26 = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %26, ptr noundef nonnull align 8 dereferenceable(28) %5, i64 28, i1 false), !tbaa.struct !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %25, ptr noundef nonnull align 8 dereferenceable(28) %5, i64 28, i1 false)
  br label %27

27:                                               ; preds = %_time_compare.exit.thread, %bb.g
  %28 = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  store i32 0, ptr %28, align 4, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %27, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i32 1, ptr %i.ae, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  store i32 1, ptr %i.af, align 4, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !86
  call void @gtk_widget_queue_draw(ptr noundef %i.ah) #15
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.ai = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.30) #15 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.a, i8 0, i64 200, i1 false)
  %i.ak = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.31, i32 noundef %i.ak) #15 ; 0 uses
  %i.am = call i32 @dt_conf_get_int(ptr noundef nonnull %i.a) #15
  %i.an = icmp eq i32 %i.am, 10
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @dt_conf_set_int(ptr noundef nonnull @.str.30, i32 noundef %i.ak) #15
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !130
  call void @dt_collection_update_query(ptr noundef %i.ao, i32 noundef 3, i32 noundef 45, ptr noundef null) #15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i32 0, ptr %i.ap, align 8, !tbaa !121
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.a, %bb.b, %bb.h
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_timeline_button_release_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct.dt_datetime_t, align 8      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !121
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !128
  %i.g = fptosi double %i.f to i32                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 %i.g, ptr %i.h, align 4, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias writable align 4 %3, i32 noundef %i.g, ptr noundef nonnull %i.b)
  %i.i = load i32, ptr %3, align 8, !tbaa !80
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %4, label %_time_compare.exit.thread

4:                                                ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !81       ; 2 uses
  %.not11.i = icmp eq i32 %6, 1
  br i1 %.not11.i, label %9, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %6, -1
  br label %_time_compare.exit

9:                                                ; preds = %4
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %11 = load i32, ptr %10, align 8, !tbaa !82     ; 2 uses
  %.not12.i = icmp eq i32 %11, 1
  br i1 %.not12.i, label %14, label %12

12:                                               ; preds = %9
  %13 = add nsw i32 %11, -1
  br label %_time_compare.exit

14:                                               ; preds = %9
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %16 = load i32, ptr %15, align 4, !tbaa !83
  %.not13.i = icmp eq i32 %16, 0
  br i1 %.not13.i, label %17, label %_time_compare.exit.thread

17:                                               ; preds = %14
  %18 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %19 = load i32, ptr %18, align 8, !tbaa !84
  br label %_time_compare.exit

_time_compare.exit:                               ; preds = %7, %12, %17
  %.0.i = phi i32 [ %19, %17 ], [ %8, %7 ], [ %13, %12 ]
  %20 = icmp eq i32 %.0.i, 0
  br i1 %20, label %bb.c, label %_time_compare.exit.thread

bb.c:                                             ; preds = %_time_compare.exit
  %21 = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %21, ptr noundef nonnull align 4 dereferenceable(28) %i.j, i64 28, i1 false), !tbaa.struct !77
  br label %bb.i

_time_compare.exit.thread:                        ; preds = %14, %bb.b, %_time_compare.exit
  %22 = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %22, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.l = load i32, ptr %i.k, align 8, !tbaa !73   ; 3 uses
  %i.m = icmp ult i32 %i.l, 5
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_time_compare.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i32 59, ptr %i.n, align 8, !tbaa !131
  %i.o = icmp samesign ult i32 %i.l, 3
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i32 23, ptr %i.p, align 4, !tbaa !132
  %i.q = icmp eq i32 %i.l, 0
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.s = load i32, ptr %i.r, align 4, !tbaa !133
  switch i32 %i.s, label %bb.h [
    i32 2, label %bb.g
    i32 1, label %_time_days_in_month.exit
    i32 3, label %_time_days_in_month.exit
    i32 5, label %_time_days_in_month.exit
    i32 7, label %_time_days_in_month.exit
    i32 8, label %_time_days_in_month.exit
    i32 10, label %_time_days_in_month.exit
    i32 12, label %_time_days_in_month.exit
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %22, align 8, !tbaa !134   ; 3 uses
  %i.u = and i32 %i.t, 3
  %i.v = icmp eq i32 %i.u, 0
  %i.w = srem i32 %i.t, 100
  %.not.i26 = icmp ne i32 %i.w, 0
  %or.cond.not8.i = and i1 %i.v, %.not.i26
  %i.x = srem i32 %i.t, 400
  %i.y = icmp eq i32 %i.x, 0
  %or.cond6.i = or i1 %i.y, %or.cond.not8.i
  %spec.select.i = select i1 %or.cond6.i, i32 29, i32 28
  br label %_time_days_in_month.exit

bb.h:                                             ; preds = %bb.f
  br label %_time_days_in_month.exit

_time_days_in_month.exit:                         ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.g, %bb.h
  %.0.i25 = phi i32 [ 30, %bb.h ], [ %spec.select.i, %bb.g ], [ 31, %bb.f ], [ 31, %bb.f ], [ 31, %bb.f ], [ 31, %bb.f ], [ 31, %bb.f ], [ 31, %bb.f ], [ 31, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i32 %.0.i25, ptr %i.z, align 8, !tbaa !135
  br label %bb.i

bb.i:                                             ; preds = %_time_compare.exit.thread, %bb.e, %_time_days_in_month.exit, %bb.d, %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !121
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 212
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !129
  %.not23 = icmp eq i32 %i.ab, 0
  br i1 %.not23, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !161
  %i.ae = call i32 @gtk_accelerator_get_default_mod_mask() #15
  %i.af = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !72
  %i.ag = or i32 %i.af, %i.ad
  %i.ah = and i32 %i.ag, %i.ae
  %.not28 = icmp eq i32 %i.ah, 1
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi i32 [ 0, %bb.k ], [ 1, %bb.j ]
  call fastcc void @_selection_collect(ptr noundef nonnull %i.b, i32 noundef %.sink)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86
  call void @gtk_widget_queue_draw(ptr noundef %i.aj) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_lib_timeline_scroll_callback(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.dt_datetime_t, align 4      ; 11 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.dt_datetime_t, align 4      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 19 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !165
  %i.g = tail call i32 @gtk_accelerator_get_default_mod_mask() #15
  %i.h = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !72
  %i.i = or i32 %i.h, %i.f
  %i.j = and i32 %i.i, %i.g
  %.not = icmp eq i32 %i.j, 4
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !73   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !72
  %i.m = call i32 @dt_gui_get_scroll_unit_delta(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #15
  %.not44 = icmp eq i32 %i.m, 0
  br i1 %.not44, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not45 = icmp eq i32 %i.l, 6
  %i.p = add nsw i32 %i.l, 1
  %spec.select = select i1 %.not45, i32 6, i32 %i.p
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = icmp ne i32 %i.n, 0
  %i.r = icmp ne i32 %i.l, 0
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  %i.s = sext i1 %or.cond to i32
  %spec.select47 = add nsw i32 %i.l, %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.038 = phi i32 [ %i.l, %bb.b ], [ %spec.select47, %bb.e ], [ %spec.select, %bb.d ] ; 6 uses
  %i.t = load i32, ptr %i.k, align 8, !tbaa !73
  %.not46 = icmp eq i32 %.038, %i.t
  br i1 %.not46, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @dt_conf_set_int(ptr noundef nonnull @.str.1, i32 noundef %.038) #15
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.w = load i32, ptr %i.v, align 8, !tbaa !123  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.x = load i32, ptr %i.k, align 8, !tbaa !73, !noalias !166
  %i.y = icmp eq i32 %.038, %i.x
  br i1 %i.y, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias nonnull writable align 4 %3, i32 noundef %i.w, ptr noundef nonnull readonly %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %.02132.i = load ptr, ptr %i.z, align 8, !tbaa !120, !noalias !166 ; 2 uses
  %.not33.i = icmp eq ptr %.02132.i, null
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.02136.i = phi ptr [ %.021.i, %bb.i ], [ %.02132.i, %bb.h ] ; 2 uses
  %.02235.i = phi i32 [ %i.ag, %bb.i ], [ 0, %bb.h ]
  %.02334.i = phi i32 [ %i.af, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.aa = load ptr, ptr %.02136.i, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !119
  %i.ad = add nsw i32 %i.ac, %.02235.i            ; 2 uses
  %i.ae = icmp slt i32 %i.w, %i.ad
  br i1 %i.ae, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.af = add nuw nsw i32 %.02334.i, 1            ; 2 uses
  %i.ag = add i32 %i.ad, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.02136.i, i64 8
  %.021.i = load ptr, ptr %i.ah, align 8, !tbaa !120 ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i, %.lr.ph.i, %bb.h
  %.023.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.af, %bb.i ], [ %.02334.i, %.lr.ph.i ]
  %i.ai = sub nsw i32 0, %.023.lcssa.i
  call fastcc void @_time_add(ptr noundef nonnull align 4 %3, i32 noundef %i.ai, i32 noundef %.038), !alias.scope !166
  %.sroa.0.0.copyload.i = load i32, ptr %3, align 4, !tbaa !72, !alias.scope !166 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !72, !alias.scope !166 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !72, !alias.scope !166 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !72, !alias.scope !166 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !72, !alias.scope !166
  %.sroa.026.0.copyload.i = load i32, ptr %i.d, align 8, !noalias !166 ; 2 uses
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.427.0.copyload.i = load i32, ptr %.sroa.427.0..sroa_idx.i, align 4, !noalias !166 ; 2 uses
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.528.0.copyload.i = load i32, ptr %.sroa.528.0..sroa_idx.i, align 8, !noalias !166 ; 2 uses
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.629.0.copyload.i = load i32, ptr %.sroa.629.0..sroa_idx.i, align 4, !noalias !166 ; 2 uses
  %.sroa.730.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.730.0.copyload.i = load i32, ptr %.sroa.730.0..sroa_idx.i, align 8, !noalias !166
  %.not.i.i = icmp eq i32 %.sroa.0.0.copyload.i, %.sroa.026.0.copyload.i
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.aj = sub nsw i32 %.sroa.0.0.copyload.i, %.sroa.026.0.copyload.i
  br label %_time_compare.exit.i

bb.k:                                             ; preds = %._crit_edge.i
  %.not11.i.i = icmp eq i32 %.sroa.4.0.copyload.i, %.sroa.427.0.copyload.i
  br i1 %.not11.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = sub nsw i32 %.sroa.4.0.copyload.i, %.sroa.427.0.copyload.i
  br label %_time_compare.exit.i

bb.m:                                             ; preds = %bb.k
  %.not12.i.i = icmp eq i32 %.sroa.5.0.copyload.i, %.sroa.528.0.copyload.i
  br i1 %.not12.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = sub nsw i32 %.sroa.5.0.copyload.i, %.sroa.528.0.copyload.i
  br label %_time_compare.exit.i

bb.o:                                             ; preds = %bb.m
  %.not13.i.i = icmp eq i32 %.sroa.6.0.copyload.i, %.sroa.629.0.copyload.i
  br i1 %.not13.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = sub nsw i32 %.sroa.6.0.copyload.i, %.sroa.629.0.copyload.i
  br label %_time_compare.exit.i

bb.q:                                             ; preds = %bb.o
  %i.an = sub nsw i32 %.sroa.7.0.copyload.i, %.sroa.730.0.copyload.i
  br label %_time_compare.exit.i

_time_compare.exit.i:                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.j
  %.0.i.i = phi i32 [ %i.aj, %bb.j ], [ %i.ak, %bb.l ], [ %i.al, %bb.n ], [ %i.am, %bb.p ], [ %i.an, %bb.q ]
  %i.ao = icmp slt i32 %.0.i.i, 0
  br i1 %i.ao, label %.sink.split.i, label %_time_compute_offset_for_zoom.exit

.sink.split.i:                                    ; preds = %bb.g, %_time_compare.exit.i
  %.sink.i = phi ptr [ %i.d, %_time_compare.exit.i ], [ %i.u, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(28) %.sink.i, i64 28, i1 false)
  br label %_time_compute_offset_for_zoom.exit

_time_compute_offset_for_zoom.exit:               ; preds = %_time_compare.exit.i, %.sink.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.u, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  store i32 %.038, ptr %i.k, align 8, !tbaa !73
  %reass.sub = and i32 %.038, -2
  %i.ap = add i32 %reass.sub, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !85
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78
  call void @cairo_surface_destroy(ptr noundef %i.as) #15
  store ptr null, ptr %i.ar, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !86
  call void @gtk_widget_queue_draw(ptr noundef %i.au) #15
  br label %bb.r

bb.r:                                             ; preds = %_time_compute_offset_for_zoom.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.v

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.av = call i32 @dt_gui_get_scroll_unit_delta(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #15
  %.not42 = icmp eq i32 %i.av, 0
  br i1 %.not42, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = load i32, ptr %i.b, align 4, !tbaa !72
  %i.ax = load i32, ptr %i.e, align 8, !tbaa !165
  %i.ay = call i32 @gtk_accelerator_get_default_mod_mask() #15
  %i.az = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !72
  %i.ba = or i32 %i.az, %i.ax
  %i.bb = and i32 %i.ba, %i.ay
  %.not49 = icmp eq i32 %i.bb, 1
  %i.bc = zext i1 %.not49 to i32
  %spec.select48 = shl nsw i32 %i.aw, %i.bc
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !73
  call fastcc void @_time_add(ptr noundef nonnull %i.bd, i32 noundef %spec.select48, i32 noundef %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call fastcc void @_selection_scroll_to(ptr dead_on_unwind noalias writable align 4 %4, ptr noundef nonnull byval(%struct.dt_datetime_t) align 8 %i.bd, ptr noundef %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bd, ptr noundef nonnull align 4 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !78
  call void @cairo_surface_destroy(ptr noundef %i.bh) #15
  store ptr null, ptr %i.bg, align 8, !tbaa !78
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !86
  call void @gtk_widget_queue_draw(ptr noundef %i.bj) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.039 = phi i32 [ 1, %bb.r ], [ 0, %bb.u ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_timeline_motion_notify_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %3 = alloca %struct.dt_datetime_t, align 4      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  store i32 1, ptr %i.c, align 4, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !169 ; 2 uses
  %i.f = fcmp reassoc nsz arcp contract afn olt double %i.e, 1.000000e+01
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.h = load i32, ptr %i.g, align 8, !tbaa !79
  %i.i = add nsw i32 %i.h, -10
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.k = fcmp reassoc nsz arcp contract afn ogt double %i.e, %i.j
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !136
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @_block_autoscroll(ptr noundef nonnull %2)
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.l, align 8, !tbaa !136
  %i.o = tail call i32 @g_timeout_add(i32 noundef 400, ptr noundef nonnull @_block_autoscroll, ptr noundef nonnull %2) #15 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %i.p = load double, ptr %i.d, align 8, !tbaa !169 ; 3 uses
  %i.q = fptosi double %i.p to i32                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store i32 %i.q, ptr %i.r, align 8, !tbaa !123
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.t = load i32, ptr %i.s, align 8, !tbaa !121
  %.not29 = icmp eq i32 %i.t, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  store i32 %i.q, ptr %i.u, align 4, !tbaa !114
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias writable align 4 %3, i32 noundef %i.q, ptr noundef nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @dt_control_change_cursor(ptr noundef nonnull @.str.40) #15
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !113
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.x to double
  %i.z = fsub reassoc nsz arcp contract afn double %i.p, %i.y
  %i.aa = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.z)
  %or.cond = fcmp reassoc nsz arcp contract afn olt double %i.aa, 2.000000e+00
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.41) #15
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !114
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.ac to double
  %i.ae = fsub reassoc nsz arcp contract afn double %i.p, %i.ad
  %i.af = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ae)
  %or.cond30 = fcmp reassoc nsz arcp contract afn olt double %i.af, 2.000000e+00
  br i1 %or.cond30, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.42) #15
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @dt_control_change_cursor(ptr noundef nonnull @.str.40) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !86
  call void @gtk_widget_queue_draw(ptr noundef %i.ah) #15
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_timeline_mouse_leave_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 220
  store i32 0, ptr %i.c, align 4, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86
  tail call void @gtk_widget_queue_draw(ptr noundef %i.e) #15
  ret i32 1
}

declare void @gtk_box_pack_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #5

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #5

declare void @dt_control_signal_connect(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_lib_timeline_collection_changed(ptr nofree readnone captures(none) %0, i32 %1, i32 %2, ptr nofree readnone captures(none) %3, i32 %4, ptr noundef %5) #1 {
bb.a:
  tail call void @dt_lib_gui_queue_update(ptr noundef %5) #15
  ret void
}

declare ptr @dt_action_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_selection_start(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %1 = alloca %struct.dt_datetime_t, align 8      ; 8 uses
  %2 = alloca %struct.dt_datetime_t, align 4      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = load i32, ptr %0, align 8, !tbaa !137
  %.not4.i19 = icmp eq i32 %i.a, 3
  br i1 %.not4.i19, label %dt_action_lib.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i20 = phi ptr [ %i.c, %.lr.ph.i ], [ %0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.06.i20, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138, !nonnull !139, !noundef !139 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !137
  %.not4.i = icmp eq i32 %i.d, 3
  br i1 %.not4.i, label %dt_action_lib.exit, label %.lr.ph.i

dt_action_lib.exit:                               ; preds = %.lr.ph.i, %bb.a
  %.06.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.c, %.lr.ph.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.lcssa, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !123  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store i32 %i.h, ptr %i.i, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias writable align 4 %1, i32 noundef %i.h, ptr noundef %i.f)
  %i.j = load i32, ptr %1, align 8, !tbaa !80
  %.not.i17 = icmp eq i32 %i.j, 0
  br i1 %.not.i17, label %3, label %_time_compare.exit.thread

3:                                                ; preds = %dt_action_lib.exit
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %5 = load i32, ptr %4, align 4, !tbaa !81       ; 2 uses
  %.not11.i = icmp eq i32 %5, 1
  br i1 %.not11.i, label %8, label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %5, -1
  br label %_time_compare.exit

8:                                                ; preds = %3
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load i32, ptr %9, align 8, !tbaa !82      ; 2 uses
  %.not12.i = icmp eq i32 %10, 1
  br i1 %.not12.i, label %13, label %11

11:                                               ; preds = %8
  %12 = add nsw i32 %10, -1
  br label %_time_compare.exit

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %15 = load i32, ptr %14, align 4, !tbaa !83
  %.not13.i = icmp eq i32 %15, 0
  br i1 %.not13.i, label %16, label %_time_compare.exit.thread

16:                                               ; preds = %13
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %18 = load i32, ptr %17, align 8, !tbaa !84
  br label %_time_compare.exit

_time_compare.exit:                               ; preds = %6, %11, %16
  %.0.i = phi i32 [ %18, %16 ], [ %7, %6 ], [ %12, %11 ]
  %19 = icmp eq i32 %.0.i, 0
  br i1 %19, label %bb.b, label %_time_compare.exit.thread

bb.b:                                             ; preds = %_time_compare.exit
  %20 = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %20, ptr noundef nonnull align 4 dereferenceable(28) %i.k, i64 28, i1 false), !tbaa.struct !77
  br label %bb.c

_time_compare.exit.thread:                        ; preds = %13, %dt_action_lib.exit, %_time_compare.exit
  %21 = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias writable align 4 %2, i32 noundef %i.h, ptr noundef nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %21, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false), !tbaa.struct !77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.c

bb.c:                                             ; preds = %_time_compare.exit.thread, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  store i32 %i.h, ptr %i.l, align 4, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.m, ptr noundef nonnull align 4 dereferenceable(28) %i.n, i64 28, i1 false), !tbaa.struct !77
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store i32 1, ptr %i.o, align 8, !tbaa !121
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 204
  store i32 1, ptr %i.p, align 4, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86
  call void @gtk_widget_queue_draw(ptr noundef %i.r) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_selection_stop(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %1 = alloca %struct.dt_datetime_t, align 8      ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.a = load i32, ptr %0, align 8, !tbaa !137
  %.not4.i23 = icmp eq i32 %i.a, 3
  br i1 %.not4.i23, label %dt_action_lib.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i24 = phi ptr [ %i.c, %.lr.ph.i ], [ %0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.06.i24, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !138, !nonnull !139, !noundef !139 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !137
  %.not4.i = icmp eq i32 %i.d, 3
  br i1 %.not4.i, label %dt_action_lib.exit, label %.lr.ph.i

dt_action_lib.exit:                               ; preds = %.lr.ph.i, %bb.a
  %.06.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.c, %.lr.ph.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.lcssa, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !123  ; 2 uses
  call fastcc void @_time_get_from_pos(ptr dead_on_unwind noalias writable align 4 %1, i32 noundef %i.h, ptr noundef %i.f)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  store i32 %i.h, ptr %i.i, align 4, !tbaa !114
  %i.j = load i32, ptr %1, align 8, !tbaa !80
  %.not.i19 = icmp eq i32 %i.j, 0
  br i1 %.not.i19, label %2, label %_time_compare.exit.thread

2:                                                ; preds = %dt_action_lib.exit
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !81       ; 2 uses
  %.not11.i = icmp eq i32 %4, 1
  br i1 %.not11.i, label %7, label %5

5:                                                ; preds = %2
  %6 = add nsw i32 %4, -1
  br label %_time_compare.exit

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %9 = load i32, ptr %8, align 8, !tbaa !82       ; 2 uses
  %.not12.i = icmp eq i32 %9, 1
  br i1 %.not12.i, label %12, label %10

10:                                               ; preds = %7
  %11 = add nsw i32 %9, -1
  br label %_time_compare.exit

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %14 = load i32, ptr %13, align 4, !tbaa !83
  %.not13.i = icmp eq i32 %14, 0
  br i1 %.not13.i, label %15, label %_time_compare.exit.thread

15:                                               ; preds = %12
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %17 = load i32, ptr %16, align 8, !tbaa !84
  br label %_time_compare.exit

_time_compare.exit:                               ; preds = %5, %10, %15
  %.0.i = phi i32 [ %17, %15 ], [ %6, %5 ], [ %11, %10 ]
  %18 = icmp eq i32 %.0.i, 0
  br i1 %18, label %bb.b, label %_time_compare.exit.thread

bb.b:                                             ; preds = %_time_compare.exit
  %19 = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %19, ptr noundef nonnull align 4 dereferenceable(28) %i.k, i64 28, i1 false), !tbaa.struct !77
  br label %bb.h

_time_compare.exit.thread:                        ; preds = %12, %dt_action_lib.exit, %_time_compare.exit
  %20 = getelementptr inbounds nuw i8, ptr %i.f, i64 176 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %20, ptr noundef nonnull align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !77
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.m = load i32, ptr %i.l, align 8, !tbaa !73   ; 3 uses
  %i.n = icmp ult i32 %i.m, 6
  br i1 %i.n, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_time_compare.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store i32 59, ptr %i.o, align 8, !tbaa !131
  %i.p = icmp samesign ult i32 %i.m, 4
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 188
  store i32 23, ptr %i.q, align 4, !tbaa !132
  %i.r = icmp samesign ult i32 %i.m, 2
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 180
  %i.t = load i32, ptr %i.s, align 4, !tbaa !133
  switch i32 %i.t, label %bb.g [
    i32 2, label %bb.f
    i32 1, label %_time_days_in_month.exit
    i32 3, label %_time_days_in_month.exit
    i32 5, label %_time_days_in_month.exit
    i32 7, label %_time_days_in_month.exit
    i32 8, label %_time_days_in_month.exit
    i32 10, label %_time_days_in_month.exit
    i32 12, label %_time_days_in_month.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %20, align 8, !tbaa !134   ; 3 uses
  %i.v = and i32 %i.u, 3
  %i.w = icmp eq i32 %i.v, 0
  %i.x = srem i32 %i.u, 100
  %.not.i21 = icmp ne i32 %i.x, 0
  %or.cond.not8.i = and i1 %i.w, %.not.i21
  %i.y = srem i32 %i.u, 400
  %i.z = icmp eq i32 %i.y, 0
  %or.cond6.i = or i1 %i.z, %or.cond.not8.i
  %spec.select.i = select i1 %or.cond6.i, i32 29, i32 28
  br label %_time_days_in_month.exit

bb.g:                                             ; preds = %bb.e
  br label %_time_days_in_month.exit

_time_days_in_month.exit:                         ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.f, %bb.g
  %.0.i20 = phi i32 [ 30, %bb.g ], [ %spec.select.i, %bb.f ], [ 31, %bb.e ], [ 31, %bb.e ], [ 31, %bb.e ], [ 31, %bb.e ], [ 31, %bb.e ], [ 31, %bb.e ], [ 31, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  store i32 %.0.i20, ptr %i.aa, align 8, !tbaa !135
  br label %bb.h

bb.h:                                             ; preds = %_time_compare.exit.thread, %bb.d, %_time_days_in_month.exit, %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store i32 0, ptr %i.ab, align 8, !tbaa !121
  call fastcc void @_selection_collect(ptr noundef nonnull %i.f, i32 noundef 0)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !86
  call void @gtk_widget_queue_draw(ptr noundef %i.ad) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_list_free_full(ptr noundef nonnull %i.d, ptr noundef nonnull @_block_free) #15
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  store ptr null, ptr %i.g, align 8, !tbaa !112
  tail call void @free(ptr noundef %i.e) #15
  store ptr null, ptr %i.a, align 8, !tbaa !18
  ret void
}

declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_block_free(ptr noundef captures(address_is_null) %0) #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !116
  tail call void @g_free(ptr noundef %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117
  tail call void @free(ptr noundef %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118
  tail call void @free(ptr noundef %i.e) #15
  tail call void @free(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_database_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

declare ptr @sqlite3_errmsg(ptr noundef) local_unnamed_addr #5

declare i32 @sqlite3_step(ptr noundef) local_unnamed_addr #5

declare i32 @dt_datetime_gtimespan_to_numbers(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_finalize(ptr noundef) local_unnamed_addr #5

declare ptr @g_list_last(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_time_add(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  switch i32 %2, label %thread-pre-split127 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.p
    i32 5, label %bb.aa
    i32 6, label %bb.ab
    i32 8, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !80
  %i.b = add nsw i32 %i.a, %1                     ; 2 uses
  store i32 %i.b, ptr %0, align 4, !tbaa !80
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %1, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !81
  %i.f = add i32 %i.e, %i.c                       ; 4 uses
  %i.g = icmp sgt i32 %i.f, 12
  br i1 %i.g, label %.lr.ph250, label %.preheader

.lr.ph250:                                        ; preds = %bb.c
  %.promoted253 = load i32, ptr %0, align 4, !tbaa !80
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 %i.f, i32 24)
  %i.i = add nuw i32 %i.h, 11
  %i.j = udiv i32 %i.i, 12                        ; 2 uses
  %i.k = add i32 %.promoted253, %i.j
  %i.l = add i32 %i.k, 1
  %i.m = add nsw i32 %i.f, -12
  %.neg315 = mul nsw i32 %i.j, -12
  %i.n = add nsw i32 %.neg315, %i.m
  store i32 %i.l, ptr %0, align 4, !tbaa !80
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph250, %bb.c
  %storemerge85.lcssa247 = phi i32 [ %i.n, %.lr.ph250 ], [ %i.f, %bb.c ] ; 5 uses
  store i32 %storemerge85.lcssa247, ptr %i.d, align 4, !tbaa !81
  %i.o = icmp slt i32 %storemerge85.lcssa247, 1
  br i1 %i.o, label %.lr.ph255, label %thread-pre-split127

.lr.ph255:                                        ; preds = %.preheader
  %.promoted256 = load i32, ptr %0, align 4, !tbaa !80
  %smax295 = tail call i32 @llvm.smax.i32(i32 %storemerge85.lcssa247, i32 -11)
  %i.p = add nsw i32 %smax295, 11
  %i.q = sub i32 %i.p, %storemerge85.lcssa247
  %i.r = udiv i32 %i.q, 12                        ; 2 uses
  %i.s = xor i32 %i.r, -1
  %i.t = add i32 %.promoted256, %i.s
  %i.u = mul nuw i32 %i.r, 12
  %i.v = add i32 %storemerge85.lcssa247, %i.u
  %i.w = add i32 %i.v, 12
  store i32 %i.t, ptr %0, align 4, !tbaa !80
  store i32 %i.w, ptr %i.d, align 4, !tbaa !81
  br label %thread-pre-split127

bb.d:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !81
  %i.z = add i32 %i.y, %1                         ; 4 uses
  %i.aa = icmp sgt i32 %i.z, 12
  br i1 %i.aa, label %.lr.ph238, label %.preheader129

.lr.ph238:                                        ; preds = %bb.d
  %.promoted241 = load i32, ptr %0, align 4, !tbaa !80
  %i.ab = tail call i32 @llvm.usub.sat.i32(i32 %i.z, i32 24)
  %i.ac = add nuw i32 %i.ab, 11
  %i.ad = udiv i32 %i.ac, 12                      ; 2 uses
  %i.ae = add i32 %.promoted241, %i.ad
  %i.af = add i32 %i.ae, 1
  %i.ag = add nsw i32 %i.z, -12
  %.neg314 = mul nsw i32 %i.ad, -12
  %i.ah = add nsw i32 %.neg314, %i.ag
  store i32 %i.af, ptr %0, align 4, !tbaa !80
  br label %.preheader129

.preheader129:                                    ; preds = %.lr.ph238, %bb.d
  %storemerge.lcssa235 = phi i32 [ %i.ah, %.lr.ph238 ], [ %i.z, %bb.d ] ; 5 uses
  store i32 %storemerge.lcssa235, ptr %i.x, align 4, !tbaa !81
  %i.ai = icmp slt i32 %storemerge.lcssa235, 1
  br i1 %i.ai, label %.lr.ph243, label %thread-pre-split127

.lr.ph243:                                        ; preds = %.preheader129
  %.promoted244 = load i32, ptr %0, align 4, !tbaa !80
  %smax293 = tail call i32 @llvm.smax.i32(i32 %storemerge.lcssa235, i32 -11)
  %i.aj = add nsw i32 %smax293, 11
  %i.ak = sub i32 %i.aj, %storemerge.lcssa235
  %i.al = udiv i32 %i.ak, 12                      ; 2 uses
  %i.am = xor i32 %i.al, -1
  %i.an = add i32 %.promoted244, %i.am
  %i.ao = mul nuw i32 %i.al, 12
  %i.ap = add i32 %storemerge.lcssa235, %i.ao
end_hunk_0
