Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 274
loop-unroll.NumUnrolled: 473
begin_hunk_0_@_ZN2OTL27hb_transforming_pen_move_toEP15hb_draw_funcs_tPvP15hb_draw_state_tffS2_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !304
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !304
  %i.e = load <2 x float>, ptr %i.b, align 4, !tbaa !304
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1525 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1526 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !335  ; 9 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !358
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZN15hb_draw_funcs_t7move_toEPvR15hb_draw_state_tff.exit, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !359 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !360
  %i.q = fcmp une float %i.n, %i.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !361 ; 2 uses
  br i1 %i.q, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !730
  %i.t = fcmp une float %.pre, %i.s
  br i1 %i.t, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !364
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !365  ; 2 uses
  %.not.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i6, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %._crit_edge, %bb.d
  %i.aa = phi ptr [ %i.z, %bb.d ], [ null, %._crit_edge ]
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.k, float noundef %i.n, float noundef %.pre, ptr noundef %i.aa) #63, !inline_history !35
  br label %bb.e

bb.e:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !368
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !365 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ae, null
  br i1 %.not.i7, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit: ; preds = %bb.f, %bb.e
  %i.ah = phi ptr [ %i.ag, %bb.f ], [ null, %bb.e ]
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.k, ptr noundef %i.ah) #63, !inline_history !36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, i8 0, i64 12, i1 false)
  br label %_ZN15hb_draw_funcs_t7move_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t7move_toEPvR15hb_draw_state_tff.exit: ; preds = %bb.a, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit
  %i.ai = insertelement <2 x float> poison, float %3, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.aj, <2 x float> %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.am = insertelement <2 x float> poison, float %4, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.an, <2 x float> %i.ak)
  store <2 x float> %i.ao, ptr %i.al, align 4, !tbaa !304
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2OTL27hb_transforming_pen_line_toEP15hb_draw_funcs_tPvP15hb_draw_state_tffS2_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !304
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !304
  %i.e = load <2 x float>, ptr %i.b, align 4, !tbaa !304
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1525 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1526 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !335  ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !358
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.b, label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.k)
  br label %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit: ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !364
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !365  ; 2 uses
  %.not.i5 = icmp eq ptr %i.p, null
  br i1 %.not.i5, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.c

bb.c:                                             ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit, %bb.c
  %i.s = phi ptr [ %i.r, %bb.c ], [ null, %_ZN15hb_draw_funcs_t7line_toEPvR15hb_draw_state_tff.exit ]
  %i.t = insertelement <2 x float> poison, float %3, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.u, <2 x float> %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.x = insertelement <2 x float> poison, float %4, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.y, <2 x float> %i.v) ; 3 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.k, float noundef %i.aa, float noundef %i.ab, ptr noundef %i.s) #63, !inline_history !35
  store <2 x float> %i.z, ptr %i.w, align 4, !tbaa !304
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2OTL32hb_transforming_pen_quadratic_toEP15hb_draw_funcs_tPvP15hb_draw_state_tffffS2_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !304 ; 3 uses
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !304 ; 3 uses
  %i.e = load <2 x float>, ptr %i.b, align 4, !tbaa !304 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1525 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1526 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !335  ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !358
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.b, label %_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.k)
  br label %_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit

_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit: ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !724
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !365  ; 2 uses
  %.not.i6 = icmp eq ptr %i.p, null
  br i1 %.not.i6, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit, label %bb.c

bb.c:                                             ; preds = %_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !723
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit: ; preds = %_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit, %bb.c
  %i.s = phi ptr [ %i.r, %bb.c ], [ null, %_ZN15hb_draw_funcs_t12quadratic_toEPvR15hb_draw_state_tffff.exit ]
  %i.t = insertelement <2 x float> poison, float %5, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.u, <2 x float> %i.c)
  %i.w = extractelement <2 x float> %i.d, i64 1
  %i.x = extractelement <2 x float> %i.c, i64 1
  %i.y = tail call float @llvm.fmuladd.f32(float %i.w, float %3, float %i.x)
  %i.z = extractelement <2 x float> %i.e, i64 1
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %4, float %i.y)
  %i.ab = extractelement <2 x float> %i.d, i64 0
  %i.ac = extractelement <2 x float> %i.c, i64 0
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ab, float %3, float %i.ac)
  %i.ae = extractelement <2 x float> %i.e, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %4, float %i.ad)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ah = insertelement <2 x float> poison, float %6, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.ai, <2 x float> %i.v) ; 3 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 0
  %i.al = extractelement <2 x float> %i.aj, i64 1
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.k, float noundef %i.af, float noundef %i.aa, float noundef %i.ak, float noundef %i.al, ptr noundef %i.s) #63, !inline_history !37
  store <2 x float> %i.aj, ptr %i.ag, align 4, !tbaa !304
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2OTL28hb_transforming_pen_cubic_toEP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS2_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !304 ; 2 uses
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !304 ; 2 uses
  %i.e = load <2 x float>, ptr %i.b, align 4, !tbaa !304 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1525 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1526 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !335  ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !358
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.b, label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.k)
  br label %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit

_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit: ; preds = %bb.a, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !725
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !365  ; 2 uses
  %.not.i7 = icmp eq ptr %i.p, null
  br i1 %.not.i7, label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit, label %bb.c

bb.c:                                             ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !726
  br label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit

_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit: ; preds = %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit, %bb.c
  %i.s = phi ptr [ %i.r, %bb.c ], [ null, %_ZN15hb_draw_funcs_t8cubic_toEPvR15hb_draw_state_tffffff.exit ]
  %i.t = insertelement <2 x float> poison, float %7, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.u, <2 x float> %i.c)
  %10 = extractelement <2 x float> %i.e, i64 1    ; 2 uses
  %11 = extractelement <2 x float> %i.e, i64 0    ; 2 uses
  %i.w = shufflevector <2 x float> %i.d, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.x = insertelement <4 x float> poison, float %5, i64 0
  %i.y = insertelement <4 x float> %i.x, float %3, i64 1
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aa = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.ab = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> %i.z, <4 x float> %i.aa) ; 4 uses
  %12 = extractelement <4 x float> %i.ab, i64 0
  %13 = tail call float @llvm.fmuladd.f32(float %10, float %6, float %12)
  %14 = extractelement <4 x float> %i.ab, i64 2
  %15 = tail call float @llvm.fmuladd.f32(float %11, float %6, float %14)
  %16 = extractelement <4 x float> %i.ab, i64 1
  %17 = tail call float @llvm.fmuladd.f32(float %10, float %4, float %16)
  %18 = extractelement <4 x float> %i.ab, i64 3
  %19 = tail call float @llvm.fmuladd.f32(float %11, float %4, float %18)
  %20 = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %21 = insertelement <2 x float> poison, float %8, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %22, <2 x float> %i.v) ; 3 uses
  %i.ac = extractelement <2 x float> %23, i64 0
  %i.ad = extractelement <2 x float> %23, i64 1
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.k, float noundef %19, float noundef %17, float noundef %15, float noundef %13, float noundef %i.ac, float noundef %i.ad, ptr noundef %i.s) #63, !inline_history !34
  store <2 x float> %23, ptr %20, align 4, !tbaa !304
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2OTL30hb_transforming_pen_close_pathEP15hb_draw_funcs_tPvP15hb_draw_state_tS2_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1525 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1526 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !335  ; 8 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !358
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !359 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.k = load float, ptr %i.j, align 4, !tbaa !360
  %i.l = fcmp une float %i.i, %i.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !361 ; 2 uses
  br i1 %i.l, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !730
  %i.o = fcmp une float %.pre, %i.n
  br i1 %i.o, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !364
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !365  ; 2 uses
  %.not.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i4, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %._crit_edge, %bb.d
  %i.v = phi ptr [ %i.u, %bb.d ], [ null, %._crit_edge ]
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(48) %i.f, float noundef %i.i, float noundef %.pre, ptr noundef %i.v) #63, !inline_history !35
  br label %bb.e

bb.e:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !368
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !365  ; 2 uses
  %.not.i5 = icmp eq ptr %i.z, null
  br i1 %.not.i5, label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit

_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit: ; preds = %bb.e, %bb.f
  %i.ac = phi ptr [ %i.ab, %bb.f ], [ null, %bb.e ]
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(48) %i.f, ptr noundef %i.ac) #63, !inline_history !36
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit: ; preds = %bb.a, %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @atexit(ptr noundef) local_unnamed_addr #23

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2OTL34free_static_transforming_pen_funcsEv() #16 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZN2OTL29static_transforming_pen_funcsE acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZN2OTL29static_transforming_pen_funcsE, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !268

.critedge.i:                                      ; preds = %bb.b
  %.not3.i.i = icmp eq ptr %i.a, @_hb_Null_hb_draw_funcs_t
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %i.a)
  br label %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_tN2OT39hb_transforming_pen_funcs_lazy_loader_tEvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT18glyf_accelerator_t10get_pointsINS_9glyf_impl14path_builder_tEEEbP9hb_font_tjT_10hb_array_tIKiER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef byval(%"struct.OT::glyf_impl::path_builder_t") align 8 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %8 = alloca %"struct.OT::glyf_impl::Glyph", align 8 ; 10 uses
  %9 = alloca %struct.hb_array_t.0, align 8       ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !348
  %.not = icmp ult i32 %2, %i.b
  br i1 %.not, label %bb.b, label %.loopexit522

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !356
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3198)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !474, !range !380, !noalias !3198, !noundef !293
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !272, !noalias !3198 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @_hb_NullPool, ptr %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275, !noalias !3198 ; 4 uses
  %i.k = zext i32 %2 to i64                       ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 1, !tbaa !283, !noalias !3198
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 1
  %i.q = add nuw i32 %2, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.r
  %i.t = load i16, ptr %i.s, align 1, !tbaa !283, !noalias !3198
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.y = load i32, ptr %i.x, align 1, !tbaa !278, !noalias !3198
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = add nuw i32 %2, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 1, !tbaa !278, !noalias !3198
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %i.ad)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.018.i = phi i32 [ %i.w, %bb.c ], [ %i.ae, %bb.d ] ; 3 uses
  %.0.i = phi i32 [ %i.p, %bb.c ], [ %i.z, %bb.d ] ; 3 uses
  %i.af = icmp ugt i32 %.0.i, %.018.i
  br i1 %i.af, label %.critedge.i, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !272, !noalias !3198 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr @_hb_NullPool, ptr %i.ah ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !276, !noalias !3198
  %i.ak = icmp ugt i32 %.018.i, %i.aj
  br i1 %i.ak, label %.critedge.i, label %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i, !prof !267

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false), !alias.scope !3198
  store ptr @_hb_NullPool, ptr %i.al, align 8, !tbaa !1531, !alias.scope !3198
  br label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit

_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !275, !noalias !3198
  %i.ao = zext i32 %.0.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = sub nuw i32 %.018.i, %.0.i              ; 2 uses
  %.sroa.2.8.insert.ext.i = zext i32 %i.aq to i64
  %i.ar = icmp ult i32 %i.aq, 10
  %spec.select.i.i24.i = select i1 %i.ar, ptr @_hb_NullPool, ptr %i.ap ; 2 uses
  %i.as = load i16, ptr %spec.select.i.i24.i, align 1, !tbaa !283, !noalias !3198 ; 2 uses
  %i.at = icmp eq i16 %i.as, 0
  %i.au = tail call i16 @llvm.bswap.i16(i16 %i.as)
  %i.av = icmp sgt i16 %i.au, 0
  %spec.select = select i1 %i.av, i32 1, i32 2
  %.sroa.7.0 = select i1 %i.at, i32 0, i32 %spec.select, !prof !267
  store ptr %i.ap, ptr %8, align 8
  %.sroa.4520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.2.8.insert.ext.i, ptr %.sroa.4520.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %spec.select.i.i24.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit

end_hunk_0
