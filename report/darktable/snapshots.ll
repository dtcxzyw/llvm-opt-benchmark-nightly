inline.NumInlined: 34
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@gui_post_expose:bb.a
bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 1552
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !72 ; 2 uses
  %.not167 = icmp eq i32 %i.bo, 0                 ; 2 uses
  %i.bp = select i1 %.not167, i32 %2, i32 0
  %i.bq = sitofp reassoc nsz arcp contract afn i32 %i.bp to double
  %i.br = select i1 %.not167, i32 %3, i32 0
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.br to double
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 1584
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !115
  %i.bv = fmul reassoc nsz arcp contract afn double %i.bu, %i.bi
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 1592
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !116
  %i.by = fmul reassoc nsz arcp contract afn double %i.bx, %i.bk
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 1552
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !72
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bz = phi i32 [ %i.bo, %bb.p ], [ %.pre, %bb.q ]
  %i.ca = phi double [ %i.bq, %bb.p ], [ %i.bv, %bb.q ] ; 9 uses
  %i.cb = phi reassoc nsz arcp contract afn double [ %i.bs, %bb.p ], [ %i.by, %bb.q ] ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 1552 ; 2 uses
  %.not170 = icmp eq i32 %i.bz, 0
  %i.cd = select i1 %.not170, i32 15, i32 -15
  %i.ce = sitofp reassoc nsz arcp contract afn i32 %i.cd to double
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1432
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !117
  %i.ci = fmul reassoc nsz arcp contract afn double %i.ch, %i.ce ; 8 uses
  call void @dt_gui_gtk_set_source_rgb(ptr noundef %1, i32 noundef 1) #12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 1548 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !118
  %.not171 = icmp eq i32 %i.ck, 0
  %i.cl = load i32, ptr %i.cc, align 8, !tbaa !72
  %.not172 = icmp eq i32 %i.cl, 0                 ; 2 uses
  br i1 %.not171, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not172, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = fsub reassoc nsz arcp contract afn double %i.bi, %i.ca
  call void @cairo_rectangle(ptr noundef %1, double noundef %i.ca, double noundef 0.000000e+00, double noundef %i.cm, double noundef %i.bk) #12
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  call void @cairo_rectangle(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.ca, double noundef %i.bk) #12
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  br i1 %.not172, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = fsub reassoc nsz arcp contract afn double %i.bk, %i.cb
  call void @cairo_rectangle(ptr noundef %1, double noundef 0.000000e+00, double noundef %i.cb, double noundef %i.bi, double noundef %i.cn) #12
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @cairo_rectangle(ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.bi, double noundef %i.cb) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.t, %bb.u
  call void @cairo_save(ptr noundef %1) #12
  call void @cairo_clip(ptr noundef %1) #12
  call void @cairo_fill(ptr noundef %1) #12
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !78 ; 2 uses
  %.not174 = icmp eq ptr %i.cp, null
  br i1 %.not174, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = sext i32 %2 to i64
  %i.cr = sext i32 %3 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !119
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !120
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !121
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  call void @dt_view_paint_surface(ptr noundef %1, i64 noundef %i.cq, i64 noundef %i.cr, ptr noundef nonnull %i.bb, i32 noundef 0, ptr noundef nonnull %i.cp, float noundef %i.ct, i32 noundef %i.cw, i32 noundef %i.cz, ptr noundef nonnull %i.da) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @cairo_restore(ptr noundef %1) #12
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1408
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !122
  %i.de = fmul reassoc nsz arcp contract afn double %i.dd, 5.000000e-01
  %i.df = fadd reassoc nsz arcp contract afn double %i.de, 5.000000e-01 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 1384
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !123
  %i.di = fmul reassoc nsz arcp contract afn double %i.df, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 1400
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !124
  %i.dl = fmul reassoc nsz arcp contract afn double %i.dk, %i.df
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 1392
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !125
  %i.do = fmul reassoc nsz arcp contract afn double %i.dn, %i.df
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.di, double noundef %i.dl, double noundef %i.do, double noundef f0x3FE6666666666666) #12
  call void @cairo_set_line_width(ptr noundef %1, double noundef 1.000000e+00) #12
  %i.dp = load i32, ptr %i.cj, align 4, !tbaa !118
  %.not175 = icmp eq i32 %i.dp, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.dr = load ptr, ptr %i.dq, align 16, !tbaa !126 ; 2 uses
  %i.ds = load float, ptr %i.c, align 4, !tbaa !112 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.e, i64 1544 ; 2 uses
  br i1 %.not175, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 380
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !127
  %i.dw = load float, ptr %i.b, align 4, !tbaa !112
  call void @cairo_move_to(ptr noundef %1, double noundef %i.ca, double noundef 0.000000e+00) #12
  call void @cairo_line_to(ptr noundef %1, double noundef %i.ca, double noundef %i.bk) #12
  call void @cairo_stroke(ptr noundef %1) #12
  %i.dx = load i32, ptr %i.dt, align 8, !tbaa !137
  %.not177 = icmp eq i32 %i.dx, 0
  br i1 %.not177, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dy = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ci)
  %i.dz = fmul reassoc nsz arcp contract afn double %i.dy, 2.000000e+00
  %i.ea = sitofp reassoc nsz arcp contract afn i32 %i.dv to float
  %i.eb = fneg reassoc nsz arcp contract afn float %i.ea
  %i.ec = fmul reassoc nsz arcp contract afn float %i.ds, %i.eb
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %i.dw
  %i.ee = fpext reassoc nsz arcp contract afn float %i.ed to double
  %i.ef = fadd reassoc nsz arcp contract afn double %i.dz, %i.ee ; 4 uses
  %i.eg = fsub reassoc nsz arcp contract afn double %i.ef, %i.ci
  call void @cairo_move_to(ptr noundef %1, double noundef %i.ca, double noundef %i.eg) #12
  %i.eh = fmul reassoc nsz arcp contract afn double %i.ci, 1.200000e+00
  %i.ei = fsub reassoc nsz arcp contract afn double %i.ca, %i.eh
  call void @cairo_line_to(ptr noundef %1, double noundef %i.ei, double noundef %i.ef) #12
  %i.ej = fadd reassoc nsz arcp contract afn double %i.ef, %i.ci
  call void @cairo_line_to(ptr noundef %1, double noundef %i.ca, double noundef %i.ej) #12
  br label %.sink.split

bb.ad:                                            ; preds = %bb.aa
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 376
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !138
  %i.em = load float, ptr %i.a, align 4, !tbaa !112
  call void @cairo_move_to(ptr noundef %1, double noundef 0.000000e+00, double noundef %i.cb) #12
  call void @cairo_line_to(ptr noundef %1, double noundef %i.bi, double noundef %i.cb) #12
  call void @cairo_stroke(ptr noundef %1) #12
  %i.en = load i32, ptr %i.dt, align 8, !tbaa !137
  %.not176 = icmp eq i32 %i.en, 0
  br i1 %.not176, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eo = call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ci)
  %i.ep = fmul reassoc nsz arcp contract afn double %i.eo, 2.000000e+00
  %i.eq = sitofp reassoc nsz arcp contract afn i32 %i.el to float
  %i.er = fneg reassoc nsz arcp contract afn float %i.eq
  %i.es = fmul reassoc nsz arcp contract afn float %i.ds, %i.er
  %i.et = fmul reassoc nsz arcp contract afn float %i.es, %i.em
  %i.eu = fpext reassoc nsz arcp contract afn float %i.et to double
  %i.ev = fadd reassoc nsz arcp contract afn double %i.ep, %i.eu ; 4 uses
  %i.ew = fsub reassoc nsz arcp contract afn double %i.ev, %i.ci
  call void @cairo_move_to(ptr noundef %1, double noundef %i.ew, double noundef %i.cb) #12
  %i.ex = fmul reassoc nsz arcp contract afn double %i.ci, 1.200000e+00
  %i.ey = fsub reassoc nsz arcp contract afn double %i.cb, %i.ex
  call void @cairo_line_to(ptr noundef %1, double noundef %i.ev, double noundef %i.ey) #12
  %i.ez = fadd reassoc nsz arcp contract afn double %i.ev, %i.ci
  call void @cairo_line_to(ptr noundef %1, double noundef %i.ez, double noundef %i.cb) #12
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %bb.ae
  %.sink189 = phi double [ %i.ev, %bb.ae ], [ %i.ca, %bb.ac ]
  %.sink188 = phi double [ %i.cb, %bb.ae ], [ %i.ef, %bb.ac ]
  %.sink186 = phi i32 [ 0, %bb.ae ], [ 1, %bb.ac ]
  call void @cairo_close_path(ptr noundef %1) #12
  call void @cairo_fill(ptr noundef %1) #12
  %i.fa = fptrunc reassoc nsz arcp contract afn double %.sink189 to float
  %i.fb = fptrunc reassoc nsz arcp contract afn double %.sink188 to float
  %i.fc = load i32, ptr %i.cc, align 8, !tbaa !72
  call fastcc void @_draw_sym(ptr noundef %1, float noundef %i.fa, float noundef %i.fb, i32 noundef %.sink186, i32 noundef %i.fc)
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ad, %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 1544
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !137
  %.not178 = icmp eq i32 %i.fe, 0
  br i1 %.not178, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ff = load i32, ptr %i.g, align 8, !tbaa !63
  %.not179 = icmp eq i32 %i.ff, 0
  br i1 %.not179, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %.val = load ptr, ptr %i.d, align 8, !tbaa !11  ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val, i64 1568
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !113 ; 3 uses
  %6 = call reassoc nsz arcp contract afn double @llvm.minnum.f64(double %i.fh, double 1.200000e+03) ; 3 uses
  %7 = fmul reassoc nnan nsz arcp contract afn double %6, 2.000000e-02
  %i.fi = getelementptr inbounds nuw i8, ptr %.val, i64 1548
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !118
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %.val, i64 1584
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !115
  %i.fm = fmul reassoc nsz arcp contract afn double %i.fl, %i.fh
  %i.fn = fmul reassoc nnan nsz arcp contract afn double %6, 1.000000e-02 ; 2 uses
  %i.fo = fsub reassoc nsz arcp contract afn double %i.fm, %i.fn
  br label %_get_rotation_area.exit

bb.aj:                                            ; preds = %bb.ah
  %i.fp = fmul reassoc nsz arcp contract afn double %i.fh, 5.000000e-01
  %i.fq = fmul reassoc nnan nsz arcp contract afn double %6, 1.000000e-02 ; 2 uses
  %i.fr = fsub reassoc nsz arcp contract afn double %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.val, i64 1576
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !114
  br label %_get_rotation_area.exit

_get_rotation_area.exit:                          ; preds = %bb.ai, %bb.aj
  %.sink.i = phi i64 [ 1592, %bb.aj ], [ 1576, %bb.ai ]
  %.sink5.i = phi double [ %i.ft, %bb.aj ], [ 5.000000e-01, %bb.ai ]
  %.in.i = phi double [ %i.fr, %bb.aj ], [ %i.fo, %bb.ai ]
  %i.fu = phi double [ %i.fq, %bb.aj ], [ %i.fn, %bb.ai ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.val, i64 %.sink.i
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !139
  %i.fx = fmul reassoc nsz arcp contract afn double %i.fw, %.sink5.i
  %i.fy = fptosi double %.in.i to i32             ; 2 uses
  %i.fz = fsub reassoc nsz arcp contract afn double %i.fx, %i.fu
  %i.ga = fptosi double %i.fz to i32              ; 2 uses
  %i.gb = add i32 %4, 39
  %i.gc = sub i32 %i.gb, %i.fy
  %i.gd = icmp ult i32 %i.gc, 79
  %i.ge = add i32 %5, 39
  %i.gf = sub i32 %i.ge, %i.ga
  %i.gg = icmp ult i32 %i.gf, 79
  %narrow.i = select i1 %i.gd, i1 %i.gg, i1 false ; 2 uses
  %i.gh = zext i1 %narrow.i to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.e, i64 1620
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !140
  %i.gj = select reassoc nsz arcp contract afn i1 %narrow.i, double 1.000000e+00, double 3.000000e-01
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1408
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !122
  %i.gn = fmul reassoc nsz arcp contract afn double %i.gm, 5.000000e-01
  %i.go = fadd reassoc nsz arcp contract afn double %i.gn, 5.000000e-01 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 1384
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !123
  %i.gr = fmul reassoc nsz arcp contract afn double %i.go, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 1400
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !124
  %i.gu = fmul reassoc nsz arcp contract afn double %i.gt, %i.go
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gk, i64 1392
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !125
  %i.gx = fmul reassoc nsz arcp contract afn double %i.gw, %i.go
  call void @cairo_set_source_rgba(ptr noundef %1, double noundef %i.gr, double noundef %i.gu, double noundef %i.gx, double noundef %i.gj) #12
  call void @cairo_set_line_width(ptr noundef %1, double noundef 5.000000e-01) #12
  %i.gy = fptosi double %7 to i32                 ; 2 uses
  call void @dtgtk_cairo_paint_refresh(ptr noundef %1, i32 noundef %i.fy, i32 noundef %i.ga, i32 noundef %i.gy, i32 noundef %i.gy, i32 noundef 0, ptr noundef null) #12
  br label %bb.ak

bb.ak:                                            ; preds = %_get_rotation_area.exit, %bb.ag, %bb.af
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 1616
  store i32 0, ptr %i.gz, align 8, !tbaa !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.al

bb.al:                                            ; preds = %bb.c, %bb.ak, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i64 @dt_view_get_context_hash() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @dt_dev_image(i32 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @g_source_remove(i32 noundef) local_unnamed_addr #4

declare i32 @g_timeout_add(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @_snap_expose_again(ptr nofree noundef writeonly captures(none) initializes((12, 20)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !74
  tail call void @dt_control_queue_redraw_center() #12
  ret i32 0
}

declare void @dt_dev_get_pointer_zoom_pos(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #6

declare void @dt_gui_gtk_set_source_rgb(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_save(ptr noundef) local_unnamed_addr #4

declare void @cairo_clip(ptr noundef) local_unnamed_addr #4

declare void @cairo_fill(ptr noundef) local_unnamed_addr #4

declare void @dt_view_paint_surface(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @cairo_restore(ptr noundef) local_unnamed_addr #4

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #4

declare void @cairo_close_path(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_draw_sym(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct._PangoRectangle, align 4    ; 5 uses
  %.not = icmp eq i32 %4, 0
  %i.a = select reassoc nsz arcp contract afn i1 %.not, double 1.000000e+00, double -1.000000e-01 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !142
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.e = tail call ptr @pango_font_description_copy_static(ptr noundef %i.d) #12 ; 4 uses
  tail call void @pango_font_description_set_weight(ptr noundef %i.e, i32 noundef 700) #12
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1432
  %i.h = load double, ptr %i.g, align 8, !tbaa !117
  %i.i = fmul reassoc nsz arcp contract afn double %i.h, 1.228800e+04
  tail call void @pango_font_description_set_absolute_size(ptr noundef %i.e, double noundef %i.i) #12
  %i.j = tail call ptr @pango_cairo_create_layout(ptr noundef %0) #12 ; 5 uses
  tail call void @pango_layout_set_font_description(ptr noundef %i.j, ptr noundef %i.e) #12
  %i.k = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.33, i64 noundef 14) #12
  tail call void @pango_layout_set_text(ptr noundef %i.j, ptr noundef %i.k, i32 noundef -1) #12
  call void @pango_layout_get_pixel_extents(ptr noundef %i.j, ptr noundef nonnull %5, ptr noundef null) #12
  %.not21 = icmp eq i32 %3, 0
  %i.l = fpext reassoc nsz arcp contract afn float %1 to double ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !152
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.n to double ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !154
  %i.r = sitofp reassoc nsz arcp contract afn i32 %i.q to float ; 2 uses
  br i1 %.not21, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = fmul reassoc nnan nsz arcp contract afn double %i.a, f0x3FF3333340000000
  %i.t = fmul reassoc nnan nsz arcp contract afn double %i.s, %i.o
  %i.u = fsub reassoc nsz arcp contract afn double %i.l, %i.t
  %i.v = fmul reassoc nnan nsz arcp contract afn float %i.r, 5.000000e-01
  %i.w = fsub reassoc nsz arcp contract afn float %2, %i.v
  %i.x = fpext reassoc nsz arcp contract afn float %i.w to double
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1432
  %i.aa = load double, ptr %i.z, align 8, !tbaa !117
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, 3.000000e+00
  %i.ac = fsub reassoc nsz arcp contract afn double %i.x, %i.ab
  call void @cairo_move_to(ptr noundef %0, double noundef %i.u, double noundef %i.ac) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = fmul reassoc nnan nsz arcp contract afn double %i.o, 5.000000e-01
  %i.ae = fsub reassoc nsz arcp contract afn double %i.l, %i.ad
  %i.af = fpext reassoc nsz arcp contract afn float %2 to double
  %i.ag = fmul reassoc nnan nsz arcp contract afn float %i.r, 1.200000e+00
  %i.ah = fpext reassoc nnan nsz arcp contract afn float %i.ag to double
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1432
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !117
  %.neg = fmul reassoc nsz arcp contract afn double %i.ak, -2.000000e+00
  %i.al = fadd reassoc nsz arcp contract afn double %.neg, %i.af
  %i.am = fmul reassoc nnan nsz arcp contract afn double %i.a, %i.ah
  %i.an = fsub reassoc nsz arcp contract afn double %i.al, %i.am
  call void @cairo_move_to(ptr noundef %0, double noundef %i.ae, double noundef %i.an) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1408
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !122
  %i.ar = fmul reassoc nsz arcp contract afn double %i.aq, 5.000000e-01
  %i.as = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 1384
  %i.au = load double, ptr %i.at, align 8, !tbaa !123
  %i.av = fmul reassoc nsz arcp contract afn double %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 1400
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !124
  %i.ay = fmul reassoc nsz arcp contract afn double %i.ax, %i.as
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 1392
  %i.ba = load double, ptr %i.az, align 8, !tbaa !125
  %i.bb = fmul reassoc nsz arcp contract afn double %i.ba, %i.as
  call void @cairo_set_source_rgba(ptr noundef %0, double noundef %i.av, double noundef %i.ay, double noundef %i.bb, double noundef 9.000000e-01) #12
  call void @pango_cairo_show_layout(ptr noundef %0, ptr noundef %i.j) #12
  call void @pango_font_description_free(ptr noundef %i.e) #12
  call void @g_object_unref(ptr noundef %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
end_hunk_0
begin_hunk_1_@button_pressed:bb.a
bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !73
  %i.i = icmp sgt i32 %i.h, -1
  %i.j = icmp ne i32 %4, 2
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1616 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !141
  %.not68 = icmp eq i32 %i.l, 0
  br i1 %.not68, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !139
  %i.o = insertelement <2 x double> poison, double %1, i64 0
  %i.p = insertelement <2 x double> %i.o, double %2, i64 1
  %i.q = fdiv reassoc nsz arcp contract afn <2 x double> %i.p, %i.n ; 3 uses
  %i.r = extractelement <2 x double> %i.q, i64 1  ; 8 uses
  %i.s = extractelement <2 x double> %i.q, i64 0  ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1548 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !118
  %.not69 = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %.not69, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %i.w = load double, ptr %i.v, align 8, !tbaa !115 ; 2 uses
  %i.x = fadd reassoc nsz arcp contract afn double %i.w, -1.000000e-02
  %i.y = fcmp reassoc nsz arcp contract afn ogt double %i.s, %i.x
  br i1 %i.y, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.z = fadd reassoc nsz arcp contract afn double %i.w, 1.000000e-02
  %i.aa = fcmp reassoc nsz arcp contract afn olt double %i.s, %i.z
  %i.ab = fcmp reassoc nsz arcp contract afn ogt double %i.r, 4.900000e-01
  %i.ac = fcmp reassoc nsz arcp contract afn olt double %i.r, 5.100000e-01
  %i.ad = and i1 %i.ab, %i.ac
  %or.cond5 = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond5, label %bb.l, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1592
  %i.af = load double, ptr %i.ae, align 8, !tbaa !116 ; 2 uses
  %i.ag = fadd reassoc nsz arcp contract afn double %i.af, -1.000000e-02
  %i.ah = fcmp reassoc nsz arcp contract afn ogt double %i.r, %i.ag
  br i1 %i.ah, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ai = fadd reassoc nsz arcp contract afn double %i.af, 1.000000e-02
  %i.aj = fcmp reassoc nsz arcp contract afn olt double %i.r, %i.ai
  %i.ak = fcmp reassoc nsz arcp contract afn ogt double %i.s, 4.900000e-01
  %i.al = fcmp reassoc nsz arcp contract afn olt double %i.s, 5.100000e-01
  %i.am = and i1 %i.ak, %i.al
  %or.cond9 = select i1 %i.aj, i1 %i.am, i1 false
  br i1 %or.cond9, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1560
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !63
  %.not71 = icmp eq i32 %i.ao, 0
  br i1 %.not71, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1600 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !156 ; 2 uses
  %i.ar = fadd reassoc nsz arcp contract afn double %i.s, -1.000000e-02
  %i.as = fcmp reassoc nsz arcp contract afn ule double %i.aq, %i.ar
  %i.at = fadd reassoc nsz arcp contract afn double %i.s, 1.000000e-02
  %i.au = fcmp reassoc nsz arcp contract afn ugt double %i.aq, %i.at
  %or.cond78 = or i1 %i.as, %i.au
  br i1 %or.cond78, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1608
  %i.aw = load double, ptr %i.av, align 8, !tbaa !157 ; 2 uses
  %i.ax = fadd reassoc nsz arcp contract afn double %i.r, -1.000000e-02
  %i.ay = fcmp reassoc nsz arcp contract afn ule double %i.aw, %i.ax
  %i.az = fadd reassoc nsz arcp contract afn double %i.r, 1.000000e-02
  %i.ba = fcmp reassoc nsz arcp contract afn ugt double %i.aw, %i.az
  %or.cond80 = or i1 %i.ay, %i.ba
  br i1 %or.cond80, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g, %.thread
  %i.bb = load i32, ptr @_lib_snapshot_rotation_cnt, align 4, !tbaa !158
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr @_lib_snapshot_rotation_cnt, align 4, !tbaa !158
  %i.bd = zext i1 %.not69 to i32
  store i32 %i.bd, ptr %i.t, align 4, !tbaa !118
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !65
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !159
  %i.bg = tail call ptr @dt_ui_snapshot(ptr noundef %i.bf) #12
  %i.bh = tail call ptr @gtk_widget_get_parent(ptr noundef %i.bg) #12
  %i.bi = load i32, ptr %i.t, align 4, !tbaa !118
  %.not73 = icmp eq i32 %i.bi, 0
  %i.bj = zext i1 %.not73 to i32
  tail call void @gtk_orientable_set_orientation(ptr noundef %i.bh, i32 noundef %i.bj) #12
  %i.bk = load i32, ptr @_lib_snapshot_rotation_cnt, align 4, !tbaa !158
  %i.bl = and i32 %i.bk, 1
  %.not74 = icmp eq i32 %i.bl, 0
  br i1 %.not74, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 1552 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !72
  %.not75 = icmp eq i32 %i.bn, 0
  %i.bo = zext i1 %.not75 to i32
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 1560
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !63
  %.not76 = icmp eq i32 %i.bq, 0
  br i1 %.not76, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.br, align 4, !tbaa !74
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  store <2 x double> %i.q, ptr %i.bs, align 8, !tbaa !139
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  store double %i.s, ptr %i.bt, align 8, !tbaa !156
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 1608
  store double %i.r, ptr %i.bu, align 8, !tbaa !157
  store i32 1, ptr %i.k, align 8, !tbaa !141
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.r

bb.q:                                             ; preds = %bb.k, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 1544
  store i32 1, ptr %i.bv, align 8, !tbaa !137
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 1592
  store double %i.r, ptr %i.bw, align 8, !tbaa !116
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  store double %i.s, ptr %i.bx, align 8, !tbaa !115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.p, %bb.q, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.p ], [ 1, %bb.d ], [ 1, %bb.q ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @gtk_orientable_set_orientation(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gtk_widget_get_parent(ptr noundef) local_unnamed_addr #4

declare ptr @dt_ui_snapshot(ptr noundef) local_unnamed_addr #4

declare void @dt_control_queue_redraw_center() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @mouse_moved(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1556
  %i.d = load i32, ptr %i.c, align 4, !tbaa !83
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1544
  %i.i = load i32, ptr %i.h, align 8, !tbaa !137
  %.not18 = icmp eq i32 %i.i, 0                   ; 2 uses
  br i1 %.not18, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !113
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %i.l = load <2 x double>, ptr %i.j, align 8, !tbaa !139 ; 2 uses
  %i.m = insertelement <2 x double> poison, double %1, i64 0
  %i.n = insertelement <2 x double> %i.m, double %2, i64 1
  %i.o = fdiv reassoc nsz arcp contract afn <2 x double> %i.n, %i.l
  store <2 x double> %i.o, ptr %i.k, align 8, !tbaa !139
  %i.p = extractelement <2 x double> %i.l, i64 0
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.q = phi double [ %.pre, %._crit_edge ], [ %i.p, %bb.d ] ; 3 uses
  %i.r = fptosi double %1 to i32
  %i.s = fptosi double %2 to i32
  %i.t = tail call reassoc nsz arcp contract afn double @llvm.minnum.f64(double %i.q, double 1.200000e+03) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1548
  %i.v = load i32, ptr %i.u, align 4, !tbaa !118
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %i.x = load double, ptr %i.w, align 8, !tbaa !115
  %i.y = fmul reassoc nsz arcp contract afn double %i.x, %i.q
  %i.z = fmul reassoc nnan nsz arcp contract afn double %i.t, 1.000000e-02 ; 2 uses
  %i.aa = fsub reassoc nsz arcp contract afn double %i.y, %i.z
  br label %_get_rotation_area.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = fmul reassoc nsz arcp contract afn double %i.q, 5.000000e-01
  %i.ac = fmul reassoc nnan nsz arcp contract afn double %i.t, 1.000000e-02 ; 2 uses
  %i.ad = fsub reassoc nsz arcp contract afn double %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 1576
  %i.af = load double, ptr %i.ae, align 8, !tbaa !114
  br label %_get_rotation_area.exit

_get_rotation_area.exit:                          ; preds = %bb.f, %bb.g
  %.sink.i = phi i64 [ 1592, %bb.g ], [ 1576, %bb.f ]
  %.sink5.i = phi double [ %i.af, %bb.g ], [ 5.000000e-01, %bb.f ]
  %.in.i = phi double [ %i.ad, %bb.g ], [ %i.aa, %bb.f ]
  %i.ag = phi double [ %i.ac, %bb.g ], [ %i.z, %bb.f ]
  br i1 %.not18, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_get_rotation_area.exit
  %i.ah = add i32 %i.r, 39
  %i.ai = fptosi double %.in.i to i32
  %i.aj = sub i32 %i.ah, %i.ai
  %i.ak = icmp ult i32 %i.aj, 79
  %i.al = add i32 %i.s, 39
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !139
  %i.ao = fmul reassoc nsz arcp contract afn double %i.an, %.sink5.i
  %i.ap = fsub reassoc nsz arcp contract afn double %i.ao, %i.ag
  %i.aq = fptosi double %i.ap to i32
  %i.ar = sub i32 %i.al, %i.aq
  %i.as = icmp ult i32 %i.ar, 79
  %narrow.i = select i1 %i.ak, i1 %i.as, i1 false
  %i.at = zext i1 %narrow.i to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 1620
  %i.av = load i32, ptr %i.au, align 4, !tbaa !140
  %.not20 = icmp eq i32 %i.av, %i.at
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %_get_rotation_area.exit
  tail call void @dt_control_queue_redraw_center() #12
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.h, %bb.i, %bb.a
  %.0 = phi i32 [ 1, %bb.h ], [ 0, %bb.a ], [ 1, %bb.i ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store i32 -1, ptr %i.b, align 8, !tbaa !73
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !160
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store i32 0, ptr %i.d, align 8, !tbaa !161
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 20 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !171
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_clear_snapshots.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.h, i64 %indvars.iv.i ; 3 uses
  %i.j = trunc nuw i64 %indvars.iv.i to i32
  %i.k = or i32 %i.j, -256
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  store i32 %i.k, ptr %i.l, align 8, !tbaa !81
  tail call fastcc void @_clear_snapshot_entry(ptr noundef nonnull %i.i)
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !172
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.m, i32 noundef 0) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.n = load i32, ptr %i.f, align 4, !tbaa !171
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %i.p, label %bb.b, label %_clear_snapshots.exit

_clear_snapshots.exit:                            ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.f, align 4, !tbaa !171
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 1624
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !173
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.r, i32 noundef 1) #12
  tail call void @dt_control_queue_redraw_center() #12
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((288, 296), (424, 432)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(1640) ptr @g_malloc0(i64 noundef 1640) #13 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.b, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  store <2 x double> splat (double 5.000000e-01), ptr %i.d, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1600
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1548
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.f, align 4, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1616
  store i32 0, ptr %i.g, align 8, !tbaa !141
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1620
  store i32 0, ptr %i.h, align 4, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1556
  store i32 0, ptr %i.i, align 4, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 0>, ptr %i.j, align 8, !tbaa !158
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  store i32 0, ptr %i.l, align 8, !tbaa !161
  %i.m = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !174
  %i.o = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #12
  store ptr %i.o, ptr %i.b, align 8, !tbaa !175
  %i.p = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #12
  %i.q = tail call ptr @dt_action_button_new(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @_lib_snapshots_add_button_clicked_callback, ptr noundef %0, ptr noundef %i.p, i32 noundef 0, i32 noundef 0) #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1624 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_tmp_dir(ptr noundef nonnull %i.a, i64 noundef 4096) #12
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !174
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !175
  %i.v = call ptr @dt_ui_resize_wrap(ptr noundef %i.u, i32 noundef 1, ptr noundef nonnull @.str.4) #12
  call void @gtk_box_pack_start(ptr noundef %i.t, ptr noundef %i.v, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %i.w = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #12 ; 3 uses
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !173
  call void @gtk_box_pack_start(ptr noundef %i.w, ptr noundef %i.x, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %i.y = call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_lt_mode_culling_dynamic, i32 noundef 0, ptr noundef null) #12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1632 ; 4 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !176
  %i.aa = call ptr @dt_action_define(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef %i.y, ptr noundef nonnull @dt_action_def_toggle) #12 ; 0 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !176
  call void @gtk_box_pack_start(ptr noundef %i.w, ptr noundef %i.ab, i32 noundef 0, i32 noundef 1, i32 noundef 0) #12
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !176
  %i.ad = call i64 @g_signal_connect_data(ptr noundef %i.ac, ptr noundef nonnull @.str.6, ptr noundef nonnull @_sidebyside_button_clicked, ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) #12 ; 0 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !176
  %i.af = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #12
  call void @gtk_widget_set_tooltip_text(ptr noundef %i.ae, ptr noundef %i.af) #12
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !174
  call void @gtk_box_pack_start(ptr noundef %i.ag, ptr noundef %i.w, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %i.ah = call ptr @dt_action_register(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @_lib_snapshots_toggle_last, i32 noundef 0, i32 noundef 0) #12 ; 0 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !177
  %i.aj = and i32 %i.ai, 2
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3448), align 8
  %i.am = icmp ne i32 %i.al, 0
  %or.cond = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.an = getelementptr inbounds nuw [152 x i8], ptr %i.s, i64 %indvars.iv ; 12 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  %i.ap = trunc i64 %indvars.iv to i32
  %i.aq = or i32 %i.ap, -256
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !81
  call fastcc void @_clear_snapshot_entry(ptr noundef nonnull %i.an)
  call fastcc void @_init_snapshot_entry(ptr noundef nonnull %0, ptr noundef nonnull %i.an)
  %i.ar = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #12 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !178
  call void @gtk_box_pack_start(ptr noundef %i.ar, ptr noundef %i.at, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !179
  call void @gtk_box_pack_start(ptr noundef %i.ar, ptr noundef %i.av, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !180
  call void @gtk_box_pack_start(ptr noundef %i.ar, ptr noundef %i.ax, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !181
  call void @gtk_box_pack_start(ptr noundef %i.ar, ptr noundef %i.az, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  call void @gtk_widget_show_all(ptr noundef %i.ar) #12
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !181
  call void @gtk_widget_hide(ptr noundef %i.ba) #12
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !172
  call void @gtk_container_add(ptr noundef %i.bb, ptr noundef %i.ar) #12
  %i.bc = call ptr @gtk_box_new(i32 noundef 0, i32 noundef 0) #12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 3 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !182
  %i.be = load ptr, ptr %i.an, align 8, !tbaa !172
  call void @gtk_box_pack_start(ptr noundef %i.bc, ptr noundef %i.be, i32 noundef 1, i32 noundef 1, i32 noundef 0) #12
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !182
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !183
  call void @gtk_box_pack_end(ptr noundef %i.bf, ptr noundef %i.bh, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !175
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !182
  call void @gtk_box_pack_end(ptr noundef %i.bi, ptr noundef %i.bj, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %i.bk = load ptr, ptr %i.an, align 8, !tbaa !172
  call void @gtk_widget_set_no_show_all(ptr noundef %i.bk, i32 noundef 1) #12
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !183
  call void @gtk_widget_set_no_show_all(ptr noundef %i.bl, i32 noundef 1) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_1
