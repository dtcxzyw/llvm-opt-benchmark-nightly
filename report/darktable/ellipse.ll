Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ellipse?download=true
inline.NumInlined: 96
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ellipse_points_to_transform:bb.a
  %i.aq = icmp sgt i32 %i.n, 0
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.ar = uitofp nneg i32 %i.n to float           ; 2 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %i.as = add nsw i64 %wide.trip.count, -5        ; 3 uses
  %min.iters.check = icmp ult i64 %i.as, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.as, -8                      ; 3 uses
  %i.at = or disjoint i64 %n.vec, 5
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ar, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat114 = shufflevector <6 x float> %i.ai, <6 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat116 = shufflevector <6 x float> %i.ai, <6 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat118 = shufflevector <6 x float> %i.ai, <6 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splatinsert119 = insertelement <8 x float> poison, float %factor.op.fmul108, i64 0
  %broadcast.splat120 = shufflevector <8 x float> %broadcast.splatinsert119, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <8 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat122 = shufflevector <8 x float> %broadcast.splatinsert121, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat124 = shufflevector <6 x float> %i.ai, <6 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.au = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.av = add <8 x i32> %vec.ind, splat (i32 -5)
  %i.aw = sitofp reassoc nsz arcp contract afn <8 x i32> %i.av to <8 x float>
  %i.ax = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aw, splat (float f0x40C90FDB)
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.ax, %i.au
  %i.az = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ay) ; 2 uses
  %i.ba = extractvalue { <8 x float>, <8 x float> } %i.az, 0 ; 2 uses
  %i.bb = extractvalue { <8 x float>, <8 x float> } %i.az, 1 ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn <8 x float> %i.bb, %broadcast.splat114
  %i.bd = fmul reassoc nsz arcp contract afn <8 x float> %i.bb, %broadcast.splat116
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %i.bd, %broadcast.splat118
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %i.ba, %broadcast.splat120
  %i.bg = fmul reassoc nsz arcp contract afn <8 x float> %i.ba, %broadcast.splat122
  %i.bh = fadd reassoc nsz arcp contract afn <8 x float> %i.be, %i.bg
  %i.bi = shl i64 %index, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = fadd reassoc nsz arcp contract afn <8 x float> %i.bc, %broadcast.splat124
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bf
  %interleaved.vec = shufflevector <8 x float> %i.bh, <8 x float> %i.bm, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bk, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 5, %.lr.ph ], [ %i.at, %middle.block ]
  %i.bo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ar
  %i.bp = extractelement <6 x float> %i.ai, i64 1
  %i.bq = extractelement <6 x float> %i.ai, i64 0
  %i.br = extractelement <6 x float> %i.ai, i64 2
  %i.bs = extractelement <6 x float> %i.ai, i64 3
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bt = trunc i64 %indvars.iv to i32
  %i.bu = add i32 %i.bt, -5
  %i.bv = sitofp reassoc nsz arcp contract afn i32 %i.bu to float
  %i.bw = fmul reassoc nnan nsz arcp contract afn float %i.bv, f0x40C90FDB
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bo
  %sincos99 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bx) ; 2 uses
  %sin100 = extractvalue { float, float } %sincos99, 0 ; 2 uses
  %cos101 = extractvalue { float, float } %sincos99, 1 ; 2 uses
  %.reass107 = fmul reassoc nsz arcp contract afn float %cos101, %i.bp
  %.reass = fmul reassoc nsz arcp contract afn float %cos101, %i.bq
  %i.by = fadd reassoc nsz arcp contract afn float %.reass, %i.br
  %.reass109 = fmul reassoc nsz arcp contract afn float %sin100, %factor.op.fmul108
  %.reass105.reass = fmul reassoc nsz arcp contract afn float %sin100, %factor.op.fmul
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %.reass105.reass
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 2 uses
  store float %i.bz, ptr %i.ca, align 8, !tbaa !26
  %i.cb = fadd reassoc nsz arcp contract afn float %.reass107, %i.bs
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, %.reass109
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store float %i.cc, ptr %i.cd, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !230

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.b, %bb.a
  ret ptr %i.r
}

declare i32 @dt_dev_distort_backtransform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_masks_gui_form_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_control_queue_redraw_center() local_unnamed_addr #1

declare float @dt_masks_drag_factor(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #10

declare float @dt_masks_change_rotation(i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #1

declare float @dt_masks_change_size(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_dev_masks_list_change(ptr noundef) local_unnamed_addr #1

declare float @dt_masks_form_change_opacity(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @dt_dev_add_masks_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #1

declare void @dt_masks_set_edit_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_iop_update(ptr noundef) local_unnamed_addr #1

declare void @dt_masks_set_source_pos_initial_state(ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_masks_set_source_pos_initial_value(ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_masks_gui_form_save_creation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_set_edit_mode_single_form(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_dev_masks_selection_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_select_form(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_masks_get_from_id(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_masks_create(i32 noundef) local_unnamed_addr #1

declare void @dt_masks_change_form_gui(ptr noundef) local_unnamed_addr #1

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_masks_clear_form_gui(ptr noundef) local_unnamed_addr #1

declare ptr @g_list_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_masks_form_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_ellipse_draw_shape(i32 noundef range(i32 0, 2) %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %8, 11
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !26
  %i.d = load <2 x float>, ptr %7, align 4, !tbaa !26
  %i.e = fsub reassoc nsz arcp contract afn <2 x float> %i.c, %i.d ; 2 uses
  %i.f = extractelement <2 x float> %i.e, i64 0
  %i.g = extractelement <2 x float> %i.e, i64 1
  %i.h = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.g, float %i.f)
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.h) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 3 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !26
  %i.m = fsub reassoc nsz arcp contract afn float %i.j, %5 ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %cos, %cos
  %i.o = fmul reassoc nsz arcp contract afn float %sin, %sin
  %i.p = fmul reassoc nsz arcp contract afn float %cos, %sin ; 2 uses
  %i.q = fadd reassoc nsz arcp contract afn float %i.n, %i.o ; 5 uses
  %i.r = fsub reassoc nsz arcp contract afn float %i.p, %i.p ; 5 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.q, %i.m
  %i.t = fsub reassoc nsz arcp contract afn float %i.l, %6 ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.r, %i.t
  %i.v = fmul reassoc nsz arcp contract afn float %i.r, %i.m
  %i.w = fmul reassoc nsz arcp contract afn float %i.q, %i.t
  %i.x = fadd reassoc nsz arcp contract afn float %5, %i.u
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, %i.s
  %i.z = fadd reassoc nsz arcp contract afn float %6, %i.w
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.v
  %i.ab = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.ac = fpext reassoc nsz arcp contract afn float %i.aa to double
  tail call void @cairo_move_to(ptr noundef %2, double noundef %i.ab, double noundef %i.ac) #12
  %wide.trip.count = zext nneg i32 %8 to i64
  %i.ad = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %i.ad, float %6, i64 1
  %i.ae = insertelement <2 x float> poison, float %6, i64 0
  %10 = insertelement <2 x float> %i.ae, float %5, i64 1
  %i.af = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.q, i64 1 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ai = load float, ptr %i.i, align 4, !tbaa !26
  %i.aj = load float, ptr %i.k, align 4, !tbaa !26
  %i.ak = fsub reassoc nsz arcp contract afn float %i.ai, %5 ; 2 uses
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, %i.q
  %i.am = fsub reassoc nsz arcp contract afn float %i.aj, %6 ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, %i.r
  %i.ao = fmul reassoc nsz arcp contract afn float %i.ak, %i.r
  %i.ap = fmul reassoc nsz arcp contract afn float %i.am, %i.q
  %i.aq = fadd reassoc nsz arcp contract afn float %5, %i.an
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.al
  %i.as = fadd reassoc nsz arcp contract afn float %6, %i.ap
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %i.ao
  %i.au = fpext reassoc nsz arcp contract afn float %i.ar to double
  %i.av = fpext reassoc nsz arcp contract afn float %i.at to double
  tail call void @cairo_line_to(ptr noundef %2, double noundef %i.au, double noundef %i.av) #12
  tail call void @dt_masks_line_stroke(ptr noundef %2, i32 noundef %0, i32 noundef %1, i32 noundef %3, float noundef %4) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ 6, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 %.idx
  %i.ax = load <2 x float>, ptr %i.aw, align 4, !tbaa !26
  %i.ay = fsub reassoc nsz arcp contract afn <2 x float> %i.ax, %9 ; 2 uses
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul reassoc nsz arcp contract afn <2 x float> %i.az, %i.ag
  %i.bb = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul reassoc nsz arcp contract afn <2 x float> %i.bb, %i.ah
  %i.bd = fadd reassoc nsz arcp contract afn <2 x float> %10, %i.bc
  %i.be = fadd reassoc nsz arcp contract afn <2 x float> %i.bd, %i.ba
  %i.bf = fpext <2 x float> %i.be to <2 x double> ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0
  %i.bh = extractelement <2 x double> %i.bf, i64 1
  tail call void @cairo_line_to(ptr noundef %2, double noundef %i.bh, double noundef %i.bg) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.e:                                             ; preds = %bb.a, %bb.c
  ret void
}

declare void @dt_masks_calculate_source_pos_value(ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_draw_clone_source_pos(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_masks_draw_anchor(ptr noundef, i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_closest_point(i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_masks_draw_arrow(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_stroke_arrow(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @dt_masks_line_stroke(ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS6_GList", !11, i64 0}
!13 = !{!"p1 _ZTS17dt_masks_dynbuf_t", !11, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"dt_masks_form_gui_t", !12, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !14, i64 152, !14, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !15, i64 184, !15, i64 192, !8, i64 200, !8, i64 204, !16, i64 208, !11, i64 216, !11, i64 224}
!18 = !{!17, !8, i64 172}
!19 = !{!17, !8, i64 84}
!20 = !{!17, !8, i64 60}
!21 = !{!"p1 _ZTS20dt_masks_functions_t", !11, i64 0}
!22 = !{!"dt_masks_form_t", !12, i64 0, !8, i64 8, !21, i64 16, !7, i64 24, !7, i64 32, !8, i64 160, !8, i64 164}
!23 = !{!22, !12, i64 0}
!24 = !{!"_GList", !11, i64 0, !12, i64 8, !12, i64 16}
!25 = !{!24, !11, i64 0}
!26 = !{!14, !14, i64 0}
!27 = !{!22, !8, i64 8}
!28 = !{!"dt_masks_point_ellipse_t", !7, i64 0, !7, i64 8, !14, i64 16, !14, i64 20, !8, i64 24}
!29 = !{!28, !8, i64 24}
!30 = !{!28, !14, i64 20}
!31 = !{!28, !14, i64 16}
!32 = !{!8, !8, i64 0}
!33 = !{!12, !12, i64 0}
!34 = !{!17, !12, i64 0}
!35 = !{!"p1 float", !11, i64 0}
!36 = !{!"dt_masks_form_gui_points_t", !35, i64 0, !8, i64 8, !35, i64 16, !8, i64 24, !35, i64 32, !8, i64 40, !8, i64 44}
!37 = !{!36, !8, i64 40}
!38 = !{!36, !35, i64 32}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!36, !35, i64 0}
!42 = !{!36, !35, i64 16}
!43 = !{!36, !8, i64 24}
!44 = !{!"dt_codepath_t", !8, i64 0}
!45 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!46 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!47 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!48 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!49 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!50 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!51 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!52 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!53 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!54 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!55 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!56 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!57 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!58 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!59 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!60 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!61 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!62 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!63 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!64 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!65 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!66 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!67 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!68 = !{!"dt_pthread_mutex_t", !7, i64 0}
!69 = !{!"p1 omnipotent char", !11, i64 0}
!70 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!71 = !{!"_Bool", !7, i64 0}
!72 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!73 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!74 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!75 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!76 = !{!"", !70, i64 0, !68, i64 8, !7, i64 48, !71, i64 96, !71, i64 97, !72, i64 104, !73, i64 112, !74, i64 120, !75, i64 128, !75, i64 136, !75, i64 144}
!77 = !{!"double", !7, i64 0}
!78 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!79 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!80 = !{!"p1 int", !11, i64 0}
!81 = !{!"dt_sys_resources_t", !16, i64 0, !16, i64 8, !80, i64 16, !80, i64 24, !8, i64 32}
!82 = !{!"dt_backthumb_t", !77, i64 0, !77, i64 8, !8, i64 16, !8, i64 20}
!83 = !{!"dt_gimp_t", !8, i64 0, !69, i64 8, !69, i64 16, !8, i64 24, !8, i64 28}
!84 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!85 = !{!"dt_splash_t", !84, i64 0, !84, i64 8, !84, i64 16, !84, i64 24, !8, i64 32}
!86 = !{!"darktable_t", !44, i64 0, !8, i64 4, !8, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !45, i64 48, !46, i64 56, !47, i64 64, !48, i64 72, !49, i64 80, !50, i64 88, !51, i64 96, !52, i64 104, !53, i64 112, !54, i64 120, !55, i64 128, !56, i64 136, !57, i64 144, !58, i64 152, !59, i64 160, !60, i64 168, !61, i64 176, !62, i64 184, !63, i64 192, !64, i64 200, !65, i64 208, !66, i64 216, !67, i64 224, !7, i64 232, !68, i64 2792, !68, i64 2832, !68, i64 2872, !68, i64 2912, !68, i64 2952, !68, i64 2992, !69, i64 3032, !69, i64 3040, !69, i64 3048, !69, i64 3056, !69, i64 3064, !69, i64 3072, !69, i64 3080, !69, i64 3088, !69, i64 3096, !69, i64 3104, !69, i64 3112, !69, i64 3120, !69, i64 3128, !76, i64 3136, !12, i64 3288, !77, i64 3296, !12, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !78, i64 3520, !79, i64 3528, !81, i64 3536, !82, i64 3576, !83, i64 3600, !85, i64 3632, !8, i64 3672}
!87 = !{!86, !47, i64 64}
!88 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!89 = !{!"short", !7, i64 0}
!90 = !{!"", !89, i64 0, !89, i64 2}
!91 = !{!"", !8, i64 0, !7, i64 16}
!92 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !90, i64 48, !91, i64 64, !7, i64 96, !8, i64 112}
!93 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!94 = !{!"dt_image_geoloc_t", !77, i64 0, !77, i64 8, !77, i64 16}
!95 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!96 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!97 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !16, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !14, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !16, i64 1448, !16, i64 1456, !16, i64 1464, !16, i64 1472, !8, i64 1480, !92, i64 1488, !7, i64 1616, !69, i64 1656, !8, i64 1664, !8, i64 1668, !93, i64 1672, !94, i64 1680, !95, i64 1704, !89, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !14, i64 1756, !14, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !12, i64 1856, !96, i64 1864, !8, i64 1872, !8, i64 1876}
!98 = !{!"p1 _ZTS15dt_masks_form_t", !11, i64 0}
!99 = !{!"p1 _ZTS19dt_masks_form_gui_t", !11, i64 0}
!100 = !{!"dt_dev_proxy_exposure_t", !15, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!101 = !{!"p1 _ZTS15dt_lib_module_t", !11, i64 0}
!102 = !{!"", !101, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64}
end_hunk_0
