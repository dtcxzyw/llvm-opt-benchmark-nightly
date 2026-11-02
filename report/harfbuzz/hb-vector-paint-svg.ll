Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-paint-svg?download=true
inline.NumInlined: 356
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN15hb_vector_buf_t13append_base64EPKhj:bb.a
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i, %bb.a, %bb.b, %._crit_edge, %bb.n
  %.049 = phi i1 [ false, %bb.a ], [ true, %._crit_edge ], [ true, %bb.n ], [ false, %bb.b ], [ false, %bb.c ], [ false, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i ]
  ret i1 %.049
}

declare void @hb_paint_normalize_color_line(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hb_paint_reduce_linear_anchors(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare i32 @hb_color_line_get_extend(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL30hb_vector_svg_emit_color_stopsP17hb_vector_paint_tP15hb_vector_buf_tP11hb_vector_tI15hb_color_stop_tLb0EE(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !74
  %.not2 = icmp eq i32 %i.b, 0
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !495  ; 4 uses
  %i.h = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull @.str.54) ; 0 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !496
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %0, float noundef %i.k, i32 noundef 4)
  %i.l = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull @.str.55) ; 0 uses
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 255
  %i.o = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.n) ; 0 uses
  %i.p = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 noundef signext 44) ; 0 uses
  %i.q = lshr i32 %i.g, 16
  %i.r = and i32 %i.q, 255
  %i.s = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.r) ; 0 uses
  %i.t = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 noundef signext 44) ; 0 uses
  %i.u = lshr i32 %i.g, 24
  %i.v = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %i.u) ; 0 uses
  %i.w = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull @.str.9) ; 0 uses
  %i.x = and i32 %i.g, 255                        ; 2 uses
  %.not = icmp eq i32 %i.x, 255
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull @.str.56) ; 0 uses
  %i.z = uitofp nneg i32 %i.x to float
  %i.aa = fdiv float %i.z, 2.550000e+02
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %0, float noundef %i.aa, i32 noundef 4)
  %i.ab = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 noundef signext 34) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull @.str.11) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !74
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !493
}

declare i32 @hb_color_line_get_color_stops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15hb_color_stop_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !501    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !60
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !10

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !497

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !10

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75
  tail call void @hb_free(ptr noundef %i.m) #12
  br label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #12 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !74   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !75
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 103079215081) %i.v, i1 false), !alias.scope !502
  br label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 12
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #12 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !61

_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !501   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !75
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !501
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

declare void @hb_paint_sweep_gradient_tiles(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL30hb_vector_svg_sweep_emit_patchfjfjPv(float noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #9 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !79     ; 23 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !80   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !504 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load float, ptr %i.f, align 8, !tbaa !505 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !81 ; 8 uses
  %i.j = bitcast i32 %1 to <4 x i8>
  %i.k = shufflevector <4 x i8> %i.j, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.l = uitofp <4 x i8> %i.k to <4 x float>
  %i.m = fdiv <4 x float> %i.l, splat (float 2.550000e+02) ; 4 uses
  %i.n = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.o = shufflevector <4 x float> %i.m, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.p = bitcast i32 %3 to <4 x i8>
  %i.q = shufflevector <4 x i8> %i.p, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.r = uitofp <4 x i8> %i.q to <4 x float>
  %i.s = fdiv <4 x float> %i.r, splat (float 2.550000e+02)
  %i.t = fsub float %2, %0                        ; 2 uses
  %i.u = tail call float @llvm.fabs.f32(float %i.t)
  %i.v = fdiv float %i.u, f0x3E490FDB
  %i.w = tail call float @llvm.ceil.f32(float %i.v)
  %i.x = fptosi float %i.w to i32
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.x, i32 1) ; 2 uses
  %5 = tail call float @cosf(float noundef %0) #12
  %6 = tail call float @sinf(float noundef %0) #12
  %i.y = uitofp nneg i32 %spec.store.select.i to float
  %i.z = fsub <4 x float> %i.s, %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.0264.i = phi i32 [ 0, %bb.a ], [ %i.dd, %bb.e ] ; 2 uses
  %.sroa.11258.0263.i = phi float [ %6, %bb.a ], [ %10, %bb.e ] ; 4 uses
  %.sroa.0257.0262.i = phi float [ %5, %bb.a ], [ %9, %bb.e ] ; 4 uses
  %.sroa.7256.0261.i = phi <2 x float> [ %i.o, %bb.a ], [ %i.ag, %bb.e ]
  %.sroa.0255.0260.i = phi <2 x float> [ %i.n, %bb.a ], [ %i.af, %bb.e ]
  %i.aa = uitofp nneg i32 %.0264.i to float
  %i.ab = fadd float %i.aa, 1.000000e+00
  %i.ac = fdiv float %i.ab, %i.y                  ; 2 uses
  %7 = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.ac, float %0) ; 2 uses
  %i.ad = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %8 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.ae, <4 x float> %i.m) ; 3 uses
  %i.af = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %9 = tail call float @cosf(float noundef %7) #12 ; 5 uses
  %10 = tail call float @sinf(float noundef %7) #12 ; 5 uses
  %i.ah = fmul float %i.i, %.sroa.0257.0262.i
  %i.ai = fmul float %i.i, %.sroa.11258.0263.i
  %i.aj = fadd float %i.e, %i.ah
  %i.ak = fadd float %i.g, %i.ai
  %i.al = fmul float %i.i, %9
  %i.am = fmul float %i.i, %10
  %i.an = fadd float %i.e, %i.al
  %i.ao = fadd float %i.g, %i.am
  %i.ap = fadd float %.sroa.0257.0262.i, %9       ; 3 uses
  %i.aq = fadd float %.sroa.11258.0263.i, %10     ; 3 uses
  %i.ar = fmul float %i.aq, %i.aq
  %11 = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ar) ; 2 uses
  %i.as = fcmp oeq float %11, 0.000000e+00
  br i1 %i.as, label %_ZL23hb_vector_svg_normalizeRK21hb_vector_svg_point_t.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %11)
  %i.at = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.au = fmul float %i.ap, %i.at
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.au, i64 0
  %i.av = fmul float %i.aq, %i.at
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.av, i64 1
  br label %_ZL23hb_vector_svg_normalizeRK21hb_vector_svg_point_t.exit.i

_ZL23hb_vector_svg_normalizeRK21hb_vector_svg_point_t.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i.i, %bb.c ], [ zeroinitializer, %bb.b ] ; 5 uses
  %.sroa.0225.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 1 ; 3 uses
  %i.aw = fneg float %.sroa.0225.4.vec.extract.i
  %i.ax = insertelement <2 x float> poison, float %.sroa.11258.0263.i, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %10, i64 1 ; 3 uses
  %i.az = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = fmul <2 x float> %i.ay, %i.az
  %i.bb = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x float> poison, float %.sroa.0257.0262.i, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %9, i64 1 ; 3 uses
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.be, <2 x float> %i.ba) ; 2 uses
  %13 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %12)
  %i.bf = fcmp olt <2 x float> %13, splat (float f0x358637BD)
  %i.bg = bitcast <2 x i1> %i.bf to i2
  %.not = icmp eq i2 %i.bg, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL23hb_vector_svg_normalizeRK21hb_vector_svg_point_t.exit.i
  %.sroa.0225.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0 ; 2 uses
  %i.bh = fsub <2 x float> %i.be, %i.az
  %i.bi = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = fsub <2 x float> %i.ay, %i.bi
  %i.bk = fmul <2 x float> %i.ay, %i.bj
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.be, <2 x float> %i.bk)
  %i.bl = fdiv <2 x float> %14, %12
  %i.bm = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bn = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bo = fmul <4 x float> %i.bm, %i.bn           ; 4 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 1
  %i.bq = fsub float %.sroa.0225.0.vec.extract.i, %i.bp ; 2 uses
  %i.br = extractelement <4 x float> %i.bo, i64 0
  %i.bs = fadd float %.sroa.0225.4.vec.extract.i, %i.br ; 2 uses
  %i.bt = extractelement <4 x float> %i.bo, i64 3
  %i.bu = fsub float %.sroa.0225.0.vec.extract.i, %i.bt ; 2 uses
  %i.bv = extractelement <4 x float> %i.bo, i64 2
  %i.bw = fadd float %.sroa.0225.4.vec.extract.i, %i.bv ; 2 uses
  %i.bx = fsub float %i.bq, %.sroa.0257.0262.i
  %i.by = fsub float %i.bs, %.sroa.11258.0263.i
  %i.bz = fmul float %i.bx, 3.333300e-01
  %i.ca = fmul float %i.by, 3.333300e-01
  %i.cb = fadd float %i.bq, %i.bz
  %i.cc = fadd float %i.bs, %i.ca
  %i.cd = fmul float %i.i, %i.cb
  %i.ce = fmul float %i.i, %i.cc
  %i.cf = fadd float %i.e, %i.cd
  %i.cg = fadd float %i.g, %i.ce
  %i.ch = fsub float %i.bu, %9
  %i.ci = fsub float %i.bw, %10
  %i.cj = fmul float %i.ch, 3.333300e-01
  %i.ck = fmul float %i.ci, 3.333300e-01
  %i.cl = fadd float %i.bu, %i.cj
  %i.cm = fadd float %i.bw, %i.ck
  %i.cn = fmul float %i.i, %i.cl
  %i.co = fmul float %i.i, %i.cm
  %i.cp = fadd float %i.e, %i.cn
  %i.cq = fadd float %i.g, %i.co
  %i.cr = shufflevector <2 x float> %.sroa.0255.0260.i, <2 x float> %.sroa.7256.0261.i, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cs = fsub <4 x float> %8, %i.cr
  %15 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cr) ; 3 uses
  %i.ct = fcmp olt <4 x float> %15, zeroinitializer
  %i.cu = fcmp ogt <4 x float> %15, splat (float 1.000000e+00)
  %i.cv = select <4 x i1> %i.cu, <4 x float> splat (float 1.000000e+00), <4 x float> %15
  %i.cw = fmul <4 x float> %i.cv, splat (float 2.550000e+02)
  %i.cx = fadd <4 x float> %i.cw, splat (float 5.000000e-01)
  %16 = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.cx)
  %i.cy = select <4 x i1> %i.ct, <4 x float> zeroinitializer, <4 x float> %16
  %i.cz = fptoui <4 x float> %i.cy to <4 x i32>
  %i.da = shufflevector <4 x i32> %i.cz, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.db = trunc <4 x i32> %i.da to <4 x i8>
  %i.dc = bitcast <4 x i8> %i.db to i32
  %17 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull @.str.65) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.e, i32 noundef %i.c)
  %18 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 44) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.g, i32 noundef %i.c)
  %19 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull @.str.66) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.aj, i32 noundef %i.c)
  %20 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 44) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.ak, i32 noundef %i.c)
  %21 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull @.str.67) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.cf, i32 noundef %i.c)
  %22 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 44) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.cg, i32 noundef %i.c)
  %23 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 32) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.cp, i32 noundef %i.c)
  %24 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 44) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.cq, i32 noundef %i.c)
  %25 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 32) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.an, i32 noundef %i.c)
  %26 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 44) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.ao, i32 noundef %i.c)
  %27 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull @.str.68) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t16append_svg_colorEjb(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef %i.dc, i1 noundef zeroext true)
  %28 = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull @.str.22) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZL23hb_vector_svg_normalizeRK21hb_vector_svg_point_t.exit.i
  %i.dd = add nuw nsw i32 %.0264.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dd, %spec.store.select.i
  br i1 %exitcond.not.i, label %_ZL29hb_vector_svg_add_sweep_patchP15hb_vector_buf_tjffffRK20hb_vector_svg_rgba_tfS3_.exit, label %bb.b, !llvm.loop !503

_ZL29hb_vector_svg_add_sweep_patchP15hb_vector_buf_tjffffRK20hb_vector_svg_rgba_tfS3_.exit: ; preds = %bb.e
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #10

declare i32 @hb_set_has(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @hb_set_add(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @hb_font_paint_glyph(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @hb_set_del(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @hb_paint_funcs_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !50}
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
!13 = !{!"_ZTS11hb_atomic_tIiE", !6, i64 0}
!14 = !{!"_ZTS20hb_reference_count_t", !13, i64 0}
!15 = !{!"bool", !5, i64 0}
!16 = !{!"_ZTS11hb_atomic_tIbE", !15, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 _ZTS20hb_user_data_array_t", !17, i64 0}
!19 = !{!"_ZTS11hb_atomic_tIP20hb_user_data_array_tE", !18, i64 0}
!20 = !{!"_ZTS18hb_object_header_t", !14, i64 0, !16, i64 4, !19, i64 8}
!21 = !{!"_ZTS18hb_vector_format_t", !5, i64 0}
!22 = !{!"float", !5, i64 0}
!23 = !{!"_ZTS14hb_transform_tIfE", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20}
!24 = !{!"_ZTS19hb_vector_extents_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!25 = !{!"short", !5, i64 0}
!26 = !{!"p1 _ZTSN12hb_hashmap_tIjjLb0EE6item_tE", !17, i64 0}
!27 = !{!"_ZTS12hb_hashmap_tIjjLb0EE", !20, i64 0, !15, i64 16, !25, i64 18, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !26, i64 40}
!28 = !{!"p1 omnipotent char", !17, i64 0}
!29 = !{!"_ZTS11hb_vector_tIcLb0EE", !6, i64 0, !6, i64 4, !28, i64 8}
!30 = !{!"_ZTS15hb_vector_buf_t", !29, i64 0, !6, i64 16}
!31 = !{!"p1 _ZTS15hb_vector_buf_t", !17, i64 0}
!32 = !{!"_ZTS11hb_vector_tI15hb_vector_buf_tLb0EE", !6, i64 0, !6, i64 4, !31, i64 8}
!33 = !{!"long", !5, i64 0}
!34 = !{!"_ZTS21hb_vector_path_sink_t", !31, i64 0, !6, i64 8, !22, i64 12, !22, i64 16}
!35 = !{!"p1 _ZTS8hb_set_t", !17, i64 0}
!36 = !{!"_ZTS11hb_vector_tI15hb_color_stop_tLb0EE", !6, i64 0, !6, i64 4, !17, i64 8}
!37 = !{!"p1 _ZTS9hb_blob_t", !17, i64 0}
!38 = !{!"_ZTS17hb_vector_paint_t", !20, i64 0, !21, i64 16, !23, i64 20, !22, i64 44, !22, i64 48, !24, i64 52, !15, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !27, i64 88, !28, i64 136, !6, i64 144, !30, i64 152, !30, i64 176, !32, i64 200, !33, i64 216, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !33, i64 240, !34, i64 248, !6, i64 272, !6, i64 276, !6, i64 280, !35, i64 288, !36, i64 296, !30, i64 312, !37, i64 336}
!39 = !{i8 0, i8 2}
!40 = !{}
!41 = !{!30, !6, i64 16}
!42 = !{!"_ZTS21hb_vector_blob_meta_t", !28, i64 0, !6, i64 8, !15, i64 12, !15, i64 13}
!43 = !{!42, !15, i64 12}
!44 = !{!42, !28, i64 0}
!45 = !{!42, !6, i64 8}
!46 = !{!29, !28, i64 8}
!47 = !{!29, !6, i64 4}
!48 = !{!29, !6, i64 0}
!49 = !{!"branch_weights", i32 2000, i32 4002001}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"branch_weights", !"expected", i32 1913573, i32 2145570075}
!52 = !{!5, !5, i64 0}
!53 = !{!"branch_weights", i32 4001, i32 4000000}
!54 = !{!42, !15, i64 13}
!55 = !{!38, !6, i64 204}
!56 = !{!32, !6, i64 0}
!57 = !{!32, !31, i64 8}
!58 = !{!32, !6, i64 4}
!59 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!60 = !{!6, !6, i64 0}
!61 = !{!"branch_weights", !"expected", i32 1914245, i32 2145569403}
!62 = !{!38, !6, i64 228}
!63 = !{!38, !6, i64 224}
!64 = !{!38, !22, i64 44}
!65 = !{!38, !22, i64 48}
!66 = !{!38, !33, i64 216}
!67 = !{!38, !33, i64 240}
!68 = !{!34, !31, i64 0}
!69 = !{!38, !6, i64 192}
!70 = !{!34, !6, i64 8}
!71 = !{!22, !22, i64 0}
!72 = !{!38, !28, i64 136}
!73 = !{!38, !6, i64 144}
!74 = !{!36, !6, i64 4}
!75 = !{!36, !17, i64 8}
!76 = !{!38, !17, i64 304}
!77 = !{!38, !6, i64 272}
!78 = !{!"_ZTS25hb_vector_svg_sweep_ctx_t", !31, i64 0, !6, i64 8, !22, i64 12, !22, i64 16, !22, i64 20}
!79 = !{!78, !31, i64 0}
!80 = !{!78, !6, i64 8}
!81 = !{!78, !22, i64 20}
!82 = distinct !{null, null, null}
!83 = distinct !{null, null}
!84 = distinct !{!84, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!85 = distinct !{!85, !84, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!86 = distinct !{!86, !84, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!88 = distinct !{!88, !87, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!89 = distinct !{!89, !87, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!90 = distinct !{!90, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!91 = distinct !{!91, !90, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!92 = distinct !{!92, !90, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!93 = distinct !{!93, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!94 = distinct !{!94, !93, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!95 = distinct !{!95, !93, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!96 = distinct !{!96, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!97 = distinct !{!97, !96, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!98 = distinct !{!98, !96, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!99 = distinct !{!99, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!100 = distinct !{!100, !99, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!101 = distinct !{!101, !99, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!102 = distinct !{!102, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!103 = distinct !{!103, !102, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!104 = distinct !{!104, !102, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!106 = distinct !{!106, !105, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!107 = distinct !{!107, !105, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!109 = distinct !{!109, !108, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!110 = distinct !{!110, !108, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!112 = distinct !{!112, !111, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!113 = distinct !{!113, !111, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!114 = distinct !{!114, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!115 = distinct !{!115, !114, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!116 = distinct !{!116, !114, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!118 = distinct !{!118, !117, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!119 = distinct !{!119, !117, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!120 = distinct !{!120, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!121 = distinct !{!121, !120, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!122 = distinct !{!122, !120, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!123 = distinct !{!123, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!124 = distinct !{!124, !123, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!125 = distinct !{!125, !123, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!126 = distinct !{!126, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!127 = distinct !{!127, !126, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!128 = distinct !{!128, !126, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!129 = distinct !{!129, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!130 = distinct !{!130, !129, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!131 = distinct !{!131, !129, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!132 = distinct !{!132, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!133 = distinct !{!133, !132, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!134 = distinct !{!134, !132, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!136 = distinct !{!136, !135, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!137 = distinct !{!137, !135, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!138 = distinct !{!138, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!139 = distinct !{!139, !138, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!140 = distinct !{!140, !138, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!142 = distinct !{!142, !141, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!143 = distinct !{!143, !141, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!144 = distinct !{!144, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!145 = distinct !{!145, !144, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!146 = distinct !{!146, !144, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!148 = distinct !{!148, !147, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!149 = distinct !{!149, !147, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!150 = distinct !{!150, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!151 = distinct !{!151, !150, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!152 = distinct !{!152, !150, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!153 = distinct !{!153, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!154 = distinct !{!154, !153, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!155 = distinct !{!155, !153, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!156 = distinct !{!156, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!157 = distinct !{!157, !156, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!158 = distinct !{!158, !156, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!159 = distinct !{!159, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!160 = distinct !{!160, !159, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!161 = distinct !{!161, !159, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!162 = distinct !{!162, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!163 = distinct !{!163, !162, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!164 = distinct !{!164, !162, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!165 = distinct !{!165, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!166 = distinct !{!166, !165, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!167 = distinct !{!167, !165, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!168 = distinct !{!168, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!169 = distinct !{!169, !168, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!170 = distinct !{!170, !168, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!171 = distinct !{!171, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!172 = distinct !{!172, !171, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!173 = distinct !{!173, !171, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!174 = distinct !{!174, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!175 = distinct !{!175, !174, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!176 = distinct !{!176, !174, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!177 = distinct !{!177, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!178 = distinct !{!178, !177, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!179 = distinct !{!179, !177, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!180 = distinct !{!180, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!181 = distinct !{!181, !180, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!182 = distinct !{!182, !180, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!183 = distinct !{!183, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!184 = distinct !{!184, !183, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!185 = distinct !{!185, !183, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!186 = distinct !{!186, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!187 = distinct !{!187, !186, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!188 = distinct !{!188, !186, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!189 = distinct !{!189, i1 true, !"_ZL9hb_memcpyPvPKvm"}
!190 = distinct !{!190, !189, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!191 = distinct !{!191, !189, !"_ZL9hb_memcpyPvPKvm: argument 0"}
end_hunk_0
