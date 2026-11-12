Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-paint?download=true
inline.NumInlined: 583
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL26hb_raster_paint_fill_glyphP16hb_paint_funcs_tPvjP9hb_font_tijS1_:bb.a
  tail call void @hb_font_draw_glyph(ptr noundef %3, i32 noundef %2, ptr noundef %i.au, ptr noundef %i.m) #17
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !103
  %i.ax = tail call noundef i64 @_Z28hb_raster_draw_get_edge_workP16hb_raster_draw_tj(ptr noundef %i.m, i32 noundef %i.aw) #17
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !39
  %i.az = sub nsw i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.i, align 8, !tbaa !39
  %i.ba = tail call ptr @hb_raster_draw_render(ptr noundef %i.m) #17 ; 4 uses
  %.not23 = icmp eq ptr %i.ba, null
  br i1 %.not23, label %_ZN17hb_raster_paint_t15current_surfaceEv.exit.thread, label %bb.d, !prof !13

bb.d:                                             ; preds = %_ZN17hb_raster_paint_t27current_effective_transformEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @hb_raster_image_get_extents(ptr noundef nonnull %i.ba, ptr noundef nonnull %7) #17
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !39  ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %bb.e, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !prof !47

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !104
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !105
  %i.bi = zext i32 %i.bh to i64
  %i.bj = mul nuw nsw i64 %i.bi, %i.bf
  %i.bk = sub nsw i64 %i.bb, %i.bj
  store i64 %i.bk, ptr %i.i, align 8, !tbaa !39
  call fastcc void @_ZL21hb_raster_paint_solidP17hb_raster_paint_tP17hb_raster_image_tjS2_(ptr noundef nonnull %1, ptr noundef nonnull %i.h, i32 noundef %5, ptr noundef nonnull %i.ba)
  br label %_ZN17hb_raster_paint_t11charge_workEl.exit

_ZN17hb_raster_paint_t11charge_workEl.exit:       ; preds = %bb.d, %bb.e
  call void @hb_raster_draw_recycle_image(ptr noundef %i.m, ptr noundef nonnull %i.ba) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZN17hb_raster_paint_t15current_surfaceEv.exit.thread

_ZN17hb_raster_paint_t15current_surfaceEv.exit.thread: ; preds = %bb.a, %_ZN17hb_raster_paint_t11charge_workEl.exit, %_ZN17hb_raster_paint_t27current_effective_transformEv.exit, %bb.b, %_ZN17hb_raster_paint_t15current_surfaceEv.exit
  ret void
}

declare void @hb_paint_funcs_set_color_glyph_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZL27hb_raster_paint_color_glyphP16hb_paint_funcs_tPvjP9hb_font_tS1_(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4) #11 {
bb.a:
  ret i32 0
}

declare void @hb_paint_funcs_set_push_clip_glyph_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL31hb_raster_paint_push_clip_glyphP16hb_paint_funcs_tPvjP9hb_font_tS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  tail call fastcc void @_ZL18ensure_initializedP17hb_raster_paint_t(ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75   ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZL38hb_raster_paint_push_clip_from_emitterP17hb_raster_paint_tPFvP16hb_raster_draw_tPvES3_.exit, label %_ZN17hb_raster_paint_t15current_surfaceEv.exit.i

_ZN17hb_raster_paint_t15current_surfaceEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = add i32 %i.b, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZL38hb_raster_paint_push_clip_from_emitterP17hb_raster_paint_tPFvP16hb_raster_draw_tPvES3_.exit, label %bb.b, !prof !100

bb.b:                                             ; preds = %_ZN17hb_raster_paint_t15current_surfaceEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !106  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !103  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %1, i32 noundef %i.j, i32 noundef %i.l)
  br label %_ZL38hb_raster_paint_push_clip_from_emitterP17hb_raster_paint_tPFvP16hb_raster_draw_tPvES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !40   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !99, !noalias !183 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN17hb_raster_paint_t27current_effective_transformEv.exit.i, label %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i.i, !prof !13

_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i.i: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95, !noalias !183
  %i.v = add i32 %i.s, -1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.w ; 6 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.0.0.copyload.i = load float, ptr %i.x, align 4, !tbaa !16
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !16
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.9.0.copyload.i = load float, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %.sroa.12.0.copyload.i = load float, ptr %.sroa.12.0..sroa_idx.i, align 4, !tbaa !16
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.15.0.copyload.i = load float, ptr %.sroa.15.0..sroa_idx.i, align 4, !tbaa !16
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %.sroa.18.0.copyload.i = load float, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !16
  %i.y = insertelement <2 x float> poison, float %.sroa.12.0.copyload.i, i64 0
  %i.z = insertelement <2 x float> %i.y, float %.sroa.18.0.copyload.i, i64 1
  br label %_ZN17hb_raster_paint_t27current_effective_transformEv.exit.i

_ZN17hb_raster_paint_t27current_effective_transformEv.exit.i: ; preds = %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i.i, %bb.d
  %i.aa = phi float [ %.sroa.6.0.copyload.i, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i.i ], [ 0.000000e+00, %bb.d ]
  %i.ab = phi float [ %.sroa.15.0.copyload.i, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i.i ], [ 0.000000e+00, %bb.d ]
  %i.ac = phi float [ %.sroa.9.0.copyload.i, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i.i ], [ 0.000000e+00, %bb.d ]
  %i.ad = phi float [ %.sroa.0.0.copyload.i, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i.i ], [ 1.000000e+00, %bb.d ]
  %i.ae = phi <2 x float> [ %i.z, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i.i ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !65, !noalias !184
  %i.ai = load <2 x float>, ptr %i.af, align 8, !tbaa !16, !noalias !184
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ak = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %i.ac, i64 1
  %i.am = insertelement <4 x float> %i.al, float %i.ab, i64 2
  %i.an = insertelement <4 x float> %i.am, float %i.aa, i64 3
  %i.ao = fdiv <4 x float> %i.an, %i.aj           ; 4 uses
  %i.ap = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fdiv <2 x float> %i.ae, %i.aq           ; 2 uses
  %i.as = extractelement <4 x float> %i.ao, i64 0
  %i.at = extractelement <4 x float> %i.ao, i64 1
  %i.au = extractelement <4 x float> %i.ao, i64 2
  %i.av = extractelement <4 x float> %i.ao, i64 3
  %i.aw = extractelement <2 x float> %i.ar, i64 0
  %i.ax = extractelement <2 x float> %i.ar, i64 1
  tail call void @hb_raster_draw_set_transform(ptr noundef %i.q, float noundef %i.as, float noundef %i.av, float noundef %i.at, float noundef %i.aw, float noundef %i.au, float noundef %i.ax) #17
  %i.ay = tail call ptr @hb_raster_draw_get_funcs(ptr noundef %i.q) #17
  tail call void @hb_font_draw_glyph(ptr noundef %3, i32 noundef %2, ptr noundef %i.ay, ptr noundef %i.q) #17
  tail call fastcc void @_ZL34hb_raster_paint_finalize_path_clipP17hb_raster_paint_tP16hb_raster_draw_tP17hb_raster_image_tjj(ptr noundef nonnull %1, ptr noundef %i.q, ptr noundef nonnull %i.h, i32 noundef %i.j, i32 noundef %i.l)
  br label %_ZL38hb_raster_paint_push_clip_from_emitterP17hb_raster_paint_tPFvP16hb_raster_draw_tPvES3_.exit

_ZL38hb_raster_paint_push_clip_from_emitterP17hb_raster_paint_tPFvP16hb_raster_draw_tPvES3_.exit: ; preds = %bb.a, %_ZN17hb_raster_paint_t15current_surfaceEv.exit.i, %bb.c, %_ZN17hb_raster_paint_t27current_effective_transformEv.exit.i
  ret void
}

declare void @hb_paint_funcs_set_push_clip_rectangle_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL35hb_raster_paint_push_clip_rectangleP16hb_paint_funcs_tPvffffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %.sroa.19.i.sroa.7 = alloca [3 x i8], align 1   ; 2 uses
  tail call fastcc void @_ZL18ensure_initializedP17hb_raster_paint_t(ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN16hb_raster_clip_tD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.d = load i32, ptr %i.c, align 4, !tbaa !99, !noalias !208 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN17hb_raster_paint_t15current_surfaceEv.exit, label %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i, !prof !13

_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95, !noalias !208
  %i.g = add i32 %i.d, -1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load <2 x float>, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !16
  br label %_ZN17hb_raster_paint_t15current_surfaceEv.exit

_ZN17hb_raster_paint_t15current_surfaceEv.exit:   ; preds = %bb.b, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i
  %i.m = phi <2 x float> [ %i.j, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.b ]
  %i.n = phi <2 x float> [ %i.k, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ]
  %i.o = phi <2 x float> [ %i.l, %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit.i.i ], [ zeroinitializer, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = add i32 %i.b, -1
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 4 uses
  %.not226 = icmp eq ptr %i.u, null
  br i1 %.not226, label %_ZN16hb_raster_clip_tD2Ev.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %_ZN17hb_raster_paint_t15current_surfaceEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.z = load <2 x float>, ptr %i.v, align 8, !tbaa !16, !noalias !209 ; 3 uses
  %i.aa = fdiv <2 x float> %i.o, %i.z             ; 2 uses
  %i.ab = fdiv <2 x float> %i.n, %i.z             ; 5 uses
  %i.ac = fdiv <2 x float> %i.m, %i.z             ; 3 uses
  %i.ad = load <2 x i32>, ptr %i.w, align 8, !tbaa !66 ; 18 uses
  %i.ae = insertelement <2 x float> poison, float %2, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.af, <2 x float> %i.aa) ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %3, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ai, <2 x float> %i.ag) ; 6 uses
  %i.ak = insertelement <2 x float> poison, float %4, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.al, <2 x float> %i.aa) ; 2 uses
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ai, <2 x float> %i.am) ; 6 uses
  %i.ao = insertelement <2 x float> poison, float %5, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ap, <2 x float> %i.am) ; 8 uses
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ap, <2 x float> %i.ag) ; 6 uses
  %i.as = fcmp oge <2 x float> %i.aj, %i.an
  %i.at = select <2 x i1> %i.as, <2 x float> %i.aj, <2 x float> %i.an ; 2 uses
  %i.au = fcmp oge <2 x float> %i.at, %i.aq
  %i.av = select <2 x i1> %i.au, <2 x float> %i.at, <2 x float> %i.aq ; 2 uses
  %i.aw = fcmp oge <2 x float> %i.av, %i.ar
  %i.ax = select <2 x i1> %i.aw, <2 x float> %i.av, <2 x float> %i.ar
  %i.ay = extractelement <2 x float> %i.ab, i64 0
  %i.az = fcmp oeq float %i.ay, 0.000000e+00
  %i.ba = extractelement <2 x float> %i.ac, i64 1
  %i.bb = fcmp oeq float %i.ba, 0.000000e+00
  %i.bc = select i1 %i.az, i1 %i.bb, i1 false     ; 2 uses
  %i.bd = load <2 x i32>, ptr %i.y, align 8, !tbaa !66
  %i.be = sitofp <2 x i32> %i.bd to <2 x double>  ; 2 uses
  %i.bf = fcmp ole <2 x float> %i.aj, %i.an
  %i.bg = select <2 x i1> %i.bf, <2 x float> %i.aj, <2 x float> %i.an ; 2 uses
  %i.bh = fcmp ole <2 x float> %i.bg, %i.aq
  %i.bi = select <2 x i1> %i.bh, <2 x float> %i.bg, <2 x float> %i.aq ; 2 uses
  %i.bj = fcmp ole <2 x float> %i.bi, %i.ar
  %i.bk = select <2 x i1> %i.bj, <2 x float> %i.bi, <2 x float> %i.ar
  %i.bl = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.bk)
  %i.bm = fpext <2 x float> %i.bl to <2 x double>
  %i.bn = fsub <2 x double> %i.bm, %i.be          ; 2 uses
  %i.bo = fcmp oge <2 x double> %i.bn, splat (double f0xC1E0000000000000)
  %i.bp = select <2 x i1> %i.bo, <2 x double> %i.bn, <2 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.bq = fcmp ole <2 x double> %i.bp, splat (double f0x41DFFFFFFFC00000)
  %i.br = select <2 x i1> %i.bq, <2 x double> %i.bp, <2 x double> splat (double f0x41DFFFFFFFC00000)
  %i.bs = fptosi <2 x double> %i.br to <2 x i32>
  %i.bt = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ax)
  %i.bu = fpext <2 x float> %i.bt to <2 x double>
  %i.bv = fsub <2 x double> %i.bu, %i.be          ; 2 uses
  %i.bw = fcmp oge <2 x double> %i.bv, splat (double f0xC1E0000000000000)
  %i.bx = select <2 x i1> %i.bw, <2 x double> %i.bv, <2 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.by = fcmp ole <2 x double> %i.bx, splat (double f0x41DFFFFFFFC00000)
  %i.bz = select <2 x i1> %i.by, <2 x double> %i.bx, <2 x double> splat (double f0x41DFFFFFFFC00000)
  %i.ca = fptosi <2 x double> %i.bz to <2 x i32>
  %i.cb = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bs, <2 x i32> zeroinitializer) ; 3 uses
  %i.cc = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ad, <2 x i32> %i.ca) ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 116 ; 4 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !85 ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.not.i.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(64) @_hb_NullPool, i64 64, i1 false)
  br label %_ZN17hb_raster_paint_t12current_clipEv.exit

bb.e:                                             ; preds = %bb.c
  %i.cf = add i32 %i.ce, -1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !80
  %i.ci = zext i32 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [64 x i8], ptr %i.ch, i64 %i.ci
  br label %_ZN17hb_raster_paint_t12current_clipEv.exit

_ZN17hb_raster_paint_t12current_clipEv.exit:      ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.cj, %bb.e ] ; 16 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 28 ; 3 uses
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !90, !range !71, !noundef !72
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread542, label %bb.f

bb.f:                                             ; preds = %_ZN17hb_raster_paint_t12current_clipEv.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !107
  %.not.i240 = icmp eq ptr %i.co, null
  br i1 %.not.i240, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread, label %bb.g, !prof !108

bb.g:                                             ; preds = %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !109 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !110
  %i.ct = icmp ult i32 %i.cq, %i.cs
  br i1 %i.ct, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit, !prof !108

_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit: ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !111
  %i.cw = zext i32 %i.cq to i64
  %i.cx = zext i32 %i.cv to i64
  %i.cy = mul nuw i64 %i.cx, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !112
  %i.db = zext i32 %i.da to i64
  %.not614 = icmp ugt i64 %i.cy, %i.db
  br i1 %.not614, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread, label %.thread544, !prof !210

_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread: ; preds = %bb.f, %bb.g, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit
  %i.dc = extractelement <2 x i32> %i.ad, i64 0
  %i.dd = extractelement <2 x i32> %i.ad, i64 1
  tail call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %1, i32 noundef %i.dc, i32 noundef %i.dd)
  br label %_ZN16hb_raster_clip_tD2Ev.exit

_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread542: ; preds = %_ZN17hb_raster_paint_t12current_clipEv.exit
  br i1 %i.bc, label %bb.h, label %.thread544

.thread544:                                       ; preds = %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread542
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !39 ; 2 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %_ZN17hb_raster_paint_t11charge_workEl.exit.thread, label %_ZN17hb_raster_paint_t11charge_workEl.exit, !prof !47

_ZN17hb_raster_paint_t11charge_workEl.exit.thread: ; preds = %.thread544
  %i.dh = extractelement <2 x i32> %i.ad, i64 0
  %i.di = zext i32 %i.dh to i64
  %i.dj = extractelement <2 x i32> %i.ad, i64 1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw nsw i64 %i.dk, %i.di
  %i.dm = sub nsw i64 %i.df, %i.dl
  store i64 %i.dm, ptr %i.de, align 8, !tbaa !39
  br label %bb.h

_ZN17hb_raster_paint_t11charge_workEl.exit:       ; preds = %.thread544
  %i.dn = extractelement <2 x i32> %i.ad, i64 0
  %i.do = extractelement <2 x i32> %i.ad, i64 1
  tail call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %1, i32 noundef %i.dn, i32 noundef %i.do)
  br label %_ZN16hb_raster_clip_tD2Ev.exit

bb.h:                                             ; preds = %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread542, %_ZN17hb_raster_paint_t11charge_workEl.exit.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 132 ; 4 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !113, !noalias !211 ; 2 uses
  %.not.i241 = icmp eq i32 %i.dq, 0
  br i1 %.not.i241, label %_ZN17hb_raster_paint_t12acquire_clipEjj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !80, !noalias !212
  %i.dt = add i32 %i.dq, -1
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [64 x i8], ptr %i.ds, i64 %i.du ; 5 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !83, !noalias !212
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !86, !noalias !212
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !84, !noalias !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dv, i8 0, i64 16, i1 false), !noalias !212
  %.sroa.19.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i.sroa.7.0..sroa_idx, i64 3, i1 false)
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !80, !noalias !212
  %i.ec = load i32, ptr %i.dp, align 4, !tbaa !85, !noalias !212
  %i.ed = add i32 %i.ec, -1                       ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [64 x i8], ptr %i.eb, i64 %i.ee ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !83, !noalias !212
  %i.eh = add i32 %i.eg, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.eh, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.j, label %_ZN16hb_raster_clip_tD2Ev.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 0, ptr %i.ei, align 4, !tbaa !86, !noalias !212
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !84, !noalias !212
  tail call void @hb_free(ptr noundef %i.ek) #17, !noalias !212
  %.pre.i.i = load i32, ptr %i.dp, align 4, !tbaa !85, !noalias !212
  %.pre3.i.i = add i32 %.pre.i.i, -1
  br label %_ZN16hb_raster_clip_tD2Ev.exit.i

_ZN16hb_raster_clip_tD2Ev.exit.i:                 ; preds = %bb.j, %bb.i
  %.pre-phi.i.i = phi i32 [ %i.ed, %bb.i ], [ %.pre3.i.i, %bb.j ]
  store i32 %.pre-phi.i.i, ptr %i.dp, align 4, !tbaa !85, !noalias !212
  br label %_ZN17hb_raster_paint_t12acquire_clipEjj.exit

_ZN17hb_raster_paint_t12acquire_clipEjj.exit:     ; preds = %bb.h, %_ZN16hb_raster_clip_tD2Ev.exit.i
  %.sroa.0.4 = phi i32 [ 0, %bb.h ], [ %i.dw, %_ZN16hb_raster_clip_tD2Ev.exit.i ] ; 17 uses
  %.sroa.15.3 = phi i32 [ 0, %bb.h ], [ %i.dy, %_ZN16hb_raster_clip_tD2Ev.exit.i ] ; 11 uses
  %.sroa.26.4 = phi ptr [ null, %bb.h ], [ %i.ea, %_ZN16hb_raster_clip_tD2Ev.exit.i ] ; 11 uses
  %i.el = extractelement <2 x i32> %i.ad, i64 0   ; 4 uses
  %i.em = add i32 %i.el, 3
  %i.en = and i32 %i.em, -4                       ; 9 uses
  br i1 %i.bc, label %bb.k, label %.critedge

bb.k:                                             ; preds = %_ZN17hb_raster_paint_t12acquire_clipEjj.exit
  %i.eo = load i8, ptr %i.ck, align 4, !tbaa !90, !range !71, !noundef !72
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.er = load <2 x i32>, ptr %i.eq, align 4, !tbaa !66
  %i.es = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cb, <2 x i32> %i.er) ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40
  %i.eu = load <2 x i32>, ptr %i.et, align 4, !tbaa !66
  %i.ev = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cc, <2 x i32> %i.eu) ; 3 uses
  %i.ew = extractelement <2 x i32> %i.ev, i64 0
  %.sroa.speculated16.i = tail call i32 @llvm.smin.i32(i32 %i.ew, i32 %i.el)
  %.sroa.speculated12.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated16.i, i32 0)
  %7 = extractelement <2 x i32> %i.ev, i64 1
  %i.ex = extractelement <2 x i32> %i.ad, i64 1
  %.sroa.speculated7.i = tail call i32 @llvm.smin.i32(i32 %7, i32 %i.ex)
  %.sroa.speculated.i246 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated7.i, i32 0)
  %i.ey = extractelement <2 x i32> %i.es, i64 0
  %i.ez = extractelement <2 x i32> %i.es, i64 1
  br label %.thread561

bb.m:                                             ; preds = %bb.k
  %i.fa = zext i32 %i.en to i64
  %i.fb = extractelement <2 x i32> %i.ad, i64 1   ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = mul nuw i64 %i.fa, %i.fc                ; 4 uses
  %i.fe = icmp ugt i64 %i.fd, 1073741824
  br i1 %i.fe, label %.thread545, label %bb.n, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.ff = trunc nuw nsw i64 %i.fd to i32          ; 7 uses
  %i.fg = icmp slt i32 %.sroa.0.4, 0
  br i1 %i.fg, label %.thread545, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  %.not.i.i247 = icmp samesign ult i32 %.sroa.0.4, %i.ff
  br i1 %.not.i.i247, label %.preheader.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i, !prof !13

.preheader.i.i:                                   ; preds = %bb.o, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.fj, %.preheader.i.i ], [ %.sroa.0.4, %bb.o ] ; 2 uses
  %i.fh = lshr i32 %.053.i.i, 1
  %i.fi = add nuw nsw i32 %.053.i.i, 8
  %i.fj = add nuw nsw i32 %i.fi, %i.fh            ; 7 uses
  %i.fk = icmp samesign ult i32 %i.fj, %i.ff
  br i1 %i.fk, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !3

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %.sroa.0.4, 0
  br i1 %.not8.i.i.i.i, label %bb.p, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i

bb.p:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %.sroa.26.4, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = zext nneg i32 %i.fj to i64
  %i.fm = tail call ptr @hb_malloc(i64 noundef %i.fl) #17 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, label %bb.r, !prof !13

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.15.3, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i, label %bb.s, !prof !13

bb.s:                                             ; preds = %bb.r
  %i.fn = zext i32 %.sroa.15.3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr nonnull readonly align 1 %.sroa.26.4, i64 range(i64 0, 103079215081) %i.fn, i1 false), !alias.scope !213
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.p, %.thread39.i.i
  %i.fo = phi ptr [ null, %bb.p ], [ %.sroa.26.4, %.thread39.i.i ]
  %i.fp = zext nneg i32 %i.fj to i64
  %i.fq = tail call ptr @hb_realloc(ptr noundef %i.fo, i64 noundef %i.fp) #17 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.fq, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i, !prof !114

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i:          ; preds = %bb.q, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i
  %i.fr = xor i32 %.sroa.0.4, -1
  br label %.thread545

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i:   ; preds = %bb.r, %bb.s, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i, %bb.o
  %.sroa.0.5 = phi i32 [ %i.fj, %bb.r ], [ %.sroa.0.4, %bb.o ], [ %i.fj, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i ], [ %i.fj, %bb.s ] ; 3 uses
  %.sroa.26.5 = phi ptr [ %i.fm, %bb.r ], [ %.sroa.26.4, %bb.o ], [ %i.fq, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i ], [ %i.fm, %bb.s ] ; 6 uses
  %i.fs = icmp ult i32 %.sroa.15.3, %i.ff
  br i1 %i.fs, label %_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.t

_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i
  %i.ft = sub nuw nsw i32 %i.ff, %.sroa.15.3
  %i.fu = zext nneg i32 %.sroa.15.3 to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.26.5, i64 %i.fu
  %i.fw = zext nneg i32 %i.ft to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fv, i8 0, i64 %i.fw, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i, %_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %.not.i248 = icmp eq i64 %i.fd, 0
  br i1 %.not.i248, label %_ZL9hb_memsetPvij.exit, label %bb.u, !prof !13

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr align 1 %.sroa.26.5, i8 0, i64 %i.fd, i1 false)
  br label %_ZL9hb_memsetPvij.exit

_ZL9hb_memsetPvij.exit:                           ; preds = %bb.t, %bb.u
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.fy = load <2 x i32>, ptr %i.fx, align 8, !tbaa !66
  %i.fz = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cb, <2 x i32> %i.fy) ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  %i.gb = load <2 x i32>, ptr %i.ga, align 8, !tbaa !66
  %i.gc = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cc, <2 x i32> %i.gb) ; 3 uses
  %i.gd = icmp slt <2 x i32> %i.fz, %i.gc         ; 2 uses
  %i.ge = extractelement <2 x i1> %i.gd, i64 0
  %i.gf = extractelement <2 x i1> %i.gd, i64 1
  %or.cond = select i1 %i.ge, i1 %i.gf, i1 false
  br i1 %or.cond, label %_ZL9hb_memcpyPvPKvm.exit.lr.ph, label %.thread561

_ZL9hb_memcpyPvPKvm.exit.lr.ph:                   ; preds = %_ZL9hb_memsetPvij.exit
  %i.gg = extractelement <2 x i32> %i.fz, i64 0   ; 2 uses
  %i.gh = extractelement <2 x i32> %i.gc, i64 0   ; 3 uses
  %i.gi = sub nuw nsw i32 %i.gh, %i.gg
  %i.gj = zext nneg i32 %i.gi to i64              ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 3 uses
  %i.gm = zext nneg i32 %i.gg to i64              ; 4 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.sroa.26.5, i64 %i.gm ; 3 uses
  %i.gn = extractelement <2 x i32> %i.fz, i64 1   ; 3 uses
  %i.go = zext nneg i32 %i.gn to i64              ; 4 uses
  %i.gp = extractelement <2 x i32> %i.gc, i64 1   ; 3 uses
  %wide.trip.count809 = zext nneg i32 %i.gp to i64 ; 3 uses
  %i.gq = sub nsw i64 %wide.trip.count809, %i.go
  %xtraiter = and i64 %i.gq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit, label %_ZL9hb_memcpyPvPKvm.exit.prol

_ZL9hb_memcpyPvPKvm.exit.prol:                    ; preds = %_ZL9hb_memcpyPvPKvm.exit.lr.ph
  %i.gr = load ptr, ptr %i.gk, align 8, !tbaa !107
  %i.gs = load i32, ptr %i.gl, align 8, !tbaa !109
  %i.gt = mul i32 %i.gs, %i.gn
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gm
  %i.gx = mul i32 %i.en, %i.gn
  %i.gy = zext i32 %i.gx to i64
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.gy
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.prol, ptr readonly align 1 %i.gw, i64 range(i64 0, 103079215081) %i.gj, i1 false), !alias.scope !214
  %indvars.iv.next807.prol = add nuw nsw i64 %i.go, 1
  br label %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit

_ZL9hb_memcpyPvPKvm.exit.prol.loopexit:           ; preds = %_ZL9hb_memcpyPvPKvm.exit.prol, %_ZL9hb_memcpyPvPKvm.exit.lr.ph
  %indvars.iv806.unr = phi i64 [ %i.go, %_ZL9hb_memcpyPvPKvm.exit.lr.ph ], [ %indvars.iv.next807.prol, %_ZL9hb_memcpyPvPKvm.exit.prol ]
  %i.gz = add nsw i64 %wide.trip.count809, -1
  %i.ha = icmp eq i64 %i.gz, %i.go
  br i1 %i.ha, label %.thread561, label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit, %_ZL9hb_memcpyPvPKvm.exit
  %indvars.iv806 = phi i64 [ %indvars.iv.next807.1, %_ZL9hb_memcpyPvPKvm.exit ], [ %indvars.iv806.unr, %_ZL9hb_memcpyPvPKvm.exit.prol.loopexit ] ; 3 uses
  %i.hb = load ptr, ptr %i.gk, align 8, !tbaa !107
  %i.hc = load i32, ptr %i.gl, align 8, !tbaa !109
  %i.hd = trunc nuw i64 %indvars.iv806 to i32     ; 2 uses
  %i.he = mul i32 %i.hc, %i.hd
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.gm
  %i.hi = mul i32 %i.en, %i.hd
  %i.hj = zext i32 %i.hi to i64
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.hj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep, ptr readonly align 1 %i.hh, i64 range(i64 0, 103079215081) %i.gj, i1 false), !alias.scope !214
  %i.hk = load ptr, ptr %i.gk, align 8, !tbaa !107
  %i.hl = load i32, ptr %i.gl, align 8, !tbaa !109
  %i.hm = trunc i64 %indvars.iv806 to i32
  %i.hn = add i32 %i.hm, 1                        ; 2 uses
  %i.ho = mul i32 %i.hl, %i.hn
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.gm
  %i.hs = mul i32 %i.en, %i.hn
  %i.ht = zext i32 %i.hs to i64
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.ht
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep.1, ptr readonly align 1 %i.hr, i64 range(i64 0, 103079215081) %i.gj, i1 false), !alias.scope !214
  %indvars.iv.next807.1 = add nuw nsw i64 %indvars.iv806, 2 ; 2 uses
  %exitcond810.not.1 = icmp eq i64 %indvars.iv.next807.1, %wide.trip.count809
  br i1 %exitcond810.not.1, label %.thread561, label %_ZL9hb_memcpyPvPKvm.exit, !llvm.loop !199

.thread545:                                       ; preds = %bb.n, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, %bb.m
  %.sroa.0.0550 = phi i32 [ %.sroa.0.4, %bb.m ], [ %i.fr, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i ], [ %.sroa.0.4, %bb.n ]
  tail call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %1, i32 noundef %i.el, i32 noundef %i.fb)
  br label %bb.ay

.critedge:                                        ; preds = %_ZN17hb_raster_paint_t12acquire_clipEjj.exit
  %i.hu = zext i32 %i.en to i64
  %i.hv = extractelement <2 x i32> %i.ad, i64 1   ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %i.hx = mul nuw i64 %i.hu, %i.hw                ; 4 uses
  %i.hy = icmp ugt i64 %i.hx, 1073741824
  br i1 %i.hy, label %.thread597, label %bb.v, !prof !13

bb.v:                                             ; preds = %.critedge
  %i.hz = trunc nuw nsw i64 %i.hx to i32          ; 14 uses
  %i.ia = icmp slt i32 %.sroa.0.4, 0
  br i1 %i.ia, label %.thread597, label %bb.w, !prof !13

bb.w:                                             ; preds = %bb.v
  %.not.i.i254 = icmp samesign ult i32 %.sroa.0.4, %i.hz
  br i1 %.not.i.i254, label %.preheader.i.i258, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i255, !prof !13

.preheader.i.i258:                                ; preds = %bb.w, %.preheader.i.i258
  %.053.i.i259 = phi i32 [ %i.id, %.preheader.i.i258 ], [ %.sroa.0.4, %bb.w ] ; 2 uses
  %i.ib = lshr i32 %.053.i.i259, 1
  %i.ic = add nuw nsw i32 %.053.i.i259, 8
  %i.id = add nuw nsw i32 %i.ic, %i.ib            ; 7 uses
  %i.ie = icmp samesign ult i32 %i.id, %i.hz
  br i1 %i.ie, label %.preheader.i.i258, label %.thread39.i.i260, !llvm.loop !3

.thread39.i.i260:                                 ; preds = %.preheader.i.i258
  %.not8.i.i.i.i261 = icmp eq i32 %.sroa.0.4, 0
  br i1 %.not8.i.i.i.i261, label %bb.x, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i262

bb.x:                                             ; preds = %.thread39.i.i260
end_hunk_0
