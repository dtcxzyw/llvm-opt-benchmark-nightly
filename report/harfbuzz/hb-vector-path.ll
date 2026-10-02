Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-path?download=true
inline.NumInlined: 77
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL26hb_vector_svg_path_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_:bb.a
  %i.f = fdiv float %3, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.c, float noundef %i.f, i32 noundef %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !17
  %i.j = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i8 noundef signext 44) ; 0 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load float, ptr %i.l, align 8, !tbaa !20
  %i.n = fdiv float %4, %i.m
  %i.o = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.k, float noundef %i.n, i32 noundef %i.o)
  ret void
}

declare void @hb_draw_funcs_set_quadratic_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL31hb_vector_svg_path_quadratic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffS1_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 81) ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !18
  %i.f = fdiv float %3, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.c, float noundef %i.f, i32 noundef %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !17
  %i.j = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i8 noundef signext 44) ; 0 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !20
  %i.n = fdiv float %4, %i.m
  %i.o = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.k, float noundef %i.n, i32 noundef %i.o)
  %i.p = load ptr, ptr %1, align 8, !tbaa !17
  %i.q = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.p, i8 noundef signext 32) ; 0 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !17
  %i.s = load float, ptr %i.d, align 4, !tbaa !18
  %i.t = fdiv float %5, %i.s
  %i.u = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.r, float noundef %i.t, i32 noundef %i.u)
  %i.v = load ptr, ptr %1, align 8, !tbaa !17
  %i.w = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.v, i8 noundef signext 44) ; 0 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !17
  %i.y = load float, ptr %i.l, align 8, !tbaa !20
  %i.z = fdiv float %6, %i.y
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.x, float noundef %i.z, i32 noundef %i.aa)
  ret void
}

declare void @hb_draw_funcs_set_cubic_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL27hb_vector_svg_path_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 67) ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !18
  %i.f = fdiv float %3, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.c, float noundef %i.f, i32 noundef %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !17
  %i.j = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i8 noundef signext 44) ; 0 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !20
  %i.n = fdiv float %4, %i.m
  %i.o = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.k, float noundef %i.n, i32 noundef %i.o)
  %i.p = load ptr, ptr %1, align 8, !tbaa !17
  %i.q = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.p, i8 noundef signext 32) ; 0 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !17
  %i.s = load float, ptr %i.d, align 4, !tbaa !18
  %i.t = fdiv float %5, %i.s
  %i.u = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.r, float noundef %i.t, i32 noundef %i.u)
  %i.v = load ptr, ptr %1, align 8, !tbaa !17
  %i.w = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.v, i8 noundef signext 44) ; 0 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !17
  %i.y = load float, ptr %i.l, align 8, !tbaa !20
  %i.z = fdiv float %6, %i.y
  %i.aa = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.x, float noundef %i.z, i32 noundef %i.aa)
  %i.ab = load ptr, ptr %1, align 8, !tbaa !17
  %i.ac = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i8 noundef signext 32) ; 0 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !17
  %i.ae = load float, ptr %i.d, align 4, !tbaa !18
  %i.af = fdiv float %7, %i.ae
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.ad, float noundef %i.af, i32 noundef %i.ag)
  %i.ah = load ptr, ptr %1, align 8, !tbaa !17
  %i.ai = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, i8 noundef signext 44) ; 0 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !17
  %i.ak = load float, ptr %i.l, align 8, !tbaa !20
  %i.al = fdiv float %8, %i.ak
  %i.am = load i32, ptr %i.g, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.aj, float noundef %i.al, i32 noundef %i.am)
  ret void
}

declare void @hb_draw_funcs_set_close_path_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL29hb_vector_svg_path_close_pathP15hb_draw_funcs_tPvP15hb_draw_state_tS1_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 90) ; 0 uses
  ret void
}

declare void @hb_draw_funcs_make_immutable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL38free_static_vector_svg_path_draw_funcsv() #4 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_svg_path_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_svg_path_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL33static_vector_svg_path_draw_funcs acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_svg_path_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_svg_path_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZL33static_vector_svg_path_draw_funcs, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_svg_path_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !11

.critedge.i:                                      ; preds = %bb.b
  %i.d = tail call noundef ptr @hb_draw_funcs_get_empty() #8
  %.not3.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_svg_path_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %i.a) #8
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_svg_path_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_svg_path_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_svg_path_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 noundef signext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !24     ; 5 uses
  %.not.i = icmp slt i32 %i.b, %i.c
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.b, 1                          ; 2 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %_ZN11hb_vector_tIcLb0EE4pushIJRcEEEPcDpOT_.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ugt i32 %i.d, %i.c
  br i1 %.not.i.i, label %.preheader.i.i, label %.critedge.i, !prof !10

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.051.i.i = phi i32 [ %i.h, %.preheader.i.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.f = lshr i32 %.051.i.i, 1
  %i.g = add i32 %.051.i.i, 8
  %i.h = add i32 %i.g, %i.f                       ; 6 uses
  %i.i = icmp ugt i32 %i.d, %i.h
  br i1 %i.i, label %.preheader.i.i, label %.critedge.thread.i.i, !llvm.loop !0

.critedge.thread.i.i:                             ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.c, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i

bb.d:                                             ; preds = %.critedge.thread.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = zext i32 %i.h to i64
  %i.m = tail call ptr @hb_malloc(i64 noundef %i.l) #8 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr readonly align 1 %i.p, i64 range(i64 0, 4294967296) %i.o, i1 false), !alias.scope !33
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.d, %.critedge.thread.i.i
  %i.q = phi ptr [ null, %bb.d ], [ %i.k, %.critedge.thread.i.i ]
  %i.r = zext i32 %i.h to i64
  %i.s = tail call ptr @hb_realloc(ptr noundef %i.q, i64 noundef %i.r) #8 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.s, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i, !prof !27

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i, %bb.e
  %i.t = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.h, %i.t
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i, label %.critedge.i

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i:  ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i
  %i.u = xor i32 %i.t, -1
  store i32 %i.u, ptr %0, align 8, !tbaa !24
  br label %_ZN11hb_vector_tIcLb0EE4pushIJRcEEEPcDpOT_.exit

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i, %bb.g, %bb.f
  %.1.i.i50.i.i = phi ptr [ %i.s, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i ], [ %i.m, %bb.f ], [ %i.m, %bb.g ]
  store ptr %.1.i.i50.i.i, ptr %i.j, align 8, !tbaa !26
  store i32 %i.h, ptr %0, align 8, !tbaa !24
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i, %bb.c, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.x = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.a, align 4, !tbaa !23
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z ; 2 uses
  store i8 %1, ptr %i.aa, align 1, !tbaa !28
  %i.ab = icmp ne ptr %i.aa, @_hb_CrapPool
  br label %_ZN11hb_vector_tIcLb0EE4pushIJRcEEEPcDpOT_.exit

_ZN11hb_vector_tIcLb0EE4pushIJRcEEEPcDpOT_.exit:  ; preds = %bb.b, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i, %.critedge.i
  %.0.i = phi i1 [ %i.ab, %.critedge.i ], [ false, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i ], [ false, %bb.b ]
  %i.ac = load i8, ptr @_hb_NullPool, align 16
  store i8 %i.ac, ptr @_hb_CrapPool, align 16
  ret i1 %.0.i
}

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 9 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 12) ; 3 uses
  %.not50 = icmp eq i32 %2, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %spec.store.select, 7       ; 3 uses
  %i.c = icmp ult i32 %2, 8
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %spec.store.select, 8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03441.epil.init = phi float [ 5.000000e-01, %.lr.ph.preheader ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03441.epil = phi float [ %i.d, %.lr.ph.epil ], [ %.03441.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.d = fmul float %.03441.epil, 1.000000e-01    ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !34

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.034.lcssa = phi float [ 5.000000e-01, %bb.a ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ], [ %i.d, %.lr.ph.epil ]
  %i.e = tail call float @llvm.fabs.f32(float %1)
  %i.f = fcmp olt float %i.e, %.034.lcssa
  %spec.store.select1 = select i1 %i.f, float 0.000000e+00, float %1 ; 2 uses
  %i.g = tail call float @llvm.fabs.f32(float %spec.store.select1)
  %i.h = fcmp ueq float %i.g, +inf
  br i1 %i.h, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03441 = phi float [ 5.000000e-01, %.lr.ph.preheader.new ], [ %i.p, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.i = fmul float %.03441, 1.000000e-01
  %i.j = fmul float %i.i, 1.000000e-01
  %i.k = fmul float %i.j, 1.000000e-01
  %i.l = fmul float %i.k, 1.000000e-01
  %i.m = fmul float %i.l, 1.000000e-01
  %i.n = fmul float %i.m, 1.000000e-01
  %i.o = fmul float %i.n, 1.000000e-01
  %i.p = fmul float %i.o, 1.000000e-01            ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !35

bb.b:                                             ; preds = %._crit_edge
  %i.q = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 noundef signext 48) ; 0 uses
  br label %bb.t

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 6, ptr noundef nonnull @.str, i32 noundef %spec.store.select) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.s = fpext float %spec.store.select1 to double
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull %i.a, double noundef %i.s) #8 ; 0 uses
  %i.u = tail call noundef ptr @_Z27hb_vector_decimal_point_getv() #8 ; 4 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28
  %.not = icmp eq i8 %i.v, 46
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28
  %.not37 = icmp eq i8 %i.x, 0
  br i1 %.not37, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.u) #9 ; 4 uses
  %.not38 = icmp eq ptr %i.y, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #9
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ae = add i64 %i.ac, 1
  %i.af = and i64 %i.ae, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ab, i64 %i.af, i1 false)
  store i8 46, ptr %i.y, align 1, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.ag = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 46) #9 ; 4 uses
  %.not39 = icmp eq ptr %i.ag, null
  br i1 %.not39, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ah
  %.043 = getelementptr inbounds i8, ptr %i.ai, i64 -1 ; 3 uses
  %i.aj = icmp ugt ptr %.043, %i.ag
  br i1 %i.aj, label %.lr.ph46, label %.critedge

.lr.ph46:                                         ; preds = %bb.h, %bb.i
  %.044 = phi ptr [ %.0, %bb.i ], [ %.043, %bb.h ] ; 4 uses
  %i.ak = load i8, ptr %.044, align 1, !tbaa !28
  %i.al = icmp eq i8 %i.ak, 48
  br i1 %i.al, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph46
  store i8 0, ptr %.044, align 1, !tbaa !28
  %.0 = getelementptr inbounds i8, ptr %.044, i64 -1 ; 3 uses
  %i.am = icmp ugt ptr %.0, %i.ag
  br i1 %i.am, label %.lr.ph46, label %.critedge, !llvm.loop !36

.critedge:                                        ; preds = %.lr.ph46, %bb.i, %bb.h
  %.0.lcssa = phi ptr [ %.043, %bb.h ], [ %.0, %bb.i ], [ %.044, %.lr.ph46 ] ; 2 uses
  %i.an = icmp eq ptr %.0.lcssa, %i.ag
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !28
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.j, %bb.g
  %i.ao = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #9 ; 2 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !23 ; 2 uses
  %i.as = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ar, i32 %i.ap) ; 2 uses
  %i.at = extractvalue { i32, i1 } %i.as, 1
  %i.au = extractvalue { i32, i1 } %i.as, 0       ; 4 uses
  %i.av = icmp slt i32 %i.au, 0
  %or.cond.i = or i1 %i.at, %i.av
  br i1 %or.cond.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.l, !prof !29

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr %0, align 8, !tbaa !24    ; 4 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.m, !prof !10

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp samesign ugt i32 %i.au, %i.aw
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.r, !prof !10

.preheader.i.i.i:                                 ; preds = %bb.m, %.preheader.i.i.i
  %.051.i.i.i = phi i32 [ %i.ba, %.preheader.i.i.i ], [ %i.aw, %bb.m ] ; 2 uses
  %i.ay = lshr i32 %.051.i.i.i, 1
  %i.az = add nuw i32 %.051.i.i.i, 8
  %i.ba = add nuw i32 %i.az, %i.ay                ; 6 uses
  %i.bb = icmp ugt i32 %i.au, %i.ba
  br i1 %i.bb, label %.preheader.i.i.i, label %.critedge.thread.i.i.i, !llvm.loop !0

.critedge.thread.i.i.i:                           ; preds = %.preheader.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %i.aw, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 2 uses
  br i1 %.not8.i.i.i.i.i, label %bb.n, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i

bb.n:                                             ; preds = %.critedge.thread.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = zext i32 %i.ba to i64
  %i.bf = call ptr @hb_malloc(i64 noundef %i.be) #8 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i.i, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.bg = load i32, ptr %i.aq, align 4, !tbaa !23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, label %bb.q, !prof !10

bb.q:                                             ; preds = %bb.p
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr readonly align 1 %i.bi, i64 range(i64 0, 4294967296) %i.bh, i1 false), !alias.scope !44
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.n, %.critedge.thread.i.i.i
  %i.bj = phi ptr [ null, %bb.n ], [ %i.bd, %.critedge.thread.i.i.i ]
  %i.bk = zext i32 %i.ba to i64
  %i.bl = call ptr @hb_realloc(ptr noundef %i.bj, i64 noundef %i.bk) #8 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not22.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, !prof !27

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.o
  %i.bm = load i32, ptr %0, align 8, !tbaa !24    ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.ba, %i.bm
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, label %bb.r

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.q, %bb.p
  %.1.i.i50.i.i.i = phi ptr [ %i.bl, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i ], [ %i.bf, %bb.p ], [ %i.bf, %bb.q ]
  store ptr %.1.i.i50.i.i.i, ptr %i.bc, align 8, !tbaa !26
  store i32 %i.ba, ptr %0, align 8, !tbaa !24
  br label %bb.r

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i:        ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i.i
  %i.bn = xor i32 %i.bm, -1
  store i32 %i.bn, ptr %0, align 8, !tbaa !24
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

bb.r:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i.i, %bb.m
  store i32 %i.au, ptr %i.aq, align 4, !tbaa !23
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.bo = and i64 %i.ao, 4294967295
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !26
  %i.br = zext i32 %i.ar to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr nonnull readonly align 16 %i.b, i64 range(i64 0, 4294967296) %i.bo, i1 false), !alias.scope !45
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

_ZN15hb_vector_buf_t10append_lenEPKcj.exit:       ; preds = %bb.k, %bb.l, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.t

bb.t:                                             ; preds = %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare hidden noundef ptr @_Z27hb_vector_decimal_point_getv() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #5

declare void @hb_draw_funcs_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t43hb_vector_pdf_path_draw_funcs_lazy_loader_tEEPT_v(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @hb_draw_funcs_create() #8 ; 6 uses
  tail call void @hb_draw_funcs_set_move_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL26hb_vector_pdf_path_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr noundef null, ptr noundef null) #8
  tail call void @hb_draw_funcs_set_line_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL26hb_vector_pdf_path_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr noundef null, ptr noundef null) #8
  tail call void @hb_draw_funcs_set_cubic_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL27hb_vector_pdf_path_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_, ptr noundef null, ptr noundef null) #8
  tail call void @hb_draw_funcs_set_close_path_func(ptr noundef %i.a, ptr noundef nonnull @_ZL29hb_vector_pdf_path_close_pathP15hb_draw_funcs_tPvP15hb_draw_state_tS1_, ptr noundef null, ptr noundef null) #8
  tail call void @hb_draw_funcs_make_immutable(ptr noundef %i.a) #8
  %i.b = tail call i32 @atexit(ptr noundef nonnull @_ZL38free_static_vector_pdf_path_draw_funcsv) #8 ; 0 uses
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_pdf_path_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @hb_draw_funcs_get_empty() #8
  %.not3 = icmp eq ptr %0, %i.a
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %0) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL26hb_vector_pdf_path_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !18
  %i.d = fdiv float %3, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.d, i32 noundef %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !17
  %i.h = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 noundef signext 32) ; 0 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load float, ptr %i.j, align 8, !tbaa !20
  %i.l = fdiv float %4, %i.k
  %i.m = load i32, ptr %i.e, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.i, float noundef %i.l, i32 noundef %i.m)
  %i.n = load ptr, ptr %1, align 8, !tbaa !17
  %i.o = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull @.str.3) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL26hb_vector_pdf_path_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !18
  %i.d = fdiv float %3, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.d, i32 noundef %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !17
  %i.h = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 noundef signext 32) ; 0 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load float, ptr %i.j, align 8, !tbaa !20
  %i.l = fdiv float %4, %i.k
  %i.m = load i32, ptr %i.e, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.i, float noundef %i.l, i32 noundef %i.m)
  %i.n = load ptr, ptr %1, align 8, !tbaa !17
  %i.o = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull @.str.4) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL27hb_vector_pdf_path_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !18
  %i.d = fdiv float %3, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.d, i32 noundef %i.f)
  %i.g = load ptr, ptr %1, align 8, !tbaa !17
  %i.h = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 noundef signext 32) ; 0 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !20
  %i.l = fdiv float %4, %i.k
  %i.m = load i32, ptr %i.e, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.i, float noundef %i.l, i32 noundef %i.m)
  %i.n = load ptr, ptr %1, align 8, !tbaa !17
  %i.o = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 noundef signext 32) ; 0 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !17
  %i.q = load float, ptr %i.b, align 4, !tbaa !18
  %i.r = fdiv float %5, %i.q
  %i.s = load i32, ptr %i.e, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.p, float noundef %i.r, i32 noundef %i.s)
  %i.t = load ptr, ptr %1, align 8, !tbaa !17
  %i.u = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.t, i8 noundef signext 32) ; 0 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !17
  %i.w = load float, ptr %i.j, align 8, !tbaa !20
  %i.x = fdiv float %6, %i.w
  %i.y = load i32, ptr %i.e, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.v, float noundef %i.x, i32 noundef %i.y)
  %i.z = load ptr, ptr %1, align 8, !tbaa !17
  %i.aa = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.z, i8 noundef signext 32) ; 0 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !17
  %i.ac = load float, ptr %i.b, align 4, !tbaa !18
  %i.ad = fdiv float %7, %i.ac
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, float noundef %i.ad, i32 noundef %i.ae)
  %i.af = load ptr, ptr %1, align 8, !tbaa !17
  %i.ag = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.af, i8 noundef signext 32) ; 0 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !17
  %i.ai = load float, ptr %i.j, align 8, !tbaa !20
  %i.aj = fdiv float %8, %i.ai
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !19
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, float noundef %i.aj, i32 noundef %i.ak)
  %i.al = load ptr, ptr %1, align 8, !tbaa !17
  %i.am = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.al, ptr noundef nonnull @.str.5) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL29hb_vector_pdf_path_close_pathP15hb_draw_funcs_tPvP15hb_draw_state_tS1_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull @.str.6) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL38free_static_vector_pdf_path_draw_funcsv() #4 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_pdf_path_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_pdf_path_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL33static_vector_pdf_path_draw_funcs acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_pdf_path_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_pdf_path_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZL33static_vector_pdf_path_draw_funcs, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_pdf_path_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !11

.critedge.i:                                      ; preds = %bb.b
  %i.d = tail call noundef ptr @hb_draw_funcs_get_empty() #8
  %.not3.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_pdf_path_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %i.a) #8
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_pdf_path_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_pdf_path_draw_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t43hb_vector_pdf_path_draw_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.d, i32 %i.b) ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.e, 1
  %i.g = extractvalue { i32, i1 } %i.e, 0         ; 4 uses
  %i.h = icmp slt i32 %i.g, 0
  %or.cond.i = or i1 %i.f, %i.h
  br i1 %or.cond.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp samesign ugt i32 %i.g, %i.i
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.h, !prof !10

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.i
  %.051.i.i.i = phi i32 [ %i.m, %.preheader.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.k = lshr i32 %.051.i.i.i, 1
  %i.l = add nuw i32 %.051.i.i.i, 8
  %i.m = add nuw i32 %i.l, %i.k                   ; 6 uses
  %i.n = icmp ugt i32 %i.g, %i.m
  br i1 %i.n, label %.preheader.i.i.i, label %.critedge.thread.i.i.i, !llvm.loop !0

.critedge.thread.i.i.i:                           ; preds = %.preheader.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %i.i, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  br i1 %.not8.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i

bb.d:                                             ; preds = %.critedge.thread.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = zext i32 %i.m to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #8 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i.i, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.t = zext i32 %i.s to i64
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !26
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.u, i64 range(i64 0, 4294967296) %i.t, i1 false), !alias.scope !52
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.d, %.critedge.thread.i.i.i
  %i.v = phi ptr [ null, %bb.d ], [ %i.p, %.critedge.thread.i.i.i ]
  %i.w = zext i32 %i.m to i64
  %i.x = tail call ptr @hb_realloc(ptr noundef %i.v, i64 noundef %i.w) #8 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not22.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, !prof !27

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.e
  %i.y = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.m, %i.y
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, label %bb.h

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.g, %bb.f
  %.1.i.i50.i.i.i = phi ptr [ %i.x, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i ], [ %i.r, %bb.f ], [ %i.r, %bb.g ]
  store ptr %.1.i.i50.i.i.i, ptr %i.o, align 8, !tbaa !26
  store i32 %i.m, ptr %0, align 8, !tbaa !24
  br label %bb.h

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i:        ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i.i
  %i.z = xor i32 %i.y, -1
  store i32 %i.z, ptr %0, align 8, !tbaa !24
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

bb.h:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread61.i.i.i, %bb.c
  store i32 %i.g, ptr %i.c, align 4, !tbaa !23
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.aa = and i64 %i.a, 4294967295
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ad = zext i32 %i.d to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull readonly align 1 %1, i64 range(i64 0, 4294967296) %i.aa, i1 false), !alias.scope !53
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

_ZN15hb_vector_buf_t10append_lenEPKcj.exit:       ; preds = %bb.a, %bb.b, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, %bb.h, %bb.i
  %.0.i = phi i1 [ true, %bb.i ], [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.b ], [ false, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i ]
  ret i1 %.0.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !25}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"branch_weights", i32 1, i32 1999}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 0, i32 1}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTS15hb_vector_buf_t", !13, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!"_ZTS21hb_vector_path_sink_t", !14, i64 0, !6, i64 8, !15, i64 12, !15, i64 16}
!17 = !{!16, !14, i64 0}
!18 = !{!16, !15, i64 12}
!19 = !{!16, !6, i64 8}
!20 = !{!16, !15, i64 16}
!21 = !{!"p1 omnipotent char", !13, i64 0}
!22 = !{!"_ZTS11hb_vector_tIcLb0EE", !6, i64 0, !6, i64 4, !21, i64 8}
!23 = !{!22, !6, i64 4}
!24 = !{!22, !6, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!22, !21, i64 8}
!27 = !{!"branch_weights", !"expected", i32 1913573, i32 2145570075}
!28 = !{!5, !5, i64 0}
!29 = !{!"branch_weights", i32 4001, i32 4000000}
!30 = distinct !{!30, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!31 = distinct !{!31, !30, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!32 = distinct !{!32, !30, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!33 = !{!32, !31}
!34 = distinct !{!34, !43}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!38 = distinct !{!38, !37, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!39 = distinct !{!39, !37, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!40 = distinct !{!40, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!41 = distinct !{!41, !40, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!42 = distinct !{!42, !40, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!39, !38}
!45 = !{!42, !41}
!46 = distinct !{!46, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!47 = distinct !{!47, !46, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!48 = distinct !{!48, !46, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!49 = distinct !{!49, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!50 = distinct !{!50, !49, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!51 = distinct !{!51, !49, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!52 = !{!48, !47}
!53 = !{!51, !50}
end_hunk_0
