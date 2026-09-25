Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-paint-svg?download=true
inline.NumInlined: 356
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@hb_paint_reduce_linear_anchors
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
  %5 = bitcast i32 %1 to <4 x i8>
  %6 = shufflevector <4 x i8> %5, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.j = uitofp <4 x i8> %6 to <4 x float>
  %i.k = fdiv <4 x float> %i.j, splat (float 2.550000e+02) ; 4 uses
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.m = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %7 = bitcast i32 %3 to <4 x i8>
  %8 = shufflevector <4 x i8> %7, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.n = uitofp <4 x i8> %8 to <4 x float>
  %i.o = fdiv <4 x float> %i.n, splat (float 2.550000e+02)
  %i.p = fsub float %2, %0                        ; 2 uses
  %i.q = tail call float @llvm.fabs.f32(float %i.p)
  %i.r = fdiv float %i.q, f0x3E490FDB
  %i.s = tail call float @llvm.ceil.f32(float %i.r)
  %i.t = fptosi float %i.s to i32
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 1) ; 2 uses
  %i.u = tail call float @cosf(float noundef %0) #12
  %i.v = tail call float @sinf(float noundef %0) #12
  %i.w = uitofp nneg i32 %spec.store.select.i to float
  %i.x = fsub <4 x float> %i.o, %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.0264.i = phi i32 [ 0, %bb.a ], [ %i.dx, %bb.e ] ; 2 uses
  %.sroa.11258.0263.i = phi float [ %i.v, %bb.a ], [ %i.ai, %bb.e ] ; 4 uses
  %.sroa.0257.0262.i = phi float [ %i.u, %bb.a ], [ %i.ah, %bb.e ] ; 4 uses
  %.sroa.7256.0261.i = phi <2 x float> [ %i.m, %bb.a ], [ %i.ag, %bb.e ]
  %.sroa.0255.0260.i = phi <2 x float> [ %i.l, %bb.a ], [ %i.af, %bb.e ]
  %i.y = uitofp nneg i32 %.0264.i to float
  %i.z = fadd float %i.y, 1.000000e+00
  %i.aa = fdiv float %i.z, %i.w                   ; 2 uses
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.aa, float %0) ; 2 uses
  %i.ac = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.ad, <4 x float> %i.k) ; 3 uses
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = shufflevector <4 x float> %i.ae, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  %i.ah = tail call float @cosf(float noundef %i.ab) #12 ; 5 uses
  %i.ai = tail call float @sinf(float noundef %i.ab) #12 ; 5 uses
  %i.aj = fmul float %i.i, %.sroa.0257.0262.i
  %i.ak = fmul float %i.i, %.sroa.11258.0263.i
  %i.al = fadd float %i.e, %i.aj
  %i.am = fadd float %i.g, %i.ak
  %i.an = fmul float %i.i, %i.ah
  %i.ao = fmul float %i.i, %i.ai
  %i.ap = fadd float %i.e, %i.an
  %i.aq = fadd float %i.g, %i.ao
  %i.ar = fadd float %.sroa.0257.0262.i, %i.ah    ; 3 uses
  %i.as = fadd float %.sroa.11258.0263.i, %i.ai   ; 3 uses
  %i.at = fmul float %i.as, %i.as
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.at) ; 2 uses
  %i.av = fcmp oeq float %i.au, 0.000000e+00
  br i1 %i.av, label %_ZL23hb_vector_svg_normalizeRK21hb_vector_svg_point_t.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.au)
  %i.aw = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ax = fmul float %i.ar, %i.aw
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.ay = fmul float %i.as, %i.aw
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.ay, i64 1
  br label %_ZL23hb_vector_svg_normalizeRK21hb_vector_svg_point_t.exit.i

_ZL23hb_vector_svg_normalizeRK21hb_vector_svg_point_t.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i.i, %bb.c ], [ zeroinitializer, %bb.b ] ; 5 uses
  %.sroa.0225.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 1 ; 3 uses
  %i.az = fneg float %.sroa.0225.4.vec.extract.i
  %i.ba = insertelement <2 x float> poison, float %.sroa.11258.0263.i, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %i.ai, i64 1 ; 3 uses
  %i.bc = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bd = fmul <2 x float> %i.bb, %i.bc
  %i.be = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = insertelement <2 x float> poison, float %.sroa.0257.0262.i, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.ah, i64 1 ; 3 uses
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bh, <2 x float> %i.bd) ; 2 uses
  %i.bj = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bi)
  %i.bk = fcmp olt <2 x float> %i.bj, splat (float f0x358637BD)
  %i.bl = bitcast <2 x i1> %i.bk to i2
  %.not = icmp eq i2 %i.bl, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL23hb_vector_svg_normalizeRK21hb_vector_svg_point_t.exit.i
  %.sroa.0225.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.i.i, i64 0 ; 2 uses
  %i.bm = fsub <2 x float> %i.bh, %i.bc
  %i.bn = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = fsub <2 x float> %i.bb, %i.bn
  %i.bp = fmul <2 x float> %i.bb, %i.bo
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bh, <2 x float> %i.bp)
  %i.br = fdiv <2 x float> %i.bq, %i.bi
  %i.bs = shufflevector <2 x float> %.sroa.0.0.i.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bt = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bu = fmul <4 x float> %i.bs, %i.bt           ; 4 uses
  %i.bv = extractelement <4 x float> %i.bu, i64 1
  %i.bw = fsub float %.sroa.0225.0.vec.extract.i, %i.bv ; 2 uses
  %i.bx = extractelement <4 x float> %i.bu, i64 0
  %i.by = fadd float %.sroa.0225.4.vec.extract.i, %i.bx ; 2 uses
  %i.bz = extractelement <4 x float> %i.bu, i64 3
  %i.ca = fsub float %.sroa.0225.0.vec.extract.i, %i.bz ; 2 uses
  %i.cb = extractelement <4 x float> %i.bu, i64 2
  %i.cc = fadd float %.sroa.0225.4.vec.extract.i, %i.cb ; 2 uses
  %i.cd = fsub float %i.bw, %.sroa.0257.0262.i
  %i.ce = fsub float %i.by, %.sroa.11258.0263.i
  %i.cf = fmul float %i.cd, 3.333300e-01
  %i.cg = fmul float %i.ce, 3.333300e-01
  %i.ch = fadd float %i.bw, %i.cf
  %i.ci = fadd float %i.by, %i.cg
  %i.cj = fmul float %i.i, %i.ch
  %i.ck = fmul float %i.i, %i.ci
  %i.cl = fadd float %i.e, %i.cj
  %i.cm = fadd float %i.g, %i.ck
  %i.cn = fsub float %i.ca, %i.ah
  %i.co = fsub float %i.cc, %i.ai
  %i.cp = fmul float %i.cn, 3.333300e-01
  %i.cq = fmul float %i.co, 3.333300e-01
  %i.cr = fadd float %i.ca, %i.cp
  %i.cs = fadd float %i.cc, %i.cq
  %i.ct = fmul float %i.i, %i.cr
  %i.cu = fmul float %i.i, %i.cs
  %i.cv = fadd float %i.e, %i.ct
  %i.cw = fadd float %i.g, %i.cu
  %i.cx = shufflevector <2 x float> %.sroa.0255.0260.i, <2 x float> %.sroa.7256.0261.i, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cy = fsub <4 x float> %i.ae, %i.cx
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cx) ; 3 uses
  %i.da = fcmp olt <4 x float> %i.cz, zeroinitializer
  %i.db = fcmp ogt <4 x float> %i.cz, splat (float 1.000000e+00)
  %i.dc = select <4 x i1> %i.db, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cz
  %i.dd = fmul <4 x float> %i.dc, splat (float 2.550000e+02)
  %i.de = fadd <4 x float> %i.dd, splat (float 5.000000e-01)
  %i.df = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.de)
  %i.dg = select <4 x i1> %i.da, <4 x float> zeroinitializer, <4 x float> %i.df
  %i.dh = fptoui <4 x float> %i.dg to <4 x i32>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.dj = trunc <4 x i32> %i.di to <4 x i8>
  %i.dk = bitcast <4 x i8> %i.dj to i32
  %i.dl = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull @.str.65) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.e, i32 noundef %i.c)
  %i.dm = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 44) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.g, i32 noundef %i.c)
  %i.dn = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull @.str.66) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.al, i32 noundef %i.c)
  %i.do = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 44) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.am, i32 noundef %i.c)
  %i.dp = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull @.str.67) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.cl, i32 noundef %i.c)
  %i.dq = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 44) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.cm, i32 noundef %i.c)
  %i.dr = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 32) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.cv, i32 noundef %i.c)
  %i.ds = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 44) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.cw, i32 noundef %i.c)
  %i.dt = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 32) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.ap, i32 noundef %i.c)
  %i.du = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 noundef signext 44) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %i.a, float noundef %i.aq, i32 noundef %i.c)
  %i.dv = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull @.str.68) ; 0 uses
  tail call void @_ZN15hb_vector_buf_t16append_svg_colorEjb(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i32 noundef %i.dk, i1 noundef zeroext true)
  %i.dw = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.a, ptr noundef nonnull @.str.22) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZL23hb_vector_svg_normalizeRK21hb_vector_svg_point_t.exit.i
  %i.dx = add nuw nsw i32 %.0264.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dx, %spec.store.select.i
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

end_hunk_0
