Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-draw?download=true
inline.NumInlined: 414
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE5allocEjb:bb.a

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 24
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #18 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !42   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 137438953441) %i.v, i1 false), !alias.scope !143
  br label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 24
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, !prof !77

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !74    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !41
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !74
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIN20hb_user_data_array_t19hb_user_data_item_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #3

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tEEPT_v(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @hb_draw_funcs_create() #18 ; 7 uses
  tail call void @hb_draw_funcs_set_move_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL17hb_raster_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr noundef null, ptr noundef null) #18
  tail call void @hb_draw_funcs_set_line_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL17hb_raster_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr noundef null, ptr noundef null) #18
  tail call void @hb_draw_funcs_set_quadratic_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL22hb_raster_quadratic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffS1_, ptr noundef null, ptr noundef null) #18
  tail call void @hb_draw_funcs_set_cubic_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL18hb_raster_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_, ptr noundef null, ptr noundef null) #18
  tail call void @hb_draw_funcs_set_close_path_func(ptr noundef %i.a, ptr noundef nonnull @_ZL20hb_raster_close_pathP15hb_draw_funcs_tPvP15hb_draw_state_tS1_, ptr noundef null, ptr noundef null) #18
  tail call void @hb_draw_funcs_make_immutable(ptr noundef %i.a) #18
  %i.b = tail call i32 @atexit(ptr noundef nonnull @_ZL29free_static_raster_draw_funcsv) #18 ; 0 uses
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @hb_draw_funcs_get_empty() #18
  %.not3 = icmp eq ptr %0, %i.a
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %0) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare ptr @hb_draw_funcs_get_empty() local_unnamed_addr #3

declare ptr @hb_draw_funcs_create() local_unnamed_addr #3

declare void @hb_draw_funcs_set_move_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZL17hb_raster_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, float %3, float %4, ptr nofree readnone captures(none) %5) #12 {
bb.a:
  ret void
}

declare void @hb_draw_funcs_set_line_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL17hb_raster_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load <2 x float>, ptr %i.a, align 4, !tbaa !14 ; 2 uses
  %i.g = load <2 x float>, ptr %i.c, align 4, !tbaa !14
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.i = load <2 x float>, ptr %i.b, align 4, !tbaa !14
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.k = load <2 x float>, ptr %i.d, align 4, !tbaa !14
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.m = load <2 x float>, ptr %i.e, align 8, !tbaa !14
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.o = insertelement <2 x float> %i.f, float %3, i64 1
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.q = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %i.p, <4 x float> %i.h)
  %i.r = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = insertelement <2 x float> %i.r, float %4, i64 1
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.l, <4 x float> %i.t, <4 x float> %i.q)
  %i.v = fdiv <4 x float> %i.u, %i.n              ; 4 uses
  %i.w = extractelement <4 x float> %i.v, i64 0
  %i.x = extractelement <4 x float> %i.v, i64 1
  %i.y = extractelement <4 x float> %i.v, i64 2
  %i.z = extractelement <4 x float> %i.v, i64 3
  tail call fastcc void @_ZL12emit_segmentP16hb_raster_draw_tffff(ptr noundef %1, float noundef %i.w, float noundef %i.x, float noundef %i.y, float noundef %i.z)
  ret void
}

declare void @hb_draw_funcs_set_quadratic_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL22hb_raster_quadratic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %8 = alloca [16 x %struct.quad_node_t], align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !145
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load <2 x float>, ptr %i.f, align 4, !tbaa !14 ; 3 uses
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !14 ; 3 uses
  %i.k = insertelement <2 x float> poison, float %i.b, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.l, <2 x float> %i.i)
  %i.n = load <2 x float>, ptr %i.g, align 4, !tbaa !14 ; 3 uses
  %i.o = insertelement <2 x float> poison, float %i.d, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.p, <2 x float> %i.m)
  %i.r = load <2 x float>, ptr %i.h, align 8, !tbaa !14 ; 3 uses
  %i.s = fdiv <2 x float> %i.q, %i.r
  %i.t = insertelement <2 x float> poison, float %3, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.u, <2 x float> %i.i)
  %i.w = insertelement <2 x float> poison, float %4, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.x, <2 x float> %i.v)
  %i.z = fdiv <2 x float> %i.y, %i.r
  %i.aa = insertelement <2 x float> poison, float %5, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.j, <2 x float> %i.ab, <2 x float> %i.i)
  %i.ad = insertelement <2 x float> poison, float %6, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.ae, <2 x float> %i.ac)
  %i.ag = fdiv <2 x float> %i.af, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.066.i.i.ph = phi i32 [ %i.aq, %bb.d ], [ 0, %bb.a ]
  %.064.i.i.ph = phi i32 [ %i.az, %bb.d ], [ 0, %bb.a ]
  %.ph = phi <2 x float> [ %i.ax, %bb.d ], [ %i.ag, %bb.a ]
  %.ph25 = phi <2 x float> [ %i.aw, %bb.d ], [ %i.z, %bb.a ]
  %.ph26 = phi <2 x float> [ %i.av, %bb.d ], [ %i.s, %bb.a ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %.066.i.i = phi i32 [ %i.bd, %bb.e ], [ %.066.i.i.ph, %.outer ] ; 4 uses
  %.064.i.i = phi i32 [ %i.bc, %bb.e ], [ %.064.i.i.ph, %.outer ] ; 2 uses
  %i.ah = phi <2 x float> [ %i.bj, %bb.e ], [ %.ph, %.outer ] ; 5 uses
  %i.ai = phi <2 x float> [ %i.bg, %bb.e ], [ %.ph25, %.outer ] ; 3 uses
  %i.aj = fadd <2 x float> %i.ah, %.ph26
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> splat (float -2.000000e+00), <2 x float> %i.aj)
  %9 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ak)
  %10 = fcmp ole <2 x float> %9, splat (float 2.500000e-01) ; 2 uses
  %11 = extractelement <2 x i1> %10, i64 0
  %12 = extractelement <2 x i1> %10, i64 1
  %13 = select i1 %11, i1 %12, i1 false
  %i.al = icmp sgt i32 %.064.i.i, 15
  %or.cond.i.i = select i1 %i.al, i1 true, i1 %13
  br i1 %or.cond.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.am = extractelement <2 x float> %i.ah, i64 0
  %i.an = extractelement <2 x float> %i.ah, i64 1
  %i.ao = extractelement <2 x float> %.ph26, i64 0
  %i.ap = extractelement <2 x float> %.ph26, i64 1
  tail call fastcc void @_ZL12emit_segmentP16hb_raster_draw_tffff(ptr noundef %1, float noundef %i.ao, float noundef %i.ap, float noundef %i.am, float noundef %i.an)
  %.not.i.i = icmp eq i32 %.066.i.i, 0
  br i1 %.not.i.i, label %_ZL17flatten_quadraticP16hb_raster_draw_tffffff.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = add i32 %.066.i.i, -1                   ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [28 x i8], ptr %8, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load <2 x float>, ptr %i.as, align 4, !tbaa !14
  %i.aw = load <2 x float>, ptr %i.at, align 4, !tbaa !14
  %i.ax = load <2 x float>, ptr %i.au, align 4, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !148
  br label %.outer

bb.e:                                             ; preds = %bb.b
  %i.ba = fadd <2 x float> %i.ai, %.ph26
  %i.bb = fadd <2 x float> %i.ah, %i.ai
  %i.bc = add nsw i32 %.064.i.i, 1                ; 2 uses
  %i.bd = add nuw i32 %.066.i.i, 1
  %i.be = zext i32 %.066.i.i to i64
  %i.bf = getelementptr inbounds nuw [28 x i8], ptr %8, i64 %i.be ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bg = fmul <2 x float> %i.ba, splat (float 5.000000e-01) ; 2 uses
  %i.bh = fmul <2 x float> %i.bb, splat (float 5.000000e-01) ; 2 uses
  %i.bi = fadd <2 x float> %i.bh, %i.bg
  %i.bj = fmul <2 x float> %i.bi, splat (float 5.000000e-01) ; 2 uses
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.bk, ptr %i.bf, align 4, !tbaa !14
  store <2 x float> %i.ah, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !14
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i32 %i.bc, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !50
  br label %bb.b

_ZL17flatten_quadraticP16hb_raster_draw_tffffff.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  ret void
}

declare void @hb_draw_funcs_set_cubic_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL18hb_raster_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %10 = alloca [16 x %struct.cubic_node_t], align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load <2 x float>, ptr %i.c, align 4, !tbaa !14 ; 4 uses
  %i.g = load <2 x float>, ptr %i.b, align 4, !tbaa !14 ; 4 uses
  %i.h = load <2 x float>, ptr %i.d, align 4, !tbaa !14 ; 4 uses
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !14 ; 2 uses
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.j, <2 x float> %i.f)
  %i.l = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.l, <2 x float> %i.k)
  %i.n = load <2 x float>, ptr %i.e, align 8, !tbaa !14 ; 4 uses
  %i.o = fdiv <2 x float> %i.m, %i.n
  %i.p = insertelement <2 x float> poison, float %3, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.q, <2 x float> %i.f)
  %i.s = insertelement <2 x float> poison, float %4, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.t, <2 x float> %i.r)
  %i.v = fdiv <2 x float> %i.u, %i.n
  %i.w = insertelement <2 x float> poison, float %5, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.x, <2 x float> %i.f)
  %i.z = insertelement <2 x float> poison, float %6, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.aa, <2 x float> %i.y)
  %i.ac = fdiv <2 x float> %i.ab, %i.n
  %i.ad = insertelement <2 x float> poison, float %7, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.ae, <2 x float> %i.f)
  %i.ag = insertelement <2 x float> poison, float %8, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.ah, <2 x float> %i.af)
  %i.aj = fdiv <2 x float> %i.ai, %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.0104.i.i.ph = phi i32 [ %i.bc, %bb.d ], [ 0, %bb.a ]
  %.0102.i.i.ph = phi i32 [ %i.bn, %bb.d ], [ 0, %bb.a ]
  %.ph = phi <2 x float> [ %i.bl, %bb.d ], [ %i.aj, %bb.a ]
  %.ph34 = phi <2 x float> [ %i.bk, %bb.d ], [ %i.ac, %bb.a ]
  %.ph35 = phi <2 x float> [ %i.bh, %bb.d ], [ %i.v, %bb.a ]
  %.ph36 = phi <2 x float> [ %i.bf, %bb.d ], [ %i.o, %bb.a ] ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %.0104.i.i = phi i32 [ %i.bs, %bb.e ], [ %.0104.i.i.ph, %.outer ] ; 4 uses
  %.0102.i.i = phi i32 [ %i.br, %bb.e ], [ %.0102.i.i.ph, %.outer ] ; 2 uses
  %i.ak = phi <2 x float> [ %i.cd, %bb.e ], [ %.ph, %.outer ] ; 6 uses
  %i.al = phi <2 x float> [ %i.bz, %bb.e ], [ %.ph34, %.outer ] ; 3 uses
  %i.am = phi <2 x float> [ %i.bv, %bb.e ], [ %.ph35, %.outer ] ; 3 uses
  %i.an = fmul <2 x float> %i.am, splat (float -3.000000e+00)
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.ph36, <2 x float> splat (float 2.000000e+00), <2 x float> %i.an)
  %i.ap = fadd <2 x float> %i.ak, %i.ao
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> splat (float -3.000000e+00), <2 x float> %.ph36)
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> splat (float 2.000000e+00), <2 x float> %i.aq)
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr33 = freeze <4 x float> %i.as
  %i.at = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %.fr33)
  %i.au = fcmp ugt <4 x float> %i.at, splat (float 5.000000e-01)
  %i.av = bitcast <4 x i1> %i.au to i4
  %i.aw = icmp eq i4 %i.av, 0
  %i.ax = icmp sgt i32 %.0102.i.i, 15
  %or.cond5.i.i = or i1 %i.ax, %i.aw
  br i1 %or.cond5.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ay = extractelement <2 x float> %i.ak, i64 0
  %i.az = extractelement <2 x float> %i.ak, i64 1
  %i.ba = extractelement <2 x float> %.ph36, i64 0
  %i.bb = extractelement <2 x float> %.ph36, i64 1
  tail call fastcc void @_ZL12emit_segmentP16hb_raster_draw_tffff(ptr noundef %1, float noundef %i.ba, float noundef %i.bb, float noundef %i.ay, float noundef %i.az)
  %.not.i.i = icmp eq i32 %.0104.i.i, 0
  br i1 %.not.i.i, label %_ZL13flatten_cubicP16hb_raster_draw_tffffffff.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = add i32 %.0104.i.i, -1                  ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [36 x i8], ptr %10, i64 %i.bd ; 5 uses
  %i.bf = load <2 x float>, ptr %i.be, align 4, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load <2 x float>, ptr %i.bg, align 4, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bk = load <2 x float>, ptr %i.bi, align 4, !tbaa !14
  %i.bl = load <2 x float>, ptr %i.bj, align 4, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !150
  br label %.outer

bb.e:                                             ; preds = %bb.b
  %i.bo = fadd <2 x float> %i.am, %.ph36
  %i.bp = fadd <2 x float> %i.al, %i.am
  %i.bq = fadd <2 x float> %i.ak, %i.al
  %i.br = add nsw i32 %.0102.i.i, 1               ; 2 uses
  %i.bs = add nuw i32 %.0104.i.i, 1
  %i.bt = zext i32 %.0104.i.i to i64
  %i.bu = getelementptr inbounds nuw [36 x i8], ptr %10, i64 %i.bt ; 4 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bv = fmul <2 x float> %i.bo, splat (float 5.000000e-01) ; 2 uses
  %i.bw = fmul <2 x float> %i.bp, splat (float 5.000000e-01) ; 2 uses
  %i.bx = fmul <2 x float> %i.bq, splat (float 5.000000e-01) ; 2 uses
  %i.by = fadd <2 x float> %i.bw, %i.bv
  %i.bz = fmul <2 x float> %i.by, splat (float 5.000000e-01) ; 2 uses
  %i.ca = fadd <2 x float> %i.bx, %i.bw
  %i.cb = fmul <2 x float> %i.ca, splat (float 5.000000e-01) ; 2 uses
  %i.cc = fadd <2 x float> %i.cb, %i.bz
  %i.cd = fmul <2 x float> %i.cc, splat (float 5.000000e-01) ; 2 uses
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.ce, ptr %i.bu, align 4, !tbaa !14
  store <2 x float> %i.bx, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !14
  store <2 x float> %i.ak, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !tbaa !14
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i32 %i.br, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !tbaa !50
  br label %bb.b

_ZL13flatten_cubicP16hb_raster_draw_tffffffff.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  ret void
}

declare void @hb_draw_funcs_set_close_path_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZL20hb_raster_close_pathP15hb_draw_funcs_tPvP15hb_draw_state_tS1_(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #12 {
bb.a:
  ret void
}

declare void @hb_draw_funcs_make_immutable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL29free_static_raster_draw_funcsv() #10 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t34hb_raster_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL24static_raster_draw_funcs acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
end_hunk_0
