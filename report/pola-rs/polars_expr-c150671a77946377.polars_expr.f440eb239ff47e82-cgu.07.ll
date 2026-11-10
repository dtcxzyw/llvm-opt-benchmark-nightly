Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort8_stablemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1Z_10WindowExprNtB21_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB23_:._crit_edge.i
  %.sroa.0.0.i.i26.i.3 = select i1 %i.oe, i8 %switch.offset.i.i25.i.3, i8 %i.oa, !dbg !57666
  %i.of = icmp eq i8 %.sroa.0.0.i.i26.i.3, -1, !dbg !57667 ; 3 uses
  %i.og = xor i1 %i.of, true, !dbg !57668
  %i.oh = select i1 %i.of, i32 %.sroa.015.0.val.i.3, i32 %.sroa.017.0.val.i.3, !dbg !57669
  store i32 %i.oh, ptr %i.ml, align 4, !dbg !57669, !noalias !57390
  %.neg.i.i.3 = sext i1 %i.og to i64, !dbg !57670
  %i.oi = getelementptr [4 x i8], ptr %i.mj, i64 %.neg.i.i.3, !dbg !57671
  %.neg15.i.i.3 = sext i1 %i.of to i64, !dbg !57672
  %i.oj = getelementptr [4 x i8], ptr %i.mk, i64 %.neg15.i.i.3, !dbg !57673
  %i.ok = getelementptr i8, ptr %i.oj, i64 4, !dbg !57675
  %i.ol = getelementptr i8, ptr %i.oi, i64 4, !dbg !57676
  %i.om = icmp ne ptr %i.nl, %i.ok, !dbg !57677
  %i.on = icmp ne ptr %i.nj, %i.ol
  %or.cond.i = select i1 %i.om, i1 true, i1 %i.on, !dbg !57677, !prof !3970
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB26_10WindowExprNtB28_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB2a_.exit, !dbg !57677, !prof !3970

bb.a:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #50, !dbg !57678, !noalias !57384
  unreachable, !dbg !57678

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB26_10WindowExprNtB28_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB2a_.exit: ; preds = %._crit_edge.i
  ret void, !dbg !57679
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1g_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1h_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 2, 33) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 !dbg !57680 !guid !57762 {
.lr.ph.preheader:
  %i.a = lshr i64 %1, 1, !dbg !57785              ; 2 uses
  %i.b = add nsw i64 %1, -1, !dbg !57786          ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b, !dbg !57787
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.b, !dbg !57788
  %i.e = getelementptr [16 x i8], ptr %0, i64 %i.a, !dbg !57789 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -16, !dbg !57790
  br label %.lr.ph, !dbg !57791

._crit_edge:                                      ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36
  %i.g = getelementptr i8, ptr %i.ah, i64 16, !dbg !57792 ; 2 uses
  %i.h = getelementptr i8, ptr %i.ag, i64 16, !dbg !57793
  %i.i = and i64 %1, 1, !dbg !57794
  %i.j = icmp eq i64 %i.i, 0, !dbg !57794
  br i1 %i.j, label %bb.n, label %bb.m, !dbg !57795

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36
  %.sroa.0.018 = phi ptr [ %i.x, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36 ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.017 = phi i64 [ %i.k, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36 ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.015 = phi ptr [ %i.w, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36 ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.sroa.011.014 = phi ptr [ %i.u, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36 ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.013 = phi ptr [ %i.ah, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36 ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.017.011 = phi ptr [ %i.ag, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36 ], [ %i.d, %.lr.ph.preheader ] ; 6 uses
  %.sroa.019.010 = phi ptr [ %i.ai, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.04.017, 1, !dbg !57796 ; 2 uses
  %.sroa.011.0.val = load i16, ptr %.sroa.011.014, align 8, !dbg !57797, !noundef !3509 ; 4 uses
  %.sroa.06.0.val = load i16, ptr %.sroa.06.015, align 8, !dbg !57797, !noundef !3509 ; 5 uses
  %i.l = and i16 %.sroa.011.0.val, 32767, !dbg !57798 ; 2 uses
  %i.m = icmp samesign ugt i16 %i.l, 31744, !dbg !57798
  br i1 %i.m, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit, label %bb.a, !dbg !57791

bb.a:                                             ; preds = %.lr.ph
  %i.n = and i16 %.sroa.06.0.val, 32767, !dbg !57799
  %i.o = icmp samesign ugt i16 %i.n, 31744, !dbg !57799
  br i1 %i.o, label %bb.f, label %bb.b, !dbg !57800

bb.b:                                             ; preds = %bb.a
  %.not.i4.i.i = icmp sgt i16 %.sroa.06.0.val, -1, !dbg !57801 ; 2 uses
  %i.p = icmp sgt i16 %.sroa.011.0.val, -1, !dbg !57802
  br i1 %i.p, label %bb.c, label %bb.d, !dbg !57802

bb.c:                                             ; preds = %bb.b
  %.not31.i.i = icmp samesign ult i16 %.sroa.011.0.val, %.sroa.06.0.val
  %or.cond.i = select i1 %.not.i4.i.i, i1 %.not31.i.i, i1 false, !dbg !57802
  br i1 %or.cond.i, label %bb.f, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit, !dbg !57802

bb.d:                                             ; preds = %bb.b
  br i1 %.not.i4.i.i, label %.split.i.i, label %bb.e, !dbg !57802

.split.i.i:                                       ; preds = %bb.d
  %i.q = or i16 %.sroa.06.0.val, %i.l, !dbg !57803
  %.not.i.i = icmp eq i16 %i.q, 0, !dbg !57803
  br i1 %.not.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit, label %bb.f, !dbg !57804

bb.e:                                             ; preds = %bb.d
  %.not30.i.i = icmp samesign ult i16 %.sroa.06.0.val, %.sroa.011.0.val, !dbg !57805
  br i1 %.not30.i.i, label %bb.f, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit, !dbg !57804

bb.f:                                             ; preds = %bb.e, %bb.a, %.split.i.i, %bb.c
  br label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit, !dbg !57806

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %.split.i.i, %bb.c, %.lr.ph, %bb.f
  %.sroa.0.0.i.i.i5 = phi i1 [ true, %bb.f ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %.split.i.i ], [ false, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %.sroa.011.014, %bb.f ], [ %.sroa.06.015, %.lr.ph ], [ %.sroa.06.015, %bb.c ], [ %.sroa.06.015, %.split.i.i ], [ %.sroa.06.015, %bb.e ], !dbg !57806
  %i.s = xor i1 %.sroa.0.0.i.i.i5, true, !dbg !57807
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !dbg !57808, !noalias !57778
  %i.t = zext i1 %.sroa.0.0.i.i.i5 to i64, !dbg !57809
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.014, i64 %i.t, !dbg !57810 ; 4 uses
  %i.v = zext i1 %i.s to i64, !dbg !57811
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.015, i64 %i.v, !dbg !57812 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 16, !dbg !57813 ; 2 uses
  %.sroa.017.0.val = load i16, ptr %.sroa.017.011, align 8, !dbg !57814, !noundef !3509 ; 4 uses
  %.sroa.015.0.val = load i16, ptr %.sroa.015.013, align 8, !dbg !57814, !noundef !3509 ; 5 uses
  %i.y = and i16 %.sroa.017.0.val, 32767, !dbg !57815 ; 2 uses
  %i.z = icmp samesign ugt i16 %i.y, 31744, !dbg !57815
  br i1 %i.z, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36, label %bb.g, !dbg !57816

bb.g:                                             ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit
  %i.aa = and i16 %.sroa.015.0.val, 32767, !dbg !57817
  %i.ab = icmp samesign ugt i16 %i.aa, 31744, !dbg !57817
  br i1 %i.ab, label %bb.l, label %bb.h, !dbg !57818

bb.h:                                             ; preds = %bb.g
  %.not.i4.i.i28 = icmp sgt i16 %.sroa.015.0.val, -1, !dbg !57819 ; 2 uses
  %i.ac = icmp sgt i16 %.sroa.017.0.val, -1, !dbg !57820
  br i1 %i.ac, label %bb.i, label %bb.j, !dbg !57820

bb.i:                                             ; preds = %bb.h
  %.not31.i.i34 = icmp samesign ult i16 %.sroa.017.0.val, %.sroa.015.0.val
  %or.cond.i35 = select i1 %.not.i4.i.i28, i1 %.not31.i.i34, i1 false, !dbg !57820
  br i1 %or.cond.i35, label %bb.l, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36, !dbg !57820

bb.j:                                             ; preds = %bb.h
  br i1 %.not.i4.i.i28, label %.split.i.i32, label %bb.k, !dbg !57820

.split.i.i32:                                     ; preds = %bb.j
  %i.ad = or i16 %.sroa.015.0.val, %i.y, !dbg !57821
  %.not.i.i33 = icmp eq i16 %i.ad, 0, !dbg !57821
  br i1 %.not.i.i33, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36, label %bb.l, !dbg !57822

bb.k:                                             ; preds = %bb.j
  %.not30.i.i29 = icmp samesign ult i16 %.sroa.015.0.val, %.sroa.017.0.val, !dbg !57823
  br i1 %.not30.i.i29, label %bb.l, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36, !dbg !57822

bb.l:                                             ; preds = %bb.k, %bb.g, %.split.i.i32, %bb.i
  br label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36, !dbg !57824

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit36: ; preds = %bb.k, %.split.i.i32, %bb.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit, %bb.l
  %.sroa.0.0.i.i.i318 = phi i1 [ true, %bb.l ], [ false, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit ], [ false, %bb.i ], [ false, %.split.i.i32 ], [ false, %bb.k ] ; 2 uses
  %i.ae = phi ptr [ %.sroa.015.013, %bb.l ], [ %.sroa.017.011, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.017.011, %bb.i ], [ %.sroa.017.011, %.split.i.i32 ], [ %.sroa.017.011, %bb.k ], !dbg !57824
  %i.af = xor i1 %.sroa.0.0.i.i.i318, true, !dbg !57825
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.010, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !dbg !57826, !noalias !57779
  %.neg.i = sext i1 %i.af to i64, !dbg !57827
  %i.ag = getelementptr [16 x i8], ptr %.sroa.017.011, i64 %.neg.i, !dbg !57828 ; 2 uses
  %.neg15.i = sext i1 %.sroa.0.0.i.i.i318 to i64, !dbg !57829
  %i.ah = getelementptr [16 x i8], ptr %.sroa.015.013, i64 %.neg15.i, !dbg !57830 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.019.010, i64 -16, !dbg !57831
  %exitcond.not = icmp eq i64 %i.k, %i.a, !dbg !57832
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !57781

bb.m:                                             ; preds = %._crit_edge
  %i.aj = icmp ult ptr %i.w, %i.g, !dbg !57833    ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.aj, ptr %i.w, ptr %i.u, !dbg !57834
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0, i64 16, i1 false), !dbg !57835
  %i.ak = zext i1 %i.aj to i64, !dbg !57836
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.ak, !dbg !57837
  %i.am = xor i1 %i.aj, true, !dbg !57838
  %i.an = zext i1 %i.am to i64, !dbg !57838
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.an, !dbg !57839
  br label %bb.n, !dbg !57840

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.sroa.011.1 = phi ptr [ %i.u, %._crit_edge ], [ %i.ao, %bb.m ], !dbg !57841
  %.sroa.06.1 = phi ptr [ %i.w, %._crit_edge ], [ %i.al, %bb.m ], !dbg !57842
  %i.ap = icmp ne ptr %.sroa.06.1, %i.g, !dbg !57843
  %i.aq = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.ap, i1 true, i1 %i.aq, !dbg !57843, !prof !3970
  br i1 %or.cond, label %bb.p, label %bb.o, !dbg !57843, !prof !3970

bb.o:                                             ; preds = %bb.n
  ret void, !dbg !57844

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #50, !dbg !57845
  unreachable, !dbg !57845
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1g_7sort_byNCINvNtB1l_4sort18arg_sort_ascendingB1h_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4z_5BlockRSB1h_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 4 captures(address) %0, i64 noundef range(i64 2, 1152921504606846976) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 !dbg !57846 !guid !57928 {
.lr.ph.preheader:
  %i.a = lshr i64 %1, 1, !dbg !57951              ; 2 uses
  %i.b = add nsw i64 %1, -1, !dbg !57952          ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.b, !dbg !57953
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b, !dbg !57954
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.a, !dbg !57955 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -8, !dbg !57956
  br label %.lr.ph, !dbg !57957

._crit_edge:                                      ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32
  %i.g = getelementptr i8, ptr %i.aj, i64 8, !dbg !57958 ; 2 uses
  %i.h = getelementptr i8, ptr %i.ai, i64 8, !dbg !57959
  %i.i = and i64 %1, 1, !dbg !57960
  %i.j = icmp eq i64 %i.i, 0, !dbg !57960
  br i1 %i.j, label %bb.n, label %bb.m, !dbg !57961

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32
  %.sroa.0.018 = phi ptr [ %i.y, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32 ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.017 = phi i64 [ %i.k, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32 ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.015 = phi ptr [ %i.x, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32 ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.sroa.011.014 = phi ptr [ %i.v, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32 ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.013 = phi ptr [ %i.aj, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32 ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.017.011 = phi ptr [ %i.ai, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32 ], [ %i.d, %.lr.ph.preheader ] ; 6 uses
  %.sroa.019.010 = phi ptr [ %i.ak, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.04.017, 1, !dbg !57962 ; 2 uses
  %.sroa.011.0.val = load i16, ptr %.sroa.011.014, align 4, !dbg !57963, !alias.scope !3915, !noundef !3509 ; 4 uses
  %.sroa.06.0.val = load i16, ptr %.sroa.06.015, align 4, !dbg !57963 ; 5 uses
  %i.l = and i16 %.sroa.011.0.val, 32767, !dbg !57964 ; 2 uses
  %i.m = icmp samesign ugt i16 %i.l, 31744, !dbg !57964
  br i1 %i.m, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit, label %bb.a, !dbg !57957

bb.a:                                             ; preds = %.lr.ph
  %i.n = and i16 %.sroa.06.0.val, 32767, !dbg !57965
  %i.o = icmp samesign ugt i16 %i.n, 31744, !dbg !57965
  br i1 %i.o, label %bb.f, label %bb.b, !dbg !57966

bb.b:                                             ; preds = %bb.a
  %.not.i4.i.i = icmp sgt i16 %.sroa.06.0.val, -1, !dbg !57967 ; 2 uses
  %i.p = icmp sgt i16 %.sroa.011.0.val, -1, !dbg !57968
  br i1 %i.p, label %bb.c, label %bb.d, !dbg !57968

bb.c:                                             ; preds = %bb.b
  %.not22.i.i = icmp samesign ult i16 %.sroa.011.0.val, %.sroa.06.0.val
  %or.cond.i = select i1 %.not.i4.i.i, i1 %.not22.i.i, i1 false, !dbg !57968
  br i1 %or.cond.i, label %bb.f, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit, !dbg !57968

bb.d:                                             ; preds = %bb.b
  br i1 %.not.i4.i.i, label %.split.i.i, label %bb.e, !dbg !57968

.split.i.i:                                       ; preds = %bb.d
  %i.q = or i16 %i.l, %.sroa.06.0.val, !dbg !57969
  %.not.i.i = icmp eq i16 %i.q, 0, !dbg !57969
  br i1 %.not.i.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit, label %bb.f, !dbg !57970

bb.e:                                             ; preds = %bb.d
  %.not21.i.i = icmp samesign ult i16 %.sroa.06.0.val, %.sroa.011.0.val, !dbg !57971
  br i1 %.not21.i.i, label %bb.f, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit, !dbg !57970

bb.f:                                             ; preds = %bb.e, %bb.a, %.split.i.i, %bb.c
  br label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit, !dbg !57972

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %.split.i.i, %bb.c, %.lr.ph, %bb.f
  %.sroa.0.0.i.i.i5 = phi i1 [ true, %bb.f ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %.split.i.i ], [ false, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %.sroa.011.014, %bb.f ], [ %.sroa.06.015, %.lr.ph ], [ %.sroa.06.015, %bb.c ], [ %.sroa.06.015, %.split.i.i ], [ %.sroa.06.015, %bb.e ], !dbg !57972
  %i.s = xor i1 %.sroa.0.0.i.i.i5, true, !dbg !57973
  %i.t = load i64, ptr %i.r, align 4, !dbg !57974, !noalias !57944
  store i64 %i.t, ptr %.sroa.0.018, align 4, !dbg !57974, !noalias !57944
  %i.u = zext i1 %.sroa.0.0.i.i.i5 to i64, !dbg !57975
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.014, i64 %i.u, !dbg !57976 ; 4 uses
  %i.w = zext i1 %i.s to i64, !dbg !57977
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.015, i64 %i.w, !dbg !57978 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 8, !dbg !57979 ; 2 uses
  %.sroa.017.0.val = load i16, ptr %.sroa.017.011, align 4, !dbg !57980, !alias.scope !3915, !noundef !3509 ; 4 uses
  %.sroa.015.0.val = load i16, ptr %.sroa.015.013, align 4, !dbg !57980 ; 5 uses
  %i.z = and i16 %.sroa.017.0.val, 32767, !dbg !57981 ; 2 uses
  %i.aa = icmp samesign ugt i16 %i.z, 31744, !dbg !57981
  br i1 %i.aa, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32, label %bb.g, !dbg !57982

bb.g:                                             ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit
  %i.ab = and i16 %.sroa.015.0.val, 32767, !dbg !57983
  %i.ac = icmp samesign ugt i16 %i.ab, 31744, !dbg !57983
  br i1 %i.ac, label %bb.l, label %bb.h, !dbg !57984

bb.h:                                             ; preds = %bb.g
  %.not.i4.i.i24 = icmp sgt i16 %.sroa.015.0.val, -1, !dbg !57985 ; 2 uses
  %i.ad = icmp sgt i16 %.sroa.017.0.val, -1, !dbg !57986
  br i1 %i.ad, label %bb.i, label %bb.j, !dbg !57986

bb.i:                                             ; preds = %bb.h
  %.not22.i.i30 = icmp samesign ult i16 %.sroa.017.0.val, %.sroa.015.0.val
  %or.cond.i31 = select i1 %.not.i4.i.i24, i1 %.not22.i.i30, i1 false, !dbg !57986
  br i1 %or.cond.i31, label %bb.l, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32, !dbg !57986

bb.j:                                             ; preds = %bb.h
  br i1 %.not.i4.i.i24, label %.split.i.i28, label %bb.k, !dbg !57986

.split.i.i28:                                     ; preds = %bb.j
  %i.ae = or i16 %i.z, %.sroa.015.0.val, !dbg !57987
  %.not.i.i29 = icmp eq i16 %i.ae, 0, !dbg !57987
  br i1 %.not.i.i29, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32, label %bb.l, !dbg !57988

bb.k:                                             ; preds = %bb.j
  %.not21.i.i25 = icmp samesign ult i16 %.sroa.015.0.val, %.sroa.017.0.val, !dbg !57989
  br i1 %.not21.i.i25, label %bb.l, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32, !dbg !57988

bb.l:                                             ; preds = %bb.k, %bb.g, %.split.i.i28, %bb.i
  br label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32, !dbg !57990

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit32: ; preds = %bb.k, %.split.i.i28, %bb.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit, %bb.l
  %.sroa.0.0.i.i.i278 = phi i1 [ true, %bb.l ], [ false, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit ], [ false, %bb.i ], [ false, %.split.i.i28 ], [ false, %bb.k ] ; 2 uses
  %i.af = phi ptr [ %.sroa.015.013, %bb.l ], [ %.sroa.017.011, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.017.011, %bb.i ], [ %.sroa.017.011, %.split.i.i28 ], [ %.sroa.017.011, %bb.k ], !dbg !57990
  %i.ag = xor i1 %.sroa.0.0.i.i.i278, true, !dbg !57991
  %i.ah = load i64, ptr %i.af, align 4, !dbg !57992, !noalias !57945
  store i64 %i.ah, ptr %.sroa.019.010, align 4, !dbg !57992, !noalias !57945
  %.neg.i = sext i1 %i.ag to i64, !dbg !57993
  %i.ai = getelementptr [8 x i8], ptr %.sroa.017.011, i64 %.neg.i, !dbg !57994 ; 2 uses
  %.neg15.i = sext i1 %.sroa.0.0.i.i.i278 to i64, !dbg !57995
  %i.aj = getelementptr [8 x i8], ptr %.sroa.015.013, i64 %.neg15.i, !dbg !57996 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.019.010, i64 -8, !dbg !57997
  %exitcond.not = icmp eq i64 %i.k, %i.a, !dbg !57998
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !57947

bb.m:                                             ; preds = %._crit_edge
  %i.al = icmp ult ptr %i.x, %i.g, !dbg !57999    ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.al, ptr %i.x, ptr %i.v, !dbg !58000
  %i.am = load i64, ptr %.sroa.06.0..sroa.011.0, align 4, !dbg !58001
  store i64 %i.am, ptr %i.y, align 4, !dbg !58001
  %i.an = zext i1 %i.al to i64, !dbg !58002
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.an, !dbg !58003
  %i.ap = xor i1 %i.al, true, !dbg !58004
  %i.aq = zext i1 %i.ap to i64, !dbg !58004
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aq, !dbg !58005
  br label %bb.n, !dbg !58006

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.sroa.011.1 = phi ptr [ %i.v, %._crit_edge ], [ %i.ar, %bb.m ], !dbg !58007
  %.sroa.06.1 = phi ptr [ %i.x, %._crit_edge ], [ %i.ao, %bb.m ], !dbg !58008
  %i.as = icmp ne ptr %.sroa.06.1, %i.g, !dbg !58009
  %i.at = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.as, i1 true, i1 %i.at, !dbg !58009, !prof !3970
  br i1 %or.cond, label %bb.p, label %bb.o, !dbg !58009, !prof !3970

bb.o:                                             ; preds = %bb.n
  ret void, !dbg !58010

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #50, !dbg !58011
  unreachable, !dbg !58011
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB26_10WindowExprNtB28_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB2a_(ptr noalias noundef nonnull readonly align 4 captures(address) %0, i64 noundef range(i64 2, 2305843009213693952) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 !dbg !58012 !guid !58112 {
.lr.ph:
  %i.a = lshr i64 %1, 1, !dbg !58137              ; 2 uses
  %i.b = add nsw i64 %1, -1, !dbg !58138          ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b, !dbg !58139
  %i.d = getelementptr [4 x i8], ptr %0, i64 %i.a, !dbg !58140 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -4, !dbg !58141
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b, !dbg !58142
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 2 uses
  br label %bb.a, !dbg !58133

._crit_edge:                                      ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit31
  %i.j = getelementptr i8, ptr %i.ci, i64 4, !dbg !58143 ; 2 uses
  %i.k = getelementptr i8, ptr %i.ch, i64 4, !dbg !58144
  %i.l = and i64 %1, 1, !dbg !58145
  %i.m = icmp eq i64 %i.l, 0, !dbg !58145
  br i1 %i.m, label %bb.m, label %bb.l, !dbg !58146

bb.a:                                             ; preds = %.lr.ph, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit31
  %.sroa.0.045 = phi ptr [ %2, %.lr.ph ], [ %i.az, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit31 ] ; 2 uses
  %.sroa.04.044 = phi i64 [ 0, %.lr.ph ], [ %i.n, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit31 ]
  %.sroa.06.043 = phi ptr [ %0, %.lr.ph ], [ %i.ay, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit31 ] ; 3 uses
  %.sroa.011.042 = phi ptr [ %i.d, %.lr.ph ], [ %i.aw, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit31 ] ; 3 uses
  %.sroa.015.041 = phi ptr [ %i.e, %.lr.ph ], [ %i.ci, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit31 ] ; 3 uses
  %.sroa.017.040 = phi ptr [ %i.c, %.lr.ph ], [ %i.ch, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit31 ] ; 3 uses
  %.sroa.019.039 = phi ptr [ %i.f, %.lr.ph ], [ %i.cj, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit31 ] ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.04.044, 1, !dbg !58147 ; 2 uses
  %.sroa.011.0.val = load i32, ptr %.sroa.011.042, align 4, !dbg !58148, !noundef !3509 ; 2 uses
  %.sroa.06.0.val = load i32, ptr %.sroa.06.043, align 4, !dbg !58148 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58128), !dbg !58149
  %i.o = load ptr, ptr %.0.val, align 8, !dbg !58150, !alias.scope !58128, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %i.p = zext i32 %.sroa.011.0.val to i64, !dbg !58151 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12, !dbg !58152
  %i.r = load i32, ptr %i.q, align 4, !dbg !58152, !range !3606, !noalias !58128, !noundef !3509
  %i.s = icmp eq i32 %i.r, 1, !dbg !58153
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !58154
  %i.u = load i32, ptr %i.t, align 8, !dbg !58154, !noalias !58128, !noundef !3509 ; 4 uses
  %i.v = icmp ult i32 %.sroa.011.0.val, %i.u, !dbg !58155 ; 2 uses
  br i1 %i.s, label %bb.b, label %.thread.i.i, !dbg !58153

bb.b:                                             ; preds = %bb.a
  br i1 %i.v, label %bb.e, label %bb.c, !dbg !58155

.thread.i.i:                                      ; preds = %bb.a
  br i1 %i.v, label %bb.d, label %bb.c, !dbg !58155

bb.c:                                             ; preds = %.thread.i.i, %bb.b
  %i.w = zext i32 %i.u to i64, !dbg !58154
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #50, !dbg !58155, !noalias !58128
  unreachable, !dbg !58155

bb.d:                                             ; preds = %.thread.i.i
  %i.x = load ptr, ptr %i.o, align 8, !dbg !58156, !noalias !58128, !noundef !3509
  br label %bb.e, !dbg !58157

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.03.0.i.i = phi ptr [ %i.x, %bb.d ], [ %i.o, %bb.b ], !dbg !58158 ; 2 uses
  %i.y = zext i32 %.sroa.06.0.val to i64, !dbg !58159 ; 2 uses
  %i.z = icmp ult i32 %.sroa.06.0.val, %i.u, !dbg !58160
  br i1 %i.z, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit, label %bb.f, !dbg !58160

bb.f:                                             ; preds = %bb.e
  %i.aa = zext i32 %i.u to i64, !dbg !58161
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #50, !dbg !58160, !noalias !58128
  unreachable, !dbg !58160

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit: ; preds = %bb.e
  %.in.in.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.i.i, i64 %i.p, !dbg !58155
  %.in.i.i = load i32, ptr %.in.in.i.i, align 4, !dbg !58155, !noalias !58128, !noundef !3509
  %i.ab = zext i32 %.in.i.i to i64, !dbg !58162   ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.i.i, i64 %i.y, !dbg !58160
  %i.ad = load i32, ptr %i.ac, align 4, !dbg !58160, !noalias !58128, !noundef !3509
  %i.ae = zext i32 %i.ad to i64, !dbg !58163      ; 2 uses
  %i.af = load ptr, ptr %i.g, align 8, !dbg !58164, !alias.scope !58128, !nonnull !3509, !align !3810, !noundef !3509 ; 2 uses
  %i.ag = load i64, ptr %i.h, align 8, !dbg !58164, !alias.scope !58128, !noundef !3509 ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, %i.ab, !dbg !58165
  tail call void @llvm.assume(i1 %i.ah), !dbg !58166
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ab, !dbg !58167
  %i.aj = icmp ugt i64 %i.ag, %i.ae, !dbg !58168
  tail call void @llvm.assume(i1 %i.aj), !dbg !58169
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae, !dbg !58170
  %i.al = load i32, ptr %i.ai, align 4, !dbg !58171, !noalias !58128, !noundef !3509
  %i.am = load i32, ptr %i.ak, align 4, !dbg !58172, !noalias !58128, !noundef !3509
  %i.an = tail call i8 @llvm.ucmp.i8.i32(i32 %i.al, i32 %i.am), !dbg !58173 ; 2 uses
  %i.ao = load ptr, ptr %i.i, align 8, !dbg !58174, !alias.scope !58128, !nonnull !3509, !align !3810, !noundef !3509
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !58174
  %i.aq = load i8, ptr %i.ap, align 4, !dbg !58174, !range !3940, !noalias !58128, !noundef !3509
  %i.ar = trunc nuw i8 %i.aq to i1, !dbg !58174
  %switch.offset.i.i = sub nsw i8 0, %i.an, !dbg !58174
  %.sroa.0.0.i.i = select i1 %i.ar, i8 %switch.offset.i.i, i8 %i.an, !dbg !58174
  %i.as = icmp eq i8 %.sroa.0.0.i.i, -1, !dbg !58175 ; 3 uses
  %..i23 = select i1 %i.as, ptr %.sroa.011.042, ptr %.sroa.06.043, !dbg !58176
  %i.at = xor i1 %i.as, true, !dbg !58177
  %i.au = load i32, ptr %..i23, align 4, !dbg !58178, !noalias !58129
  store i32 %i.au, ptr %.sroa.0.045, align 4, !dbg !58178, !noalias !58129
  %i.av = zext i1 %i.as to i64, !dbg !58179
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.011.042, i64 %i.av, !dbg !58180 ; 4 uses
  %i.ax = zext i1 %i.at to i64, !dbg !58181
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sroa.06.043, i64 %i.ax, !dbg !58182 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.045, i64 4, !dbg !58183 ; 2 uses
  %.sroa.017.0.val = load i32, ptr %.sroa.017.040, align 4, !dbg !58184, !noundef !3509 ; 2 uses
  %.sroa.015.0.val = load i32, ptr %.sroa.015.041, align 4, !dbg !58184 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58130), !dbg !58185
  %i.ba = load ptr, ptr %.0.val, align 8, !dbg !58186, !alias.scope !58130, !nonnull !3509, !align !3639, !noundef !3509 ; 4 uses
  %i.bb = zext i32 %.sroa.017.0.val to i64, !dbg !58187 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 12, !dbg !58188
  %i.bd = load i32, ptr %i.bc, align 4, !dbg !58188, !range !3606, !noalias !58130, !noundef !3509
  %i.be = icmp eq i32 %i.bd, 1, !dbg !58189
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !58190
  %i.bg = load i32, ptr %i.bf, align 8, !dbg !58190, !noalias !58130, !noundef !3509 ; 4 uses
  %i.bh = icmp ult i32 %.sroa.017.0.val, %i.bg, !dbg !58191 ; 2 uses
  br i1 %i.be, label %bb.g, label %.thread.i.i25, !dbg !58189

bb.g:                                             ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit
  br i1 %i.bh, label %bb.j, label %bb.h, !dbg !58191

.thread.i.i25:                                    ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit
  br i1 %i.bh, label %bb.i, label %bb.h, !dbg !58191

bb.h:                                             ; preds = %.thread.i.i25, %bb.g
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB1m_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr:bb.a
  %.sroa.0.06 = phi ptr [ %i.n, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB18_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit ], [ %i.d, %.lr.ph.preheader ] ; 5 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -24, !dbg !58829 ; 4 uses
  %i.f = call noundef range(i8 -1, 3) i8 @_RNvXsn_Cs7VARH73bmU_11compact_strNtB5_13CompactStringNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.06, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e), !dbg !58830
  %i.g = icmp slt i8 %i.f, 0, !dbg !58831
  br i1 %i.g, label %bb.d, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB18_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, !dbg !58827

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !58832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06, i64 24, i1 false), !dbg !58833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !58834
  %i.h = icmp eq ptr %i.e, %0, !dbg !58835
  br i1 %i.h, label %._crit_edge17, label %.lr.ph16, !dbg !58835

bb.e:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i14, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !58834
  %i.i = icmp eq ptr %i.j, %0, !dbg !58835
  br i1 %i.i, label %._crit_edge17, label %.lr.ph16, !dbg !58835

.lr.ph16:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i14 = phi ptr [ %i.j, %bb.e ], [ %i.e, %bb.d ] ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.i14, i64 -24, !dbg !58836 ; 4 uses
  %i.k = invoke noundef range(i8 -1, 3) i8 @_RNvXsn_Cs7VARH73bmU_11compact_strNtB5_13CompactStringNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.f unwind label %bb.g, !dbg !58837

bb.f:                                             ; preds = %.lr.ph16
  %i.l = icmp slt i8 %i.k, 0, !dbg !58838
  br i1 %i.l, label %bb.e, label %._crit_edge17, !dbg !58839

._crit_edge17:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i14, %bb.f ], !dbg !58840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !58841, !noalias !58819
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !58842
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB18_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, !dbg !58843

bb.g:                                             ; preds = %.lr.ph16
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i14, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !58844, !noalias !58820
  resume { ptr, i32 } %i.m, !dbg !58845

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB18_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 24, !dbg !58846 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.c, !dbg !58825
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !58825
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1m_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1n_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !58847 !guid !58888 {
bb.a:
  %i.a = add i64 %2, -1, !dbg !58893
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !58893
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !58893

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !58894
  unreachable, !dbg !58894

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1, !dbg !58895
  %.not6 = icmp samesign eq i64 %2, %1, !dbg !58896
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader, !dbg !58896

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2, !dbg !58897
  br label %.lr.ph, !dbg !58898

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, %bb.c
  ret void, !dbg !58899

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.07 = phi ptr [ %i.x, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -16, !dbg !58900 ; 5 uses
  %.val11.i = load i16, ptr %.sroa.0.07, align 8, !dbg !58901, !noundef !3509 ; 8 uses
  %i.e = getelementptr i8, ptr %.sroa.0.07, i64 8, !dbg !58901
  %.val13.i = load i16, ptr %i.d, align 8, !dbg !58901, !noundef !3509 ; 5 uses
  %i.f = and i16 %.val11.i, 32767, !dbg !58902    ; 3 uses
  %i.g = icmp samesign ugt i16 %i.f, 31744, !dbg !58902
  br i1 %i.g, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.d, !dbg !58898

bb.d:                                             ; preds = %.lr.ph
  %i.h = and i16 %.val13.i, 32767, !dbg !58903
  %i.i = icmp samesign ugt i16 %i.h, 31744, !dbg !58903
  br i1 %i.i, label %bb.i, label %bb.e, !dbg !58904

bb.e:                                             ; preds = %bb.d
  %.not.i4.i.i.i = icmp sgt i16 %.val13.i, -1, !dbg !58905 ; 2 uses
  %i.j = icmp sgt i16 %.val11.i, -1, !dbg !58906
  br i1 %i.j, label %bb.f, label %bb.g, !dbg !58906

bb.f:                                             ; preds = %bb.e
  %.not31.i.i.i = icmp samesign ult i16 %.val11.i, %.val13.i
  %or.cond.i.i = select i1 %.not.i4.i.i.i, i1 %.not31.i.i.i, i1 false, !dbg !58906
  br i1 %or.cond.i.i, label %bb.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !58906

bb.g:                                             ; preds = %bb.e
  br i1 %.not.i4.i.i.i, label %.split.i.i.i, label %bb.h, !dbg !58906

.split.i.i.i:                                     ; preds = %bb.g
  %i.k = or i16 %.val13.i, %i.f, !dbg !58907
  %.not.i.i.i = icmp eq i16 %i.k, 0, !dbg !58907
  br i1 %.not.i.i.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.i, !dbg !58908

bb.h:                                             ; preds = %bb.g
  %.not30.i.i.i = icmp samesign ult i16 %.val13.i, %.val11.i, !dbg !58909
  br i1 %.not30.i.i.i, label %bb.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !58908

bb.i:                                             ; preds = %bb.h, %.split.i.i.i, %bb.f, %bb.d
  %i.l = load double, ptr %i.e, align 8, !dbg !58910, !noundef !3509
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !58911
  %i.m = icmp eq ptr %i.d, %0, !dbg !58912
  br i1 %i.m, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i, label %.lr.ph.split.i, !dbg !58912

.lr.ph.split.i:                                   ; preds = %bb.i
  %i.n = icmp sgt i16 %.val11.i, -1
  br i1 %i.n, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i
  %.sroa.0.08.us.i = phi ptr [ %i.o, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i ], [ %i.d, %.lr.ph.split.i ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.08.us.i, i64 -16, !dbg !58913 ; 4 uses
  %.val9.us.i = load i16, ptr %i.o, align 8, !dbg !58914, !noundef !3509 ; 3 uses
  %i.p = and i16 %.val9.us.i, 32767, !dbg !58915
  %i.q = icmp samesign ugt i16 %i.p, 31744, !dbg !58915
  br i1 %i.q, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i, label %bb.j, !dbg !58916

bb.j:                                             ; preds = %.lr.ph.split.split.us.i
  %.not.i4.i.i15.us.i = icmp sgt i16 %.val9.us.i, -1, !dbg !58917
  %.not31.i.i21.us.i = icmp samesign ult i16 %.val11.i, %.val9.us.i
  %or.cond.i22.us.i = select i1 %.not.i4.i.i15.us.i, i1 %.not31.i.i21.us.i, i1 false, !dbg !58918
  br i1 %or.cond.i22.us.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i, !dbg !58918

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i: ; preds = %bb.j, %.lr.ph.split.split.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.us.i, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !dbg !58911
  %i.r = icmp eq ptr %i.o, %0, !dbg !58912
  br i1 %i.r, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i, label %.lr.ph.split.split.us.i, !dbg !58912

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i
  %.sroa.0.08.i = phi ptr [ %i.s, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i ], [ %i.d, %.lr.ph.split.i ] ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -16, !dbg !58913 ; 4 uses
  %.val9.i = load i16, ptr %i.s, align 8, !dbg !58914, !noundef !3509 ; 4 uses
  %i.t = and i16 %.val9.i, 32767, !dbg !58915
  %i.u = icmp samesign ugt i16 %i.t, 31744, !dbg !58915
  br i1 %i.u, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i, label %bb.k, !dbg !58916

bb.k:                                             ; preds = %.lr.ph.split.split.i
  %.not.i4.i.i15.i = icmp sgt i16 %.val9.i, -1, !dbg !58917
  br i1 %.not.i4.i.i15.i, label %.split.i.i19.i, label %bb.l, !dbg !58918

.split.i.i19.i:                                   ; preds = %bb.k
  %i.v = or i16 %.val9.i, %i.f, !dbg !58919
  %.not.i.i20.i = icmp eq i16 %i.v, 0, !dbg !58919
  br i1 %.not.i.i20.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i, !dbg !58920

bb.l:                                             ; preds = %bb.k
  %.not30.i.i16.i = icmp samesign ult i16 %.val9.i, %.val11.i, !dbg !58921
  br i1 %.not30.i.i16.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i, !dbg !58920

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i: ; preds = %bb.l, %.split.i.i19.i, %.lr.ph.split.split.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.i, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !dbg !58911
  %i.w = icmp eq ptr %i.s, %0, !dbg !58912
  br i1 %i.w, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i, label %.lr.ph.split.split.i, !dbg !58912

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i, %bb.l, %.split.i.i19.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i, %bb.j, %bb.i
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.i ], [ %.sroa.0.08.us.i, %bb.j ], [ %0, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i ], [ %0, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i ], [ %.sroa.0.08.i, %.split.i.i19.i ], [ %.sroa.0.08.i, %bb.l ], !dbg !58922 ; 2 uses
  store i16 %.val11.i, ptr %.sroa.0.0.lcssa.i, align 8, !dbg !58923, !noalias !58891
  %.sroa.519.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8, !dbg !58923
  store double %i.l, ptr %.sroa.519.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !dbg !58923, !noalias !58891
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !58924

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.lr.ph, %bb.f, %.split.i.i.i, %bb.h, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 16, !dbg !58925 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.b, !dbg !58896
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !58896
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1m_7sort_byNCINvNtB1r_4sort18arg_sort_ascendingB1n_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4F_5BlockRSB1n_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !58926 !guid !58971 {
bb.a:
  %i.a = add i64 %2, -1, !dbg !58977
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !58977
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !58977

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !58978
  unreachable, !dbg !58978

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1, !dbg !58979
  %.not6 = icmp samesign eq i64 %2, %1, !dbg !58980
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader, !dbg !58980

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2, !dbg !58981
  br label %.lr.ph, !dbg !58982

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, %bb.c
  ret void, !dbg !58983

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.07 = phi ptr [ %i.aa, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -8, !dbg !58984 ; 5 uses
  %.val9.i = load i16, ptr %.sroa.0.07, align 4, !dbg !58985, !alias.scope !58974, !noundef !3509 ; 8 uses
  %.val10.i = load i16, ptr %i.d, align 4, !dbg !58985 ; 5 uses
  %i.e = and i16 %.val9.i, 32767, !dbg !58986     ; 3 uses
  %i.f = icmp samesign ugt i16 %i.e, 31744, !dbg !58986
  br i1 %i.f, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.d, !dbg !58982

bb.d:                                             ; preds = %.lr.ph
  %i.g = and i16 %.val10.i, 32767, !dbg !58987
  %i.h = icmp samesign ugt i16 %i.g, 31744, !dbg !58987
  br i1 %i.h, label %bb.i, label %bb.e, !dbg !58988

bb.e:                                             ; preds = %bb.d
  %.not.i4.i.i.i = icmp sgt i16 %.val10.i, -1, !dbg !58989 ; 2 uses
  %i.i = icmp sgt i16 %.val9.i, -1, !dbg !58990
  br i1 %i.i, label %bb.f, label %bb.g, !dbg !58990

bb.f:                                             ; preds = %bb.e
  %.not22.i.i.i = icmp samesign ult i16 %.val9.i, %.val10.i
  %or.cond.i.i = select i1 %.not.i4.i.i.i, i1 %.not22.i.i.i, i1 false, !dbg !58990
  br i1 %or.cond.i.i, label %bb.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !58990

bb.g:                                             ; preds = %bb.e
  br i1 %.not.i4.i.i.i, label %.split.i.i.i, label %bb.h, !dbg !58990

.split.i.i.i:                                     ; preds = %bb.g
  %i.j = or i16 %i.e, %.val10.i, !dbg !58991
  %.not.i.i.i = icmp eq i16 %i.j, 0, !dbg !58991
  br i1 %.not.i.i.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.i, !dbg !58992

bb.h:                                             ; preds = %bb.g
  %.not21.i.i.i = icmp samesign ult i16 %.val10.i, %.val9.i, !dbg !58993
  br i1 %.not21.i.i.i, label %bb.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !58992

bb.i:                                             ; preds = %bb.h, %.split.i.i.i, %bb.f, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 4, !dbg !58994
  %i.l = load i32, ptr %i.k, align 4, !dbg !58994, !noundef !3509
  %i.m = load i64, ptr %i.d, align 4, !dbg !58995
  store i64 %i.m, ptr %.sroa.0.07, align 4, !dbg !58995
  %i.n = icmp eq ptr %i.d, %0, !dbg !58996
  br i1 %i.n, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, label %.lr.ph.split.i, !dbg !58996

.lr.ph.split.i:                                   ; preds = %bb.i
  %i.o = icmp sgt i16 %.val9.i, -1
  br i1 %i.o, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i
  %.sroa.0.08.us.i = phi ptr [ %i.p, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i ], [ %i.d, %.lr.ph.split.i ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.08.us.i, i64 -8, !dbg !58997 ; 4 uses
  %.val8.us.i = load i16, ptr %i.p, align 4, !dbg !58998 ; 3 uses
  %i.q = and i16 %.val8.us.i, 32767, !dbg !58999
  %i.r = icmp samesign ugt i16 %i.q, 31744, !dbg !58999
  br i1 %i.r, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i, label %bb.j, !dbg !59000

bb.j:                                             ; preds = %.lr.ph.split.split.us.i
  %.not.i4.i.i11.us.i = icmp sgt i16 %.val8.us.i, -1, !dbg !59001
  %.not22.i.i17.us.i = icmp samesign ult i16 %.val9.i, %.val8.us.i
  %or.cond.i18.us.i = select i1 %.not.i4.i.i11.us.i, i1 %.not22.i.i17.us.i, i1 false, !dbg !59002
  br i1 %or.cond.i18.us.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, !dbg !59002

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i: ; preds = %bb.j, %.lr.ph.split.split.us.i
  %i.s = load i64, ptr %i.p, align 4, !dbg !58995
  store i64 %i.s, ptr %.sroa.0.08.us.i, align 4, !dbg !58995
  %i.t = icmp eq ptr %i.p, %0, !dbg !58996
  br i1 %i.t, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, label %.lr.ph.split.split.us.i, !dbg !58996

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i
  %.sroa.0.08.i = phi ptr [ %i.u, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i ], [ %i.d, %.lr.ph.split.i ] ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8, !dbg !58997 ; 4 uses
  %.val8.i = load i16, ptr %i.u, align 4, !dbg !58998 ; 4 uses
  %i.v = and i16 %.val8.i, 32767, !dbg !58999
  %i.w = icmp samesign ugt i16 %i.v, 31744, !dbg !58999
  br i1 %i.w, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i, label %bb.k, !dbg !59000

bb.k:                                             ; preds = %.lr.ph.split.split.i
  %.not.i4.i.i11.i = icmp sgt i16 %.val8.i, -1, !dbg !59001
  br i1 %.not.i4.i.i11.i, label %.split.i.i15.i, label %bb.l, !dbg !59002

.split.i.i15.i:                                   ; preds = %bb.k
  %i.x = or i16 %.val8.i, %i.e, !dbg !59003
  %.not.i.i16.i = icmp eq i16 %i.x, 0, !dbg !59003
  br i1 %.not.i.i16.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i, !dbg !59004

bb.l:                                             ; preds = %bb.k
  %.not21.i.i12.i = icmp samesign ult i16 %.val8.i, %.val9.i, !dbg !59005
  br i1 %.not21.i.i12.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, !dbg !59004

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i: ; preds = %bb.l, %.split.i.i15.i, %.lr.ph.split.split.i
  %i.y = load i64, ptr %i.u, align 4, !dbg !58995
  store i64 %i.y, ptr %.sroa.0.08.i, align 4, !dbg !58995
  %i.z = icmp eq ptr %i.u, %0, !dbg !58996
  br i1 %i.z, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, label %.lr.ph.split.split.i, !dbg !58996

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i: ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i, %bb.l, %.split.i.i15.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i, %bb.j, %bb.i
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.i ], [ %.sroa.0.08.us.i, %bb.j ], [ %0, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i ], [ %0, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i ], [ %.sroa.0.08.i, %.split.i.i15.i ], [ %.sroa.0.08.i, %bb.l ], !dbg !59006
  %.sroa.0.sroa.519.0.insert.ext.i = zext i32 %i.l to i64, !dbg !59007
  %.sroa.0.sroa.519.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.519.0.insert.ext.i, 32, !dbg !59007
  %.sroa.0.sroa.0.0.insert.ext.i = zext i16 %.val9.i to i64, !dbg !59007
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.519.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i, !dbg !59007
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.lcssa.i, align 4, !dbg !59007, !noalias !58975
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !59008

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.lr.ph, %bb.f, %.split.i.i.i, %bb.h, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 8, !dbg !59009 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.b, !dbg !58980
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !58980
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTddENCINvMB8_SB1m_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !59010 !guid !59044 {
bb.a:
  %i.a = add i64 %2, -1, !dbg !59049
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !59049
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !59049

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !59050
  unreachable, !dbg !59050

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1, !dbg !59051
  %.not4 = icmp samesign eq i64 %2, %1, !dbg !59052
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader, !dbg !59052

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2, !dbg !59053
  br label %.lr.ph, !dbg !59054

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTddENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, %bb.c
  ret void, !dbg !59055

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTddENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.05 = phi ptr [ %i.m, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTddENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16, !dbg !59056 ; 4 uses
  %.val11.i = load double, ptr %.sroa.0.05, align 8, !dbg !59054, !noundef !3509 ; 4 uses
  %.val13.i = load double, ptr %i.d, align 8, !dbg !59054, !noundef !3509
  %i.e = fcmp ord double %.val11.i, 0.000000e+00, !dbg !59057
  %i.f = fcmp ult double %.val11.i, %.val13.i, !dbg !59058
  %.not2.i.i.i.i = and i1 %i.e, %i.f, !dbg !59059
  br i1 %.not2.i.i.i.i, label %.split.preheader.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTddENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !59054

.split.preheader.i:                               ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.sroa.0.05, i64 8, !dbg !59054
  %i.h = load double, ptr %i.g, align 8, !dbg !59060, !noundef !3509
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !59061
  %i.i = icmp eq ptr %i.d, %0, !dbg !59062
  br i1 %i.i, label %.split7.i, label %.lr.ph9, !dbg !59062

.split.i:                                         ; preds = %.lr.ph9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !dbg !59061
  %i.j = icmp eq ptr %i.k, %0, !dbg !59062
  br i1 %i.j, label %.split7.i, label %.lr.ph9, !dbg !59062

.lr.ph9:                                          ; preds = %.split.preheader.i, %.split.i
  %.sroa.0.0.i8 = phi ptr [ %i.k, %.split.i ], [ %i.d, %.split.preheader.i ] ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -16, !dbg !59063 ; 4 uses
  %.val9.i = load double, ptr %i.k, align 8, !dbg !59064, !noundef !3509
  %i.l = fcmp ult double %.val11.i, %.val9.i, !dbg !59065
  br i1 %i.l, label %.split.i, label %.split7.i, !dbg !59064

.split7.i:                                        ; preds = %.split.i, %.lr.ph9, %.split.preheader.i
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.split.preheader.i ], [ %0, %.split.i ], [ %.sroa.0.0.i8, %.lr.ph9 ], !dbg !59066 ; 2 uses
  store double %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !dbg !59067, !noalias !59047
  %.sroa.4.0..us-phi.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8, !dbg !59067
  store double %i.h, ptr %.sroa.4.0..us-phi.sroa_idx.i, align 8, !dbg !59067, !noalias !59047
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTddENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !59068

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTddENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.lr.ph, %.split7.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16, !dbg !59069 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.b, !dbg !59052
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !59052
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1m_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4i_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !59070 !guid !59107 {
bb.a:
  %i.a = add i64 %2, -1, !dbg !59114
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !59114
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !59114

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !59115
  unreachable, !dbg !59115

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1, !dbg !59116
  %.not4 = icmp samesign eq i64 %2, %1, !dbg !59117
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader, !dbg !59117

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2, !dbg !59118
  br label %.lr.ph, !dbg !59119

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB44_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, %bb.c
  ret void, !dbg !59120

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB44_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.05 = phi ptr [ %i.m, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB44_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16, !dbg !59121 ; 4 uses
  %.val9.i = load double, ptr %.sroa.0.05, align 8, !dbg !59119, !alias.scope !59110, !noundef !3509 ; 4 uses
  %.val10.i = load double, ptr %i.d, align 8, !dbg !59119, !alias.scope !59111, !noundef !3509
  %i.e = fcmp ord double %.val9.i, 0.000000e+00, !dbg !59122
  %i.f = fcmp ult double %.val9.i, %.val10.i, !dbg !59123
  %.not2.i.i.i.i = and i1 %i.e, %i.f, !dbg !59124
  br i1 %.not2.i.i.i.i, label %.split.preheader.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB44_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !59119

.split.preheader.i:                               ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8, !dbg !59125
  %i.h = load i32, ptr %i.g, align 8, !dbg !59125, !noundef !3509
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !dbg !59126
  %i.i = icmp eq ptr %i.d, %0, !dbg !59127
  br i1 %i.i, label %.split6.i, label %.lr.ph9, !dbg !59127

.split.i:                                         ; preds = %.lr.ph9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !dbg !59126
  %i.j = icmp eq ptr %i.k, %0, !dbg !59127
  br i1 %i.j, label %.split6.i, label %.lr.ph9, !dbg !59127

.lr.ph9:                                          ; preds = %.split.preheader.i, %.split.i
  %.sroa.0.0.i8 = phi ptr [ %i.k, %.split.i ], [ %i.d, %.split.preheader.i ] ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -16, !dbg !59128 ; 4 uses
  %.val8.i = load double, ptr %i.k, align 8, !dbg !59129, !alias.scope !59111, !noundef !3509
  %i.l = fcmp ult double %.val9.i, %.val8.i, !dbg !59130
  br i1 %i.l, label %.split.i, label %.split6.i, !dbg !59129

.split6.i:                                        ; preds = %.split.i, %.lr.ph9, %.split.preheader.i
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.split.preheader.i ], [ %0, %.split.i ], [ %.sroa.0.0.i8, %.lr.ph9 ], !dbg !59131 ; 2 uses
  store double %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !dbg !59132, !noalias !59112
  %.sroa.4.0..us-phi.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8, !dbg !59132
  store i32 %i.h, ptr %.sroa.4.0..us-phi.sroa_idx.i, align 8, !dbg !59132, !noalias !59112
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB44_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !59133

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB44_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.lr.ph, %.split6.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16, !dbg !59134 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.b, !dbg !59117
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !59117
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTfdENCINvMB8_SB1m_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantilefFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !59135 !guid !59169 {
bb.a:
  %i.a = add i64 %2, -1, !dbg !59174
  %or.cond.not = icmp ult i64 %i.a, %1, !dbg !59174
  br i1 %or.cond.not, label %bb.c, label %bb.b, !dbg !59174

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !59175
  unreachable, !dbg !59175

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1, !dbg !59176
  %.not4 = icmp samesign eq i64 %2, %1, !dbg !59177
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader, !dbg !59177

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2, !dbg !59178
  br label %.lr.ph, !dbg !59179

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTfdENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantilefFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, %bb.c
  ret void, !dbg !59180

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTfdENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantilefFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.05 = phi ptr [ %i.m, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTfdENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantilefFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16, !dbg !59181 ; 4 uses
  %.val11.i = load float, ptr %.sroa.0.05, align 8, !dbg !59179, !noundef !3509 ; 4 uses
  %.val13.i = load float, ptr %i.d, align 8, !dbg !59179, !noundef !3509
  %i.e = fcmp ord float %.val11.i, 0.000000e+00, !dbg !59182
  %i.f = fcmp ult float %.val11.i, %.val13.i, !dbg !59183
  %.not2.i.i.i.i = and i1 %i.e, %i.f, !dbg !59184
  br i1 %.not2.i.i.i.i, label %.split.preheader.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTfdENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantilefFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !59179
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB1s_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr:bb.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %.lr.ph.i, %bb.m
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  %i.dp = mul nuw nsw i64 %1, 24, !dbg !60421
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dp, i1 false), !dbg !60421, !noalias !60269
  br label %.body, !dbg !60422

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB1g_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.l, %bb.a
  ret void, !dbg !60423

.body:                                            ; preds = %bb.q, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp88, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi55, %bb.q ]
  resume { ptr, i32 } %.pn, !dbg !60424

.noexc35:                                         ; preds = %bb.g, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB18_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.05.045 = phi i64 [ %i.ea, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB18_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.045, !dbg !60360 ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.045, 24, !dbg !60361
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !60361 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !dbg !60362
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -24, !dbg !60363 ; 3 uses
  %i.dt = call noundef range(i8 -1, 3) i8 @_RNvXsn_Cs7VARH73bmU_11compact_strNtB5_13CompactStringNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds), !dbg !60364
  %i.du = icmp slt i8 %i.dt, 0, !dbg !60365
  br i1 %i.du, label %bb.n, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB18_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, !dbg !60366

bb.n:                                             ; preds = %.noexc35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !60367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !dbg !60368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false), !dbg !60369
  %i.dv = icmp eq i64 %.sroa.05.045, 1, !dbg !60370
  br i1 %i.dv, label %._crit_edge, label %.lr.ph, !dbg !60370

bb.o:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i3477, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !dbg !60369
  %i.dw = icmp eq ptr %i.dx, %2, !dbg !60370
  br i1 %i.dw, label %._crit_edge, label %.lr.ph, !dbg !60370

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.sroa.0.0.i3477 = phi ptr [ %i.dx, %bb.o ], [ %i.ds, %bb.n ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.0.0.i3477, i64 -24, !dbg !60371 ; 4 uses
  %i.dy = invoke noundef range(i8 -1, 3) i8 @_RNvXsn_Cs7VARH73bmU_11compact_strNtB5_13CompactStringNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dx)
          to label %bb.p unwind label %.loopexit, !dbg !60372

bb.p:                                             ; preds = %.lr.ph
  %i.dz = icmp slt i8 %i.dy, 0, !dbg !60373
  br i1 %i.dz, label %bb.o, label %._crit_edge, !dbg !60374

._crit_edge:                                      ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.0.0.i34.lcssa = phi ptr [ %2, %bb.n ], [ %2, %bb.o ], [ %.sroa.0.0.i3477, %bb.p ], !dbg !60375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i34.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !60376, !noalias !60261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !60377
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB18_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, !dbg !60378

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit54 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp52:                             ; preds = %.lr.ph82
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp52, %.loopexit
  %.sroa.0.0.i34.lcssa51 = phi ptr [ %.sroa.0.0.i3477, %.loopexit ], [ %.sroa.0.0.i34.180, %.loopexit.split-lp52 ], !dbg !60375
  %lpad.phi55 = phi { ptr, i32 } [ %lpad.loopexit54, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp52 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i34.lcssa51, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !60425, !noalias !60270
  br label %.body, !dbg !60426

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB18_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit: ; preds = %._crit_edge, %.noexc35
  %i.ea = add nuw nsw i64 %.sroa.05.045, 1, !dbg !60379 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %i.e, !dbg !60357
  br i1 %exitcond.not, label %.loopexit39, label %.noexc35, !dbg !60255
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCINvNtB1x_4sort18arg_sort_ascendingB1t_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4L_5BlockRSB1t_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60427 !guid !60497 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2, !dbg !60521
  br i1 %i.a, label %bb.s, label %bb.b, !dbg !60521

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16, !dbg !60522
  %i.c = icmp samesign ult i64 %3, %i.b, !dbg !60523
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !60523

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1, !dbg !60524              ; 11 uses
  %i.e = icmp samesign ugt i64 %1, 15, !dbg !60525
  br i1 %i.e, label %bb.f, label %bb.e, !dbg !60525

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !60526
  unreachable, !dbg !60526

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7, !dbg !60527
  br i1 %i.f, label %bb.g, label %bb.h, !dbg !60527

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %1, !dbg !60528 ; 5 uses
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB19_7sort_byNCINvNtB1e_4sort18arg_sort_ascendingB1a_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4s_5BlockRSB1a_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.g), !dbg !60529
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !60530
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !60531
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB19_7sort_byNCINvNtB1e_4sort18arg_sort_ascendingB1a_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4s_5BlockRSB1a_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef readonly %i.h, ptr noundef %i.i), !dbg !60532
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1g_7sort_byNCINvNtB1l_4sort18arg_sort_ascendingB1h_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4z_5BlockRSB1h_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.g, i64 noundef 8, ptr noundef nonnull %2), !dbg !60533
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !60534 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d, !dbg !60535
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !60536 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB19_7sort_byNCINvNtB1e_4sort18arg_sort_ascendingB1a_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4s_5BlockRSB1a_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.l), !dbg !60537
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !60538
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 96, !dbg !60539
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB19_7sort_byNCINvNtB1e_4sort18arg_sort_ascendingB1a_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4s_5BlockRSB1a_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef readonly %i.m, ptr noundef %i.n), !dbg !60540
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1g_7sort_byNCINvNtB1l_4sort18arg_sort_ascendingB1h_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4z_5BlockRSB1h_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.l, i64 noundef 8, ptr noundef nonnull %i.k), !dbg !60541
  br label %bb.i, !dbg !60542

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB19_7sort_byNCINvNtB1e_4sort18arg_sort_ascendingB1a_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4s_5BlockRSB1a_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef %0, ptr noundef %2), !dbg !60543
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !60544
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d, !dbg !60545
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB19_7sort_byNCINvNtB1e_4sort18arg_sort_ascendingB1a_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4s_5BlockRSB1a_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef %i.o, ptr noundef %i.p), !dbg !60546
  br label %bb.i, !dbg !60547

bb.h:                                             ; preds = %bb.e
  %i.q = load i64, ptr %0, align 4, !dbg !60548
  store i64 %i.q, ptr %2, align 4, !dbg !60548
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !60549
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d, !dbg !60550
  %i.t = load i64, ptr %i.r, align 4, !dbg !60551
  store i64 %i.t, ptr %i.s, align 4, !dbg !60551
  br label %bb.i, !dbg !60547

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ], !dbg !60552 ; 4 uses
  %i.u = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.0.0, %i.d, !dbg !60553
  br i1 %i.v, label %.lr.ph, label %.loopexit, !dbg !60511

.loopexit:                                        ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, %bb.i
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d, !dbg !60554
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d, !dbg !60555 ; 5 uses
  %i.y = icmp samesign ult i64 %.sroa.0.0, %i.u, !dbg !60553
  br i1 %i.y, label %.lr.ph.1, label %.loopexit.1, !dbg !60511

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.1
  %.sroa.05.035.1 = phi i64 [ %i.ay, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.05.035.1, !dbg !60556
  %.idx.1 = shl nuw nsw i64 %.sroa.05.035.1, 3, !dbg !60557
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.1, !dbg !60557 ; 3 uses
  %i.ab = load i64, ptr %i.z, align 4, !dbg !60558
  %.fr = freeze i64 %i.ab, !dbg !60559            ; 3 uses
  store i64 %.fr, ptr %i.aa, align 4, !dbg !60558
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -8, !dbg !60560 ; 5 uses
  %i.ad = trunc i64 %.fr to i16, !dbg !60559      ; 7 uses
  %.val10.i.1 = load i16, ptr %i.ac, align 4, !dbg !60559 ; 5 uses
  %i.ae = and i16 %i.ad, 32767, !dbg !60561       ; 3 uses
  %i.af = icmp samesign ugt i16 %i.ae, 31744, !dbg !60561
  br i1 %i.af, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.1, label %bb.j, !dbg !60562

bb.j:                                             ; preds = %.lr.ph.1
  %i.ag = and i16 %.val10.i.1, 32767, !dbg !60563
  %i.ah = icmp samesign ugt i16 %i.ag, 31744, !dbg !60563
  br i1 %i.ah, label %bb.o, label %bb.k, !dbg !60564

bb.k:                                             ; preds = %bb.j
  %.not.i4.i.i.i.1 = icmp sgt i16 %.val10.i.1, -1, !dbg !60565 ; 2 uses
  %i.ai = icmp sgt i16 %i.ad, -1, !dbg !60566
  br i1 %i.ai, label %bb.n, label %bb.l, !dbg !60566

bb.l:                                             ; preds = %bb.k
  br i1 %.not.i4.i.i.i.1, label %.split.i.i.i.1, label %bb.m, !dbg !60566

bb.m:                                             ; preds = %bb.l
  %.not21.i.i.i.1 = icmp samesign ult i16 %.val10.i.1, %i.ad, !dbg !60567
  br i1 %.not21.i.i.i.1, label %bb.o, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.1, !dbg !60568

.split.i.i.i.1:                                   ; preds = %bb.l
  %i.aj = or i16 %i.ae, %.val10.i.1, !dbg !60569
  %.not.i.i.i.1 = icmp eq i16 %i.aj, 0, !dbg !60569
  br i1 %.not.i.i.i.1, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.1, label %bb.o, !dbg !60568

bb.n:                                             ; preds = %bb.k
  %.not22.i.i.i.1 = icmp samesign ugt i16 %.val10.i.1, %i.ad
  %or.cond.i.i.1 = select i1 %.not.i4.i.i.i.1, i1 %.not22.i.i.i.1, i1 false, !dbg !60566
  br i1 %or.cond.i.i.1, label %bb.o, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.1, !dbg !60566

bb.o:                                             ; preds = %bb.n, %.split.i.i.i.1, %bb.m, %bb.j
  %i.ak = load i64, ptr %i.ac, align 4, !dbg !60570
  store i64 %i.ak, ptr %i.aa, align 4, !dbg !60570
  %i.al = icmp eq i64 %.sroa.05.035.1, 1, !dbg !60571
  br i1 %i.al, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i.1, label %.lr.ph.split.i.1, !dbg !60571

.lr.ph.split.i.1:                                 ; preds = %bb.o
  %i.am = icmp sgt i16 %i.ad, -1
  br i1 %i.am, label %.lr.ph.split.split.us.i.1, label %.lr.ph.split.split.i.1

.lr.ph.split.split.i.1:                           ; preds = %.lr.ph.split.i.1, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i.1
  %.sroa.0.08.i.1 = phi ptr [ %i.an, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i.1 ], [ %i.ac, %.lr.ph.split.i.1 ] ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.08.i.1, i64 -8, !dbg !60572 ; 4 uses
  %.val8.i.1 = load i16, ptr %i.an, align 4, !dbg !60573 ; 4 uses
  %i.ao = and i16 %.val8.i.1, 32767, !dbg !60574
  %i.ap = icmp samesign ugt i16 %i.ao, 31744, !dbg !60574
  br i1 %i.ap, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i.1, label %bb.p, !dbg !60575

bb.p:                                             ; preds = %.lr.ph.split.split.i.1
  %.not.i4.i.i11.i.1 = icmp sgt i16 %.val8.i.1, -1, !dbg !60576
  br i1 %.not.i4.i.i11.i.1, label %.split.i.i15.i.1, label %bb.q, !dbg !60577

bb.q:                                             ; preds = %bb.p
  %.not21.i.i12.i.1 = icmp samesign ult i16 %.val8.i.1, %i.ad, !dbg !60578
  br i1 %.not21.i.i12.i.1, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i.1, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i.1, !dbg !60579

.split.i.i15.i.1:                                 ; preds = %bb.p
  %i.aq = or i16 %.val8.i.1, %i.ae, !dbg !60580
  %.not.i.i16.i.1 = icmp eq i16 %i.aq, 0, !dbg !60580
  br i1 %.not.i.i16.i.1, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i.1, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i.1, !dbg !60579

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i.1: ; preds = %.split.i.i15.i.1, %bb.q, %.lr.ph.split.split.i.1
  %i.ar = load i64, ptr %i.an, align 4, !dbg !60570
  store i64 %i.ar, ptr %.sroa.0.08.i.1, align 4, !dbg !60570
  %i.as = icmp eq ptr %i.an, %i.x, !dbg !60571
  br i1 %i.as, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i.1, label %.lr.ph.split.split.i.1, !dbg !60571

.lr.ph.split.split.us.i.1:                        ; preds = %.lr.ph.split.i.1, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i.1
  %.sroa.0.08.us.i.1 = phi ptr [ %i.at, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i.1 ], [ %i.ac, %.lr.ph.split.i.1 ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.08.us.i.1, i64 -8, !dbg !60572 ; 4 uses
  %.val8.us.i.1 = load i16, ptr %i.at, align 4, !dbg !60573 ; 2 uses
  %i.au = and i16 %.val8.us.i.1, 32767, !dbg !60574
  %i.av = icmp samesign ugt i16 %i.au, 31744, !dbg !60574
  %or.cond.i18.us.i.1 = icmp sgt i16 %.val8.us.i.1, %i.ad
  %or.cond = or i1 %i.av, %or.cond.i18.us.i.1, !dbg !60575
  br i1 %or.cond, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i.1, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i.1, !dbg !60575

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i.1: ; preds = %.lr.ph.split.split.us.i.1
  %i.aw = load i64, ptr %i.at, align 4, !dbg !60570
  store i64 %i.aw, ptr %.sroa.0.08.us.i.1, align 4, !dbg !60570
  %i.ax = icmp eq ptr %i.at, %i.x, !dbg !60571
  br i1 %i.ax, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i.1, label %.lr.ph.split.split.us.i.1, !dbg !60571

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i.1: ; preds = %bb.q, %.split.i.i15.i.1, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i.1, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i.1, %.lr.ph.split.split.us.i.1, %bb.o
  %.sroa.0.0.lcssa.i.1 = phi ptr [ %i.ac, %bb.o ], [ %i.x, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i.1 ], [ %.sroa.0.08.us.i.1, %.lr.ph.split.split.us.i.1 ], [ %.sroa.0.08.i.1, %bb.q ], [ %i.x, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i.1 ], [ %.sroa.0.08.i.1, %.split.i.i15.i.1 ], !dbg !60581
  %.sroa.0.sroa.0.0.insert.insert.i.1 = and i64 %.fr, -4294901761, !dbg !60582
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.1, ptr %.sroa.0.0.lcssa.i.1, align 4, !dbg !60582, !noalias !60517
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.1, !dbg !60583

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.1: ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i.1, %bb.n, %.split.i.i.i.1, %bb.m, %.lr.ph.1
  %i.ay = add nuw nsw i64 %.sroa.05.035.1, 1, !dbg !60584 ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ay, %i.u, !dbg !60553
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1, !dbg !60511

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.1, %.loopexit
  invoke fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1g_7sort_byNCINvNtB1l_4sort18arg_sort_ascendingB1h_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4z_5BlockRSB1h_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %1, ptr noundef nonnull %0)
          to label %bb.s unwind label %bb.r, !dbg !60585

bb.r:                                             ; preds = %.loopexit.1
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = shl nuw nsw i64 %1, 3, !dbg !60586
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %2, i64 %i.ba, i1 false), !dbg !60586, !noalias !60520
  resume { ptr, i32 } %i.az, !dbg !60587

bb.s:                                             ; preds = %.loopexit.1, %bb.a
  ret void, !dbg !60588

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.05.035 = phi i64 [ %i.ca, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.035, !dbg !60556
  %.idx = shl nuw nsw i64 %.sroa.05.035, 3, !dbg !60557
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %.idx, !dbg !60557 ; 3 uses
  %i.bd = load i64, ptr %i.bb, align 4, !dbg !60558
  %.fr66 = freeze i64 %i.bd, !dbg !60559          ; 3 uses
  store i64 %.fr66, ptr %i.bc, align 4, !dbg !60558
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -8, !dbg !60560 ; 5 uses
  %i.bf = trunc i64 %.fr66 to i16, !dbg !60559    ; 7 uses
  %.val10.i = load i16, ptr %i.be, align 4, !dbg !60559 ; 5 uses
  %i.bg = and i16 %i.bf, 32767, !dbg !60561       ; 3 uses
  %i.bh = icmp samesign ugt i16 %i.bg, 31744, !dbg !60561
  br i1 %i.bh, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.t, !dbg !60562

bb.t:                                             ; preds = %.lr.ph
  %i.bi = and i16 %.val10.i, 32767, !dbg !60563
  %i.bj = icmp samesign ugt i16 %i.bi, 31744, !dbg !60563
  br i1 %i.bj, label %bb.y, label %bb.u, !dbg !60564

bb.u:                                             ; preds = %bb.t
  %.not.i4.i.i.i = icmp sgt i16 %.val10.i, -1, !dbg !60565 ; 2 uses
  %i.bk = icmp sgt i16 %i.bf, -1, !dbg !60566
  br i1 %i.bk, label %bb.v, label %bb.w, !dbg !60566

bb.v:                                             ; preds = %bb.u
  %.not22.i.i.i = icmp samesign ugt i16 %.val10.i, %i.bf
  %or.cond.i.i = select i1 %.not.i4.i.i.i, i1 %.not22.i.i.i, i1 false, !dbg !60566
  br i1 %or.cond.i.i, label %bb.y, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !60566

bb.w:                                             ; preds = %bb.u
  br i1 %.not.i4.i.i.i, label %.split.i.i.i, label %bb.x, !dbg !60566

.split.i.i.i:                                     ; preds = %bb.w
  %i.bl = or i16 %i.bg, %.val10.i, !dbg !60569
  %.not.i.i.i = icmp eq i16 %i.bl, 0, !dbg !60569
  br i1 %.not.i.i.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.y, !dbg !60568

bb.x:                                             ; preds = %bb.w
  %.not21.i.i.i = icmp samesign ult i16 %.val10.i, %i.bf, !dbg !60567
  br i1 %.not21.i.i.i, label %bb.y, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !60568

bb.y:                                             ; preds = %bb.x, %.split.i.i.i, %bb.v, %bb.t
  %i.bm = load i64, ptr %i.be, align 4, !dbg !60570
  store i64 %i.bm, ptr %i.bc, align 4, !dbg !60570
  %i.bn = icmp eq i64 %.sroa.05.035, 1, !dbg !60571
  br i1 %i.bn, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, label %.lr.ph.split.i, !dbg !60571

.lr.ph.split.i:                                   ; preds = %bb.y
  %i.bo = icmp sgt i16 %i.bf, -1
  br i1 %i.bo, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i
  %.sroa.0.08.us.i = phi ptr [ %i.bp, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i ], [ %i.be, %.lr.ph.split.i ] ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0.08.us.i, i64 -8, !dbg !60572 ; 4 uses
  %.val8.us.i = load i16, ptr %i.bp, align 4, !dbg !60573 ; 2 uses
  %i.bq = and i16 %.val8.us.i, 32767, !dbg !60574
  %i.br = icmp samesign ugt i16 %i.bq, 31744, !dbg !60574
  %or.cond.i18.us.i = icmp sgt i16 %.val8.us.i, %i.bf
  %or.cond65 = or i1 %i.br, %or.cond.i18.us.i, !dbg !60575
  br i1 %or.cond65, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, !dbg !60575

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i: ; preds = %.lr.ph.split.split.us.i
  %i.bs = load i64, ptr %i.bp, align 4, !dbg !60570
  store i64 %i.bs, ptr %.sroa.0.08.us.i, align 4, !dbg !60570
  %i.bt = icmp eq ptr %i.bp, %2, !dbg !60571
  br i1 %i.bt, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, label %.lr.ph.split.split.us.i, !dbg !60571

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i
  %.sroa.0.08.i = phi ptr [ %i.bu, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i ], [ %i.be, %.lr.ph.split.i ] ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8, !dbg !60572 ; 4 uses
  %.val8.i = load i16, ptr %i.bu, align 4, !dbg !60573 ; 4 uses
  %i.bv = and i16 %.val8.i, 32767, !dbg !60574
  %i.bw = icmp samesign ugt i16 %i.bv, 31744, !dbg !60574
  br i1 %i.bw, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i, label %bb.z, !dbg !60575

bb.z:                                             ; preds = %.lr.ph.split.split.i
  %.not.i4.i.i11.i = icmp sgt i16 %.val8.i, -1, !dbg !60576
  br i1 %.not.i4.i.i11.i, label %.split.i.i15.i, label %bb.aa, !dbg !60577

.split.i.i15.i:                                   ; preds = %bb.z
  %i.bx = or i16 %.val8.i, %i.bg, !dbg !60580
  %.not.i.i16.i = icmp eq i16 %i.bx, 0, !dbg !60580
  br i1 %.not.i.i16.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i, !dbg !60579

bb.aa:                                            ; preds = %bb.z
  %.not21.i.i12.i = icmp samesign ult i16 %.val8.i, %i.bf, !dbg !60578
  br i1 %.not21.i.i12.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, !dbg !60579

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i: ; preds = %bb.aa, %.split.i.i15.i, %.lr.ph.split.split.i
  %i.by = load i64, ptr %i.bu, align 4, !dbg !60570
  store i64 %i.by, ptr %.sroa.0.08.i, align 4, !dbg !60570
  %i.bz = icmp eq ptr %i.bu, %2, !dbg !60571
  br i1 %i.bz, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, label %.lr.ph.split.split.i, !dbg !60571

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i: ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i, %bb.aa, %.split.i.i15.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i, %.lr.ph.split.split.us.i, %bb.y
  %.sroa.0.0.lcssa.i = phi ptr [ %i.be, %bb.y ], [ %.sroa.0.08.us.i, %.lr.ph.split.split.us.i ], [ %2, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.us.i ], [ %2, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.i ], [ %.sroa.0.08.i, %.split.i.i15.i ], [ %.sroa.0.08.i, %bb.aa ], !dbg !60581
  %.sroa.0.sroa.0.0.insert.insert.i = and i64 %.fr66, -4294901761, !dbg !60582
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.0.0.lcssa.i, align 4, !dbg !60582, !noalias !60517
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !60583

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtB1d_4sort18arg_sort_ascendingB19_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4r_5BlockRSB19_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit19.thread.i, %bb.x, %.split.i.i.i, %bb.v, %.lr.ph
  %i.ca = add nuw nsw i64 %.sroa.05.035, 1, !dbg !60584 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.d, !dbg !60553
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !dbg !60511
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1s_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4o_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60589 !guid !60848 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2, !dbg !60883
  br i1 %i.a, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1g_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4c_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !60883

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16, !dbg !60884
  %i.c = icmp samesign ult i64 %3, %i.b, !dbg !60885
  br i1 %i.c, label %bb.d, label %bb.c, !dbg !60885

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1, !dbg !60886              ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15, !dbg !60887
  br i1 %i.e, label %bb.f, label %bb.e, !dbg !60887

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap(), !dbg !60888
  unreachable, !dbg !60888

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7, !dbg !60889
  br i1 %i.f, label %bb.g, label %bb.h, !dbg !60889

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %1, !dbg !60890 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort8_stableTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB19_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB45_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef %0, ptr noundef %2, ptr noundef %i.g), !dbg !60891
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d, !dbg !60892
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d, !dbg !60893
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 128, !dbg !60894
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort12sort8_stableTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB19_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB45_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j), !dbg !60895
  br label %bb.i, !dbg !60896

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !60897
  %.val8.i = load double, ptr %i.k, align 8, !dbg !60898, !alias.scope !60853, !noundef !3509 ; 2 uses
  %.val9.i = load double, ptr %0, align 8, !dbg !60898, !alias.scope !60854, !noundef !3509
  %i.l = fcmp ord double %.val8.i, 0.000000e+00, !dbg !60899
  %i.m = fcmp ult double %.val8.i, %.val9.i, !dbg !60900
  %.not2.i.i.i.i = and i1 %i.l, %i.m, !dbg !60901 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !60902
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !60903
  %.val6.i = load double, ptr %i.n, align 8, !dbg !60904, !alias.scope !60853, !noundef !3509 ; 2 uses
  %.val7.i = load double, ptr %i.o, align 8, !dbg !60904, !alias.scope !60854, !noundef !3509
  %i.p = fcmp ord double %.val6.i, 0.000000e+00, !dbg !60905
  %i.q = fcmp ult double %.val6.i, %.val7.i, !dbg !60906
  %.not2.i.i.i10.i = and i1 %i.p, %i.q, !dbg !60907 ; 2 uses
  %i.r = zext i1 %.not2.i.i.i.i to i64, !dbg !60908
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r, !dbg !60909 ; 3 uses
  %i.t = xor i1 %.not2.i.i.i.i, true, !dbg !60910
  %i.u = zext i1 %i.t to i64, !dbg !60910
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.u, !dbg !60911 ; 4 uses
  %i.w = select i1 %.not2.i.i.i10.i, i64 3, i64 2, !dbg !60912
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.w, !dbg !60913 ; 4 uses
  %i.y = select i1 %.not2.i.i.i10.i, i64 2, i64 3, !dbg !60914
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.y, !dbg !60915 ; 3 uses
  %.val4.i = load double, ptr %i.x, align 8, !dbg !60916, !alias.scope !60853, !noundef !3509 ; 2 uses
  %.val5.i = load double, ptr %i.s, align 8, !dbg !60916, !alias.scope !60854, !noundef !3509
  %i.aa = fcmp ord double %.val4.i, 0.000000e+00, !dbg !60917
  %i.ab = fcmp ult double %.val4.i, %.val5.i, !dbg !60918
  %.not2.i.i.i11.i = and i1 %i.aa, %i.ab, !dbg !60919 ; 3 uses
  %.val2.i = load double, ptr %i.z, align 8, !dbg !60920, !alias.scope !60853, !noundef !3509 ; 2 uses
  %.val3.i = load double, ptr %i.v, align 8, !dbg !60920, !alias.scope !60854, !noundef !3509
  %i.ac = fcmp ord double %.val2.i, 0.000000e+00, !dbg !60921
  %i.ad = fcmp ult double %.val2.i, %.val3.i, !dbg !60922
  %.not2.i.i.i12.i = and i1 %i.ac, %i.ad, !dbg !60923 ; 3 uses
  %i.ae = select i1 %.not2.i.i.i11.i, ptr %i.x, ptr %i.s, !dbg !60924, !unpredictable !3509
  %i.af = select i1 %.not2.i.i.i12.i, ptr %i.v, ptr %i.z, !dbg !60925, !unpredictable !3509
  %i.ag = select i1 %.not2.i.i.i12.i, ptr %i.x, ptr %i.v, !dbg !60926, !unpredictable !3509
  %i.ah = select i1 %.not2.i.i.i11.i, ptr %i.s, ptr %i.ag, !dbg !60927, !unpredictable !3509 ; 3 uses
  %i.ai = select i1 %.not2.i.i.i11.i, ptr %i.v, ptr %i.x, !dbg !60928, !unpredictable !3509
  %i.aj = select i1 %.not2.i.i.i12.i, ptr %i.z, ptr %i.ai, !dbg !60929, !unpredictable !3509 ; 3 uses
  %.val.i = load double, ptr %i.aj, align 8, !dbg !60930, !alias.scope !60853, !noundef !3509 ; 2 uses
  %.val1.i = load double, ptr %i.ah, align 8, !dbg !60930, !alias.scope !60854, !noundef !3509
  %i.ak = fcmp ord double %.val.i, 0.000000e+00, !dbg !60931
  %i.al = fcmp ult double %.val.i, %.val1.i, !dbg !60932
  %.not2.i.i.i13.i = and i1 %i.ak, %i.al, !dbg !60933 ; 2 uses
  %i.am = select i1 %.not2.i.i.i13.i, ptr %i.aj, ptr %i.ah, !dbg !60934, !unpredictable !3509
  %i.an = select i1 %.not2.i.i.i13.i, ptr %i.ah, ptr %i.aj, !dbg !60935, !unpredictable !3509
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !dbg !60936
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !60937
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !dbg !60938
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !60939
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !dbg !60940
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48, !dbg !60941
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !dbg !60942
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d, !dbg !60943 ; 8 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d, !dbg !60944 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !60945
  %.val8.i30 = load double, ptr %i.at, align 8, !dbg !60946, !alias.scope !60857, !noundef !3509 ; 2 uses
  %.val9.i31 = load double, ptr %i.ar, align 8, !dbg !60946, !alias.scope !60858, !noundef !3509
  %i.au = fcmp ord double %.val8.i30, 0.000000e+00, !dbg !60947
  %i.av = fcmp ult double %.val8.i30, %.val9.i31, !dbg !60948
  %.not2.i.i.i.i32 = and i1 %i.au, %i.av, !dbg !60949 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 48, !dbg !60950
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32, !dbg !60951
  %.val6.i33 = load double, ptr %i.aw, align 8, !dbg !60952, !alias.scope !60857, !noundef !3509 ; 2 uses
  %.val7.i34 = load double, ptr %i.ax, align 8, !dbg !60952, !alias.scope !60858, !noundef !3509
  %i.ay = fcmp ord double %.val6.i33, 0.000000e+00, !dbg !60953
  %i.az = fcmp ult double %.val6.i33, %.val7.i34, !dbg !60954
  %.not2.i.i.i10.i35 = and i1 %i.ay, %i.az, !dbg !60955 ; 2 uses
  %i.ba = zext i1 %.not2.i.i.i.i32 to i64, !dbg !60956
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.ba, !dbg !60957 ; 3 uses
  %i.bc = xor i1 %.not2.i.i.i.i32, true, !dbg !60958
  %i.bd = zext i1 %i.bc to i64, !dbg !60958
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.bd, !dbg !60959 ; 4 uses
  %i.bf = select i1 %.not2.i.i.i10.i35, i64 3, i64 2, !dbg !60960
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.bf, !dbg !60961 ; 4 uses
  %i.bh = select i1 %.not2.i.i.i10.i35, i64 2, i64 3, !dbg !60962
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.bh, !dbg !60963 ; 3 uses
  %.val4.i36 = load double, ptr %i.bg, align 8, !dbg !60964, !alias.scope !60857, !noundef !3509 ; 2 uses
  %.val5.i37 = load double, ptr %i.bb, align 8, !dbg !60964, !alias.scope !60858, !noundef !3509
  %i.bj = fcmp ord double %.val4.i36, 0.000000e+00, !dbg !60965
  %i.bk = fcmp ult double %.val4.i36, %.val5.i37, !dbg !60966
  %.not2.i.i.i11.i38 = and i1 %i.bj, %i.bk, !dbg !60967 ; 3 uses
  %.val2.i39 = load double, ptr %i.bi, align 8, !dbg !60968, !alias.scope !60857, !noundef !3509 ; 2 uses
  %.val3.i40 = load double, ptr %i.be, align 8, !dbg !60968, !alias.scope !60858, !noundef !3509
  %i.bl = fcmp ord double %.val2.i39, 0.000000e+00, !dbg !60969
  %i.bm = fcmp ult double %.val2.i39, %.val3.i40, !dbg !60970
  %.not2.i.i.i12.i41 = and i1 %i.bl, %i.bm, !dbg !60971 ; 3 uses
  %i.bn = select i1 %.not2.i.i.i11.i38, ptr %i.bg, ptr %i.bb, !dbg !60972, !unpredictable !3509
  %i.bo = select i1 %.not2.i.i.i12.i41, ptr %i.be, ptr %i.bi, !dbg !60973, !unpredictable !3509
  %i.bp = select i1 %.not2.i.i.i12.i41, ptr %i.bg, ptr %i.be, !dbg !60974, !unpredictable !3509
  %i.bq = select i1 %.not2.i.i.i11.i38, ptr %i.bb, ptr %i.bp, !dbg !60975, !unpredictable !3509 ; 3 uses
  %i.br = select i1 %.not2.i.i.i11.i38, ptr %i.be, ptr %i.bg, !dbg !60976, !unpredictable !3509
  %i.bs = select i1 %.not2.i.i.i12.i41, ptr %i.bi, ptr %i.br, !dbg !60977, !unpredictable !3509 ; 3 uses
  %.val.i42 = load double, ptr %i.bs, align 8, !dbg !60978, !alias.scope !60857, !noundef !3509 ; 2 uses
  %.val1.i43 = load double, ptr %i.bq, align 8, !dbg !60978, !alias.scope !60858, !noundef !3509
  %i.bt = fcmp ord double %.val.i42, 0.000000e+00, !dbg !60979
  %i.bu = fcmp ult double %.val.i42, %.val1.i43, !dbg !60980
  %.not2.i.i.i13.i44 = and i1 %i.bt, %i.bu, !dbg !60981 ; 2 uses
  %i.bv = select i1 %.not2.i.i.i13.i44, ptr %i.bs, ptr %i.bq, !dbg !60982, !unpredictable !3509
  %i.bw = select i1 %.not2.i.i.i13.i44, ptr %i.bq, ptr %i.bs, !dbg !60983, !unpredictable !3509
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !dbg !60984
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !60985
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !dbg !60986
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 32, !dbg !60987
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !dbg !60988
  %i.bz = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !60989
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !dbg !60990
  br label %bb.i, !dbg !60991

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !dbg !60992
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d, !dbg !60993
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.d, !dbg !60994
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !dbg !60995
  br label %bb.i, !dbg !60991

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ], !dbg !60996 ; 4 uses
  %i.cc = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cd = icmp samesign ult i64 %.sroa.0.0, %i.d, !dbg !60997
  br i1 %i.cd, label %.lr.ph, label %.loopexit, !dbg !60866

.loopexit:                                        ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB44_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, %bb.i
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d, !dbg !60998
  %i.cf = getelementptr [16 x i8], ptr %2, i64 %i.d, !dbg !60999 ; 6 uses
  %i.cg = icmp samesign ult i64 %.sroa.0.0, %i.cc, !dbg !60997
  br i1 %i.cg, label %.lr.ph.1, label %.loopexit.1, !dbg !60866

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB44_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.1
  %.sroa.05.057.1 = phi i64 [ %i.cs, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB18_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB44_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %.sroa.05.057.1, !dbg !61000
  %.idx85 = shl nuw nsw i64 %.sroa.05.057.1, 4, !dbg !61001
end_hunk_2
