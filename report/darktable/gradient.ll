Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gradient?download=true
inline.NumInlined: 87
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_gradient_get_pts_border:dt_masks_get_image_size.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store float %i.jz, ptr %i.ka, align 4, !tbaa !29
  %indvars.iv.next139.prol = add nuw nsw i64 %indvars.iv138.prol, 1 ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !239

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv138.unr = phi i64 [ %indvars.iv138.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next139.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.kb = sub nsw i64 %indvars.iv138.ph, %i.iq
  %i.kc = icmp ugt i64 %i.kb, -4
  br i1 %i.kc, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv138 = phi i64 [ %indvars.iv.next139.3, %vec.epilog.scalar.ph ], [ %indvars.iv138.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.iu, i64 %.idx ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !29
  %.idx175 = shl nuw nsw i64 %indvars.iv138, 3
  %i.kf = getelementptr inbounds nuw i8, ptr %i.is, i64 %.idx175 ; 2 uses
  store float %i.ke, ptr %i.kf, align 8, !tbaa !29
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !29
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store float %i.kh, ptr %i.ki, align 4, !tbaa !29
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.kj = getelementptr i8, ptr %i.iu, i64 %indvars.iv.next ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 8
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !29
  %indvars.iv.next139 = shl i64 %indvars.iv138, 3
  %i.km = getelementptr i8, ptr %i.is, i64 %indvars.iv.next139 ; 2 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 8
  store float %i.kl, ptr %i.kn, align 8, !tbaa !29
  %i.ko = getelementptr i8, ptr %i.kj, i64 12
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !29
  %i.kq = getelementptr i8, ptr %i.km, i64 12
  store float %i.kp, ptr %i.kq, align 4, !tbaa !29
  %indvars.iv.next.1 = shl i64 %indvars.iv, 3
  %i.kr = getelementptr i8, ptr %i.iu, i64 %indvars.iv.next.1 ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 16
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !29
  %indvars.iv.next139.1 = shl i64 %indvars.iv138, 3
  %i.ku = getelementptr i8, ptr %i.is, i64 %indvars.iv.next139.1 ; 2 uses
  %i.kv = getelementptr i8, ptr %i.ku, i64 16
  store float %i.kt, ptr %i.kv, align 8, !tbaa !29
  %i.kw = getelementptr i8, ptr %i.kr, i64 20
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !29
  %i.ky = getelementptr i8, ptr %i.ku, i64 20
  store float %i.kx, ptr %i.ky, align 4, !tbaa !29
  %indvars.iv.next.2 = shl i64 %indvars.iv, 3
  %i.kz = getelementptr i8, ptr %i.iu, i64 %indvars.iv.next.2 ; 2 uses
  %i.la = getelementptr i8, ptr %i.kz, i64 24
  %i.lb = load float, ptr %i.la, align 4, !tbaa !29
  %indvars.iv.next139.2 = shl i64 %indvars.iv138, 3
  %i.lc = getelementptr i8, ptr %i.is, i64 %indvars.iv.next139.2 ; 2 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 24
  store float %i.lb, ptr %i.ld, align 8, !tbaa !29
  %i.le = getelementptr i8, ptr %i.kz, i64 28
  %i.lf = load float, ptr %i.le, align 4, !tbaa !29
  %i.lg = getelementptr i8, ptr %i.lc, i64 28
  store float %i.lf, ptr %i.lg, align 4, !tbaa !29
  %indvars.iv.next139.3 = add nuw nsw i64 %indvars.iv138, 4 ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next139.3, %i.iq
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !240

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph233.prol.loopexit, %vec.epilog.scalar.ph233, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %vec.epilog.middle.block, %middle.block229, %vec.epilog.middle.block245, %middle.block316, %bb.e, %bb.c, %bb.a, %bb.d
  %.3 = phi i32 [ 0, %bb.d ], [ 1, %middle.block229 ], [ 1, %middle.block316 ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %middle.block ], [ 1, %vec.epilog.scalar.ph233.prol.loopexit ], [ 1, %vec.epilog.middle.block245 ], [ 1, %scalar.ph.prol.loopexit ], [ 1, %vec.epilog.middle.block ], [ 1, %scalar.ph ], [ 1, %vec.epilog.scalar.ph233 ], [ 1, %vec.epilog.scalar.ph ], [ 1, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.lh = load ptr, ptr %i.a, align 8, !tbaa !129
  tail call void @free(ptr noundef %i.lh) #12
  %i.li = load ptr, ptr %i.b, align 8, !tbaa !129
  tail call void @free(ptr noundef %i.li) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare i32 @dt_dev_distort_transform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #9

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

declare i32 @dt_dev_distort_backtransform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @erff(float noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @dt_dev_distort_transform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_control_queue_redraw_center() local_unnamed_addr #1

declare i32 @dt_dev_distort_backtransform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_masks_gui_form_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #11

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #1

declare void @dt_dev_masks_list_change(ptr noundef) local_unnamed_addr #1

declare float @dt_masks_form_change_opacity(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @dt_dev_add_masks_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #1

declare void @dt_masks_set_edit_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_iop_update(ptr noundef) local_unnamed_addr #1

declare void @dt_masks_change_form_gui(ptr noundef) local_unnamed_addr #1

declare void @dt_masks_clear_form_gui(ptr noundef) local_unnamed_addr #1

declare ptr @g_list_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_masks_form_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_masks_get_from_id(ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @dt_dev_get_zoom_scale_full() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_gradient_init_values(float noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %8, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %9, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %10) unnamed_addr #0 {
dt_masks_get_image_size.exit:
  %i.a = alloca [8 x float], align 16             ; 12 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !148
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load <2 x i32>, ptr %i.e, align 16, !tbaa !32
  %i.g = sitofp reassoc nsz arcp contract afn <2 x i32> %i.f to <2 x float>
  %i.h = fmul reassoc nsz arcp contract afn float %0, 1.500000e+00 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !130
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.a

bb.a:                                             ; preds = %dt_masks_get_image_size.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.l = fneg reassoc nsz arcp contract afn float %i.h ; 2 uses
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !29 ; 4 uses
  %i.n = extractelement <2 x float> %i.m, i64 1   ; 3 uses
  %i.o = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.p = fsub reassoc nsz arcp contract afn float %i.o, %2 ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn ogt float %i.p, %i.l
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.p, %i.h
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.s = fsub reassoc nsz arcp contract afn float %i.n, %3 ; 2 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.s, %i.l
  %i.u = fcmp reassoc nsz arcp contract afn olt float %i.s, %i.h
  %or.cond50 = and i1 %i.t, %i.u
  br i1 %or.cond50, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b, %dt_masks_get_image_size.exit
  %i.v = fadd reassoc nsz arcp contract afn float %4, 1.000000e+02
  %i.w = insertelement <2 x float> poison, float %4, i64 0
  %i.x = insertelement <2 x float> %i.w, float %5, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b, %bb.c
  %.045 = phi nsz float [ %4, %bb.c ], [ %i.o, %bb.b ], [ %i.o, %bb.a ]
  %.044 = phi nsz float [ %5, %bb.c ], [ %i.n, %bb.b ], [ %i.n, %bb.a ]
  %.043 = phi nsz float [ %i.v, %bb.c ], [ %4, %bb.b ], [ %4, %bb.a ]
  %i.y = phi <2 x float> [ %i.x, %bb.c ], [ %i.m, %bb.b ], [ %i.m, %bb.a ]
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store float %.045, ptr %i.a, align 16, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %.044, ptr %i.aa, align 4, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store float %.043, ptr %i.ab, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store float %5, ptr %i.ac, align 4, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ah = fadd nsz <4 x float> %i.z, <float 1.000000e+01, float poison, float poison, float 1.000000e+01>
  %11 = shufflevector <4 x float> %i.ah, <4 x float> %i.z, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %11, ptr %i.ad, align 16, !tbaa !29
  %i.ai = call i32 @dt_dev_distort_backtransform(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef 4) #12 ; 0 uses
  %i.aj = load <2 x float>, ptr %i.a, align 16, !tbaa !29 ; 3 uses
  %i.ak = fdiv reassoc nsz arcp contract afn <2 x float> %i.aj, %i.g ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  store float %i.al, ptr %6, align 4, !tbaa !29
  %i.am = extractelement <2 x float> %i.ak, i64 1
  store float %i.am, ptr %7, align 4, !tbaa !29
  %i.an = load float, ptr %i.ac, align 4, !tbaa !29
  %i.ao = extractelement <2 x float> %i.aj, i64 1 ; 3 uses
  %i.ap = fsub reassoc nsz arcp contract afn float %i.an, %i.ao
  %i.aq = load float, ptr %i.ab, align 8, !tbaa !29
  %i.ar = extractelement <2 x float> %i.aj, i64 0 ; 3 uses
  %i.as = fsub reassoc nsz arcp contract afn float %i.aq, %i.ar
  %i.at = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ap, float %i.as) ; 2 uses
  %i.au = load float, ptr %i.ag, align 4, !tbaa !29
  %i.av = fsub reassoc nsz arcp contract afn float %i.au, %i.ao
  %i.aw = load float, ptr %i.af, align 8, !tbaa !29
  %i.ax = fsub reassoc nsz arcp contract afn float %i.aw, %i.ar
  %i.ay = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.av, float %i.ax)
  %i.az = load float, ptr %i.ae, align 4, !tbaa !29
  %i.ba = fsub reassoc nsz arcp contract afn float %i.az, %i.ao
  %i.bb = load float, ptr %i.ad, align 16, !tbaa !29
  %i.bc = fsub reassoc nsz arcp contract afn float %i.bb, %i.ar
  %i.bd = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ba, float %i.bc)
  %i.be = fsub reassoc nsz arcp contract afn float %i.ay, %i.bd
  %sincos = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.be) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bf = call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %sin, float %cos)
  %i.bg = fcmp reassoc nsz arcp contract afn olt float %i.bf, 0.000000e+00
  %i.bh = fadd reassoc nsz arcp contract afn float %i.at, f0xC0490FDB
  %spec.select = select nsz i1 %i.bg, float %i.bh, float %i.at
  %i.bi = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #12
  %i.bj = fcmp reassoc nsz arcp contract afn ogt float %i.bi, 1.000000e+00
  br i1 %i.bj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bk = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.12) #12
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.bl = phi reassoc nsz arcp contract afn float [ %i.bk, %bb.d ], [ 1.000000e+00, %._crit_edge ] ; 2 uses
  %i.bm = fmul reassoc nsz arcp contract afn float %spec.select, f0xC2652EE0
  store float %i.bm, ptr %8, align 4, !tbaa !29
  %i.bn = fcmp reassoc nsz arcp contract afn olt float %i.bl, 0.000000e+00
  %i.bo = select reassoc nsz arcp contract afn i1 %i.bn, float 0.000000e+00, float %i.bl
  store float %i.bo, ptr %9, align 4, !tbaa !29
  %i.bp = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.1) #12
  %i.bq = fcmp reassoc nsz arcp contract afn ogt float %i.bp, 2.000000e+00
  br i1 %i.bq, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.1) #12
  %i.bs = fcmp reassoc nsz arcp contract afn olt float %i.br, -2.000000e+00
  br i1 %i.bs, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.f
  %i.bt = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.1) #12
  %i.bu = fcmp reassoc nsz arcp contract afn ogt float %i.bt, 2.000000e+00
  br i1 %i.bu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.bv = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.1) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge, %bb.f
  %i.bw = phi reassoc nsz arcp contract afn float [ -2.000000e+00, %bb.f ], [ %i.bv, %bb.g ], [ 2.000000e+00, %.critedge ]
  store float %i.bw, ptr %10, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare void @dt_masks_gui_form_save_creation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_dev_masks_selection_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_masks_create(i32 noundef) local_unnamed_addr #1

declare void @cairo_save(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_gradient_draw_lines(i32 noundef range(i32 0, 2) %0, ptr noundef %1, i32 noundef %2, float noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %0, 0                       ; 3 uses
  %or.cond81.v = select i1 %.not, i32 4, i32 3
  %or.cond81 = icmp sgt i32 %5, %or.cond81.v
  br i1 %or.cond81, label %dt_masks_get_image_size.exit, label %.loopexit

dt_masks_get_image_size.exit:                     ; preds = %bb.a
  %.idx = select i1 %.not, i64 24, i64 0
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %i.b = add nsw i32 %5, -3
  %i.c = select i1 %.not, i32 %i.b, i32 %5        ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph66, label %.loopexit

.lr.ph66:                                         ; preds = %dt_masks_get_image_size.exit
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !148
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load i32, ptr %i.h, align 16, !tbaa !126
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to float ; 2 uses
  %i.k = fneg reassoc nsz arcp contract afn float %i.j ; 4 uses
  %i.l = fmul reassoc nnan nsz arcp contract afn float %i.j, 2.000000e+00 ; 4 uses
  %i.m = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %.backedge
  %.065 = phi i32 [ 0, %.lr.ph66 ], [ %.0.be, %.backedge ] ; 4 uses
  %i.n = shl nsw i32 %.065, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !29 ; 4 uses
  %i.r = tail call i1 @llvm.is.fpclass.f32(float %i.q, /* (nan inf zero sub) */ i32 759)
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i32 %.065, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %_gradient_is_canonical.exit.thread, %.critedge
  %.0.be = phi i32 [ %.1.lcssa, %.critedge ], [ %i.ab, %_gradient_is_canonical.exit.thread ], [ %i.s, %bb.c ] ; 2 uses
  %i.t = icmp slt i32 %.0.be, %i.c
  br i1 %i.t, label %bb.b, label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %i.p, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !29 ; 4 uses
  %i.w = tail call i1 @llvm.is.fpclass.f32(float %i.v, /* (nan inf zero sub) */ i32 759)
  %i.x = fcmp reassoc nsz arcp contract afn ult float %i.q, %i.k
  %or.cond.i = or i1 %i.x, %i.w
  %i.y = fcmp reassoc nsz arcp contract afn ugt float %i.q, %i.l
  %or.cond14.i = or i1 %i.y, %or.cond.i
  %i.z = fcmp reassoc nsz arcp contract afn ult float %i.v, %i.k
  %or.cond16.i = or i1 %i.z, %or.cond14.i
  %i.aa = fcmp reassoc nsz arcp contract afn ugt float %i.v, %i.l
  %or.cond57 = or i1 %i.aa, %or.cond16.i
  br i1 %or.cond57, label %_gradient_is_canonical.exit.thread, label %bb.e

_gradient_is_canonical.exit.thread:               ; preds = %bb.d
  %i.ab = add nsw i32 %.065, 1
  br label %.backedge

bb.e:                                             ; preds = %bb.d
  %i.ac = fpext reassoc nsz arcp contract afn float %i.q to double
  %i.ad = fpext reassoc nsz arcp contract afn float %i.v to double
  tail call void @cairo_move_to(ptr noundef %1, double noundef %i.ac, double noundef %i.ad) #12
  %.159 = add nsw i32 %.065, 1                    ; 3 uses
  %i.ae = icmp slt i32 %.159, %i.c
  br i1 %i.ae, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.af = sext i32 %.159 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.af, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %.idx75 = shl nsw i64 %indvars.iv, 3
  %i.ag = getelementptr inbounds i8, ptr %i.a, i64 %.idx75 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !29 ; 4 uses
  %i.ai = tail call i1 @llvm.is.fpclass.f32(float %i.ah, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ai, label %.critedge.loopexit.split.loop.exit78, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aj = getelementptr i8, ptr %i.ag, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !29 ; 4 uses
  %i.al = tail call i1 @llvm.is.fpclass.f32(float %i.ak, /* (nan inf zero sub) */ i32 759)
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.ah, %i.k
  %or.cond.i50 = or i1 %i.am, %i.al
  %i.an = fcmp reassoc nsz arcp contract afn ugt float %i.ah, %i.l
  %or.cond14.i51 = or i1 %i.an, %or.cond.i50
  %i.ao = fcmp reassoc nsz arcp contract afn ult float %i.ak, %i.k
  %or.cond16.i52 = or i1 %i.ao, %or.cond14.i51
  %i.ap = fcmp reassoc nsz arcp contract afn ugt float %i.ak, %i.l
  %or.cond58 = or i1 %i.ap, %or.cond16.i52
  br i1 %or.cond58, label %.critedge.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ah to double
  %i.ar = fpext reassoc nsz arcp contract afn float %i.ak to double
  tail call void @cairo_line_to(ptr noundef %1, double noundef %i.aq, double noundef %i.ar) #12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.critedge.loopexit.split.loop.exit:               ; preds = %bb.f
  %i.as = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit78:             ; preds = %.lr.ph
  %i.at = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.critedge.loopexit.split.loop.exit, %.critedge.loopexit.split.loop.exit78, %bb.e
  %.1.lcssa = phi i32 [ %.159, %bb.e ], [ %i.at, %.critedge.loopexit.split.loop.exit78 ], [ %i.as, %.critedge.loopexit.split.loop.exit ], [ %i.c, %bb.g ]
end_hunk_0
