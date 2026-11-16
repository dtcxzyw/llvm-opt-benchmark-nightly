Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 271
loop-unroll.NumUnrolled: 468
begin_hunk_0_@_ZL25hb_paint_extents_pop_clipP16hb_paint_funcs_tPvS1_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1024, !noalias !6110 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZN26hb_paint_extents_context_t8pop_clipEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !1024, !noalias !6110
  br label %_ZN26hb_paint_extents_context_t8pop_clipEv.exit

_ZN26hb_paint_extents_context_t8pop_clipEv.exit:  ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL27hb_paint_extents_push_groupP16hb_paint_funcs_tPvS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1024 ; 3 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !1029
  %.not.i.i = icmp slt i32 %i.c, %i.d
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.c, 1
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tI11hb_bounds_tIfELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %i.e, i1 noundef zeroext false)
  br i1 %i.f, label %..critedge_crit_edge.i.i, label %bb.c, !prof !266

..critedge_crit_edge.i.i:                         ; preds = %bb.b
  %.pre.i.i = load i32, ptr %i.b, align 4, !tbaa !1024
  br label %.critedge.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false)
  br label %_ZN26hb_paint_extents_context_t10push_groupEv.exit

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %bb.a
  %i.g = phi i32 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1025
  %i.j = add i32 %i.g, 1
  store i32 %i.j, ptr %i.b, align 4, !tbaa !1024
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.i, i64 %i.k ; 2 uses
  store i32 2, ptr %i.l, align 4, !tbaa !1610
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float -1.000000e+00>, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !302
  br label %_ZN26hb_paint_extents_context_t10push_groupEv.exit

_ZN26hb_paint_extents_context_t10push_groupEv.exit: ; preds = %bb.c, %.critedge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL26hb_paint_extents_pop_groupP16hb_paint_funcs_tPv25hb_paint_composite_mode_tS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  tail call void @_ZN26hb_paint_extents_context_t9pop_groupE25hb_paint_composite_mode_t(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL28hb_paint_extents_paint_colorP16hb_paint_funcs_tPvijS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, i32 %2, i32 %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  tail call void @_ZN26hb_paint_extents_context_t5paintEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL28hb_paint_extents_paint_imageP16hb_paint_funcs_tPvP9hb_blob_tjjjfP18hb_glyph_extents_tS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 %3, i32 %4, i32 %5, float %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree readnone captures(none) %8) #30 {
bb.a:
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %_ZN26hb_paint_extents_context_t8pop_clipEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load <2 x i32>, ptr %7, align 4, !tbaa !322
  %i.c = sitofp <2 x i32> %i.b to <2 x float>     ; 3 uses
  %i.d = load <2 x i32>, ptr %i.a, align 4, !tbaa !322
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = fadd <2 x float> %i.c, %i.e              ; 2 uses
  %i.g = shufflevector <2 x float> %i.c, <2 x float> %i.f, <2 x i32> <i32 0, i32 3>
  %i.h = shufflevector <2 x float> %i.f, <2 x float> %i.c, <2 x i32> <i32 0, i32 3>
  tail call void @_ZN26hb_paint_extents_context_t9push_clipE12hb_extents_tIfE(ptr noundef nonnull align 8 dereferenceable(56) %1, <2 x float> %i.g, <2 x float> %i.h)
  tail call void @_ZN26hb_paint_extents_context_t5paintEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1024, !noalias !6113 ; 2 uses
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZN26hb_paint_extents_context_t8pop_clipEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !1024, !noalias !6113
  br label %_ZN26hb_paint_extents_context_t8pop_clipEv.exit

_ZN26hb_paint_extents_context_t8pop_clipEv.exit:  ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL38hb_paint_extents_paint_linear_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2, float %3, float %4, float %5, float %6, float %7, float %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  tail call void @_ZN26hb_paint_extents_context_t5paintEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL38hb_paint_extents_paint_radial_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffffS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2, float %3, float %4, float %5, float %6, float %7, float %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  tail call void @_ZN26hb_paint_extents_context_t5paintEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL37hb_paint_extents_paint_sweep_gradientP16hb_paint_funcs_tPvP15hb_color_line_tffffS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2, float %3, float %4, float %5, float %6, ptr nofree readnone captures(none) %7) #0 {
bb.a:
  tail call void @_ZN26hb_paint_extents_context_t5paintEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZL31free_static_paint_extents_funcsv() #15 {
bb.a:
  br label %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i

_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i: ; preds = %bb.b, %bb.a
  %i.a = load atomic ptr, ptr @_ZL26static_paint_extents_funcs acquire, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i
  %i.b = cmpxchg weak ptr @_ZL26static_paint_extents_funcs, ptr %i.a, ptr null acq_rel monotonic, align 8
  %i.c = extractvalue { ptr, i1 } %i.b, 1
  br i1 %i.c, label %.critedge.i, label %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, !prof !266

.critedge.i:                                      ; preds = %bb.b
  %.not3.i.i = icmp eq ptr %i.a, @_hb_Null_hb_paint_funcs_t
  br i1 %.not3.i.i, label %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  tail call void @hb_paint_funcs_destroy(ptr noundef nonnull %i.a)
  br label %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit

_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI16hb_paint_funcs_t36hb_paint_extents_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN26hb_paint_extents_context_t9push_clipE12hb_extents_tIfE(ptr noundef nonnull align 8 dereferenceable(56) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #30 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1031 ; 2 uses
  %.not.i.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.not.i, label %bb.b, label %bb.c, !prof !265

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, i8 0, i64 24, i1 false)
  br label %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit

bb.c:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1032
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.h = load <2 x float>, ptr %.phi.trans.insert, align 4, !tbaa !302
  %i.i = load <2 x float>, ptr %i.g, align 4, !tbaa !302
  %i.j = load <2 x float>, ptr %.phi.trans.insert46, align 4, !tbaa !302
  br label %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit

_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.j, %bb.c ] ; 5 uses
  %i.l = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.m = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %.sroa.09.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 2 uses
  %.sroa.09.4.vec.extract = extractelement <2 x float> %1, i64 1 ; 2 uses
  %.sroa.11.12.vec.extract = extractelement <2 x float> %2, i64 1 ; 2 uses
  %i.n = extractelement <2 x float> %i.l, i64 0
  %i.o = extractelement <2 x float> %i.m, i64 0
  %i.p = tail call float @llvm.fmuladd.f32(float %i.n, float %.sroa.09.0.vec.extract, float %i.o) ; 2 uses
  %i.q = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float %.sroa.09.4.vec.extract, float %i.p) ; 4 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %i.q, float %.sroa.11.12.vec.extract, float %i.p) ; 4 uses
  %i.t = fcmp ole float %i.r, %i.s
  %.sroa.speculated12.i.1.i = select i1 %i.t, float %i.r, float %i.s ; 2 uses
  %i.u = fcmp oge float %i.r, %i.s
  %.sroa.speculated9.i.1.i = select i1 %i.u, float %i.r, float %i.s ; 2 uses
  %i.v = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.v, <2 x float> %i.m) ; 3 uses
  %i.x = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.x, <2 x float> %i.w) ; 2 uses
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.aa = fcmp ogt float %.sroa.speculated12.i.1.i, %.sroa.speculated9.i.1.i
  br i1 %i.aa, label %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread, label %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i, !prof !265

_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread: ; preds = %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit
  %3 = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.ab = shufflevector <2 x float> %2, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>
  %i.ac = shufflevector <2 x float> %i.y, <2 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %3, <4 x float> %i.ab, <4 x float> %i.ac)
  %4 = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  br label %bb.d

_ZN12hb_extents_tIfE9add_pointEff.exit.2.i:       ; preds = %_ZN11hb_vector_tI14hb_transform_tIfELb0EE4tailEv.exit
  %i.ae = extractelement <2 x float> %i.l, i64 1
  %i.af = extractelement <2 x float> %i.m, i64 1
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ae, float %.sroa.09.0.vec.extract, float %i.af) ; 2 uses
  %i.ah = extractelement <2 x float> %i.k, i64 1  ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %.sroa.09.4.vec.extract, float %i.ag) ; 4 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ah, float %.sroa.11.12.vec.extract, float %i.ag) ; 4 uses
  %i.ak = fcmp oge float %i.ai, %i.aj
  %.sroa.speculated.i.1.i = select i1 %i.ak, float %i.ai, float %i.aj
  %i.al = fcmp ole float %i.ai, %i.aj
  %.sroa.speculated5.i.1.i = select i1 %i.al, float %i.ai, float %i.aj
  %i.am = insertelement <4 x float> poison, float %.sroa.speculated12.i.1.i, i64 0
  %i.an = insertelement <4 x float> %i.am, float %.sroa.speculated5.i.1.i, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %.sroa.speculated9.i.1.i, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %.sroa.speculated.i.1.i, i64 3 ; 3 uses
  %i.aq = fcmp ole <4 x float> %i.ap, %i.z
  %i.ar = fcmp oge <4 x float> %i.ap, %i.z
  %i.as = shufflevector <4 x i1> %i.aq, <4 x i1> %i.ar, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.at = select <4 x i1> %i.as, <4 x float> %i.ap, <4 x float> %i.z ; 5 uses
  %i.au = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.au, <2 x float> %i.w)
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ax = extractelement <4 x float> %i.at, i64 0
  %i.ay = extractelement <4 x float> %i.at, i64 2
  %i.az = fcmp ogt float %i.ax, %i.ay
  %i.ba = shufflevector <4 x float> %i.at, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bb = shufflevector <4 x float> %i.at, <4 x float> %i.aw, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  br i1 %i.az, label %_ZNK14hb_transform_tIfE17transform_extentsER12hb_extents_tIfE.exit, label %bb.d, !prof !2049

bb.d:                                             ; preds = %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i
  %i.bc = phi <4 x float> [ %4, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread ], [ %i.ba, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i ] ; 2 uses
  %i.bd = phi <4 x float> [ %4, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread ], [ %i.bb, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i ]
  %i.be = phi <4 x float> [ %i.z, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i.thread ], [ %i.at, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i ]
  %i.bf = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bg = fcmp ole <4 x float> %i.bc, %i.bf
  %i.bh = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.bi = select <4 x i1> %i.bg, <4 x float> %i.be, <4 x float> %i.bh
  br label %_ZNK14hb_transform_tIfE17transform_extentsER12hb_extents_tIfE.exit

_ZNK14hb_transform_tIfE17transform_extentsER12hb_extents_tIfE.exit: ; preds = %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i, %bb.d
  %i.bj = phi <4 x float> [ %i.bi, %bb.d ], [ %i.aw, %_ZN12hb_extents_tIfE9add_pointEff.exit.2.i ] ; 9 uses
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bl = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bm = fcmp ult <2 x float> %i.bk, %i.bl       ; 2 uses
  %i.bn = extractelement <2 x i1> %i.bm, i64 0
  %i.bo = extractelement <2 x i1> %i.bm, i64 1
  %.not44 = select i1 %i.bn, i1 %i.bo, i1 false   ; 2 uses
  %i.bp = select i1 %.not44, i32 1, i32 2         ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !1024 ; 5 uses
  %.not.i.not.i2 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.not.i2, label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit.thread, label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit, !prof !265

_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit.thread: ; preds = %_ZNK14hb_transform_tIfE17transform_extentsER12hb_extents_tIfE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false)
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit: ; preds = %_ZNK14hb_transform_tIfE17transform_extentsER12hb_extents_tIfE.exit
  %i.bt = add i32 %i.bs, -1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1025
  %i.bw = zext i32 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [20 x i8], ptr %i.bv, i64 %i.bw ; 2 uses
  %.pr = load i32, ptr %i.bx, align 4, !tbaa !2089
  switch i32 %.pr, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit [
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit
  br i1 %.not44, label %bb.g, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = load <4 x float>, ptr %i.by, align 4    ; 5 uses
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cb = shufflevector <4 x float> %i.bz, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cc = fcmp oge <2 x float> %i.ca, %i.cb       ; 2 uses
  %i.cd = extractelement <2 x i1> %i.cc, i64 0
  %i.ce = extractelement <2 x i1> %i.cc, i64 1
  %i.cf = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %i.cf, label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit, label %_ZN12hb_extents_tIfE9intersectERKS0_.exit.i

_ZN12hb_extents_tIfE9intersectERKS0_.exit.i:      ; preds = %bb.g
  %i.cg = fcmp oge <4 x float> %i.bj, %i.bz
  %i.ch = fcmp ole <4 x float> %i.bj, %i.bz
  %i.ci = shufflevector <4 x i1> %i.cg, <4 x i1> %i.ch, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cj = select <4 x i1> %i.ci, <4 x float> %i.bj, <4 x float> %i.bz ; 3 uses
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cm = fcmp oge <2 x float> %i.ck, %i.cl       ; 2 uses
  %i.cn = extractelement <2 x i1> %i.cm, i64 0
  %i.co = extractelement <2 x i1> %i.cm, i64 1
  %i.cp = select i1 %i.cn, i1 true, i1 %i.co
  %spec.select = select i1 %i.cp, i32 2, i32 1
  br label %_ZN11hb_bounds_tIfE9intersectERKS0_.exit

_ZN11hb_bounds_tIfE9intersectERKS0_.exit:         ; preds = %_ZN12hb_extents_tIfE9intersectERKS0_.exit.i, %bb.f, %bb.g, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit.thread, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit, %bb.e
  %.sroa.0.0 = phi i32 [ %i.bp, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit ], [ 2, %bb.e ], [ 2, %bb.f ], [ 2, %bb.g ], [ %i.bp, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit.thread ], [ %spec.select, %_ZN12hb_extents_tIfE9intersectERKS0_.exit.i ]
  %i.cq = phi <4 x float> [ %i.bj, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit ], [ %i.bj, %bb.e ], [ %i.bj, %bb.f ], [ <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float -1.000000e+00>, %bb.g ], [ %i.bj, %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4tailEv.exit.thread ], [ %i.cj, %_ZN12hb_extents_tIfE9intersectERKS0_.exit.i ]
  %i.cr = load i32, ptr %i.bq, align 8, !tbaa !1029
  %.not.i = icmp slt i32 %i.bs, %i.cr
  br i1 %.not.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZN11hb_bounds_tIfE9intersectERKS0_.exit
  %i.cs = add i32 %i.bs, 1
  %i.ct = tail call noundef zeroext i1 @_ZN11hb_vector_tI11hb_bounds_tIfELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i32 noundef %i.cs, i1 noundef zeroext false)
  br i1 %i.ct, label %..critedge_crit_edge.i, label %bb.i, !prof !266

..critedge_crit_edge.i:                           ; preds = %bb.h
  %.pre.i = load i32, ptr %i.br, align 4, !tbaa !1024
  br label %.critedge.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) @_hb_CrapPool, i8 0, i64 20, i1 false)
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4pushIJRS1_EEEPS1_DpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %_ZN11hb_bounds_tIfE9intersectERKS0_.exit
  %i.cu = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.bs, %_ZN11hb_bounds_tIfE9intersectERKS0_.exit ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1025
  %i.cx = add i32 %i.cu, 1
  store i32 %i.cx, ptr %i.br, align 4, !tbaa !1024
  %i.cy = zext i32 %i.cu to i64
  %i.cz = getelementptr inbounds nuw [20 x i8], ptr %i.cw, i64 %i.cy ; 2 uses
  store i32 %.sroa.0.0, ptr %i.cz, align 4, !tbaa !1610
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store <4 x float> %i.cq, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !302
  br label %_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4pushIJRS1_EEEPS1_DpOT_.exit

_ZN11hb_vector_tI11hb_bounds_tIfELb0EE4pushIJRS1_EEEPS1_DpOT_.exit: ; preds = %bb.i, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN41hb_paint_extents_draw_funcs_lazy_loader_t6createEv() local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #60 ; 7 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %hb_draw_funcs_create.exit, label %bb.b, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store atomic i32 1, ptr %i.a monotonic, align 4
  store atomic i8 1, ptr %i.b monotonic, align 4
  store atomic ptr null, ptr %i.c monotonic, align 8
  %i.d = load atomic i32, ptr %i.a monotonic, align 8 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_hb_Null_hb_draw_funcs_t, i64 16), i64 40, i1 false), !tbaa.struct !727
  br label %hb_draw_funcs_create.exit

hb_draw_funcs_create.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.a, %bb.b ], [ @_hb_Null_hb_draw_funcs_t, %bb.a ] ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 6 uses
  %i.g = load atomic i8, ptr %i.f monotonic, align 1, !range !378, !noundef !291
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %hb_draw_funcs_set_move_to_func.exit

bb.c:                                             ; preds = %hb_draw_funcs_create.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !714  ; 2 uses
  %.not21.i = icmp eq ptr %i.j, null
  br i1 %.not21.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !716  ; 2 uses
  %.not22.i = icmp eq ptr %i.k, null
  br i1 %.not22.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !363  ; 2 uses
  %.not23.i = icmp eq ptr %i.m, null
  br i1 %.not23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !717
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = phi ptr [ %i.n, %bb.f ], [ null, %bb.e ]
  tail call void %i.k(ptr noundef %i.o) #59, !inline_history !1518
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr @_ZL30hb_paint_extents_count_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr %i.p, align 8, !tbaa !718
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !363  ; 2 uses
  %.not24.i = icmp eq ptr %i.r, null
  br i1 %.not24.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.r, align 8, !tbaa !717
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !714  ; 2 uses
  %.not25.i = icmp eq ptr %i.s, null
  br i1 %.not25.i, label %hb_draw_funcs_set_move_to_func.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.s, align 8, !tbaa !716
  br label %hb_draw_funcs_set_move_to_func.exit

hb_draw_funcs_set_move_to_func.exit:              ; preds = %hb_draw_funcs_create.exit, %bb.j, %bb.k
  %i.t = load atomic i8, ptr %i.f monotonic, align 1, !range !378, !noundef !291
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.l, label %hb_draw_funcs_set_line_to_func.exit

bb.l:                                             ; preds = %hb_draw_funcs_set_move_to_func.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !714  ; 2 uses
  %.not21.i6 = icmp eq ptr %i.w, null
  br i1 %.not21.i6, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !719  ; 2 uses
  %.not22.i7 = icmp eq ptr %i.y, null
  br i1 %.not22.i7, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !363 ; 2 uses
  %.not23.i8 = icmp eq ptr %i.aa, null
  br i1 %.not23.i8, label %bb.p, label %bb.o
end_hunk_0
