Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_tonecurve?download=true
inline.NumInlined: 147
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 48
begin_hunk_0_@dt_iop_tonecurve_draw:bb.a
  br i1 %.not423, label %.preheader643, label %.preheader644

.preheader644:                                    ; preds = %.split409, %.preheader644
  %indvars.iv.i.i450 = phi i64 [ %indvars.iv.next.i.i453, %.preheader644 ], [ 0, %.split409 ] ; 3 uses
  %i.sk = trunc nuw nsw i64 %indvars.iv.i.i450 to i32
  %i.sl = uitofp nsz nneg i32 %i.sk to double
  %.idx.i.i451 = shl nuw nsw i64 %indvars.iv.i.i450, 4
  %gep.i.i452 = getelementptr i8, ptr %i.ra, i64 %.idx.i.i451
  %i.sm = load i32, ptr %gep.i.i452, align 4, !tbaa !14
  %i.sn = uitofp reassoc nsz arcp contract afn i32 %i.sm to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.sl, double noundef %i.sn) #22
  %indvars.iv.next.i.i453 = add nuw nsw i64 %indvars.iv.i.i450, 1 ; 2 uses
  %exitcond.not.i.i454 = icmp eq i64 %indvars.iv.next.i.i453, 256
  br i1 %exitcond.not.i.i454, label %dt_draw_histogram_8.exit, label %.preheader644

.preheader643:                                    ; preds = %.split409, %.preheader643
  %indvars.iv.i9.i455 = phi i64 [ %indvars.iv.next.i12.i458, %.preheader643 ], [ 0, %.split409 ] ; 3 uses
  %i.so = trunc nuw nsw i64 %indvars.iv.i9.i455 to i32
  %i.sp = uitofp nsz nneg i32 %i.so to double
  %.idx.i10.i456 = shl nuw nsw i64 %indvars.iv.i9.i455, 4
  %gep.i11.i457 = getelementptr i8, ptr %i.ra, i64 %.idx.i10.i456
  %i.sq = load i32, ptr %gep.i11.i457, align 4, !tbaa !14
  %i.sr = uitofp reassoc nsz arcp contract afn i32 %i.sq to double
  %i.ss = fadd reassoc nsz arcp contract afn double %i.sr, 1.000000e+00
  %i.st = fptrunc reassoc nsz arcp contract afn double %i.ss to float
  %i.su = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.st)
  %i.sv = fpext reassoc nsz arcp contract afn float %i.su to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.sp, double noundef %i.sv) #22
  %indvars.iv.next.i12.i458 = add nuw nsw i64 %indvars.iv.i9.i455, 1 ; 2 uses
  %exitcond.not.i13.i459 = icmp eq i64 %indvars.iv.next.i12.i458, 256
  br i1 %exitcond.not.i13.i459, label %dt_draw_histogram_8.exit, label %.preheader643

bb.w:                                             ; preds = %bb.v
  %i.sw = fadd reassoc nsz arcp contract afn float %i.si, 1.000000e+00 ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  %i.sx = fmul reassoc nnan nsz arcp contract afn float %i.sw, f0x3B808081
  %i.sy = fadd reassoc nsz arcp contract afn float %i.sx, f0xBB808081 ; 2 uses
  %i.sz = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.sw)
  %i.ta = fdiv reassoc nsz arcp contract afn float 2.550000e+02, %i.sz ; 2 uses
  br i1 %.not423, label %.preheader, label %.preheader641

.preheader641:                                    ; preds = %bb.w, %.preheader641
  %indvars.iv.i.i462 = phi i64 [ %indvars.iv.next.i.i464, %.preheader641 ], [ 0, %bb.w ] ; 3 uses
  %i.tb = trunc nuw nsw i64 %indvars.iv.i.i462 to i32
  %i.tc = uitofp nsz nneg i32 %i.tb to float
  %i.td = fmul reassoc nsz arcp contract afn float %i.sy, %i.tc
  %i.te = fadd reassoc nsz arcp contract afn float %i.td, 1.000000e+00
  %i.tf = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.te)
  %i.tg = fmul reassoc nsz arcp contract afn float %i.ta, %i.tf
  %.idx.i.i463 = shl nuw nsw i64 %indvars.iv.i.i462, 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.idx.i.i463
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !14
  %i.tj = uitofp reassoc nsz arcp contract afn i32 %i.ti to float
  %i.tk = fpext reassoc nsz arcp contract afn float %i.tg to double
  %i.tl = fpext reassoc nsz arcp contract afn float %i.tj to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.tk, double noundef %i.tl) #22
  %indvars.iv.next.i.i464 = add nuw nsw i64 %indvars.iv.i.i462, 1 ; 2 uses
  %exitcond.not.i.i465 = icmp eq i64 %indvars.iv.next.i.i464, 256
  br i1 %exitcond.not.i.i465, label %dt_draw_histogram_8.exit, label %.preheader641

.preheader:                                       ; preds = %bb.w, %.preheader
  %indvars.iv.i10.i = phi i64 [ %indvars.iv.next.i12.i466, %.preheader ], [ 0, %bb.w ] ; 3 uses
  %i.tm = trunc nuw nsw i64 %indvars.iv.i10.i to i32
  %i.tn = uitofp nsz nneg i32 %i.tm to float
  %i.to = fmul reassoc nsz arcp contract afn float %i.sy, %i.tn
  %i.tp = fadd reassoc nsz arcp contract afn float %i.to, 1.000000e+00
  %i.tq = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.tp)
  %i.tr = fmul reassoc nsz arcp contract afn float %i.ta, %i.tq
  %.idx.i11.i = shl nuw nsw i64 %indvars.iv.i10.i, 4
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.idx.i11.i
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !14
  %i.tu = uitofp reassoc nsz arcp contract afn i32 %i.tt to double
  %i.tv = fadd reassoc nsz arcp contract afn double %i.tu, 1.000000e+00
  %i.tw = fptrunc reassoc nsz arcp contract afn double %i.tv to float
  %i.tx = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.tw)
  %i.ty = fpext reassoc nsz arcp contract afn float %i.tr to double
  %i.tz = fpext reassoc nsz arcp contract afn float %i.tx to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.ty, double noundef %i.tz) #22
  %indvars.iv.next.i12.i466 = add nuw nsw i64 %indvars.iv.i10.i, 1 ; 2 uses
  %exitcond.not.i13.i467 = icmp eq i64 %indvars.iv.next.i12.i466, 256
  br i1 %exitcond.not.i13.i467, label %dt_draw_histogram_8.exit, label %.preheader

dt_draw_histogram_8.exit:                         ; preds = %.preheader647, %.preheader646, %.preheader644, %.preheader643, %.preheader641, %.preheader
  call void @cairo_line_to(ptr noundef %i.lg, double noundef 2.550000e+02, double noundef 0.000000e+00) #22
  call void @cairo_close_path(ptr noundef %i.lg) #22
  call void @cairo_fill(ptr noundef %i.lg) #22
  call void @cairo_restore(ptr noundef %i.lg) #22
  br label %bb.x

bb.x:                                             ; preds = %dt_draw_histogram_8.exit, %bb.t
  call void @cairo_move_to(ptr noundef %i.lg, double noundef 0.000000e+00, double noundef %i.ls) #22
  %i.ua = getelementptr inbounds nuw i8, ptr %2, i64 492
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !240
  %i.uc = icmp eq i32 %i.ub, 1
  br i1 %i.uc, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.ud = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !94
  %i.uf = call i32 @gtk_toggle_button_get_active(ptr noundef %i.ue) #22
  %.not424 = icmp eq i32 %i.uf, 0
  br i1 %.not424, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ug = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 1432
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !139
  %i.uj = fmul reassoc nsz arcp contract afn double %i.ui, 3.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.lg, double noundef %i.uj) #22
  %i.uk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 72), align 8, !tbaa !228
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 40
  %.0408654 = load ptr, ptr %i.ul, align 8, !tbaa !241 ; 2 uses
  %.not425655 = icmp eq ptr %.0408654, null
  br i1 %.not425655, label %._crit_edge, label %.lr.ph657

.lr.ph657:                                        ; preds = %bb.z
  %i.um = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.up = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.p ; 2 uses
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p ; 4 uses
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p ; 4 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.h, i64 6272
  %i.ut = sitofp reassoc nsz arcp contract afn i32 %i.lj to float ; 2 uses
  %i.uu = sub nsw i32 0, %i.lk
  %i.uv = sitofp reassoc nsz arcp contract afn i32 %i.uu to double ; 2 uses
  br label %bb.aa

._crit_edge:                                      ; preds = %to_log.exit485, %bb.z
  %i.uw = load float, ptr %i.qx, align 4, !tbaa !13
  %i.ux = fcmp reassoc nsz arcp contract afn ult float %i.uw, 0.000000e+00
  br i1 %i.ux, label %bb.ag, label %bb.ad

bb.aa:                                            ; preds = %.lr.ph657, %to_log.exit485
  %.0408656 = phi ptr [ %.0408654, %.lr.ph657 ], [ %.0408, %to_log.exit485 ] ; 2 uses
  %i.uy = load ptr, ptr %.0408656, align 8, !tbaa !243 ; 6 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 160
  %i.va = load <2 x float>, ptr %i.uz, align 4, !tbaa !13
  %i.vb = fmul reassoc nsz arcp contract afn <2 x float> %i.va, <float f0x3C23D70A, float 3.906250e-03>
  %i.vc = fadd reassoc nsz arcp contract afn <2 x float> %i.vb, <float -0.000000e+00, float 5.000000e-01> ; 3 uses
  %i.vd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vc, splat (float 1.000000e+00)
  %i.ve = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.vc, zeroinitializer
  %i.vf = select <2 x i1> %i.ve, <2 x float> zeroinitializer, <2 x float> %i.vc
  %i.vg = select <2 x i1> %i.vd, <2 x float> splat (float 1.000000e+00), <2 x float> %i.vf
  store <2 x float> %i.vg, ptr %i.d, align 16, !tbaa !13
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uy, i64 168
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !13
  %i.vj = fmul reassoc nsz arcp contract afn float %i.vi, 3.906250e-03
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vj, 5.000000e-01 ; 3 uses
  %i.vl = fcmp reassoc nsz arcp contract afn ogt float %i.vk, 1.000000e+00
  %i.vm = fcmp reassoc nsz arcp contract afn olt float %i.vk, 0.000000e+00
  %spec.select15.i = select reassoc nsz arcp contract afn i1 %i.vm, float 0.000000e+00, float %i.vk
  %i.vn = select reassoc nsz arcp contract afn i1 %i.vl, float 1.000000e+00, float %spec.select15.i
  store float %i.vn, ptr %i.um, align 8, !tbaa !13
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uy, i64 176
  %i.vp = load <2 x float>, ptr %i.vo, align 4, !tbaa !13
  %i.vq = fmul reassoc nsz arcp contract afn <2 x float> %i.vp, <float f0x3C23D70A, float 3.906250e-03>
  %i.vr = fadd reassoc nsz arcp contract afn <2 x float> %i.vq, <float -0.000000e+00, float 5.000000e-01> ; 3 uses
  %i.vs = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vr, splat (float 1.000000e+00)
  %i.vt = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.vr, zeroinitializer
  %i.vu = select <2 x i1> %i.vt, <2 x float> zeroinitializer, <2 x float> %i.vr
  %i.vv = select <2 x i1> %i.vs, <2 x float> splat (float 1.000000e+00), <2 x float> %i.vu
  store <2 x float> %i.vv, ptr %i.e, align 16, !tbaa !13
  %i.vw = getelementptr inbounds nuw i8, ptr %i.uy, i64 184
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !13
  %i.vy = getelementptr inbounds nuw i8, ptr %i.uy, i64 192
  %i.vz = load <2 x float>, ptr %i.vy, align 4, !tbaa !13
  %i.wa = fmul reassoc nsz arcp contract afn <2 x float> %i.vz, <float f0x3C23D70A, float 3.906250e-03>
  %i.wb = fadd reassoc nsz arcp contract afn <2 x float> %i.wa, <float -0.000000e+00, float 5.000000e-01> ; 3 uses
  %i.wc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.wb, splat (float 1.000000e+00)
  %i.wd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.wb, zeroinitializer
  %i.we = select <2 x i1> %i.wd, <2 x float> zeroinitializer, <2 x float> %i.wb
  %i.wf = select <2 x i1> %i.wc, <2 x float> splat (float 1.000000e+00), <2 x float> %i.we
  store <2 x float> %i.wf, ptr %i.f, align 16, !tbaa !13
  %i.wg = getelementptr inbounds nuw i8, ptr %i.uy, i64 200
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !13
  %i.wi = insertelement <2 x float> poison, float %i.vx, i64 0
  %i.wj = insertelement <2 x float> %i.wi, float %i.wh, i64 1
  %i.wk = fmul reassoc nsz arcp contract afn <2 x float> %i.wj, splat (float 3.906250e-03)
  %i.wl = fadd reassoc nsz arcp contract afn <2 x float> %i.wk, splat (float 5.000000e-01) ; 3 uses
  %i.wm = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.wl, splat (float 1.000000e+00)
  %i.wn = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.wl, zeroinitializer
  %i.wo = select <2 x i1> %i.wn, <2 x float> zeroinitializer, <2 x float> %i.wl
  %i.wp = select <2 x i1> %i.wm, <2 x float> splat (float 1.000000e+00), <2 x float> %i.wo ; 2 uses
  %i.wq = extractelement <2 x float> %i.wp, i64 0
  store float %i.wq, ptr %i.un, align 8, !tbaa !13
  %i.wr = extractelement <2 x float> %i.wp, i64 1
  store float %i.wr, ptr %i.uo, align 8, !tbaa !13
  %i.ws = load float, ptr %i.up, align 4, !tbaa !13 ; 3 uses
  %i.wt = load float, ptr %i.nb, align 4, !tbaa !83 ; 5 uses
  %i.wu = fcmp reassoc nsz arcp contract afn ogt float %i.wt, 0.000000e+00
  %or.cond.i474 = and i1 %i.lt, %i.wu
  br i1 %or.cond.i474, label %bb.ab, label %to_log.exit481

bb.ab:                                            ; preds = %bb.aa
  %i.wv = load i32, ptr %i.us, align 8, !tbaa !84
  %or.cond20.not.i476 = icmp eq i32 %i.wv, -1
  br i1 %or.cond20.not.i476, label %.thread587, label %bb.ac

.thread587:                                       ; preds = %bb.ab
  %i.ww = load float, ptr %i.uq, align 16, !tbaa !13
  %i.wx = load float, ptr %i.ur, align 16, !tbaa !13
  br label %to_log.exit485

to_log.exit481:                                   ; preds = %bb.aa
  %i.wy = load float, ptr %i.uq, align 4, !tbaa !13
  %i.wz = load float, ptr %i.ur, align 4, !tbaa !13
  br label %to_log.exit485

bb.ac:                                            ; preds = %bb.ab
  %i.xa = fmul reassoc nsz arcp contract afn float %i.wt, %i.ws
  %i.xb = fadd reassoc nsz arcp contract afn float %i.xa, 1.000000e+00
  %i.xc = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.xb)
  %i.xd = fadd reassoc nsz arcp contract afn float %i.wt, 1.000000e+00
  %i.xe = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.xd) ; 3 uses
  %i.xf = fdiv reassoc nsz arcp contract afn float %i.xc, %i.xe ; 2 uses
  store float %i.xf, ptr %i.up, align 16, !tbaa !13
  %i.xg = load float, ptr %i.uq, align 16, !tbaa !13
  %i.xh = fmul reassoc nsz arcp contract afn float %i.xg, %i.wt
  %i.xi = fadd reassoc nsz arcp contract afn float %i.xh, 1.000000e+00
  %i.xj = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.xi)
  %i.xk = fdiv reassoc nsz arcp contract afn float %i.xj, %i.xe ; 2 uses
  store float %i.xk, ptr %i.uq, align 16, !tbaa !13
  %i.xl = load float, ptr %i.ur, align 16, !tbaa !13
  %i.xm = fmul reassoc nsz arcp contract afn float %i.xl, %i.wt
  %i.xn = fadd reassoc nsz arcp contract afn float %i.xm, 1.000000e+00
  %i.xo = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.xn)
  %i.xp = fdiv reassoc nsz arcp contract afn float %i.xo, %i.xe
  br label %to_log.exit485

to_log.exit485:                                   ; preds = %.thread587, %to_log.exit481, %bb.ac
  %.0.i479585 = phi float [ %i.wy, %to_log.exit481 ], [ %i.ww, %.thread587 ], [ %i.xk, %bb.ac ]
  %.0.i475577583 = phi float [ %i.ws, %to_log.exit481 ], [ %i.ws, %.thread587 ], [ %i.xf, %bb.ac ] ; 2 uses
  %.0.i483 = phi nsz float [ %i.wz, %to_log.exit481 ], [ %i.wx, %.thread587 ], [ %i.xp, %bb.ac ] ; 2 uses
  store float %.0.i483, ptr %i.ur, align 4, !tbaa !13
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef 5.000000e-01, double noundef f0x3FE6666666666666, double noundef 5.000000e-01, double noundef 3.500000e-01) #22
  %i.xq = fmul reassoc nsz arcp contract afn float %.0.i475577583, %i.ut
  %i.xr = fpext reassoc nsz arcp contract afn float %i.xq to double
  %i.xs = fsub reassoc nsz arcp contract afn float %.0.i479585, %.0.i475577583
  %i.xt = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xs, float 0.000000e+00)
  %i.xu = fpext nnan float %i.xt to double
  %i.xv = fmul reassoc nsz arcp contract afn double %i.xu, %i.lr
  call void @cairo_rectangle(ptr noundef %i.lg, double noundef %i.xr, double noundef 0.000000e+00, double noundef %i.xv, double noundef %i.uv) #22
  call void @cairo_fill(ptr noundef %i.lg) #22
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef 5.000000e-01, double noundef f0x3FE6666666666666, double noundef 5.000000e-01, double noundef 5.000000e-01) #22
  %i.xw = fmul reassoc nsz arcp contract afn float %.0.i483, %i.ut
  %i.xx = fpext reassoc nsz arcp contract afn float %i.xw to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.xx, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.xx, double noundef %i.uv) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.xy = getelementptr inbounds nuw i8, ptr %.0408656, i64 8
  %.0408 = load ptr, ptr %i.xy, align 8, !tbaa !241 ; 2 uses
  %.not425 = icmp eq ptr %.0408, null
  br i1 %.not425, label %._crit_edge, label %bb.aa

bb.ad:                                            ; preds = %._crit_edge
  call void @cairo_save(ptr noundef %i.lg) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.xz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 336
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !250
  %i.yc = call ptr @pango_font_description_copy_static(ptr noundef %i.yb) #22 ; 6 uses
  call void @pango_font_description_set_weight(ptr noundef %i.yc, i32 noundef 700) #22
  call void @pango_font_description_set_absolute_size(ptr noundef %i.yc, double noundef 1.024000e+03) #22
  %i.yd = call ptr @pango_cairo_create_layout(ptr noundef %i.lg) #22 ; 8 uses
  call void @pango_layout_set_font_description(ptr noundef %i.yd, ptr noundef %i.yc) #22
  %i.ye = load <2 x float>, ptr %i.l, align 4, !tbaa !13
  %i.yf = fmul reassoc nsz arcp contract afn <2 x float> %i.ye, <float f0x3C23D70A, float 3.906250e-03>
  %i.yg = fadd reassoc nsz arcp contract afn <2 x float> %i.yf, <float -0.000000e+00, float 5.000000e-01> ; 3 uses
  %i.yh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.yg, splat (float 1.000000e+00)
  %i.yi = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.yg, zeroinitializer
  %i.yj = select <2 x i1> %i.yi, <2 x float> zeroinitializer, <2 x float> %i.yg
  %i.yk = select <2 x i1> %i.yh, <2 x float> splat (float 1.000000e+00), <2 x float> %i.yj
  store <2 x float> %i.yk, ptr %i.d, align 16, !tbaa !13
  %i.yl = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !13
  %i.yn = fmul reassoc nsz arcp contract afn float %i.ym, 3.906250e-03
  %i.yo = fadd reassoc nsz arcp contract afn float %i.yn, 5.000000e-01 ; 3 uses
  %i.yp = fcmp reassoc nsz arcp contract afn ogt float %i.yo, 1.000000e+00
  %i.yq = fcmp reassoc nsz arcp contract afn olt float %i.yo, 0.000000e+00
  %spec.select15.i488 = select reassoc nsz arcp contract afn i1 %i.yq, float 0.000000e+00, float %i.yo
  %i.yr = select reassoc nsz arcp contract afn i1 %i.yp, float 1.000000e+00, float %spec.select15.i488
  %i.ys = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float %i.yr, ptr %i.ys, align 8, !tbaa !13
  %i.yt = load <2 x float>, ptr %i.qw, align 4, !tbaa !13
  %i.yu = fmul reassoc nsz arcp contract afn <2 x float> %i.yt, <float f0x3C23D70A, float 3.906250e-03>
  %i.yv = fadd reassoc nsz arcp contract afn <2 x float> %i.yu, <float -0.000000e+00, float 5.000000e-01> ; 3 uses
  %i.yw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.yv, splat (float 1.000000e+00)
  %i.yx = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.yv, zeroinitializer
  %i.yy = select <2 x i1> %i.yx, <2 x float> zeroinitializer, <2 x float> %i.yv
  %i.yz = select <2 x i1> %i.yw, <2 x float> splat (float 1.000000e+00), <2 x float> %i.yy
  store <2 x float> %i.yz, ptr %i.e, align 16, !tbaa !13
  %i.za = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.zb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.zc = load <2 x float>, ptr %i.qx, align 4, !tbaa !13
  %i.zd = fmul reassoc nsz arcp contract afn <2 x float> %i.zc, <float f0x3C23D70A, float 3.906250e-03>
  %i.ze = fadd reassoc nsz arcp contract afn <2 x float> %i.zd, <float -0.000000e+00, float 5.000000e-01> ; 3 uses
  %i.zf = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ze, splat (float 1.000000e+00)
  %i.zg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ze, zeroinitializer
  %i.zh = select <2 x i1> %i.zg, <2 x float> zeroinitializer, <2 x float> %i.ze
  %i.zi = select <2 x i1> %i.zf, <2 x float> splat (float 1.000000e+00), <2 x float> %i.zh
  store <2 x float> %i.zi, ptr %i.f, align 16, !tbaa !13
  %i.zj = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.za, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !13
  %i.zk = shufflevector <4 x float> %i.zj, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.zl = fmul reassoc nsz arcp contract afn <2 x float> %i.zk, splat (float 3.906250e-03)
  %i.zm = fadd reassoc nsz arcp contract afn <2 x float> %i.zl, splat (float 5.000000e-01) ; 3 uses
  %i.zn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.zm, splat (float 1.000000e+00)
  %i.zo = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.zm, zeroinitializer
  %i.zp = select <2 x i1> %i.zo, <2 x float> zeroinitializer, <2 x float> %i.zm
  %i.zq = select <2 x i1> %i.zn, <2 x float> splat (float 1.000000e+00), <2 x float> %i.zp ; 2 uses
  %i.zr = extractelement <2 x float> %i.zq, i64 0
  store float %i.zr, ptr %i.zb, align 8, !tbaa !13
  %i.zs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.zt = extractelement <2 x float> %i.zq, i64 1
  store float %i.zt, ptr %i.zs, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.a, ptr noundef nonnull align 1 dereferenceable(27) @.str.91, i64 27, i1 false)
  call void @pango_layout_set_text(ptr noundef %i.yd, ptr noundef nonnull %i.a, i32 noundef -1) #22
  call void @pango_layout_get_pixel_extents(ptr noundef %i.yd, ptr noundef nonnull %4, ptr noundef null) #22
  %i.zu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !252
  %i.zw = sitofp reassoc nsz arcp contract afn i32 %i.zv to double
  %i.zx = fmul reassoc nnan nsz arcp contract afn double %i.lr, 1.024000e+03
  %i.zy = fdiv reassoc nsz arcp contract afn double %i.zx, %i.zw
  call void @pango_font_description_set_absolute_size(ptr noundef %i.yc, double noundef %i.zy) #22
  call void @pango_layout_set_font_description(ptr noundef %i.yd, ptr noundef %i.yc) #22
  %i.zz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.p
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !13 ; 3 uses
  %i.aab = load float, ptr %i.nb, align 4, !tbaa !83 ; 5 uses
  %i.aac = fcmp reassoc nsz arcp contract afn ogt float %i.aab, 0.000000e+00
  %or.cond.i495 = and i1 %i.lt, %i.aac
  br i1 %or.cond.i495, label %bb.ae, label %to_log.exit502

bb.ae:                                            ; preds = %bb.ad
  %i.aad = getelementptr inbounds nuw i8, ptr %i.h, i64 6272
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !84
  %or.cond20.not.i497 = icmp eq i32 %i.aae, -1
  br i1 %or.cond20.not.i497, label %.thread604, label %bb.af

.thread604:                                       ; preds = %bb.ae
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.p
  %i.aag = load float, ptr %i.aaf, align 16, !tbaa !13
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p ; 2 uses
  %i.aai = load float, ptr %i.aah, align 16, !tbaa !13
  br label %to_log.exit506

to_log.exit502:                                   ; preds = %bb.ad
  %i.aaj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !13
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p ; 2 uses
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !13
  br label %to_log.exit506

bb.af:                                            ; preds = %bb.ae
  %i.aan = fmul reassoc nsz arcp contract afn float %i.aab, %i.aaa
  %i.aao = fadd reassoc nsz arcp contract afn float %i.aan, 1.000000e+00
  %i.aap = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.aao)
  %i.aaq = fadd reassoc nsz arcp contract afn float %i.aab, 1.000000e+00
  %i.aar = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.aaq) ; 3 uses
  %i.aas = fdiv reassoc nsz arcp contract afn float %i.aap, %i.aar
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.p
  %i.aau = load float, ptr %i.aat, align 16, !tbaa !13
  %i.aav = fmul reassoc nsz arcp contract afn float %i.aau, %i.aab
  %i.aaw = fadd reassoc nsz arcp contract afn float %i.aav, 1.000000e+00
  %i.aax = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.aaw)
  %i.aay = fdiv reassoc nsz arcp contract afn float %i.aax, %i.aar
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p ; 2 uses
  %i.aba = load float, ptr %i.aaz, align 16, !tbaa !13
  %i.abb = fmul reassoc nsz arcp contract afn float %i.aba, %i.aab
  %i.abc = fadd reassoc nsz arcp contract afn float %i.abb, 1.000000e+00
  %i.abd = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.abc)
  %i.abe = fdiv reassoc nsz arcp contract afn float %i.abd, %i.aar
  br label %to_log.exit506

to_log.exit506:                                   ; preds = %.thread604, %to_log.exit502, %bb.af
  %i.abf = phi ptr [ %i.aal, %to_log.exit502 ], [ %i.aah, %.thread604 ], [ %i.aaz, %bb.af ]
  %.0.i500602 = phi float [ %i.aak, %to_log.exit502 ], [ %i.aag, %.thread604 ], [ %i.aay, %bb.af ]
  %.0.i496593600 = phi float [ %i.aaa, %to_log.exit502 ], [ %i.aaa, %.thread604 ], [ %i.aas, %bb.af ] ; 2 uses
  %.0.i504 = phi nsz float [ %i.aam, %to_log.exit502 ], [ %i.aai, %.thread604 ], [ %i.abe, %bb.af ] ; 2 uses
  store float %.0.i504, ptr %i.abf, align 4, !tbaa !13
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef f0x3FE6666666666666, double noundef 5.000000e-01, double noundef 5.000000e-01, double noundef 3.500000e-01) #22
  %i.abg = sitofp reassoc nsz arcp contract afn i32 %i.lj to float ; 3 uses
  %i.abh = fmul reassoc nsz arcp contract afn float %.0.i496593600, %i.abg
  %i.abi = fpext reassoc nsz arcp contract afn float %i.abh to double
  %i.abj = fsub reassoc nsz arcp contract afn float %.0.i500602, %.0.i496593600
  %i.abk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abj, float 0.000000e+00)
  %i.abl = fpext nnan float %i.abk to double
  %i.abm = fmul reassoc nsz arcp contract afn double %i.abl, %i.lr
  %i.abn = sub nsw i32 0, %i.lk
  %i.abo = sitofp reassoc nsz arcp contract afn i32 %i.abn to double ; 2 uses
  call void @cairo_rectangle(ptr noundef %i.lg, double noundef %i.abi, double noundef 0.000000e+00, double noundef %i.abm, double noundef %i.abo) #22
  call void @cairo_fill(ptr noundef %i.lg) #22
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef 9.000000e-01, double noundef f0x3FE6666666666666, double noundef f0x3FE6666666666666, double noundef 5.000000e-01) #22
  %i.abp = fmul reassoc nsz arcp contract afn float %.0.i504, %i.abg
  %i.abq = fpext reassoc nsz arcp contract afn float %i.abp to double ; 2 uses
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.abq, double noundef 0.000000e+00) #22
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.abq, double noundef %i.abo) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.abr = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.p
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !13
  %i.abt = fpext reassoc nsz arcp contract afn float %i.abs to double
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.qy, i64 %i.p
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !13
  %i.abw = fpext reassoc nsz arcp contract afn float %i.abv to double
  %i.abx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.92, double noundef %i.abt, double noundef %i.abw) #22 ; 0 uses
  %i.aby = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226 ; 4 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 680
  %.sroa.0552.0.copyload = load double, ptr %i.abz, align 8
  %.sroa.4553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aby, i64 688
  %.sroa.4553.0.copyload = load double, ptr %.sroa.4553.0..sroa_idx, align 8
  %.sroa.5554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aby, i64 696
  %.sroa.5554.0.copyload = load double, ptr %.sroa.5554.0..sroa_idx, align 8
  %.sroa.6555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aby, i64 704
  %.sroa.6555.0.copyload = load double, ptr %.sroa.6555.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef %.sroa.0552.0.copyload, double noundef %.sroa.4553.0.copyload, double noundef %.sroa.5554.0.copyload, double noundef %.sroa.6555.0.copyload) #22
  %i.aca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 1432
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !139
  %i.acd = fmul reassoc nnan nsz arcp contract afn double %i.ls, 4.000000e-02
  %i.ace = fmul reassoc nsz arcp contract afn double %i.acd, %i.acc
  call void @cairo_set_font_size(ptr noundef %i.lg, double noundef %i.ace) #22
  call void @pango_layout_set_text(ptr noundef %i.yd, ptr noundef nonnull %i.a, i32 noundef -1) #22
  call void @pango_layout_get_pixel_extents(ptr noundef %i.yd, ptr noundef nonnull %4, ptr noundef null) #22
  %i.acf = fmul reassoc nnan nsz arcp contract afn float %i.abg, 2.000000e-02
  %i.acg = fpext reassoc nsz arcp contract afn float %i.acf to double
  %i.ach = fmul reassoc nnan nsz arcp contract afn double %i.ls, f0xBFEE147AE147AE14
  %i.aci = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !253
  %i.ack = sitofp reassoc nsz arcp contract afn i32 %i.acj to double
  %i.acl = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !254
  %i.acn = sitofp reassoc nsz arcp contract afn i32 %i.acm to double
  %i.aco = fadd reassoc nsz arcp contract afn double %i.ack, %i.acn
  %i.acp = fsub reassoc nsz arcp contract afn double %i.ach, %i.aco
  call void @cairo_move_to(ptr noundef %i.lg, double noundef %i.acg, double noundef %i.acp) #22
  call void @pango_cairo_show_layout(ptr noundef %i.lg, ptr noundef %i.yd) #22
  call void @cairo_stroke(ptr noundef %i.lg) #22
  call void @pango_font_description_free(ptr noundef %i.yc) #22
  call void @g_object_unref(ptr noundef %i.yd) #22
  call void @cairo_restore(ptr noundef %i.lg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge, %to_log.exit506, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.p
  %i.acq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 1432
  %i.acs = load double, ptr %i.acr, align 8, !tbaa !139
  %i.act = fmul reassoc nsz arcp contract afn double %i.acs, 3.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.lg, double noundef %i.act) #22
  %i.acu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !226 ; 4 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 680
  %.sroa.0556.0.copyload = load double, ptr %i.acv, align 8
  %.sroa.4557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acu, i64 688
  %.sroa.4557.0.copyload = load double, ptr %.sroa.4557.0..sroa_idx, align 8
  %.sroa.5558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acu, i64 696
  %.sroa.5558.0.copyload = load double, ptr %.sroa.5558.0..sroa_idx, align 8
  %.sroa.6559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acu, i64 704
  %.sroa.6559.0.copyload = load double, ptr %.sroa.6559.0..sroa_idx, align 8
  call void @cairo_set_source_rgba(ptr noundef %i.lg, double noundef %.sroa.0556.0.copyload, double noundef %.sroa.4557.0.copyload, double noundef %.sroa.5558.0.copyload, double noundef %.sroa.6559.0.copyload) #22
  %i.acw = getelementptr inbounds nuw i8, ptr %i.h, i64 6272 ; 3 uses
  %i.acx = sitofp reassoc nsz arcp contract afn i32 %i.lj to float ; 4 uses
  %i.acy = sub nsw i32 0, %i.lk
  %i.acz = sitofp reassoc nsz arcp contract afn i32 %i.acy to float
  %i.ada = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ie
  br label %bb.aj

bb.ai:                                            ; preds = %to_log.exit514
  call void @cairo_stroke(ptr noundef %i.lg) #22
  %i.adb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !132
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 1432
  %i.add = load double, ptr %i.adc, align 8, !tbaa !139
  %i.ade = fmul reassoc nsz arcp contract afn double %i.add, 3.000000e+00
  call void @cairo_set_line_width(ptr noundef %i.lg, double noundef %i.ade) #22
  %i.adf = icmp sgt i32 %i.r, 0
  br i1 %i.adf, label %.lr.ph661, label %._crit_edge662

.lr.ph661:                                        ; preds = %bb.ai
  %i.adg = sitofp reassoc nsz arcp contract afn i32 %i.lk to float
  %i.adh = fneg reassoc nsz arcp contract afn float %i.adg
  %wide.trip.count681 = zext nneg i32 %i.r to i64
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah, %to_log.exit514
  %indvars.iv674 = phi i64 [ 0, %bb.ah ], [ %indvars.iv.next675, %to_log.exit514 ] ; 3 uses
  %i.adi = trunc nuw nsw i64 %indvars.iv674 to i32
  %i.adj = uitofp nsz nneg i32 %i.adi to float
  %i.adk = fmul reassoc nnan nsz arcp contract afn float %i.adj, f0x3B808081 ; 5 uses
  %i.adl = fcmp reassoc nsz arcp contract afn ogt float %i.adk, %i.ie
  br i1 %i.adl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.adm = fmul reassoc nsz arcp contract afn float %i.adk, %i.ada
  %i.adn = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adm, float %.2.i)
  %i.ado = fmul reassoc nsz arcp contract afn float %i.adn, %i.jj
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv674
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0406 = phi nsz float [ %i.ado, %bb.ak ], [ %i.adq, %bb.al ] ; 3 uses
  %i.adr = load float, ptr %i.nb, align 4, !tbaa !83 ; 5 uses
  %i.ads = load i32, ptr %i.acw, align 8, !tbaa !84 ; 2 uses
  %i.adt = fcmp reassoc nsz arcp contract afn ogt float %i.adr, 0.000000e+00
  %or.cond.i507 = and i1 %i.lt, %i.adt
  br i1 %or.cond.i507, label %bb.an, label %to_log.exit514

bb.an:                                            ; preds = %bb.am
  %or.cond20.not.i509 = icmp eq i32 %i.ads, -1
  br i1 %or.cond20.not.i509, label %..thread612_crit_edge, label %bb.ao

..thread612_crit_edge:                            ; preds = %bb.an
  %.pre690 = fadd reassoc nnan nsz arcp contract afn float %i.adr, 1.000000e+00
  %.pre692 = call reassoc nnan nsz arcp contract afn float @llvm.log.f32(float %.pre690)
  br label %.thread612

bb.ao:                                            ; preds = %bb.an
  %i.adu = fmul reassoc nsz arcp contract afn float %i.adr, %i.adk
  %i.adv = fadd reassoc nsz arcp contract afn float %i.adu, 1.000000e+00
  %i.adw = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.adv)
  %i.adx = fadd reassoc nsz arcp contract afn float %i.adr, 1.000000e+00
  %i.ady = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.adx) ; 2 uses
  %i.adz = fdiv reassoc nsz arcp contract afn float %i.adw, %i.ady ; 2 uses
  %or.cond20.not.i513 = icmp eq i32 %i.ads, 1
  br i1 %or.cond20.not.i513, label %to_log.exit514, label %.thread612

.thread612:                                       ; preds = %..thread612_crit_edge, %bb.ao
  %.pre-phi693 = phi float [ %.pre692, %..thread612_crit_edge ], [ %i.ady, %bb.ao ]
  %.0.i508.ph615 = phi float [ %i.adk, %..thread612_crit_edge ], [ %i.adz, %bb.ao ]
  %i.aea = fmul reassoc nsz arcp contract afn float %i.adr, %.0406
  %i.aeb = fadd reassoc nsz arcp contract afn float %i.aea, 1.000000e+00
  %i.aec = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.aeb)
  %i.aed = fdiv reassoc nsz arcp contract afn float %i.aec, %.pre-phi693
  br label %to_log.exit514

to_log.exit514:                                   ; preds = %bb.am, %bb.ao, %.thread612
  %.0.i508610 = phi float [ %.0.i508.ph615, %.thread612 ], [ %i.adz, %bb.ao ], [ %i.adk, %bb.am ]
  %.0.i512 = phi nsz float [ %i.aed, %.thread612 ], [ %.0406, %bb.ao ], [ %.0406, %bb.am ]
  %i.aee = fmul reassoc nsz arcp contract afn float %.0.i508610, %i.acx
  %i.aef = fpext reassoc nsz arcp contract afn float %i.aee to double
  %i.aeg = fmul reassoc nsz arcp contract afn float %.0.i512, %i.acz
  %i.aeh = fpext reassoc nsz arcp contract afn float %i.aeg to double
  call void @cairo_line_to(ptr noundef %i.lg, double noundef %i.aef, double noundef %i.aeh) #22
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1 ; 2 uses
  %exitcond677.not = icmp eq i64 %indvars.iv.next675, 256
  br i1 %exitcond677.not, label %bb.ai, label %bb.aj

._crit_edge662:                                   ; preds = %to_log.exit522, %bb.ai
  %i.aei = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 3 uses
  %i.aej = load i32, ptr %i.aei, align 8, !tbaa !93
  %i.aek = icmp sgt i32 %i.aej, -1
  br i1 %i.aek, label %bb.at, label %bb.ax

bb.ap:                                            ; preds = %.lr.ph661, %to_log.exit522
  %indvars.iv678 = phi i64 [ 0, %.lr.ph661 ], [ %indvars.iv.next679, %to_log.exit522 ] ; 2 uses
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv678 ; 4 uses
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !56 ; 3 uses
  %i.aen = load float, ptr %i.nb, align 4, !tbaa !83 ; 5 uses
  %i.aeo = load i32, ptr %i.acw, align 8, !tbaa !84 ; 2 uses
  %i.aep = fcmp reassoc nsz arcp contract afn ogt float %i.aen, 0.000000e+00
end_hunk_0
