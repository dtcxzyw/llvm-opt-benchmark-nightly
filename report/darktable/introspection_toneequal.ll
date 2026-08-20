inline.NumInlined: 273
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 53
begin_hunk_0_@set_new_params_interactive:bb.a
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, %broadcast.splat46
  %i.bv = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, splat (float f0x40DB6DB7) ; 2 uses
  %i.bw = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bv, %i.bv
  %i.bx = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bw, splat (float -5.000000e-01)
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bx, %i.be
  %i.bz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.by)
  %i.ca = fmul reassoc nsz arcp contract afn <2 x float> %i.bz, %broadcast.splat48
  %i.cb = fadd reassoc nsz arcp contract afn <2 x float> %i.ca, %i.bu
  %i.cc = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, splat (float f0x40B6DB6E) ; 2 uses
  %i.cd = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.cc, %i.cc
  %i.ce = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.cd, splat (float -5.000000e-01)
  %i.cf = fmul reassoc nsz arcp contract afn <2 x float> %i.ce, %i.bf
  %i.cg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.cf)
  %i.ch = fmul reassoc nsz arcp contract afn <2 x float> %i.cg, %broadcast.splat50
  %i.ci = fadd reassoc nsz arcp contract afn <2 x float> %i.cb, %i.ch
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, splat (float f0x40924925) ; 2 uses
  %i.ck = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.cj, %i.cj
  %i.cl = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ck, splat (float -5.000000e-01)
  %i.cm = fmul reassoc nsz arcp contract afn <2 x float> %i.cl, %i.bg
  %i.cn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.cm)
  %i.co = fmul reassoc nsz arcp contract afn <2 x float> %i.cn, %broadcast.splat52
  %i.cp = fadd reassoc nsz arcp contract afn <2 x float> %i.ci, %i.co
  %i.cq = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, splat (float f0x405B6DB7) ; 2 uses
  %i.cr = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.cq, %i.cq
  %i.cs = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.cr, splat (float -5.000000e-01)
  %i.ct = fmul reassoc nsz arcp contract afn <2 x float> %i.cs, %i.bh
  %i.cu = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.ct)
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, %broadcast.splat54
  %i.cw = fadd reassoc nsz arcp contract afn <2 x float> %i.cp, %i.cv
  %i.cx = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, splat (float f0x40124925) ; 2 uses
  %i.cy = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.cx, %i.cx
  %i.cz = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.cy, splat (float -5.000000e-01)
  %i.da = fmul reassoc nsz arcp contract afn <2 x float> %i.cz, %i.bi
  %i.db = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.da)
  %i.dc = fmul reassoc nsz arcp contract afn <2 x float> %i.db, %broadcast.splat56
  %i.dd = fadd reassoc nsz arcp contract afn <2 x float> %i.cw, %i.dc
  %i.de = fadd reassoc nsz arcp contract afn <2 x float> %i.bo, splat (float f0x3F924925) ; 2 uses
  %i.df = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.de, %i.de
  %i.dg = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.df, splat (float -5.000000e-01)
  %i.dh = fmul reassoc nsz arcp contract afn <2 x float> %i.dg, %i.bj
  %i.di = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.dh)
  %i.dj = fmul reassoc nsz arcp contract afn <2 x float> %i.di, %broadcast.splat58
  %i.dk = fadd reassoc nsz arcp contract afn <2 x float> %i.dd, %i.dj
  %i.dl = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bo, %i.bo
  %i.dm = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.dl, splat (float -5.000000e-01)
  %i.dn = fmul reassoc nsz arcp contract afn <2 x float> %i.dm, %i.bk
  %i.do = tail call reassoc nsz arcp contract afn <2 x float> @llvm.exp.v2f32(<2 x float> %i.dn)
  %i.dp = fmul reassoc nsz arcp contract afn <2 x float> %broadcast.splat60, %i.do
  %i.dq = fadd reassoc nsz arcp contract afn <2 x float> %i.dk, %i.dp
  %i.dr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.dq, <2 x float> splat (float 4.000000e+00))
  %i.ds = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.dr, <2 x float> splat (float 2.500000e-01))
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index
  tail call void @llvm.masked.store.v2f32.p0(<2 x float> %i.ds, ptr align 4 %i.dt, <2 x i1> %i.bl), !tbaa !11
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw <2 x i8> %vec.ind, splat (i8 2)
  %i.du = icmp eq i64 %index.next, 10
  br i1 %i.du, label %.thread37, label %vector.body, !llvm.loop !369

.thread37:                                        ; preds = %vector.body
  store i32 1, ptr %i.b, align 4, !tbaa !177
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dv = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.137, i32 noundef 5) #28
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.dv) #28
  %.pr36 = load i32, ptr %i.b, align 4, !tbaa !177 ; 2 uses
  %.not33 = icmp eq i32 %.pr36, 0
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread37, %bb.d
  %i.dw = phi i32 [ 1, %.thread37 ], [ %.pr36, %bb.d ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull readonly align 64 dereferenceable(32) %i.a, i64 32, i1 false), !tbaa !11, !alias.scope !370
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 3028
  store i32 0, ptr %i.dx, align 4, !tbaa !214
  %i.dy = load float, ptr %i.d, align 4, !tbaa !11
  %i.dz = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.dy)
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 2436
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !11
  %i.ec = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.eb)
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 2440
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !11
  %i.ef = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ee)
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 2444
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !11
  %i.ei = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.eh)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 2448
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !11
  %i.el = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ek)
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 2452
  %i.en = load float, ptr %i.em, align 4, !tbaa !11
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.en)
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 2456
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !11
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.eq)
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 2460
  %i.et = load float, ptr %i.es, align 4, !tbaa !11
  %i.eu = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.et)
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 2464
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !11
  %i.ex = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ew)
  store float %i.dz, ptr %4, align 4, !tbaa !182
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.ec, ptr %i.ey, align 4, !tbaa !183
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.ef, ptr %i.ez, align 4, !tbaa !184
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.ei, ptr %i.fa, align 4, !tbaa !185
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.el, ptr %i.fb, align 4, !tbaa !186
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.eo, ptr %i.fc, align 4, !tbaa !187
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.er, ptr %i.fd, align 4, !tbaa !188
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float %i.eu, ptr %i.fe, align 4, !tbaa !189
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.ex, ptr %i.ff, align 4, !tbaa !50
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.fg = load float, ptr %4, align 4, !tbaa !182
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !183
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !184
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !185
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !186
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !187
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !188
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !189
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !50
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gf = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fg)
  store float %i.gf, ptr %i.a, align 64, !tbaa !11
  %i.gg = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fi)
  store float %i.gg, ptr %i.fj, align 4, !tbaa !11
  %i.gh = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fl)
  store float %i.gh, ptr %i.fm, align 8, !tbaa !11
  %i.gi = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fo)
  store float %i.gi, ptr %i.fp, align 4, !tbaa !11
  %i.gj = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fr)
  store float %i.gj, ptr %i.fs, align 16, !tbaa !11
  %i.gk = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fu)
  store float %i.gk, ptr %i.fv, align 4, !tbaa !11
  %i.gl = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fx)
  store float %i.gl, ptr %i.fy, align 8, !tbaa !11
  %i.gm = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ga)
  store float %i.gm, ptr %i.gb, align 4, !tbaa !11
  %i.gn = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.gd)
  store float %i.gn, ptr %i.ge, align 32, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.d, ptr noundef nonnull readonly align 64 dereferenceable(36) %i.a, i64 36, i1 false), !tbaa !11, !alias.scope !374
  store i32 1, ptr %i.b, align 4, !tbaa !177
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.go = phi i32 [ 0, %bb.f ], [ %i.dw, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %i.go
}

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @cairo_draw_hatches(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !378 ; 2 uses
  %i.b = load double, ptr %2, align 8, !tbaa !378 ; 3 uses
  %i.c = fsub reassoc nsz arcp contract afn double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !378 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !378 ; 2 uses
  %i.h = fsub reassoc nsz arcp contract afn double %i.e, %i.g
  %i.i = fadd reassoc nsz arcp contract afn double %i.b, %i.a
  %i.j = fadd reassoc nsz arcp contract afn double %i.g, %i.e
  tail call void @cairo_set_line_width(ptr noundef %0, double noundef %4) #28
  tail call void @cairo_set_source_rgb(ptr noundef %0, double noundef %5, double noundef %5, double noundef %5) #28
  %i.k = sdiv i32 %3, -2
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  %i.m = sdiv i32 %3, 2                           ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  %.not30 = icmp sgt i32 %i.l, %i.n
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = sitofp reassoc nsz arcp contract afn i32 %3 to double
  %i.p = fmul reassoc nsz arcp contract afn double %i.b, 2.000000e+00
  %6 = add nsw i32 %i.m, 1
  %i.q = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.o
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i32 [ %i.l, %.lr.ph ], [ %i.w, %bb.b ] ; 3 uses
  %i.r = sitofp reassoc nsz arcp contract afn i32 %.031 to double
  %i.s = fmul reassoc nsz arcp contract afn double %i.p, %i.r
  %i.t = fmul reassoc nsz arcp contract afn double %i.s, %i.q ; 2 uses
  %i.u = fadd reassoc nsz arcp contract afn double %i.c, %i.t
  tail call void @cairo_move_to(ptr noundef %0, double noundef %i.u, double noundef %i.h) #28
  %i.v = fadd reassoc nsz arcp contract afn double %i.i, %i.t
  tail call void @cairo_line_to(ptr noundef %0, double noundef %i.v, double noundef %i.j) #28
  tail call void @cairo_stroke(ptr noundef %0) #28
  %i.w = add i32 %.031, 1
  %exitcond = icmp eq i32 %.031, %6
  br i1 %exitcond, label %._crit_edge, label %bb.b
}

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #6

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @gui_post_expose(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %7 = alloca %struct._PangoRectangle, align 4    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !74  ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 2168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !350
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %in_mask_editing.exit.thread, label %in_mask_editing.exit

in_mask_editing.exit:                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2160
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !351
  %.not182 = icmp eq ptr %i.i, null
  br i1 %.not182, label %in_mask_editing.exit.thread, label %bb.y

in_mask_editing.exit.thread:                      ; preds = %bb.a, %in_mask_editing.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 6 uses
  %i.k = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.j) #28 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 3008 ; 2 uses
  %i.m = load i32, ptr %i.l, align 64, !tbaa !336
  %.not164 = icmp eq i32 %i.m, 0
  br i1 %.not164, label %.critedge, label %bb.b

bb.b:                                             ; preds = %in_mask_editing.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 3016
  %i.o = load i32, ptr %i.n, align 8, !tbaa !176
  %.not165 = icmp eq i32 %i.o, 0
  br i1 %.not165, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 2760
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !339
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 608
  %i.s = load i32, ptr %i.r, align 16, !tbaa !340
  %.not166 = icmp eq i32 %i.s, 0
  br i1 %.not166, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 3012
  %i.u = load i32, ptr %i.t, align 4, !tbaa !353
  %.not167 = icmp eq i32 %i.u, 0
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #28 ; 0 uses
  br i1 %.not167, label %bb.y, label %bb.e

.critedge:                                        ; preds = %in_mask_editing.exit.thread, %bb.b, %bb.c
  %i.w = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #28 ; 0 uses
  br label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 3032
  %i.y = load i32, ptr %i.x, align 8, !tbaa !379
  %.not168 = icmp eq i32 %i.y, 0
  br i1 %.not168, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !380
  tail call fastcc void @_init_drawing(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef nonnull %i.e)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 3020 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !126
  %.not169 = icmp eq i32 %i.ac, 0
  br i1 %.not169, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !357
  %.not170 = icmp eq i32 %i.ae, 0
  br i1 %.not170, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val = load ptr, ptr %i.b, align 8, !tbaa !88
  %.val179 = load ptr, ptr %i.d, align 16, !tbaa !74
  %i.af = getelementptr i8, ptr %.val, i64 2112
  %.val.val = load ptr, ptr %i.af, align 16, !tbaa !341
  %i.ag = tail call fastcc float @_luminance_from_module_buffer(ptr %.val.val, ptr %.val179)
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 2468
  store float %i.ah, ptr %i.ai, align 4, !tbaa !342
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.aj = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.j) #28 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 2492
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !337
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 2496
  %i.ao = load i32, ptr %i.an, align 64, !tbaa !338
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ao to float ; 3 uses
  %i.aq = load i32, ptr %i.ab, align 4, !tbaa !126
  %.not171 = icmp eq i32 %i.aq, 0
  br i1 %.not171, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.as = load i32, ptr %i.ar, align 16, !tbaa !357
  %.not172 = icmp eq i32 %i.as, 0
  br i1 %.not172, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k, %bb.j
  %i.at = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #28 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 2468
  %i.av = load float, ptr %i.au, align 4, !tbaa !342 ; 5 uses
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 2556
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !175
  %i.az = tail call reassoc nsz arcp contract afn fastcc float @pixel_correction(float noundef %i.av, ptr noundef nonnull %i.e, float noundef %i.ay)
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.az) ; 2 uses
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.av ; 2 uses
  %i.bc = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.bb)
  %i.bd = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.j) #28 ; 0 uses
  %i.be = fcmp ord float %i.av, 0.000000e+00
  br i1 %i.be, label %bb.m, label %bb.y

bb.m:                                             ; preds = %.thread, %bb.l
  %.0159199 = phi float [ 0.000000e+00, %.thread ], [ %i.bc, %bb.l ] ; 2 uses
  %.0160198 = phi float [ 0.000000e+00, %.thread ], [ %i.bb, %bb.l ] ; 2 uses
  %.0161197 = phi float [ 0.000000e+00, %.thread ], [ %i.ba, %bb.l ] ; 2 uses
  %.0162196 = phi float [ 0.000000e+00, %.thread ], [ %i.aw, %bb.l ]
  %.0163195 = phi float [ 0.000000e+00, %.thread ], [ %i.av, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 2804 ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !381
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.bg to double
  %i.bi = fpext reassoc nsz arcp contract afn float %6 to double ; 9 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !315
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1432
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !382
  %i.bm = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bl, i64 1
  %i.bo = fmul reassoc nsz arcp contract afn <2 x double> %i.bn, splat (double 4.000000e+00)
  %i.bp = fadd reassoc nsz arcp contract afn <2 x double> %i.bo, <double 1.600000e+01, double -0.000000e+00>
  %i.bq = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fdiv reassoc nsz arcp contract afn <2 x double> %i.bp, %i.br ; 2 uses
  tail call fastcc void @match_color_to_background(ptr noundef %1, float noundef %.0160198)
  %i.bt = extractelement <2 x double> %i.bs, i64 1 ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn double %i.bt, 2.000000e+00
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.bu) #28
  %i.bv = fpext reassoc nsz arcp contract afn float %i.am to double ; 14 uses
  %i.bw = extractelement <2 x double> %i.bs, i64 0 ; 4 uses
  %i.bx = fsub reassoc nsz arcp contract afn double %i.bv, %i.bw ; 2 uses
  %i.by = fpext reassoc nsz arcp contract afn float %i.ap to double ; 13 uses
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.bx, double noundef %i.by) #28
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %.0161197, 0.000000e+00
  %i.ca = fpext reassoc nsz arcp contract afn float %.0161197 to double
  %i.cb = fmul reassoc nsz arcp contract afn double %i.ca, f0x3FE921FB54442D18
  %i.cc = fadd reassoc nsz arcp contract afn double %i.cb, f0x400921FB54442D18 ; 2 uses
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @cairo_arc(ptr noundef %1, double noundef %i.bv, double noundef %i.by, double noundef %i.bw, double noundef f0x400921FB54442D18, double noundef %i.cc) #28
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @cairo_arc_negative(ptr noundef %1, double noundef %i.bv, double noundef %i.by, double noundef %i.bw, double noundef f0x400921FB54442D18, double noundef %i.cc) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @cairo_stroke(ptr noundef %1) #28
  %i.cd = fdiv reassoc nsz arcp contract afn double 1.500000e+00, %i.bi ; 2 uses
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !315
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1432
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !382
  %i.ch = fmul reassoc nsz arcp contract afn double %i.cg, %i.cd
  tail call void @cairo_set_line_width(ptr noundef %1, double noundef %i.ch) #28
  %i.ci = load i32, ptr %i.bf, align 4, !tbaa !381
  %i.cj = sitofp reassoc nsz arcp contract afn i32 %i.ci to double
  %i.ck = fmul reassoc nnan nsz arcp contract afn double %i.cj, 2.000000e+00
  %i.cl = fadd reassoc nsz arcp contract afn double %i.ck, 1.600000e+01
  %i.cm = fdiv reassoc nsz arcp contract afn double %i.cl, %i.bi
  %i.cn = fadd reassoc nsz arcp contract afn double %i.cm, %i.bv
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.cn, double noundef %i.by) #28
  %i.co = fdiv reassoc nsz arcp contract afn double 1.600000e+01, %i.bi ; 4 uses
  %i.cp = fadd reassoc nsz arcp contract afn double %i.co, %i.bv
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.cp, double noundef %i.by) #28
  %i.cq = fsub reassoc nsz arcp contract afn double %i.bv, %i.co
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.cq, double noundef %i.by) #28
  %i.cr = load i32, ptr %i.bf, align 4, !tbaa !381
end_hunk_0
