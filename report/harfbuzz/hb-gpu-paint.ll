Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-gpu-paint?download=true
inline.NumInlined: 457
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL23emit_all_clip_sub_blobsP14hb_gpu_paint_tPi:.preheader
  %i.en = load i32, ptr %i.c, align 4, !tbaa !37
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.en, i32 3)
  %i.eo = zext nneg i32 %.sroa.speculated to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.eo
  br i1 %.not, label %bb.a, label %.loopexit, !llvm.loop !192

.loopexit.sink.split:                             ; preds = %bb.o, %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread.sink.split, %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread23
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 -1, ptr %i.ep, align 4, !tbaa !37
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit, %.loopexit.sink.split, %.preheader
  %i.eq = phi i1 [ true, %.preheader ], [ false, %.loopexit.sink.split ], [ true, %bb.s ], [ false, %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit ]
  ret i1 %i.eq
}

declare i32 @hb_gpu_draw_glyph_or_fail(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hb_font_draw_glyph_or_fail(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tEEPT_v(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @hb_draw_funcs_create() #13 ; 7 uses
  tail call void @hb_draw_funcs_set_move_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL24hb_gpu_paint_pen_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr noundef null, ptr noundef null) #13
  tail call void @hb_draw_funcs_set_line_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL24hb_gpu_paint_pen_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr noundef null, ptr noundef null) #13
  tail call void @hb_draw_funcs_set_quadratic_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL29hb_gpu_paint_pen_quadratic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffS1_, ptr noundef null, ptr noundef null) #13
  tail call void @hb_draw_funcs_set_cubic_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL25hb_gpu_paint_pen_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_, ptr noundef null, ptr noundef null) #13
  tail call void @hb_draw_funcs_set_close_path_func(ptr noundef %i.a, ptr noundef nonnull @_ZL27hb_gpu_paint_pen_close_pathP15hb_draw_funcs_tPvP15hb_draw_state_tS1_, ptr noundef null, ptr noundef null) #13
  tail call void @hb_draw_funcs_make_immutable(ptr noundef %i.a) #13
  %i.b = tail call i32 @atexit(ptr noundef nonnull @_ZL31free_static_gpu_paint_pen_funcsv) #13 ; 0 uses
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @hb_draw_funcs_get_empty() #13
  %.not3 = icmp eq ptr %0, %i.a
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %0) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare ptr @hb_draw_funcs_get_empty() local_unnamed_addr #2

declare ptr @hb_draw_funcs_create() local_unnamed_addr #2

declare void @hb_draw_funcs_set_move_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL24hb_gpu_paint_pen_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !93
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !93
  %i.e = load <2 x float>, ptr %i.b, align 4, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !122
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN15hb_draw_funcs_t7move_toEPvR15hb_draw_state_tff.exit, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load float, ptr %i.l, align 4, !tbaa !123 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.o = load float, ptr %i.n, align 4, !tbaa !124
  %i.p = fcmp une float %i.m, %i.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !125 ; 2 uses
  br i1 %i.p, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load float, ptr %i.q, align 8, !tbaa !134
  %i.s = fcmp une float %.pre, %i.r
  br i1 %i.s, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !128
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !129  ; 2 uses
  %.not.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i5, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !131
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %._crit_edge, %bb.d
  %i.z = phi ptr [ %i.y, %bb.d ], [ null, %._crit_edge ]
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.j, float noundef %i.m, float noundef %.pre, ptr noundef %i.z) #13, !inline_history !2
  br label %bb.e

bb.e:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !129 ; 2 uses
  %.not.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i6, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !133
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.f ], [ null, %bb.e ]
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.j, ptr noundef %i.ag) #13, !inline_history !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, i8 0, i64 12, i1 false)
  br label %_ZN15hb_draw_funcs_t7move_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t7move_toEPvR15hb_draw_state_tff.exit: ; preds = %bb.a, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i
  %i.ah = insertelement <2 x float> poison, float %3, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.ai, <2 x float> %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.al = insertelement <2 x float> poison, float %4, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.am, <2 x float> %i.aj)
  store <2 x float> %i.an, ptr %i.ak, align 4, !tbaa !93
  ret void
}

declare void @hb_draw_funcs_set_line_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL24hb_gpu_paint_pen_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !93
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !93
  %i.e = load <2 x float>, ptr %i.b, align 4, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !122
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.j)
  br label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129  ; 2 uses
  %.not.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i5, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.c

bb.c:                                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !131
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit ]
  %i.s = insertelement <2 x float> poison, float %3, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.t, <2 x float> %i.c)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.w = insertelement <2 x float> poison, float %4, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.x, <2 x float> %i.u) ; 3 uses
  %i.z = extractelement <2 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.y, i64 1
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.j, float noundef %i.z, float noundef %i.aa, ptr noundef %i.r) #13, !inline_history !2
  store <2 x float> %i.y, ptr %i.v, align 4, !tbaa !93
  ret void
}

declare void @hb_draw_funcs_set_quadratic_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL29hb_gpu_paint_pen_quadratic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !93
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !93
  %i.e = load <2 x float>, ptr %i.b, align 4, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !122
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.j)
  br label %_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit

_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !203
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129  ; 2 uses
  %.not.i6 = icmp eq ptr %i.o, null
  br i1 %.not.i6, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit, label %bb.c

bb.c:                                             ; preds = %_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !204
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit: ; preds = %_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit ]
  %8 = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %9 = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %10 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %11 = insertelement <4 x float> poison, float %5, i64 0
  %12 = insertelement <4 x float> %11, float %3, i64 1
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %14 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> %13, <4 x float> %10)
  %15 = insertelement <4 x float> poison, float %6, i64 0
  %16 = insertelement <4 x float> %15, float %4, i64 1
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> %17, <4 x float> %14) ; 5 uses
  %i.s = extractelement <4 x float> %18, i64 0
  %19 = extractelement <4 x float> %18, i64 1
  %20 = extractelement <4 x float> %18, i64 2
  %21 = extractelement <4 x float> %18, i64 3
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.j, float noundef %20, float noundef %21, float noundef %i.s, float noundef %19, ptr noundef %i.r) #13, !inline_history !202
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %23 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %23, ptr %22, align 4, !tbaa !93
  ret void
}

declare void @hb_draw_funcs_set_cubic_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL25hb_gpu_paint_pen_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !93 ; 3 uses
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !93 ; 3 uses
  %i.e = load <2 x float>, ptr %i.b, align 4, !tbaa !93 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !122
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.j)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !206
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129  ; 2 uses
  %.not.i7 = icmp eq ptr %i.o, null
  br i1 %.not.i7, label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit, label %bb.c

bb.c:                                             ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !207
  br label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit

_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit ]
  %10 = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %11 = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %12 = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %13 = insertelement <4 x float> poison, float %7, i64 0
  %i.s = insertelement <4 x float> %13, float %5, i64 1
  %14 = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %14, <4 x float> %12)
  %i.t = insertelement <4 x float> poison, float %8, i64 0
  %16 = insertelement <4 x float> %i.t, float %6, i64 1
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %17, <4 x float> %15) ; 5 uses
  %18 = extractelement <2 x float> %i.d, i64 1
  %19 = extractelement <2 x float> %i.c, i64 1
  %20 = tail call float @llvm.fmuladd.f32(float %18, float %3, float %19)
  %21 = extractelement <2 x float> %i.e, i64 1
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %4, float %20)
  %23 = extractelement <2 x float> %i.d, i64 0
  %24 = extractelement <2 x float> %i.c, i64 0
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %3, float %24)
  %26 = extractelement <2 x float> %i.e, i64 0
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %4, float %25)
  %i.v = extractelement <4 x float> %i.u, i64 0
  %i.w = extractelement <4 x float> %i.u, i64 1
  %i.x = extractelement <4 x float> %i.u, i64 2
  %i.y = extractelement <4 x float> %i.u, i64 3
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.j, float noundef %27, float noundef %22, float noundef %i.x, float noundef %i.y, float noundef %i.v, float noundef %i.w, ptr noundef %i.r) #13, !inline_history !205
  %28 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %29 = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %29, ptr %28, align 4, !tbaa !93
  ret void
}

declare void @hb_draw_funcs_set_close_path_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL27hb_gpu_paint_pen_close_pathP15hb_draw_funcs_tPvP15hb_draw_state_tS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !122
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.h = load float, ptr %i.g, align 4, !tbaa !123 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.j = load float, ptr %i.i, align 4, !tbaa !124
  %i.k = fcmp une float %i.h, %i.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !125 ; 2 uses
  br i1 %i.k, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load float, ptr %i.l, align 8, !tbaa !134
  %i.n = fcmp une float %.pre, %i.m
  br i1 %i.n, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !129  ; 2 uses
  %.not.i4 = icmp eq ptr %i.r, null
  br i1 %.not.i4, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !131
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %._crit_edge, %bb.d
  %i.u = phi ptr [ %i.t, %bb.d ], [ null, %._crit_edge ]
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(48) %i.e, float noundef %i.h, float noundef %.pre, ptr noundef %i.u) #13, !inline_history !2
  br label %bb.e

bb.e:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !132
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !129  ; 2 uses
  %.not.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i5, label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133
  br label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit

_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit: ; preds = %bb.e, %bb.f
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ]
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(48) %i.e, ptr noundef %i.ab) #13, !inline_history !3
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit: ; preds = %bb.a, %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  ret void
}

declare void @hb_draw_funcs_make_immutable(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL31free_static_gpu_paint_pen_funcsv() #8 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL26static_gpu_paint_pen_funcs acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZL26static_gpu_paint_pen_funcs, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !55

.critedge.i:                                      ; preds = %bb.b
  %i.d = tail call noundef ptr @hb_draw_funcs_get_empty() #13
  %.not3.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %i.a) #13
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !134
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !210
  br label %_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef %i.b, float noundef %i.d, ptr noundef %i.j) #13, !inline_history !208
  store i32 1, ptr %2, align 4, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load <2 x float>, ptr %i.a, align 4, !tbaa !93
  store <2 x float> %i.l, ptr %i.k, align 4, !tbaa !93
  ret void
}

declare void @hb_draw_funcs_destroy(ptr noundef) local_unnamed_addr #2

declare i32 @hb_color_line_get_extend(ptr noundef) local_unnamed_addr #2

declare void @hb_paint_reduce_linear_anchors(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hb_paint_normalize_color_line(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18append_color_stopsR11hb_vector_tIsLb0EEPK15hb_color_stop_tj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48   ; 2 uses
  %i.c = shl i32 %2, 3
  %i.d = add i32 %i.b, %i.c                       ; 5 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %_ZN11hb_vector_tIsLb0EE6resizeEi.exit.thread, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIsLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d, i1 noundef zeroext false)
  br i1 %i.f, label %bb.c, label %_ZN11hb_vector_tIsLb0EE6resizeEi.exit.thread, !prof !112

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 4, !tbaa !48   ; 3 uses
  %i.h = icmp ugt i32 %i.d, %i.g
  br i1 %i.h, label %_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.d

_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.c
  %i.i = sub nuw nsw i32 %i.d, %i.g
  %i.j = shl nuw i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = zext nneg i32 %i.g to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  %i.o = zext i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, %bb.c
  store i32 %i.d, ptr %i.a, align 4, !tbaa !48
  %.not32 = icmp eq i32 %2, 0
  br i1 %.not32, label %_ZN11hb_vector_tIsLb0EE6resizeEi.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = zext i32 %i.b to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.r ; 3 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 4 uses
  %i.t = shl nuw nsw i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.v = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.v
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %index ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %index ; 3 uses
end_hunk_0
