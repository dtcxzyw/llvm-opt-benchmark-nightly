Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 272
loop-unroll.NumUnrolled: 471
begin_hunk_0_@_ZN2OTL30hb_transforming_pen_close_pathEP15hb_draw_funcs_tPvP15hb_draw_state_tS2_:bb.a

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

_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit: ; preds = %.critedge.i, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i
  %.sink605 = phi i32 [ -1, %.critedge.i ], [ %2, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i ]
  %.sink = phi i32 [ 0, %.critedge.i ], [ %.sroa.7.0, %_ZN2OT9glyf_impl5GlyphC2E10hb_array_tIKcEj.exit.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.sink605, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 %.sink, ptr %i.ax, align 4
  store ptr %4, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ay = call noundef zeroext i1 @_ZNK2OT9glyf_impl5Glyph10get_pointsINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_R22contour_point_vector_tR17hb_glyf_scratch_tPS9_P16head_maxp_info_tPjbbb10hb_array_tIKiEPNS_17hb_scalar_cache_tEjSG_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.hb_array_t.0) align 8 %9, ptr noundef %7, i32 noundef 0, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #63
  br i1 %i.ay, label %bb.g, label %.loopexit522, !prof !268

bb.g:                                             ; preds = %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit
  %i.az = load i32, ptr %i.c, align 4, !tbaa !356
  %i.ba = add i32 %i.az, -4                       ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1532 ; 4 uses
  %.not536 = icmp eq i32 %i.ba, 0
  br i1 %.not536, label %.loopexit522, label %.lr.ph535

.lr.ph535:                                        ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %.sroa_idx447 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 6 uses
  %.sroa.15433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 6 uses
  %.sroa_idx451 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %.sroa.15433.0..sroa_idx434 = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 15 uses
  %.sroa_idx455 = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 18 uses
  %.sroa.15433.0..sroa_idx436 = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 12 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %wide.trip.count = zext i32 %i.ba to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph535, %.loopexit
  %.050533 = phi i32 [ 0, %.lr.ph535 ], [ %i.sv, %.loopexit ] ; 6 uses
  %i.bk = zext i32 %.050533 to i64                ; 4 uses
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !1534
  %i.bo = and i8 %i.bn, 1
  %.not57 = icmp eq i8 %i.bo, 0
  %i.bp = icmp ult i32 %.050533, %i.ba            ; 2 uses
  br i1 %.not57, label %.preheader, label %.preheader521

.preheader521:                                    ; preds = %bb.h
  br i1 %i.bp, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.h
  br i1 %i.bp, label %.lr.ph528, label %.critedge

.lr.ph:                                           ; preds = %.preheader521, %bb.aq
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aq ], [ %i.bk, %.preheader521 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !1534
  %i.bt = and i8 %i.bs, 1
  %.not.i77 = icmp eq i8 %i.bt, 0                 ; 3 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !351
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.bw = load <2 x float>, ptr %i.bq, align 4, !tbaa !304
  %i.bx = load <2 x float>, ptr %i.bv, align 8, !tbaa !304
  %i.by = fmul <2 x float> %i.bw, %i.bx           ; 5 uses
  %10 = extractelement <2 x float> %i.by, i64 1   ; 11 uses
  %11 = extractelement <2 x float> %i.by, i64 0   ; 11 uses
  %i.bz = load i8, ptr %i.bd, align 8, !tbaa !353, !range !380, !noundef !293
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.x, label %bb.i, !prof !268

bb.i:                                             ; preds = %.lr.ph
  br i1 %.not.i77, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.bd, align 8
  store float %11, ptr %.sroa_idx447, align 4
  store float %10, ptr %.sroa.15433.0..sroa_idx, align 8, !tbaa !304
  %i.cb = load ptr, ptr %i.be, align 8, !tbaa !352 ; 9 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !338 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !339 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 4 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !358
  %.not.i.i96 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i96, label %_ZN17hb_draw_session_t7move_toEff.exit99, label %bb.k, !prof !268

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !359 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !360
  %i.cl = fcmp une float %i.ci, %i.ck
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !361 ; 2 uses
  br i1 %i.cl, label %._crit_edge553, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !730
  %i.co = fcmp une float %.pre, %i.cn
  br i1 %i.co, label %._crit_edge553, label %bb.n

._crit_edge553:                                   ; preds = %bb.k, %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !364
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !365 ; 2 uses
  %.not.i138 = icmp eq ptr %i.cs, null
  br i1 %.not.i138, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge553
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %._crit_edge553, %bb.m
  %i.cv = phi ptr [ %i.cu, %bb.m ], [ null, %._crit_edge553 ]
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(48) %i.cf, float noundef %i.ci, float noundef %.pre, ptr noundef %i.cv) #63, !inline_history !35
  br label %bb.n

bb.n:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !368
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !365 ; 2 uses
  %.not.i139 = icmp eq ptr %i.cz, null
  br i1 %.not.i139, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98: ; preds = %bb.o, %bb.n
  %i.dc = phi ptr [ %i.db, %bb.o ], [ null, %bb.n ]
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(72) %i.cc, ptr noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(48) %i.cf, ptr noundef %i.dc) #63, !inline_history !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cf, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit99

_ZN17hb_draw_session_t7move_toEff.exit99:         ; preds = %bb.j, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i98
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  store float %11, ptr %i.dd, align 4, !tbaa !360
  %12 = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store float %10, ptr %12, align 8, !tbaa !730
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.p:                                             ; preds = %bb.i
  %i.de = load i8, ptr %i.bf, align 4, !tbaa !353, !range !380, !noundef !293
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.dg = load <2 x float>, ptr %.sroa_idx451, align 8, !tbaa !304
  %i.dh = fadd <2 x float> %i.by, %i.dg
  %i.di = fmul <2 x float> %i.dh, splat (float 5.000000e-01) ; 2 uses
  store i32 1, ptr %i.bd, align 8
  store <2 x float> %i.di, ptr %.sroa_idx447, align 4, !tbaa !304
  store i32 1, ptr %i.bg, align 4
  store float %11, ptr %.sroa_idx455, align 8
  store float %10, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !304
  %i.dj = load ptr, ptr %i.be, align 8, !tbaa !352 ; 8 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !338 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !339 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 4 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !358
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %_ZN17hb_draw_session_t7move_toEff.exit, label %bb.r, !prof !268

bb.r:                                             ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !359 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !360
  %i.dt = fcmp une float %i.dq, %i.ds
  %.phi.trans.insert555 = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %.pre556 = load float, ptr %.phi.trans.insert555, align 8, !tbaa !361 ; 2 uses
  br i1 %i.dt, label %._crit_edge554, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dv = load float, ptr %i.du, align 8, !tbaa !730
  %i.dw = fcmp une float %.pre556, %i.dv
  br i1 %i.dw, label %._crit_edge554, label %bb.u

._crit_edge554:                                   ; preds = %bb.r, %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !364
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !365 ; 2 uses
  %.not.i140 = icmp eq ptr %i.ea, null
  br i1 %.not.i140, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit141, label %bb.t

bb.t:                                             ; preds = %._crit_edge554
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit141

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit141: ; preds = %._crit_edge554, %bb.t
  %i.ed = phi ptr [ %i.ec, %bb.t ], [ null, %._crit_edge554 ]
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(72) %i.dk, ptr noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(48) %i.dn, float noundef %i.dq, float noundef %.pre556, ptr noundef %i.ed) #63, !inline_history !35
  br label %bb.u

bb.u:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit141, %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !368
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !365 ; 2 uses
  %.not.i142 = icmp eq ptr %i.eh, null
  br i1 %.not.i142, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %bb.v, %bb.u
  %i.ek = phi ptr [ %i.ej, %bb.v ], [ null, %bb.u ]
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(72) %i.dk, ptr noundef %i.dm, ptr noundef nonnull align 4 dereferenceable(48) %i.dn, ptr noundef %i.ek) #63, !inline_history !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dn, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit

_ZN17hb_draw_session_t7move_toEff.exit:           ; preds = %bb.q, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  store <2 x float> %i.di, ptr %i.el, align 4, !tbaa !304
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.w:                                             ; preds = %bb.p
  store i32 1, ptr %i.bf, align 4
  store float %11, ptr %.sroa_idx451, align 8
  store float %10, ptr %.sroa.15433.0..sroa_idx434, align 4, !tbaa !304
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.x:                                             ; preds = %.lr.ph
  %i.em = load i8, ptr %i.bg, align 4, !tbaa !353, !range !380, !noundef !293
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i77, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = load i8, ptr %i.bh, align 8, !tbaa !353, !range !380, !noundef !293
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = load ptr, ptr %i.be, align 8, !tbaa !352 ; 10 uses
  br i1 %i.ep, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.er = load float, ptr %i.bi, align 4, !tbaa !1535
  %i.es = load float, ptr %i.bj, align 8, !tbaa !1536
  %i.et = load float, ptr %.sroa_idx455, align 8, !tbaa !1537
  %i.eu = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !1538
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !338 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !339 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !358
  %.not.i.i116 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i116, label %bb.ab, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit, !prof !267

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.ev, ptr noundef %i.ex, ptr noundef nonnull align 4 dereferenceable(48) %i.ey)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit

_ZN17hb_draw_session_t8cubic_toEffffff.exit:      ; preds = %bb.aa, %bb.ab
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !725
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !365 ; 2 uses
  %.not.i144 = icmp eq ptr %i.fd, null
  br i1 %.not.i144, label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !726
  br label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit

_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit, %bb.ac
  %i.fg = phi ptr [ %i.ff, %bb.ac ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit ]
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(72) %i.ev, ptr noundef %i.ex, ptr noundef nonnull align 4 dereferenceable(48) %i.ey, float noundef %i.er, float noundef %i.es, float noundef %i.et, float noundef %i.eu, float noundef %11, float noundef %10, ptr noundef %i.fg) #63, !inline_history !34
  %13 = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  store float %11, ptr %13, align 4, !tbaa !360
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store float %10, ptr %i.fh, align 8, !tbaa !730
  store i8 0, ptr %i.bh, align 8, !tbaa !570
  br label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.fi = load float, ptr %.sroa_idx455, align 8, !tbaa !1537
  %i.fj = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !1538
  %i.fk = load ptr, ptr %i.eq, align 8, !tbaa !338 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !339 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !358
  %.not.i.i122 = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i122, label %bb.ae, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit123, !prof !267

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.fk, ptr noundef %i.fm, ptr noundef nonnull align 4 dereferenceable(48) %i.fn)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit123

_ZN17hb_draw_session_t12quadratic_toEffff.exit123: ; preds = %bb.ad, %bb.ae
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !724
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !365 ; 2 uses
  %.not.i145 = icmp eq ptr %i.fs, null
  br i1 %.not.i145, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit, label %bb.af

bb.af:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit123
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !723
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit123, %bb.af
  %i.fv = phi ptr [ %i.fu, %bb.af ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit123 ]
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(72) %i.fk, ptr noundef %i.fm, ptr noundef nonnull align 4 dereferenceable(48) %i.fn, float noundef %i.fi, float noundef %i.fj, float noundef %11, float noundef %10, ptr noundef %i.fv) #63, !inline_history !37
  %14 = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  store float %11, ptr %14, align 4, !tbaa !360
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store float %10, ptr %i.fw, align 8, !tbaa !730
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit
  store i8 0, ptr %i.bg, align 4, !tbaa !570
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.ah:                                            ; preds = %bb.y
  %i.fx = load <2 x float>, ptr %.sroa_idx455, align 8, !tbaa !304 ; 3 uses
  %i.fy = fadd <2 x float> %i.by, %i.fx
  %i.fz = fmul <2 x float> %i.fy, splat (float 5.000000e-01) ; 3 uses
  %i.ga = load ptr, ptr %i.be, align 8, !tbaa !352 ; 4 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !338 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !339 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 3 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !358
  %.not.i.i121 = icmp eq i32 %i.gf, 0
  br i1 %.not.i.i121, label %bb.ai, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit, !prof !267

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.gb, ptr noundef %i.gd, ptr noundef nonnull align 4 dereferenceable(48) %i.ge)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit

_ZN17hb_draw_session_t12quadratic_toEffff.exit:   ; preds = %bb.ah, %bb.ai
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !724
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !365 ; 2 uses
  %.not.i153 = icmp eq ptr %i.gj, null
  br i1 %.not.i153, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit154, label %bb.aj

bb.aj:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !723
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit154

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit154: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit, %bb.aj
  %i.gm = phi ptr [ %i.gl, %bb.aj ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit ]
  %i.gn = extractelement <2 x float> %i.fz, i64 0
  %i.go = extractelement <2 x float> %i.fz, i64 1
  %i.gp = extractelement <2 x float> %i.fx, i64 0
  %i.gq = extractelement <2 x float> %i.fx, i64 1
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(72) %i.gb, ptr noundef %i.gd, ptr noundef nonnull align 4 dereferenceable(48) %i.ge, float noundef %i.gp, float noundef %i.gq, float noundef %i.gn, float noundef %i.go, ptr noundef %i.gm) #63, !inline_history !37
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ga, i64 28
  store <2 x float> %i.fz, ptr %i.gr, align 4, !tbaa !304
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.by, ptr %.sroa_idx455, align 8
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.ak:                                            ; preds = %bb.x
  br i1 %.not.i77, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gs = load ptr, ptr %i.be, align 8, !tbaa !352 ; 5 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !338 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !339 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 3 uses
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !358
  %.not.i.i132 = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i132, label %bb.am, label %_ZN17hb_draw_session_t7line_toEff.exit, !prof !267

bb.am:                                            ; preds = %bb.al
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.gt, ptr noundef %i.gv, ptr noundef nonnull align 4 dereferenceable(48) %i.gw)
  br label %_ZN17hb_draw_session_t7line_toEff.exit

_ZN17hb_draw_session_t7line_toEff.exit:           ; preds = %bb.al, %bb.am
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !364
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 56
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !365 ; 2 uses
  %.not.i155 = icmp eq ptr %i.hb, null
  br i1 %.not.i155, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit156, label %bb.an

bb.an:                                            ; preds = %_ZN17hb_draw_session_t7line_toEff.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit156

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit156: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit, %bb.an
  %i.he = phi ptr [ %i.hd, %bb.an ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit ]
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(72) %i.gt, ptr noundef %i.gv, ptr noundef nonnull align 4 dereferenceable(48) %i.gw, float noundef %11, float noundef %10, ptr noundef %i.he) #63, !inline_history !35
  %15 = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  store float %11, ptr %15, align 4, !tbaa !360
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  store float %10, ptr %i.hf, align 8, !tbaa !730
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

bb.ao:                                            ; preds = %bb.ak
  store i32 1, ptr %i.bg, align 4
  store float %11, ptr %.sroa_idx455, align 8
  store float %10, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !304
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95

_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95: ; preds = %_ZN17hb_draw_session_t7move_toEff.exit99, %_ZN17hb_draw_session_t7move_toEff.exit, %bb.w, %bb.ag, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit154, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit156, %bb.ao
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bq, i64 9
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !1539, !range !380, !noundef !293
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95
  %i.hj = trunc nuw i64 %indvars.iv to i32
  br label %.loopexit.sink.split

bb.aq:                                            ; preds = %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !3194

.lr.ph528:                                        ; preds = %.preheader, %bb.ar
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %bb.ar ], [ %i.bk, %.preheader ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv544 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 9
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !1539, !range !380, !noundef !293
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph528
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next545 to i32
  %exitcond547.not = icmp eq i32 %i.ba, %lftr.wideiv
  br i1 %exitcond547.not, label %.critedge, label %.lr.ph528, !llvm.loop !3195

bb.as:                                            ; preds = %.lr.ph528
  %i.ho = trunc nuw i64 %indvars.iv544 to i32     ; 7 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hq = load i8, ptr %i.hp, align 4, !tbaa !1534
  %i.hr = and i8 %i.hq, 1
  %.not.i58 = icmp eq i8 %i.hr, 0                 ; 3 uses
  %i.hs = load ptr, ptr %3, align 8, !tbaa !351
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 80
  %i.hu = load <2 x float>, ptr %i.hk, align 4, !tbaa !304
  %i.hv = load <2 x float>, ptr %i.ht, align 8, !tbaa !304
  %i.hw = fmul <2 x float> %i.hu, %i.hv           ; 5 uses
  %16 = extractelement <2 x float> %i.hw, i64 1   ; 11 uses
  %17 = extractelement <2 x float> %i.hw, i64 0   ; 11 uses
  %i.hx = load i8, ptr %i.bd, align 8, !tbaa !353, !range !380, !noundef !293
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.bi, label %bb.at, !prof !268

bb.at:                                            ; preds = %bb.as
  br i1 %.not.i58, label %bb.ba, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 1, ptr %i.bd, align 8
  store float %17, ptr %.sroa_idx447, align 4
  store float %16, ptr %.sroa.15433.0..sroa_idx, align 8, !tbaa !304
  %i.hz = load ptr, ptr %i.be, align 8, !tbaa !352 ; 9 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !338 ; 6 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !339 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 4 uses
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !358
  %.not.i.i104 = icmp eq i32 %i.ie, 0
  br i1 %.not.i.i104, label %_ZN17hb_draw_session_t7move_toEff.exit107, label %bb.av, !prof !268

bb.av:                                            ; preds = %bb.au
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  %i.ig = load float, ptr %i.if, align 4, !tbaa !359 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 28
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !360
  %i.ij = fcmp une float %i.ig, %i.ii
  %.phi.trans.insert558 = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %.pre559 = load float, ptr %.phi.trans.insert558, align 8, !tbaa !361 ; 2 uses
  br i1 %i.ij, label %._crit_edge557, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.il = load float, ptr %i.ik, align 8, !tbaa !730
  %i.im = fcmp une float %.pre559, %i.il
  br i1 %i.im, label %._crit_edge557, label %bb.ay

._crit_edge557:                                   ; preds = %bb.av, %bb.aw
  %i.in = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !364
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !365 ; 2 uses
  %.not.i157 = icmp eq ptr %i.iq, null
  br i1 %.not.i157, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit158, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge557
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit158

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit158: ; preds = %._crit_edge557, %bb.ax
  %i.it = phi ptr [ %i.is, %bb.ax ], [ null, %._crit_edge557 ]
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(72) %i.ia, ptr noundef %i.ic, ptr noundef nonnull align 4 dereferenceable(48) %i.id, float noundef %i.ig, float noundef %.pre559, ptr noundef %i.it) #63, !inline_history !35
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit158, %bb.aw
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !368
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !365 ; 2 uses
  %.not.i159 = icmp eq ptr %i.ix, null
  br i1 %.not.i159, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i106, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i106

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i106: ; preds = %bb.az, %bb.ay
  %i.ja = phi ptr [ %i.iz, %bb.az ], [ null, %bb.ay ]
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(72) %i.ia, ptr noundef %i.ic, ptr noundef nonnull align 4 dereferenceable(48) %i.id, ptr noundef %i.ja) #63, !inline_history !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.id, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit107

_ZN17hb_draw_session_t7move_toEff.exit107:        ; preds = %bb.au, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i106
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hz, i64 28
  store float %17, ptr %i.jb, align 4, !tbaa !360
  %18 = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  store float %16, ptr %18, align 8, !tbaa !730
  br label %.critedge

bb.ba:                                            ; preds = %bb.at
  %i.jc = load i8, ptr %i.bf, align 4, !tbaa !353, !range !380, !noundef !293
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.je = load <2 x float>, ptr %.sroa_idx451, align 8, !tbaa !304
  %i.jf = fadd <2 x float> %i.hw, %i.je
  %i.jg = fmul <2 x float> %i.jf, splat (float 5.000000e-01) ; 2 uses
  store i32 1, ptr %i.bd, align 8
  store <2 x float> %i.jg, ptr %.sroa_idx447, align 4, !tbaa !304
  store i32 1, ptr %i.bg, align 4
  store float %17, ptr %.sroa_idx455, align 8
  store float %16, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !304
  %i.jh = load ptr, ptr %i.be, align 8, !tbaa !352 ; 8 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !338 ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !339 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 4 uses
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !358
  %.not.i.i100 = icmp eq i32 %i.jm, 0
  br i1 %.not.i.i100, label %_ZN17hb_draw_session_t7move_toEff.exit103, label %bb.bc, !prof !268

bb.bc:                                            ; preds = %bb.bb
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 20
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !359 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jh, i64 28
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !360
  %i.jr = fcmp une float %i.jo, %i.jq
  %.phi.trans.insert561 = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %.pre562 = load float, ptr %.phi.trans.insert561, align 8, !tbaa !361 ; 2 uses
  br i1 %i.jr, label %._crit_edge560, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jt = load float, ptr %i.js, align 8, !tbaa !730
  %i.ju = fcmp une float %.pre562, %i.jt
  br i1 %i.ju, label %._crit_edge560, label %bb.bf

._crit_edge560:                                   ; preds = %bb.bc, %bb.bd
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !364
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !365 ; 2 uses
  %.not.i168 = icmp eq ptr %i.jy, null
  br i1 %.not.i168, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit169, label %bb.be

bb.be:                                            ; preds = %._crit_edge560
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit169

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit169: ; preds = %._crit_edge560, %bb.be
  %i.kb = phi ptr [ %i.ka, %bb.be ], [ null, %._crit_edge560 ]
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(72) %i.ji, ptr noundef %i.jk, ptr noundef nonnull align 4 dereferenceable(48) %i.jl, float noundef %i.jo, float noundef %.pre562, ptr noundef %i.kb) #63, !inline_history !35
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit169, %bb.bd
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !368
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !365 ; 2 uses
  %.not.i170 = icmp eq ptr %i.kf, null
  br i1 %.not.i170, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i102, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i102

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i102: ; preds = %bb.bg, %bb.bf
  %i.ki = phi ptr [ %i.kh, %bb.bg ], [ null, %bb.bf ]
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(72) %i.ji, ptr noundef %i.jk, ptr noundef nonnull align 4 dereferenceable(48) %i.jl, ptr noundef %i.ki) #63, !inline_history !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.jl, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit103

_ZN17hb_draw_session_t7move_toEff.exit103:        ; preds = %bb.bb, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i102
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jh, i64 28
  store <2 x float> %i.jg, ptr %i.kj, align 4, !tbaa !304
  br label %.critedge

bb.bh:                                            ; preds = %bb.ba
  store i32 1, ptr %i.bf, align 4
  store float %17, ptr %.sroa_idx451, align 8
  store float %16, ptr %.sroa.15433.0..sroa_idx434, align 4, !tbaa !304
  br label %.critedge

bb.bi:                                            ; preds = %bb.as
  %i.kk = load i8, ptr %i.bg, align 4, !tbaa !353, !range !380, !noundef !293
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.bj, label %bb.bv

bb.bj:                                            ; preds = %bb.bi
  br i1 %.not.i58, label %bb.bs, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.km = load i8, ptr %i.bh, align 8, !tbaa !353, !range !380, !noundef !293
  %i.kn = trunc nuw i8 %i.km to i1
  %i.ko = load ptr, ptr %i.be, align 8, !tbaa !352 ; 10 uses
  br i1 %i.kn, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.kp = load float, ptr %i.bi, align 4, !tbaa !1535
  %i.kq = load float, ptr %i.bj, align 8, !tbaa !1536
  %i.kr = load float, ptr %.sroa_idx455, align 8, !tbaa !1537
  %i.ks = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !1538
  %i.kt = load ptr, ptr %i.ko, align 8, !tbaa !338 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !339 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 3 uses
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !358
  %.not.i.i117 = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i117, label %bb.bm, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit118, !prof !267

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.kt, ptr noundef %i.kv, ptr noundef nonnull align 4 dereferenceable(48) %i.kw)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit118

_ZN17hb_draw_session_t8cubic_toEffffff.exit118:   ; preds = %bb.bl, %bb.bm
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !725
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 56
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !365 ; 2 uses
  %.not.i172 = icmp eq ptr %i.lb, null
  br i1 %.not.i172, label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit173, label %bb.bn

bb.bn:                                            ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit118
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !726
  br label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit173

_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit173: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit118, %bb.bn
  %i.le = phi ptr [ %i.ld, %bb.bn ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit118 ]
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(72) %i.kt, ptr noundef %i.kv, ptr noundef nonnull align 4 dereferenceable(48) %i.kw, float noundef %i.kp, float noundef %i.kq, float noundef %i.kr, float noundef %i.ks, float noundef %17, float noundef %16, ptr noundef %i.le) #63, !inline_history !34
  %19 = getelementptr inbounds nuw i8, ptr %i.ko, i64 28
  store float %17, ptr %19, align 4, !tbaa !360
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  store float %16, ptr %i.lf, align 8, !tbaa !730
  store i8 0, ptr %i.bh, align 8, !tbaa !570
  br label %bb.br

bb.bo:                                            ; preds = %bb.bk
  %i.lg = load float, ptr %.sroa_idx455, align 8, !tbaa !1537
  %i.lh = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !1538
  %i.li = load ptr, ptr %i.ko, align 8, !tbaa !338 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !339 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 3 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !358
  %.not.i.i126 = icmp eq i32 %i.lm, 0
  br i1 %.not.i.i126, label %bb.bp, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit127, !prof !267

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.li, ptr noundef %i.lk, ptr noundef nonnull align 4 dereferenceable(48) %i.ll)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit127

_ZN17hb_draw_session_t12quadratic_toEffff.exit127: ; preds = %bb.bo, %bb.bp
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !724
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 56
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !365 ; 2 uses
  %.not.i174 = icmp eq ptr %i.lq, null
  br i1 %.not.i174, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit175, label %bb.bq

bb.bq:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit127
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !723
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit175

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit175: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit127, %bb.bq
  %i.lt = phi ptr [ %i.ls, %bb.bq ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit127 ]
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(72) %i.li, ptr noundef %i.lk, ptr noundef nonnull align 4 dereferenceable(48) %i.ll, float noundef %i.lg, float noundef %i.lh, float noundef %17, float noundef %16, ptr noundef %i.lt) #63, !inline_history !37
  %20 = getelementptr inbounds nuw i8, ptr %i.ko, i64 28
  store float %17, ptr %20, align 4, !tbaa !360
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  store float %16, ptr %i.lu, align 8, !tbaa !730
  br label %bb.br

bb.br:                                            ; preds = %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit175, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit173
  store i8 0, ptr %i.bg, align 4, !tbaa !570
  br label %.critedge

bb.bs:                                            ; preds = %bb.bj
  %i.lv = load <2 x float>, ptr %.sroa_idx455, align 8, !tbaa !304 ; 3 uses
  %i.lw = fadd <2 x float> %i.hw, %i.lv
  %i.lx = fmul <2 x float> %i.lw, splat (float 5.000000e-01) ; 3 uses
  %i.ly = load ptr, ptr %i.be, align 8, !tbaa !352 ; 4 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !338 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !339 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 16 ; 3 uses
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !358
  %.not.i.i124 = icmp eq i32 %i.md, 0
  br i1 %.not.i.i124, label %bb.bt, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit125, !prof !267

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.lz, ptr noundef %i.mb, ptr noundef nonnull align 4 dereferenceable(48) %i.mc)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit125

_ZN17hb_draw_session_t12quadratic_toEffff.exit125: ; preds = %bb.bs, %bb.bt
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !724
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 56
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !365 ; 2 uses
  %.not.i183 = icmp eq ptr %i.mh, null
  br i1 %.not.i183, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit184, label %bb.bu

bb.bu:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit125
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !723
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit184

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit184: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit125, %bb.bu
  %i.mk = phi ptr [ %i.mj, %bb.bu ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit125 ]
  %i.ml = extractelement <2 x float> %i.lx, i64 0
  %i.mm = extractelement <2 x float> %i.lx, i64 1
  %i.mn = extractelement <2 x float> %i.lv, i64 0
  %i.mo = extractelement <2 x float> %i.lv, i64 1
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(72) %i.lz, ptr noundef %i.mb, ptr noundef nonnull align 4 dereferenceable(48) %i.mc, float noundef %i.mn, float noundef %i.mo, float noundef %i.ml, float noundef %i.mm, ptr noundef %i.mk) #63, !inline_history !37
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ly, i64 28
  store <2 x float> %i.lx, ptr %i.mp, align 4, !tbaa !304
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.hw, ptr %.sroa_idx455, align 8
  br label %.critedge

bb.bv:                                            ; preds = %bb.bi
  br i1 %.not.i58, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mq = load ptr, ptr %i.be, align 8, !tbaa !352 ; 5 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !338 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !339 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 3 uses
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !358
  %.not.i.i133 = icmp eq i32 %i.mv, 0
  br i1 %.not.i.i133, label %bb.bx, label %_ZN17hb_draw_session_t7line_toEff.exit134, !prof !267

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.mr, ptr noundef %i.mt, ptr noundef nonnull align 4 dereferenceable(48) %i.mu)
  br label %_ZN17hb_draw_session_t7line_toEff.exit134

_ZN17hb_draw_session_t7line_toEff.exit134:        ; preds = %bb.bw, %bb.bx
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !364
  %i.my = getelementptr inbounds nuw i8, ptr %i.mr, i64 56
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !365 ; 2 uses
  %.not.i185 = icmp eq ptr %i.mz, null
  br i1 %.not.i185, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit186, label %bb.by

bb.by:                                            ; preds = %_ZN17hb_draw_session_t7line_toEff.exit134
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit186

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit186: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit134, %bb.by
  %i.nc = phi ptr [ %i.nb, %bb.by ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit134 ]
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(72) %i.mr, ptr noundef %i.mt, ptr noundef nonnull align 4 dereferenceable(48) %i.mu, float noundef %17, float noundef %16, ptr noundef %i.nc) #63, !inline_history !35
  %21 = getelementptr inbounds nuw i8, ptr %i.mq, i64 28
  store float %17, ptr %21, align 4, !tbaa !360
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mq, i64 32
  store float %16, ptr %i.nd, align 8, !tbaa !730
  br label %.critedge

bb.bz:                                            ; preds = %bb.bv
  store i32 1, ptr %i.bg, align 4
  store float %17, ptr %.sroa_idx455, align 8
  store float %16, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !304
  br label %.critedge

.critedge:                                        ; preds = %bb.ar, %.preheader, %bb.bz, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit186, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit184, %bb.br, %bb.bh, %_ZN17hb_draw_session_t7move_toEff.exit103, %_ZN17hb_draw_session_t7move_toEff.exit107
  %.2525 = phi i32 [ %i.ho, %_ZN17hb_draw_session_t7move_toEff.exit107 ], [ %i.ho, %bb.bz ], [ %i.ho, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit186 ], [ %i.ho, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit184 ], [ %i.ho, %bb.br ], [ %i.ho, %bb.bh ], [ %i.ho, %_ZN17hb_draw_session_t7move_toEff.exit103 ], [ %.050533, %.preheader ], [ %i.ba, %bb.ar ] ; 3 uses
  %i.ne = icmp ult i32 %.050533, %.2525
  br i1 %i.ne, label %.lr.ph531, label %.loopexit.sink.split

.lr.ph531:                                        ; preds = %.critedge, %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit ], [ %i.bk, %.critedge ] ; 2 uses
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %indvars.iv548 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load i8, ptr %i.ng, align 4, !tbaa !1534
  %i.ni = and i8 %i.nh, 1
  %.not.i = icmp eq i8 %i.ni, 0                   ; 3 uses
  %i.nj = load ptr, ptr %3, align 8, !tbaa !351
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 80
  %i.nl = load <2 x float>, ptr %i.nf, align 4, !tbaa !304
  %i.nm = load <2 x float>, ptr %i.nk, align 8, !tbaa !304
  %i.nn = fmul <2 x float> %i.nl, %i.nm           ; 5 uses
  %22 = extractelement <2 x float> %i.nn, i64 1   ; 11 uses
  %23 = extractelement <2 x float> %i.nn, i64 0   ; 11 uses
  %i.no = load i8, ptr %i.bd, align 8, !tbaa !353, !range !380, !noundef !293
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.cp, label %bb.ca, !prof !268

bb.ca:                                            ; preds = %.lr.ph531
  br i1 %.not.i, label %bb.ch, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 1, ptr %i.bd, align 8
  store float %23, ptr %.sroa_idx447, align 4
  store float %22, ptr %.sroa.15433.0..sroa_idx, align 8, !tbaa !304
  %i.nq = load ptr, ptr %i.be, align 8, !tbaa !352 ; 9 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !338 ; 6 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !339 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nq, i64 16 ; 4 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !358
  %.not.i.i112 = icmp eq i32 %i.nv, 0
  br i1 %.not.i.i112, label %_ZN17hb_draw_session_t7move_toEff.exit115, label %bb.cc, !prof !268

bb.cc:                                            ; preds = %bb.cb
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 20
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !359 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nq, i64 28
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !360
  %i.oa = fcmp une float %i.nx, %i.nz
  %.phi.trans.insert564 = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %.pre565 = load float, ptr %.phi.trans.insert564, align 8, !tbaa !361 ; 2 uses
  br i1 %i.oa, label %._crit_edge563, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  %i.oc = load float, ptr %i.ob, align 8, !tbaa !730
  %i.od = fcmp une float %.pre565, %i.oc
  br i1 %i.od, label %._crit_edge563, label %bb.cf

._crit_edge563:                                   ; preds = %bb.cc, %bb.cd
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !364
  %i.og = getelementptr inbounds nuw i8, ptr %i.nr, i64 56
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !365 ; 2 uses
  %.not.i187 = icmp eq ptr %i.oh, null
  br i1 %.not.i187, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit188, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge563
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit188

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit188: ; preds = %._crit_edge563, %bb.ce
  %i.ok = phi ptr [ %i.oj, %bb.ce ], [ null, %._crit_edge563 ]
  call void %i.of(ptr noundef nonnull align 8 dereferenceable(72) %i.nr, ptr noundef %i.nt, ptr noundef nonnull align 4 dereferenceable(48) %i.nu, float noundef %i.nx, float noundef %.pre565, ptr noundef %i.ok) #63, !inline_history !35
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit188, %bb.cd
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nr, i64 48
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !368
  %i.on = getelementptr inbounds nuw i8, ptr %i.nr, i64 56
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !365 ; 2 uses
  %.not.i189 = icmp eq ptr %i.oo, null
  br i1 %.not.i189, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i114, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i114

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i114: ; preds = %bb.cg, %bb.cf
  %i.or = phi ptr [ %i.oq, %bb.cg ], [ null, %bb.cf ]
  call void %i.om(ptr noundef nonnull align 8 dereferenceable(72) %i.nr, ptr noundef %i.nt, ptr noundef nonnull align 4 dereferenceable(48) %i.nu, ptr noundef %i.or) #63, !inline_history !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.nu, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit115

_ZN17hb_draw_session_t7move_toEff.exit115:        ; preds = %bb.cb, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i114
  %i.os = getelementptr inbounds nuw i8, ptr %i.nq, i64 28
  store float %23, ptr %i.os, align 4, !tbaa !360
  %24 = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  store float %22, ptr %24, align 8, !tbaa !730
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.ch:                                            ; preds = %bb.ca
  %i.ot = load i8, ptr %i.bf, align 4, !tbaa !353, !range !380, !noundef !293
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.ov = load <2 x float>, ptr %.sroa_idx451, align 8, !tbaa !304
  %i.ow = fadd <2 x float> %i.nn, %i.ov
  %i.ox = fmul <2 x float> %i.ow, splat (float 5.000000e-01) ; 2 uses
  store i32 1, ptr %i.bd, align 8
  store <2 x float> %i.ox, ptr %.sroa_idx447, align 4, !tbaa !304
  store i32 1, ptr %i.bg, align 4
  store float %23, ptr %.sroa_idx455, align 8
  store float %22, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !304
  %i.oy = load ptr, ptr %i.be, align 8, !tbaa !352 ; 8 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !338 ; 6 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !339 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 16 ; 4 uses
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !358
  %.not.i.i108 = icmp eq i32 %i.pd, 0
  br i1 %.not.i.i108, label %_ZN17hb_draw_session_t7move_toEff.exit111, label %bb.cj, !prof !268

bb.cj:                                            ; preds = %bb.ci
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 20
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !359 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oy, i64 28
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !360
  %i.pi = fcmp une float %i.pf, %i.ph
  %.phi.trans.insert567 = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %.pre568 = load float, ptr %.phi.trans.insert567, align 8, !tbaa !361 ; 2 uses
  br i1 %i.pi, label %._crit_edge566, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pk = load float, ptr %i.pj, align 8, !tbaa !730
  %i.pl = fcmp une float %.pre568, %i.pk
  br i1 %i.pl, label %._crit_edge566, label %bb.cm

._crit_edge566:                                   ; preds = %bb.cj, %bb.ck
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !364
  %i.po = getelementptr inbounds nuw i8, ptr %i.oz, i64 56
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !365 ; 2 uses
  %.not.i198 = icmp eq ptr %i.pp, null
  br i1 %.not.i198, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit199, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge566
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit199

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit199: ; preds = %._crit_edge566, %bb.cl
  %i.ps = phi ptr [ %i.pr, %bb.cl ], [ null, %._crit_edge566 ]
  call void %i.pn(ptr noundef nonnull align 8 dereferenceable(72) %i.oz, ptr noundef %i.pb, ptr noundef nonnull align 4 dereferenceable(48) %i.pc, float noundef %i.pf, float noundef %.pre568, ptr noundef %i.ps) #63, !inline_history !35
  br label %bb.cm

bb.cm:                                            ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit199, %bb.ck
  %i.pt = getelementptr inbounds nuw i8, ptr %i.oz, i64 48
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !368
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oz, i64 56
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !365 ; 2 uses
  %.not.i200 = icmp eq ptr %i.pw, null
  br i1 %.not.i200, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i110, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 32
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !369
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i110

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i110: ; preds = %bb.cn, %bb.cm
  %i.pz = phi ptr [ %i.py, %bb.cn ], [ null, %bb.cm ]
  call void %i.pu(ptr noundef nonnull align 8 dereferenceable(72) %i.oz, ptr noundef %i.pb, ptr noundef nonnull align 4 dereferenceable(48) %i.pc, ptr noundef %i.pz) #63, !inline_history !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.pc, i8 0, i64 12, i1 false)
  br label %_ZN17hb_draw_session_t7move_toEff.exit111

_ZN17hb_draw_session_t7move_toEff.exit111:        ; preds = %bb.ci, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i110
  %i.qa = getelementptr inbounds nuw i8, ptr %i.oy, i64 28
  store <2 x float> %i.ox, ptr %i.qa, align 4, !tbaa !304
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.co:                                            ; preds = %bb.ch
  store i32 1, ptr %i.bf, align 4
  store float %23, ptr %.sroa_idx451, align 8
  store float %22, ptr %.sroa.15433.0..sroa_idx434, align 4, !tbaa !304
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.cp:                                            ; preds = %.lr.ph531
  %i.qb = load i8, ptr %i.bg, align 4, !tbaa !353, !range !380, !noundef !293
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %bb.cq, label %bb.dc

bb.cq:                                            ; preds = %bb.cp
  br i1 %.not.i, label %bb.cz, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qd = load i8, ptr %i.bh, align 8, !tbaa !353, !range !380, !noundef !293
  %i.qe = trunc nuw i8 %i.qd to i1
  %i.qf = load ptr, ptr %i.be, align 8, !tbaa !352 ; 10 uses
  br i1 %i.qe, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  %i.qg = load float, ptr %i.bi, align 4, !tbaa !1535
  %i.qh = load float, ptr %i.bj, align 8, !tbaa !1536
  %i.qi = load float, ptr %.sroa_idx455, align 8, !tbaa !1537
  %i.qj = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !1538
  %i.qk = load ptr, ptr %i.qf, align 8, !tbaa !338 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !339 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qf, i64 16 ; 3 uses
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !358
  %.not.i.i119 = icmp eq i32 %i.qo, 0
  br i1 %.not.i.i119, label %bb.ct, label %_ZN17hb_draw_session_t8cubic_toEffffff.exit120, !prof !267

bb.ct:                                            ; preds = %bb.cs
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.qk, ptr noundef %i.qm, ptr noundef nonnull align 4 dereferenceable(48) %i.qn)
  br label %_ZN17hb_draw_session_t8cubic_toEffffff.exit120

_ZN17hb_draw_session_t8cubic_toEffffff.exit120:   ; preds = %bb.cs, %bb.ct
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qk, i64 40
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !725
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qk, i64 56
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !365 ; 2 uses
  %.not.i202 = icmp eq ptr %i.qs, null
  br i1 %.not.i202, label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit203, label %bb.cu

bb.cu:                                            ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit120
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !726
  br label %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit203

_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit203: ; preds = %_ZN17hb_draw_session_t8cubic_toEffffff.exit120, %bb.cu
  %i.qv = phi ptr [ %i.qu, %bb.cu ], [ null, %_ZN17hb_draw_session_t8cubic_toEffffff.exit120 ]
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(72) %i.qk, ptr noundef %i.qm, ptr noundef nonnull align 4 dereferenceable(48) %i.qn, float noundef %i.qg, float noundef %i.qh, float noundef %i.qi, float noundef %i.qj, float noundef %23, float noundef %22, ptr noundef %i.qv) #63, !inline_history !34
  %25 = getelementptr inbounds nuw i8, ptr %i.qf, i64 28
  store float %23, ptr %25, align 4, !tbaa !360
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qf, i64 32
  store float %22, ptr %i.qw, align 8, !tbaa !730
  store i8 0, ptr %i.bh, align 8, !tbaa !570
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cr
  %i.qx = load float, ptr %.sroa_idx455, align 8, !tbaa !1537
  %i.qy = load float, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !1538
  %i.qz = load ptr, ptr %i.qf, align 8, !tbaa !338 ; 4 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !339 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qf, i64 16 ; 3 uses
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !358
  %.not.i.i130 = icmp eq i32 %i.rd, 0
  br i1 %.not.i.i130, label %bb.cw, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit131, !prof !267

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.qz, ptr noundef %i.rb, ptr noundef nonnull align 4 dereferenceable(48) %i.rc)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit131

_ZN17hb_draw_session_t12quadratic_toEffff.exit131: ; preds = %bb.cv, %bb.cw
  %i.re = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !724
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qz, i64 56
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !365 ; 2 uses
  %.not.i204 = icmp eq ptr %i.rh, null
  br i1 %.not.i204, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit205, label %bb.cx

bb.cx:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit131
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !723
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit205

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit205: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit131, %bb.cx
  %i.rk = phi ptr [ %i.rj, %bb.cx ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit131 ]
  call void %i.rf(ptr noundef nonnull align 8 dereferenceable(72) %i.qz, ptr noundef %i.rb, ptr noundef nonnull align 4 dereferenceable(48) %i.rc, float noundef %i.qx, float noundef %i.qy, float noundef %23, float noundef %22, ptr noundef %i.rk) #63, !inline_history !37
  %26 = getelementptr inbounds nuw i8, ptr %i.qf, i64 28
  store float %23, ptr %26, align 4, !tbaa !360
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qf, i64 32
  store float %22, ptr %i.rl, align 8, !tbaa !730
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit205, %_ZN15hb_draw_funcs_t13emit_cubic_toEPvR15hb_draw_state_tffffff.exit203
  store i8 0, ptr %i.bg, align 4, !tbaa !570
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.cz:                                            ; preds = %bb.cq
  %i.rm = load <2 x float>, ptr %.sroa_idx455, align 8, !tbaa !304 ; 3 uses
  %i.rn = fadd <2 x float> %i.nn, %i.rm
  %i.ro = fmul <2 x float> %i.rn, splat (float 5.000000e-01) ; 3 uses
  %i.rp = load ptr, ptr %i.be, align 8, !tbaa !352 ; 4 uses
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !338 ; 4 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !339 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 16 ; 3 uses
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !358
  %.not.i.i128 = icmp eq i32 %i.ru, 0
  br i1 %.not.i.i128, label %bb.da, label %_ZN17hb_draw_session_t12quadratic_toEffff.exit129, !prof !267

bb.da:                                            ; preds = %bb.cz
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.rq, ptr noundef %i.rs, ptr noundef nonnull align 4 dereferenceable(48) %i.rt)
  br label %_ZN17hb_draw_session_t12quadratic_toEffff.exit129

_ZN17hb_draw_session_t12quadratic_toEffff.exit129: ; preds = %bb.cz, %bb.da
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !724
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rq, i64 56
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !365 ; 2 uses
  %.not.i213 = icmp eq ptr %i.ry, null
  br i1 %.not.i213, label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit214, label %bb.db

bb.db:                                            ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit129
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !723
  br label %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit214

_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit214: ; preds = %_ZN17hb_draw_session_t12quadratic_toEffff.exit129, %bb.db
  %i.sb = phi ptr [ %i.sa, %bb.db ], [ null, %_ZN17hb_draw_session_t12quadratic_toEffff.exit129 ]
  %i.sc = extractelement <2 x float> %i.ro, i64 0
  %i.sd = extractelement <2 x float> %i.ro, i64 1
  %i.se = extractelement <2 x float> %i.rm, i64 0
  %i.sf = extractelement <2 x float> %i.rm, i64 1
  call void %i.rw(ptr noundef nonnull align 8 dereferenceable(72) %i.rq, ptr noundef %i.rs, ptr noundef nonnull align 4 dereferenceable(48) %i.rt, float noundef %i.se, float noundef %i.sf, float noundef %i.sc, float noundef %i.sd, ptr noundef %i.sb) #63, !inline_history !37
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rp, i64 28
  store <2 x float> %i.ro, ptr %i.sg, align 4, !tbaa !304
  store i32 1, ptr %i.bg, align 4
  store <2 x float> %i.nn, ptr %.sroa_idx455, align 8
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.dc:                                            ; preds = %bb.cp
  br i1 %.not.i, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.sh = load ptr, ptr %i.be, align 8, !tbaa !352 ; 5 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !338 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !339 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 16 ; 3 uses
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !358
  %.not.i.i135 = icmp eq i32 %i.sm, 0
  br i1 %.not.i.i135, label %bb.de, label %_ZN17hb_draw_session_t7line_toEff.exit136, !prof !267

bb.de:                                            ; preds = %bb.dd
  call void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %i.si, ptr noundef %i.sk, ptr noundef nonnull align 4 dereferenceable(48) %i.sl)
  br label %_ZN17hb_draw_session_t7line_toEff.exit136

_ZN17hb_draw_session_t7line_toEff.exit136:        ; preds = %bb.dd, %bb.de
  %i.sn = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !364
  %i.sp = getelementptr inbounds nuw i8, ptr %i.si, i64 56
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !365 ; 2 uses
  %.not.i215 = icmp eq ptr %i.sq, null
  br i1 %.not.i215, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit216, label %bb.df

bb.df:                                            ; preds = %_ZN17hb_draw_session_t7line_toEff.exit136
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !367
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit216

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit216: ; preds = %_ZN17hb_draw_session_t7line_toEff.exit136, %bb.df
  %i.st = phi ptr [ %i.ss, %bb.df ], [ null, %_ZN17hb_draw_session_t7line_toEff.exit136 ]
  call void %i.so(ptr noundef nonnull align 8 dereferenceable(72) %i.si, ptr noundef %i.sk, ptr noundef nonnull align 4 dereferenceable(48) %i.sl, float noundef %23, float noundef %22, ptr noundef %i.st) #63, !inline_history !35
  %27 = getelementptr inbounds nuw i8, ptr %i.sh, i64 28
  store float %23, ptr %27, align 4, !tbaa !360
  %i.su = getelementptr inbounds nuw i8, ptr %i.sh, i64 32
  store float %22, ptr %i.su, align 8, !tbaa !730
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

bb.dg:                                            ; preds = %bb.dc
  store i32 1, ptr %i.bg, align 4
  store float %23, ptr %.sroa_idx455, align 8
  store float %22, ptr %.sroa.15433.0..sroa_idx436, align 4, !tbaa !304
  br label %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit

_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit: ; preds = %_ZN17hb_draw_session_t7move_toEff.exit115, %_ZN17hb_draw_session_t7move_toEff.exit111, %bb.co, %bb.cy, %_ZN15hb_draw_funcs_t17emit_quadratic_toEPvR15hb_draw_state_tffff.exit214, %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit216, %bb.dg
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %lftr.wideiv551 = trunc i64 %indvars.iv.next549 to i32
  %exitcond552.not = icmp eq i32 %.2525, %lftr.wideiv551
  br i1 %exitcond552.not, label %.loopexit.sink.split, label %.lr.ph531, !llvm.loop !3196

.loopexit.sink.split:                             ; preds = %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit, %.critedge, %bb.ap
  %.4.ph = phi i32 [ %i.hj, %bb.ap ], [ %.050533, %.critedge ], [ %.2525, %_ZN2OT9glyf_impl14path_builder_t13consume_pointERK15contour_point_t.exit ]
  call void @_ZN2OT9glyf_impl14path_builder_t11contour_endEv(ptr noundef nonnull align 8 dereferenceable(76) %3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aq, %.loopexit.sink.split, %.preheader521
  %.4 = phi i32 [ %.050533, %.preheader521 ], [ %.4.ph, %.loopexit.sink.split ], [ %i.ba, %bb.aq ]
  %i.sv = add i32 %.4, 1                          ; 2 uses
  %i.sw = icmp ult i32 %i.sv, %i.ba
  br i1 %i.sw, label %bb.h, label %.loopexit522, !llvm.loop !3197

.loopexit522:                                     ; preds = %.loopexit, %bb.g, %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit, %bb.a
  %.152 = phi i1 [ false, %bb.a ], [ false, %_ZNK2OT18glyf_accelerator_t13glyph_for_gidEjb.exit ], [ true, %bb.g ], [ true, %.loopexit ]
  ret i1 %.152
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT9glyf_impl5Glyph10get_pointsINS_18glyf_accelerator_tEEEbP9hb_font_tRKT_R22contour_point_vector_tR17hb_glyf_scratch_tPS9_P16head_maxp_info_tPjbbb10hb_array_tIKiEPNS_17hb_scalar_cache_tEjSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i1 noundef zeroext %10, ptr noundef byval(%struct.hb_array_t.0) align 8 %11, ptr noundef %12, i32 noundef %13, ptr noundef %14) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %15 = alloca %"struct.OT::glyf_impl::SimpleGlyph", align 8 ; 6 uses
  %16 = alloca %struct.hb_decycler_node_t, align 8 ; 12 uses
  %17 = alloca %"struct.OT::glyf_impl::Glyph", align 8 ; 11 uses
  %i.b = alloca [4 x float], align 16             ; 8 uses
  %i.c = icmp ugt i32 %13, 64
  br i1 %i.c, label %bb.ey, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  store i32 0, ptr %i.a, align 4, !tbaa !324
  %.not188 = icmp eq ptr %14, null
  %spec.store.select = select i1 %.not188, ptr %i.a, ptr %14 ; 3 uses
  %i.d = load i32, ptr %spec.store.select, align 4, !tbaa !324 ; 2 uses
  %i.e = icmp ugt i32 %i.d, 2048
  br i1 %i.e, label %_ZN11hb_vector_tI15contour_point_tLb0EE6resizeEi.exit.thread, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i32 %i.d, 1
  store i32 %i.f, ptr %spec.store.select, align 4, !tbaa !324
  %i.g = icmp ne ptr %6, null                     ; 4 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !324
  %.sroa.speculated484 = tail call i32 @llvm.umax.i32(i32 %i.i, i32 %13)
  store i32 %.sroa.speculated484, ptr %i.h, align 4, !tbaa !3220
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1540
  %.not524 = icmp eq i32 %i.k, 0
  br i1 %.not524, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !309
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.r = load i32, ptr %i.q, align 4, !tbaa !310
  store ptr %i.p, ptr %11, align 8, !tbaa !3221
  store i32 %i.r, ptr %i.j, align 8, !tbaa !1540
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !3222
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3223 ; 2 uses
  %i.v = icmp eq i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = select i1 %i.v, ptr %3, ptr %i.w         ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 19 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !356  ; 22 uses
  switch i32 %i.u, label %.critedge [
    i32 1, label %bb.i
    i32 2, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %13, 0
  %or.cond = and i1 %i.g, %i.aa
  br i1 %or.cond, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1531 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = sext i16 %i.af to i32
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !324
  %.sroa.speculated471 = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 %i.ag)
  store i32 %.sroa.speculated471, ptr %i.ab, align 4, !tbaa !3224
  br label %._crit_edge570

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ne i32 %13, 0
  %i.aj = icmp ne ptr %7, null
  %or.cond7 = and i1 %i.aj, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1531 ; 3 uses
  br i1 %or.cond7, label %bb.k, label %._crit_edge570

bb.k:                                             ; preds = %bb.j
  %i.am = load i16, ptr %i.al, align 1, !tbaa !283
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %7, align 4, !tbaa !324
  %i.aq = add i32 %i.ap, %i.ao
  store i32 %i.aq, ptr %7, align 4, !tbaa !324
  br label %._crit_edge570

._crit_edge570:                                   ; preds = %bb.j, %.thread, %bb.k
  %i.ar = phi ptr [ %i.al, %bb.k ], [ %i.ad, %.thread ], [ %i.al, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #63
  %.sroa.064.0.copyload = load ptr, ptr %0, align 8
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.265.0.copyload = load i64, ptr %.sroa.265.0..sroa_idx, align 8
  store ptr %i.ar, ptr %15, align 8, !tbaa !3225
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.064.0.copyload, ptr %i.as, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 %.sroa.265.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.at = call noundef zeroext i1 @_ZNK2OT9glyf_impl11SimpleGlyph18get_contour_pointsER22contour_point_vector_tb(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #63
  br i1 %i.at, label %.critedgethread-pre-split, label %_ZN11hb_vector_tI15contour_point_tLb0EE6resizeEi.exit.thread, !prof !268

bb.l:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1531, !noalias !3226
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !noalias !3226 ; 4 uses
  %.sroa.2.0..sroa_idx.i196 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i196, align 8, !noalias !3226 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 10 ; 5 uses
  %.not.i.i.i.i.i = icmp ugt ptr %.sroa.0.0.copyload.i, %i.aw
  br i1 %.not.i.i.i.i.i, label %.critedgethread-pre-split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = and i64 %.sroa.2.0.copyload.i, 4294967295
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.ax ; 2 uses
  %.not6.i.i.i.i.i = icmp ule ptr %i.aw, %i.ay
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = and i64 %i.bb, 4294967292
  %i.bd = icmp ne i64 %i.bc, 0
  %or.cond.i.i.i.i = and i1 %.not6.i.i.i.i.i, %i.bd
  br i1 %or.cond.i.i.i.i, label %bb.n, label %.critedgethread-pre-split

bb.n:                                             ; preds = %bb.m
  %i.be = load i16, ptr %i.aw, align 1, !tbaa !283, !noalias !3227
  %i.bf = tail call noundef i16 @llvm.bswap.i16(i16 %i.be)
  %i.bg = zext i16 %i.bf to i32                   ; 4 uses
  %i.bh = and i32 %i.bg, 8
  %.not6.i6.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not6.i6.i.i.i.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bi = and i32 %i.bg, 64
  %.not7.i.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not7.i.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = lshr i32 %i.bg, 4
  %i.bk = and i32 %i.bj, 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.sink.i.i.i.i.i = phi i32 [ %i.bk, %bb.p ], [ 2, %bb.n ], [ 4, %bb.o ]
  %i.bl = and i32 %i.bg, 1
  %.not.i7.i.i.i.i = icmp eq i32 %i.bl, 0
  %..i.i.i.i.i = select i1 %.not.i7.i.i.i.i, i32 6, i32 8
  %spec.select.i.i.i.i.i = add nuw nsw i32 %.sink.i.i.i.i.i, %..i.i.i.i.i ; 2 uses
  %i.bm = trunc i64 %i.bb to i32
  %.not.i.i.i.i = icmp ugt i32 %spec.select.i.i.i.i.i, %i.bm
  br i1 %.not.i.i.i.i, label %.critedgethread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bo = and i64 %.sroa.2.0.copyload.i, 4294967295
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %i.bo ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  br label %_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit

_ZNR9hb_iter_tIN2OT9glyf_impl19composite_iter_tmplINS1_20CompositeGlyphRecordEEERKS3_EppEv.exit: ; preds = %bb.ac, %.lr.ph
end_hunk_0
