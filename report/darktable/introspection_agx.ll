Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_agx?download=true
inline.NumInlined: 178
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@gui_changed:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !130 ; 4 uses
  %.val52 = load ptr, ptr %i.a, align 16, !tbaa !117
  %i.o = getelementptr i8, ptr %.val52, i64 272
  %.val52.val = load ptr, ptr %i.o, align 8, !tbaa !131 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 4 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !132 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !133
  %i.t = fsub reassoc nsz arcp contract afn float %i.n, %i.l
  %i.u = fmul reassoc nsz arcp contract afn float %i.s, %i.t
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, %i.l ; 3 uses
  %i.w = fcmp reassoc nsz arcp contract afn ult float %i.v, %i.q
  %i.x = fcmp reassoc nsz arcp contract afn ole float %i.v, %i.n
  %i.y = select reassoc nsz arcp contract afn i1 %i.x, float %i.v, float %i.n
  %i.z = select reassoc nsz arcp contract afn i1 %i.w, float %i.q, float %i.y
  %i.aa = fsub reassoc nsz arcp contract afn float %i.n, %i.q
  %i.ab = fsub reassoc nsz arcp contract afn float %i.z, %i.q
  %i.ac = fdiv reassoc nsz arcp contract afn float %i.ab, %i.aa
  store float %i.ac, ptr %i.r, align 4, !tbaa !133
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.af = atomicrmw add ptr %i.ae, i32 1 seq_cst, align 4 ; 0 uses
  %i.ag = load float, ptr %i.m, align 4, !tbaa !130
  %i.ah = load float, ptr %i.p, align 4, !tbaa !132
  %i.ai = fsub reassoc nsz arcp contract afn float %i.ag, %i.ah ; 2 uses
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %.val52.val, float noundef %i.ai) #22
  %i.aj = load float, ptr %i.p, align 4, !tbaa !132
  tail call void @dt_bauhaus_slider_set_offset(ptr noundef %.val52.val, float noundef %i.aj) #22
  %i.ak = load float, ptr %i.p, align 4, !tbaa !132
  %i.al = fneg reassoc nsz arcp contract afn float %i.ak
  %i.am = fdiv reassoc nsz arcp contract afn float %i.al, %i.ai
  tail call void @dt_bauhaus_slider_set_default(ptr noundef %.val52.val, float noundef %i.am) #22
  %i.an = load float, ptr %i.r, align 4, !tbaa !133
  tail call void @dt_bauhaus_slider_set(ptr noundef %.val52.val, float noundef %i.an) #22
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = atomicrmw sub ptr %i.ap, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !134
  %i.at = icmp eq ptr %1, %i.as
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 4 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !132 ; 6 uses
  %i.aw = load float, ptr %2, align 4, !tbaa !12
  %.val51 = load ptr, ptr %i.a, align 16, !tbaa !117
  %i.ax = getelementptr i8, ptr %.val51, i64 272
  %.val51.val = load ptr, ptr %i.ax, align 8, !tbaa !131 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !130 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !133
  %i.bc = fsub reassoc nsz arcp contract afn float %i.aw, %i.av
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bb, %i.bc
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.av ; 3 uses
  %i.bf = fcmp reassoc nsz arcp contract afn ult float %i.be, %i.av
  %i.bg = fcmp reassoc nsz arcp contract afn ole float %i.be, %i.az
  %i.bh = select reassoc nsz arcp contract afn i1 %i.bg, float %i.be, float %i.az
  %i.bi = select reassoc nsz arcp contract afn i1 %i.bf, float %i.av, float %i.bh
  %i.bj = fsub reassoc nsz arcp contract afn float %i.az, %i.av
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bi, %i.av
  %i.bl = fdiv reassoc nsz arcp contract afn float %i.bk, %i.bj
  store float %i.bl, ptr %i.ba, align 4, !tbaa !133
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.bo = atomicrmw add ptr %i.bn, i32 1 seq_cst, align 4 ; 0 uses
  %i.bp = load float, ptr %i.ay, align 4, !tbaa !130
  %i.bq = load float, ptr %i.au, align 4, !tbaa !132
  %i.br = fsub reassoc nsz arcp contract afn float %i.bp, %i.bq ; 2 uses
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %.val51.val, float noundef %i.br) #22
  %i.bs = load float, ptr %i.au, align 4, !tbaa !132
  tail call void @dt_bauhaus_slider_set_offset(ptr noundef %.val51.val, float noundef %i.bs) #22
  %i.bt = load float, ptr %i.au, align 4, !tbaa !132
  %i.bu = fneg reassoc nsz arcp contract afn float %i.bt
  %i.bv = fdiv reassoc nsz arcp contract afn float %i.bu, %i.br
  tail call void @dt_bauhaus_slider_set_default(ptr noundef %.val51.val, float noundef %i.bv) #22
  %i.bw = load float, ptr %i.ba, align 4, !tbaa !133
  tail call void @dt_bauhaus_slider_set(ptr noundef %.val51.val, float noundef %i.bw) #22
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 104
  %i.bz = atomicrmw sub ptr %i.by, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !135
  %i.cc = icmp eq ptr %1, %i.cb
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cd = load float, ptr %2, align 4, !tbaa !12  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !136
  %i.cg = fsub reassoc nsz arcp contract afn float %i.cf, %i.cd
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cd, 1.000000e+00
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 6 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !132 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !130 ; 2 uses
  %i.cn = fadd reassoc nsz arcp contract afn float %i.ci, 1.000000e+00 ; 2 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.ck ; 5 uses
  store float %i.co, ptr %i.cj, align 4, !tbaa !132
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cn, %i.cm ; 4 uses
  store float %i.cp, ptr %i.cl, align 4, !tbaa !130
  %.val = load ptr, ptr %i.a, align 16, !tbaa !117
  %i.cq = getelementptr i8, ptr %.val, i64 272
  %.val.val = load ptr, ptr %i.cq, align 8, !tbaa !131 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !133
  %i.ct = fsub reassoc nsz arcp contract afn float %i.cm, %i.ck
  %i.cu = fmul reassoc nsz arcp contract afn float %i.cs, %i.ct
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, %i.ck ; 3 uses
  %i.cw = fcmp reassoc nsz arcp contract afn ult float %i.cv, %i.co
  %i.cx = fcmp reassoc nsz arcp contract afn ole float %i.cv, %i.cp
  %i.cy = select reassoc nsz arcp contract afn i1 %i.cx, float %i.cv, float %i.cp
  %i.cz = select reassoc nsz arcp contract afn i1 %i.cw, float %i.co, float %i.cy
  %i.da = fsub reassoc nsz arcp contract afn float %i.cp, %i.co
  %i.db = fsub reassoc nsz arcp contract afn float %i.cz, %i.co
  %i.dc = fdiv reassoc nsz arcp contract afn float %i.db, %i.da
  store float %i.dc, ptr %i.cr, align 4, !tbaa !133
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 104
  %i.df = atomicrmw add ptr %i.de, i32 1 seq_cst, align 4 ; 0 uses
  %i.dg = load float, ptr %i.cl, align 4, !tbaa !130
  %i.dh = load float, ptr %i.cj, align 4, !tbaa !132
  %i.di = fsub reassoc nsz arcp contract afn float %i.dg, %i.dh ; 2 uses
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %.val.val, float noundef %i.di) #22
  %i.dj = load float, ptr %i.cj, align 4, !tbaa !132
  tail call void @dt_bauhaus_slider_set_offset(ptr noundef %.val.val, float noundef %i.dj) #22
  %i.dk = load float, ptr %i.cj, align 4, !tbaa !132
  %i.dl = fneg reassoc nsz arcp contract afn float %i.dk
  %i.dm = fdiv reassoc nsz arcp contract afn float %i.dl, %i.di
  tail call void @dt_bauhaus_slider_set_default(ptr noundef %.val.val, float noundef %i.dm) #22
  %i.dn = load float, ptr %i.cr, align 4, !tbaa !133
  tail call void @dt_bauhaus_slider_set(ptr noundef %.val.val, float noundef %i.dn) #22
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 104
  %i.dq = atomicrmw sub ptr %i.dp, i32 1 seq_cst, align 4 ; 0 uses
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 104
  %i.dt = atomicrmw add ptr %i.ds, i32 1 seq_cst, align 4 ; 0 uses
  %i.du = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.dv = load float, ptr %i.cj, align 4, !tbaa !132
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.du, float noundef %i.dv) #22
  %i.dw = load ptr, ptr %i.ar, align 8, !tbaa !134
  %i.dx = load float, ptr %i.cl, align 4, !tbaa !130
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.dw, float noundef %i.dx) #22
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 104
  %i.ea = atomicrmw sub ptr %i.dz, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !137
  %.not49 = icmp eq i32 %i.ec, 0
  br i1 %.not49, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !118 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !133 ; 3 uses
  %i.eg = fcmp reassoc nsz arcp contract afn ult float %i.ef, f0x358637BD
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.ef, f0x3F7FFFEF
  %spec.select.i = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.ef, float f0x3F7FFFEF
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !137
  %.not.i = icmp eq i32 %i.ei, 0
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !138 ; 2 uses
  %i.el = fcmp reassoc nsz arcp contract afn ogt float %i.ek, 0.000000e+00
  br i1 %i.el, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.em = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ek)
  %i.en = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %spec.select.i)
  %i.eo = select i1 %i.eg, float f0xC19F73DA, float %i.en
  %i.ep = fdiv reassoc nsz arcp contract afn float %i.em, %i.eo
  br label %_adjust_pivot.exit

bb.l:                                             ; preds = %bb.j
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ed, i64 60
  %i.er = load float, ptr %i.eq, align 4, !tbaa !15
  br label %_adjust_pivot.exit

bb.m:                                             ; preds = %bb.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 60
  %i.et = load float, ptr %i.es, align 4, !tbaa !15
  br label %_adjust_pivot.exit

_adjust_pivot.exit:                               ; preds = %bb.k, %bb.l, %bb.m
  %.sroa.5.0 = phi float [ %i.et, %bb.m ], [ %i.ep, %bb.k ], [ %i.er, %bb.l ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !139
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ev, float noundef %.sroa.5.0) #22
  br label %.thread

bb.n:                                             ; preds = %bb.a
  %.not50 = icmp eq ptr %i.b, null
  br i1 %.not50, label %bb.o, label %.thread

.thread:                                          ; preds = %_adjust_pivot.exit, %bb.h, %bb.n
  tail call fastcc void @_update_redraw_dynamic_gui(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef %i.d)
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  ret void
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_update_redraw_dynamic_gui(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.tone_mapping_params_t, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137
  %.not = icmp eq i32 %i.d, 0
  %i.e = zext i1 %.not to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.b, i32 noundef %i.e) #22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !140
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !141
  %.not11 = icmp eq i32 %i.i, 0
  %i.j = zext i1 %.not11 to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.g, i32 noundef %i.j) #22
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 140
  %i.l = load i32, ptr %i.k, align 4, !tbaa !142
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.h, align 4, !tbaa !141
  %.not13 = icmp eq i32 %i.m, 0
  %i.n = zext i1 %.not13 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i32 [ 0, %bb.a ], [ %i.n, %bb.b ]    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  tail call void @gtk_widget_set_visible(ptr noundef %i.q, i32 noundef %i.o) #22
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !144
  tail call void @gtk_widget_set_sensitive(ptr noundef %i.s, i32 noundef %i.o) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !117 ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_update_curve_warnings.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118
  %i.x = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.166) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call fastcc void @_calculate_tone_mapping_params(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 296
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !145
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !99
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp ne i32 %i.x, 0                     ; 2 uses
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  %i.af = select i1 %i.ae, ptr @dtgtk_cairo_paint_warning, ptr null
  tail call void @dt_bauhaus_widget_set_quad_paint(ptr noundef %i.z, ptr noundef %i.af, i32 noundef 16, ptr noundef null) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !146
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !108
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = select i1 %i.ak, i1 %i.ad, i1 false
  %i.am = select i1 %i.al, ptr @dtgtk_cairo_paint_warning, ptr null
  tail call void @dt_bauhaus_widget_set_quad_paint(ptr noundef %i.ah, ptr noundef %i.am, i32 noundef 16, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_update_curve_warnings.exit

_update_curve_warnings.exit:                      ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !147
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ao) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !117 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !131  ; 4 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = atomicrmw add ptr %i.h, i32 1 seq_cst, align 4 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !132
  %i.n = fsub reassoc nsz arcp contract afn float %i.k, %i.m ; 2 uses
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %i.f, float noundef %i.n) #22
  %i.o = load float, ptr %i.l, align 4, !tbaa !132
  tail call void @dt_bauhaus_slider_set_offset(ptr noundef %i.f, float noundef %i.o) #22
  %i.p = load float, ptr %i.l, align 4, !tbaa !132
  %i.q = fneg reassoc nsz arcp contract afn float %i.p
  %i.r = fdiv reassoc nsz arcp contract afn float %i.q, %i.n
  tail call void @dt_bauhaus_slider_set_default(ptr noundef %i.f, float noundef %i.r) #22
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.t = load float, ptr %i.s, align 4, !tbaa !133
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.f, float noundef %i.t) #22
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = atomicrmw sub ptr %i.v, i32 1 seq_cst, align 4 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !148
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !137
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.y, i32 noundef %i.aa) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !149
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !141
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ac, i32 noundef %i.ae) #22
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !150
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !142
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.ag, i32 noundef %i.ai) #22
  tail call fastcc void @_update_redraw_dynamic_gui(ptr noundef %0, ptr noundef %i.b, ptr noundef %i.d)
  tail call void @gui_changed(ptr noundef %0, ptr noundef null, ptr noundef null)
  ret void
}

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712), (824, 832)) %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_module_t, align 16   ; 11 uses
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  %i.b = alloca [3 x ptr], align 8                ; 6 uses
  %i.c = alloca [2 x ptr], align 8                ; 5 uses
  %2 = alloca %struct.dt_iop_module_t, align 16   ; 24 uses
  %i.d = alloca [2 x ptr], align 8                ; 5 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %i.g = alloca [4 x ptr], align 8                ; 7 uses
  %i.h = alloca [2 x ptr], align 8                ; 5 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
  %i.j = alloca [2 x ptr], align 8                ; 5 uses
  %3 = alloca %struct.dt_iop_module_t, align 16   ; 11 uses
  %4 = alloca %struct.dt_iop_module_t, align 16   ; 11 uses
  %i.k = alloca [2 x ptr], align 8                ; 5 uses
  %i.l = alloca [2 x ptr], align 8                ; 5 uses
  %i.m = alloca [1 x ptr], align 8                ; 4 uses
  %i.n = alloca [1 x ptr], align 8                ; 4 uses
  %i.o = alloca [3 x ptr], align 8                ; 6 uses
  %i.p = alloca [2 x ptr], align 8                ; 5 uses
  %i.q = alloca [2 x ptr], align 8                ; 5 uses
  %i.r = alloca [2 x ptr], align 8                ; 5 uses
  %i.s = alloca [1 x ptr], align 8                ; 4 uses
  %5 = alloca %struct.dt_iop_module_t, align 16   ; 16 uses
  %i.t = alloca [1 x ptr], align 8                ; 4 uses
  %i.u = alloca [2 x ptr], align 8                ; 5 uses
  %i.v = alloca [2 x ptr], align 8                ; 5 uses
  %6 = alloca %struct.dt_iop_module_t, align 16   ; 15 uses
  %7 = alloca %struct.dt_iop_module_t, align 16   ; 16 uses
  %i.w = alloca [2 x ptr], align 8                ; 3 uses
  %i.x = alloca [3 x ptr], align 16               ; 3 uses
  %i.y = tail call ptr @dt_alloc_aligned(i64 noundef 392) #22 ; 36 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(392) %i.y, i8 0, i64 392, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 6 uses
  store ptr %i.y, ptr %i.z, align 16, !tbaa !117
  %i.aa = tail call ptr @dt_ui_notebook_new(ptr noundef nonnull @gui_init.notebook_def) #22 ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !178
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !179
  %i.ac = tail call ptr @dt_action_define_iop(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef %i.aa, ptr noundef nonnull @gui_init.notebook_def) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ad = tail call ptr @gtk_box_new(i32 noundef 1, i32 noundef 0) #22
  %i.ae = tail call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull @.str.79, i64 noundef 8) #22
end_hunk_0
begin_hunk_1_@color_picker_apply:bb.a
  %i.fp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fo, float 0.000000e+00)
  %i.fq = fadd reassoc nsz arcp contract afn float %i.fp, %i.fi
  br label %_apply_auto_pivot_xy.exit

bb.o:                                             ; preds = %bb.l
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !102 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !103
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !104 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !105
  %i.fz = fsub reassoc nsz arcp contract afn float %i.fa, %i.fc
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fu, %i.fz
  %i.gb = fdiv reassoc nsz arcp contract afn float %i.ga, %i.fs ; 2 uses
  %i.gc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gb, float %i.fw)
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, 1.000000e+00
  %i.ge = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.fw
  %i.gf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gd, float %i.ge)
  %i.gg = fmul reassoc nsz arcp contract afn float %i.gb, %i.fs
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, %i.gf
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, %i.fy
  br label %_apply_auto_pivot_xy.exit

bb.p:                                             ; preds = %bb.k
  %i.gj = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !106 ; 2 uses
  %i.gl = fcmp reassoc nsz arcp contract afn ugt float %i.fa, %i.gk
  br i1 %i.gl, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !103
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.gp = load float, ptr %i.go, align 4, !tbaa !107
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gn, %i.fa
  %i.gr = fadd reassoc nsz arcp contract afn float %i.gq, %i.gp
  br label %_apply_auto_pivot_xy.exit

bb.r:                                             ; preds = %bb.p
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !108
  %.not.i.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gu = fcmp reassoc nsz arcp contract afn ult float %i.fa, 1.000000e+00
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !109 ; 2 uses
  br i1 %i.gu, label %bb.t, label %_apply_auto_pivot_xy.exit

bb.t:                                             ; preds = %bb.s
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !110
  %i.gz = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.fa
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !111
  %i.hc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.gz, float %i.hb)
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, %i.gy
  %i.he = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hd, float 0.000000e+00)
  %i.hf = fsub reassoc nsz arcp contract afn float %i.gw, %i.he
  br label %_apply_auto_pivot_xy.exit

bb.u:                                             ; preds = %bb.r
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !112 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !103
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !113 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !114
  %i.ho = fsub reassoc nsz arcp contract afn float %i.fa, %i.gk
  %i.hp = fmul reassoc nsz arcp contract afn float %i.hj, %i.ho
  %i.hq = fdiv reassoc nsz arcp contract afn float %i.hp, %i.hh ; 2 uses
  %i.hr = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hq, float %i.hl)
  %i.hs = fadd reassoc nsz arcp contract afn float %i.hr, 1.000000e+00
  %i.ht = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.hl
  %i.hu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.hs, float %i.ht)
  %i.hv = fmul reassoc nsz arcp contract afn float %i.hq, %i.hh
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hv, %i.hu
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hw, %i.hn
  br label %_apply_auto_pivot_xy.exit

_apply_auto_pivot_xy.exit:                        ; preds = %bb.m, %bb.n, %bb.o, %bb.q, %bb.s, %bb.t, %bb.u
  %.0.i.i = phi nsz float [ %i.gi, %bb.o ], [ %i.gr, %bb.q ], [ %i.hx, %bb.u ], [ %i.fi, %bb.m ], [ %i.fq, %bb.n ], [ %i.hf, %bb.t ], [ %i.gw, %bb.s ] ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !98 ; 2 uses
  %i.ia = fcmp reassoc nsz arcp contract afn ult float %.0.i.i, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ic = load float, ptr %i.ib, align 4          ; 2 uses
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %.0.i.i, %i.ic
  %..0.i.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %.0.i.i, float %i.ic
  %i.id = select reassoc nsz arcp contract afn i1 %i.ia, float %i.hz, float %..0.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.en, i64 60
  %i.if = load float, ptr %i.ie, align 4, !tbaa !15
  %i.ig = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.id, float %i.if)
  %i.ih = getelementptr inbounds nuw i8, ptr %i.en, i64 36 ; 2 uses
  store float %i.ig, ptr %i.ih, align 4, !tbaa !138
  %i.ii = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 2 uses
  store float %i.fa, ptr %i.ii, align 4, !tbaa !133
  %i.ij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 104
  %i.il = atomicrmw add ptr %i.ik, i32 1 seq_cst, align 4 ; 0 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.eo, i64 272
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !131
  %i.io = load float, ptr %i.ii, align 4, !tbaa !133
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.in, float noundef %i.io) #22
  %i.ip = getelementptr inbounds nuw i8, ptr %i.eo, i64 280
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !202
  %i.ir = load float, ptr %i.ih, align 4, !tbaa !138
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.iq, float noundef %i.ir) #22
  %i.is = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 104
  %i.iu = atomicrmw sub ptr %i.it, i32 1 seq_cst, align 4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.v

bb.v:                                             ; preds = %bb.e, %bb.i, %_apply_auto_pivot_xy.exit, %bb.j, %bb.g, %bb.c
  %.val = load ptr, ptr %i.f, align 16, !tbaa !117
  %i.iv = getelementptr i8, ptr %.val, i64 272
  %.val.val = load ptr, ptr %i.iv, align 8, !tbaa !131 ; 4 uses
  %i.iw = load float, ptr %i.h, align 4, !tbaa !132 ; 4 uses
  %i.ix = load float, ptr %i.j, align 4, !tbaa !130 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !133
  %i.ja = fsub reassoc nsz arcp contract afn float %i.k, %i.i
  %i.jb = fmul reassoc nsz arcp contract afn float %i.iz, %i.ja
  %i.jc = fadd reassoc nsz arcp contract afn float %i.jb, %i.i ; 3 uses
  %i.jd = fcmp reassoc nsz arcp contract afn ult float %i.jc, %i.iw
  %i.je = fcmp reassoc nsz arcp contract afn ole float %i.jc, %i.ix
  %i.jf = select reassoc nsz arcp contract afn i1 %i.je, float %i.jc, float %i.ix
  %i.jg = select reassoc nsz arcp contract afn i1 %i.jd, float %i.iw, float %i.jf
  %i.jh = fsub reassoc nsz arcp contract afn float %i.ix, %i.iw
  %i.ji = fsub reassoc nsz arcp contract afn float %i.jg, %i.iw
  %i.jj = fdiv reassoc nsz arcp contract afn float %i.ji, %i.jh
  store float %i.jj, ptr %i.iy, align 4, !tbaa !133
  %i.jk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 104
  %i.jm = atomicrmw add ptr %i.jl, i32 1 seq_cst, align 4 ; 0 uses
  %i.jn = load float, ptr %i.j, align 4, !tbaa !130
  %i.jo = load float, ptr %i.h, align 4, !tbaa !132
  %i.jp = fsub reassoc nsz arcp contract afn float %i.jn, %i.jo ; 2 uses
  tail call void @dt_bauhaus_slider_set_factor(ptr noundef %.val.val, float noundef %i.jp) #22
  %i.jq = load float, ptr %i.h, align 4, !tbaa !132
  tail call void @dt_bauhaus_slider_set_offset(ptr noundef %.val.val, float noundef %i.jq) #22
  %i.jr = load float, ptr %i.h, align 4, !tbaa !132
  %i.js = fneg reassoc nsz arcp contract afn float %i.jr
  %i.jt = fdiv reassoc nsz arcp contract afn float %i.js, %i.jp
  tail call void @dt_bauhaus_slider_set_default(ptr noundef %.val.val, float noundef %i.jt) #22
  %i.ju = load float, ptr %i.iy, align 4, !tbaa !133
  tail call void @dt_bauhaus_slider_set(ptr noundef %.val.val, float noundef %i.ju) #22
  %i.jv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 104
  %i.jx = atomicrmw sub ptr %i.jw, i32 1 seq_cst, align 4 ; 0 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !137
  %.not32 = icmp eq i32 %i.jz, 0
  br i1 %.not32, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 104
  %i.kc = atomicrmw add ptr %i.kb, i32 1 seq_cst, align 4 ; 0 uses
  %i.kd = load ptr, ptr %i.d, align 8, !tbaa !118 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !133 ; 3 uses
  %i.kg = fcmp reassoc nsz arcp contract afn ult float %i.kf, f0x358637BD
  %.inv.i44 = fcmp reassoc nsz arcp contract afn ole float %i.kf, f0x3F7FFFEF
  %spec.select.i45 = select reassoc nsz arcp contract afn i1 %.inv.i44, float %i.kf, float f0x3F7FFFEF
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 64
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !137
  %.not.i = icmp eq i32 %i.ki, 0
  br i1 %.not.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 36
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !138 ; 2 uses
  %i.kl = fcmp reassoc nsz arcp contract afn ogt float %i.kk, 0.000000e+00
  br i1 %i.kl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.km = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.kk)
  %i.kn = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %spec.select.i45)
  %i.ko = select i1 %i.kg, float f0xC19F73DA, float %i.kn
  %i.kp = fdiv reassoc nsz arcp contract afn float %i.km, %i.ko
  br label %_adjust_pivot.exit

bb.z:                                             ; preds = %bb.x
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kd, i64 60
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !15
  br label %_adjust_pivot.exit

bb.aa:                                            ; preds = %bb.w
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kd, i64 60
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !15
  br label %_adjust_pivot.exit

_adjust_pivot.exit:                               ; preds = %bb.y, %bb.z, %bb.aa
  %.sroa.5.0 = phi float [ %i.kt, %bb.aa ], [ %i.kp, %bb.y ], [ %i.kr, %bb.z ]
  %i.ku = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !139
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kv, float noundef %.sroa.5.0) #22
  %i.kw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !119
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 104
  %i.ky = atomicrmw sub ptr %i.kx, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_adjust_pivot.exit, %bb.v
  %i.kz = load ptr, ptr %i.f, align 16, !tbaa !117 ; 3 uses
  %.not.i49 = icmp eq ptr %i.kz, null
  br i1 %.not.i49, label %_update_curve_warnings.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.la = load ptr, ptr %i.d, align 8, !tbaa !118
  %i.lb = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.166) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call fastcc void @_calculate_tone_mapping_params(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef %i.la)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 296
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !145
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !99
  %i.lg = icmp ne i32 %i.lf, 0
  %i.lh = icmp ne i32 %i.lb, 0                    ; 2 uses
  %i.li = select i1 %i.lg, i1 %i.lh, i1 false
  %i.lj = select i1 %i.li, ptr @dtgtk_cairo_paint_warning, ptr null
  tail call void @dt_bauhaus_widget_set_quad_paint(ptr noundef %i.ld, ptr noundef %i.lj, i32 noundef 16, ptr noundef null) #22
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kz, i64 304
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !146
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !108
  %i.lo = icmp ne i32 %i.ln, 0
  %i.lp = select i1 %i.lo, i1 %i.lh, i1 false
  %i.lq = select i1 %i.lp, ptr @dtgtk_cairo_paint_warning, ptr null
  tail call void @dt_bauhaus_widget_set_quad_paint(ptr noundef %i.ll, ptr noundef %i.lq, i32 noundef 16, ptr noundef null) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_update_curve_warnings.exit

_update_curve_warnings.exit:                      ; preds = %bb.ab, %bb.ac
  %i.lr = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !147
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ls) #22
  %i.lt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !157
  tail call void @dt_dev_add_history_item(ptr noundef %i.lt, ptr noundef nonnull %0, i32 noundef 1) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %_update_curve_warnings.exit
  ret void
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %4 = alloca %struct.tone_mapping_params_t, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !53  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call fastcc void @_calculate_tone_mapping_params(ptr dead_on_unwind noalias writable align 4 %4, ptr noundef %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(124) %i.b, ptr noundef nonnull align 4 dereferenceable(124) %4, i64 124, i1 false), !tbaa.struct !205
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16, !noalias !206
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.f = load <8 x float>, ptr %i.e, align 4, !tbaa !12, !noalias !206 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i32, ptr %i.g, align 4, !tbaa !141, !noalias !206
  %.not.i = icmp eq i32 %i.h, 0
  %i.i = shufflevector <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <8 x float> %i.f, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  br i1 %.not.i, label %bb.b, label %_get_primaries_params.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load <2 x float>, ptr %i.j, align 4, !tbaa !12, !noalias !206
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.m = load i32, ptr %i.l, align 4, !tbaa !142, !noalias !206
  %.not29.i = icmp eq i32 %i.m, 0
  %i.n = shufflevector <8 x float> %i.f, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  %i.o = shufflevector <8 x float> %i.f, <8 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 4>
  %i.p = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.q = shufflevector <4 x float> %i.o, <4 x float> %i.p, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.r = shufflevector <8 x float> %i.f, <8 x float> poison, <2 x i32> <i32 3, i32 5>
  br i1 %.not29.i, label %bb.c, label %_get_primaries_params.exit

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.t = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.s, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !12, !noalias !206
  %i.u = shufflevector <5 x float> %i.t, <5 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.w = load float, ptr %i.v, align 4, !tbaa !207, !noalias !206
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.y = load float, ptr %i.x, align 4, !tbaa !208, !noalias !206
  %i.z = insertelement <2 x float> poison, float %i.w, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.y, i64 1
  br label %_get_primaries_params.exit

_get_primaries_params.exit:                       ; preds = %bb.b, %bb.a, %bb.c
  %i.ab = phi <8 x float> [ %i.f, %bb.c ], [ %i.i, %bb.a ], [ %i.n, %bb.b ]
  %i.ac = phi <4 x float> [ %i.u, %bb.c ], [ zeroinitializer, %bb.a ], [ %i.q, %bb.b ]
  %i.ad = phi <2 x float> [ %i.aa, %bb.c ], [ zeroinitializer, %bb.a ], [ %i.r, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 %i.d, ptr %i.ae, align 4, !tbaa !20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.af = shufflevector <8 x float> %i.ab, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5, i32 6, i32 7>
  store <8 x float> %i.af, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ag = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  store <4 x float> %i.ag, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store <2 x float> %i.ad, ptr %.sroa.24.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_calculate_tone_mapping_params(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 124)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !12 ; 2 uses
  store <2 x float> %i.b, ptr %i.a, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !154 ; 4 uses
  %i.g = fcmp reassoc nsz arcp contract afn olt float %i.f, 1.000000e+00
  %i.h = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.f, float f0x358637BD)
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.h)
  %.pn = select i1 %i.g, float %i.i, float %i.f
  %i.j = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.pn
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.j, ptr %i.k, align 4, !tbaa !115
  %i.l = load <2 x float>, ptr %i.c, align 4, !tbaa !12 ; 3 uses
  store <2 x float> %i.l, ptr %i.d, align 4, !tbaa !12
  %i.m = shufflevector <2 x float> %i.b, <2 x float> %i.l, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.n = insertelement <4 x float> %i.m, float %i.f, i64 1
  %.fr = freeze <4 x float> %i.n
  %i.o = fcmp reassoc nsz arcp contract afn une <4 x float> %.fr, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.p = bitcast <4 x i1> %i.o to i4
  %i.q = icmp ne i4 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = extractelement <2 x float> %i.l, i64 1
  %i.t = fcmp reassoc nsz arcp contract afn une float %i.s, 0.000000e+00
  %i.u = insertelement <2 x i1> poison, i1 %i.q, i64 0
  %i.v = insertelement <2 x i1> %i.u, i1 %i.t, i64 1
  %i.w = zext <2 x i1> %i.v to <2 x i32>
  store <2 x i32> %i.w, ptr %i.r, align 4, !tbaa !20
  %i.x = getelementptr i8, ptr %1, i64 20
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !12 ; 3 uses
  store <2 x float> %i.y, ptr %0, align 4, !tbaa !12
  %shift = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %shift, %i.y
  %i.z = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.z, ptr %i.aa, align 4, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !133 ; 3 uses
  %i.ad = fcmp reassoc nsz arcp contract afn ult float %i.ac, f0x358637BD
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.ac, f0x3F7FFFEF
  %spec.select.i = select reassoc nsz arcp contract afn i1 %.inv.i, float %i.ac, float f0x3F7FFFEF
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ad, float f0x358637BD, float %spec.select.i ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ae, ptr %i.af, align 4, !tbaa !158
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !137
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !138 ; 3 uses
  %i.ak = fcmp reassoc nsz arcp contract afn ogt float %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.aj)
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ae)
  %i.an = fdiv reassoc nsz arcp contract afn float %i.al, %i.am
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = phi reassoc nsz arcp contract afn float [ %i.an, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.aq, ptr %i.ar, align 4, !tbaa !116
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.at = load float, ptr %i.as, align 4, !tbaa !15 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.at, ptr %i.au, align 4, !tbaa !116
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !138
  br label %bb.g
end_hunk_1
