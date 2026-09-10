Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB17_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB18_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr:bb.a

bb.n:                                             ; preds = %bb.m, %.split.i.i.i.1.i.i, %bb.l, %bb.i
  %i.al = load double, ptr %i.ae, align 8, !dbg !64100, !alias.scope !64026, !noalias !64023, !noundef !3509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !dbg !64101, !alias.scope !64026, !noalias !64023
  %i.am = icmp eq i64 %.sroa.05.06.1.i.i, 1, !dbg !64102
  br i1 %i.am, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, label %.lr.ph.split.i.1.i.i, !dbg !64102

.lr.ph.split.i.1.i.i:                             ; preds = %bb.n
  %i.an = icmp sgt i16 %.val11.i.1.i.i, -1
  br i1 %i.an, label %.lr.ph.split.split.us.i.1.i.i, label %.lr.ph.split.split.i.1.i.i

.lr.ph.split.split.i.1.i.i:                       ; preds = %.lr.ph.split.i.1.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i
  %.sroa.0.08.i.1.i.i = phi ptr [ %i.ao, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i ], [ %i.ad, %.lr.ph.split.i.1.i.i ] ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.08.i.1.i.i, i64 -16, !dbg !64103 ; 4 uses
  %.val9.i.1.i.i = load i16, ptr %i.ao, align 8, !dbg !64104, !alias.scope !64026, !noalias !64023, !noundef !3509 ; 4 uses
  %i.ap = and i16 %.val9.i.1.i.i, 32767, !dbg !64105
  %i.aq = icmp samesign ugt i16 %i.ap, 31744, !dbg !64105
  br i1 %i.aq, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i, label %bb.o, !dbg !64106

bb.o:                                             ; preds = %.lr.ph.split.split.i.1.i.i
  %.not.i4.i.i15.i.1.i.i = icmp sgt i16 %.val9.i.1.i.i, -1, !dbg !64107
  br i1 %.not.i4.i.i15.i.1.i.i, label %.split.i.i19.i.1.i.i, label %bb.p, !dbg !64108

bb.p:                                             ; preds = %bb.o
  %.not30.i.i16.i.1.i.i = icmp samesign ult i16 %.val9.i.1.i.i, %.val11.i.1.i.i, !dbg !64109
  br i1 %.not30.i.i16.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, !dbg !64110

.split.i.i19.i.1.i.i:                             ; preds = %bb.o
  %i.ar = or i16 %.val9.i.1.i.i, %i.af, !dbg !64111
  %.not.i.i20.i.1.i.i = icmp eq i16 %i.ar, 0, !dbg !64111
  br i1 %.not.i.i20.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i, !dbg !64110

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i: ; preds = %.split.i.i19.i.1.i.i, %bb.p, %.lr.ph.split.split.i.1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.i.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !dbg !64101, !alias.scope !64026, !noalias !64023
  %i.as = icmp eq ptr %i.ao, %i.z, !dbg !64102
  br i1 %i.as, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, label %.lr.ph.split.split.i.1.i.i, !dbg !64102

.lr.ph.split.split.us.i.1.i.i:                    ; preds = %.lr.ph.split.i.1.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i
  %.sroa.0.08.us16.i.1.i.i = phi ptr [ %i.at, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i ], [ %i.ad, %.lr.ph.split.i.1.i.i ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.08.us16.i.1.i.i, i64 -16, !dbg !64103 ; 4 uses
  %.val9.us17.i.1.i.i = load i16, ptr %i.at, align 8, !dbg !64104, !alias.scope !64026, !noalias !64023, !noundef !3509 ; 3 uses
  %i.au = and i16 %.val9.us17.i.1.i.i, 32767, !dbg !64105
  %i.av = icmp samesign ugt i16 %i.au, 31744, !dbg !64105
  br i1 %i.av, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i, label %bb.q, !dbg !64106

bb.q:                                             ; preds = %.lr.ph.split.split.us.i.1.i.i
  %.not.i4.i.i15.us.i.1.i.i = icmp sgt i16 %.val9.us17.i.1.i.i, -1, !dbg !64107
  %.not31.i.i21.us.i.1.i.i = icmp samesign ult i16 %.val11.i.1.i.i, %.val9.us17.i.1.i.i
  %or.cond.i22.us.i.1.i.i = select i1 %.not.i4.i.i15.us.i.1.i.i, i1 %.not31.i.i21.us.i.1.i.i, i1 false, !dbg !64108
  br i1 %or.cond.i22.us.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, !dbg !64108

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i: ; preds = %bb.q, %.lr.ph.split.split.us.i.1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.us16.i.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !64101, !alias.scope !64026, !noalias !64023
  %i.aw = icmp eq ptr %i.at, %i.z, !dbg !64102
  br i1 %i.aw, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, label %.lr.ph.split.split.us.i.1.i.i, !dbg !64102

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i, %.split.i.i19.i.1.i.i, %bb.p, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i, %bb.q, %bb.n
  %.sroa.0.0.lcssa.i.1.i.i = phi ptr [ %i.ad, %bb.n ], [ %i.z, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i ], [ %.sroa.0.08.us16.i.1.i.i, %bb.q ], [ %.sroa.0.08.i.1.i.i, %bb.p ], [ %i.z, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i ], [ %.sroa.0.08.i.1.i.i, %.split.i.i19.i.1.i.i ], !dbg !64112 ; 2 uses
  store i16 %.val11.i.1.i.i, ptr %.sroa.0.0.lcssa.i.1.i.i, align 8, !dbg !64113, !alias.scope !64026, !noalias !64027
  %.sroa.521.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i.i, i64 8, !dbg !64113
  store double %i.al, ptr %.sroa.521.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !dbg !64113, !alias.scope !64026, !noalias !64027
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.1.i.i, !dbg !64114

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.1.i.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, %bb.m, %.split.i.i.i.1.i.i, %bb.l, %.lr.ph.1.i.i
  %i.ax = add nuw nsw i64 %.sroa.05.06.1.i.i, 1, !dbg !64115 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.ax, %i.w, !dbg !64082
  br i1 %exitcond.1.not.i.i, label %.loopexit.1.i.i, label %.lr.ph.1.i.i, !dbg !64083

.loopexit.1.i.i:                                  ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.1.i.i, %.loopexit.i.i
  invoke fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1g_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1h_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.lcssa)
          to label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1f_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1g_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.r, !dbg !64116

bb.r:                                             ; preds = %.loopexit.1.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = shl nuw nsw i64 %.sroa.15.0.lcssa, 4, !dbg !64117
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.c, i64 %i.az, i1 false), !dbg !64117, !alias.scope !64024, !noalias !64028
  resume { ptr, i32 } %i.ay, !dbg !64118

.lr.ph.i.i:                                       ; preds = %bb.h, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i
  %.sroa.05.06.i.i = phi i64 [ %i.bw, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.05.06.i.i, !dbg !64086
  %.idx.i.i = shl nuw nsw i64 %.sroa.05.06.i.i, 4, !dbg !64087
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i, !dbg !64087 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !dbg !64088, !alias.scope !64024
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16, !dbg !64089 ; 5 uses
  %.val11.i.i.i = load i16, ptr %i.bb, align 8, !dbg !64090, !alias.scope !64026, !noalias !64023, !noundef !3509 ; 8 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 8, !dbg !64090
  %.val13.i.i.i = load i16, ptr %i.bc, align 8, !dbg !64090, !alias.scope !64026, !noalias !64023, !noundef !3509 ; 5 uses
  %i.be = and i16 %.val11.i.i.i, 32767, !dbg !64091 ; 3 uses
  %i.bf = icmp samesign ugt i16 %i.be, 31744, !dbg !64091
  br i1 %i.bf, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.s, !dbg !64092

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.bg = and i16 %.val13.i.i.i, 32767, !dbg !64093
  %i.bh = icmp samesign ugt i16 %i.bg, 31744, !dbg !64093
  br i1 %i.bh, label %bb.x, label %bb.t, !dbg !64094

bb.t:                                             ; preds = %bb.s
  %.not.i4.i.i.i.i.i = icmp sgt i16 %.val13.i.i.i, -1, !dbg !64095 ; 2 uses
  %i.bi = icmp sgt i16 %.val11.i.i.i, -1, !dbg !64096
  br i1 %i.bi, label %bb.u, label %bb.v, !dbg !64096

bb.u:                                             ; preds = %bb.t
  %.not31.i.i.i.i.i = icmp samesign ult i16 %.val11.i.i.i, %.val13.i.i.i
  %or.cond.i.i.i.i = select i1 %.not.i4.i.i.i.i.i, i1 %.not31.i.i.i.i.i, i1 false, !dbg !64096
  br i1 %or.cond.i.i.i.i, label %bb.x, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !64096

bb.v:                                             ; preds = %bb.t
  br i1 %.not.i4.i.i.i.i.i, label %.split.i.i.i.i.i, label %bb.w, !dbg !64096

.split.i.i.i.i.i:                                 ; preds = %bb.v
  %i.bj = or i16 %.val13.i.i.i, %i.be, !dbg !64099
  %.not.i.i.i.i.i = icmp eq i16 %i.bj, 0, !dbg !64099
  br i1 %.not.i.i.i.i.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.x, !dbg !64098

bb.w:                                             ; preds = %bb.v
  %.not30.i.i.i.i.i = icmp samesign ult i16 %.val13.i.i.i, %.val11.i.i.i, !dbg !64097
  br i1 %.not30.i.i.i.i.i, label %bb.x, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !64098

bb.x:                                             ; preds = %bb.w, %.split.i.i.i.i.i, %bb.u, %bb.s
  %i.bk = load double, ptr %i.bd, align 8, !dbg !64100, !alias.scope !64026, !noalias !64023, !noundef !3509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !dbg !64101, !alias.scope !64026, !noalias !64023
  %i.bl = icmp eq i64 %.sroa.05.06.i.i, 1, !dbg !64102
  br i1 %i.bl, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, label %.lr.ph.split.i.i.i, !dbg !64102

.lr.ph.split.i.i.i:                               ; preds = %bb.x
  %i.bm = icmp sgt i16 %.val11.i.i.i, -1
  br i1 %i.bm, label %.lr.ph.split.split.us.i.i.i, label %.lr.ph.split.split.i.i.i

.lr.ph.split.split.us.i.i.i:                      ; preds = %.lr.ph.split.i.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i
  %.sroa.0.08.us16.i.i.i = phi ptr [ %i.bn, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i ], [ %i.bc, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.08.us16.i.i.i, i64 -16, !dbg !64103 ; 4 uses
  %.val9.us17.i.i.i = load i16, ptr %i.bn, align 8, !dbg !64104, !alias.scope !64026, !noalias !64023, !noundef !3509 ; 3 uses
  %i.bo = and i16 %.val9.us17.i.i.i, 32767, !dbg !64105
  %i.bp = icmp samesign ugt i16 %i.bo, 31744, !dbg !64105
  br i1 %i.bp, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i, label %bb.y, !dbg !64106

bb.y:                                             ; preds = %.lr.ph.split.split.us.i.i.i
  %.not.i4.i.i15.us.i.i.i = icmp sgt i16 %.val9.us17.i.i.i, -1, !dbg !64107
  %.not31.i.i21.us.i.i.i = icmp samesign ult i16 %.val11.i.i.i, %.val9.us17.i.i.i
  %or.cond.i22.us.i.i.i = select i1 %.not.i4.i.i15.us.i.i.i, i1 %.not31.i.i21.us.i.i.i, i1 false, !dbg !64108
  br i1 %or.cond.i22.us.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, !dbg !64108

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i: ; preds = %bb.y, %.lr.ph.split.split.us.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.us16.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !dbg !64101, !alias.scope !64026, !noalias !64023
  %i.bq = icmp eq ptr %i.bn, %i.c, !dbg !64102
  br i1 %i.bq, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, label %.lr.ph.split.split.us.i.i.i, !dbg !64102

.lr.ph.split.split.i.i.i:                         ; preds = %.lr.ph.split.i.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.br, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i ], [ %i.bc, %.lr.ph.split.i.i.i ] ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i, i64 -16, !dbg !64103 ; 4 uses
  %.val9.i.i.i = load i16, ptr %i.br, align 8, !dbg !64104, !alias.scope !64026, !noalias !64023, !noundef !3509 ; 4 uses
  %i.bs = and i16 %.val9.i.i.i, 32767, !dbg !64105
  %i.bt = icmp samesign ugt i16 %i.bs, 31744, !dbg !64105
  br i1 %i.bt, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i, label %bb.z, !dbg !64106

bb.z:                                             ; preds = %.lr.ph.split.split.i.i.i
  %.not.i4.i.i15.i.i.i = icmp sgt i16 %.val9.i.i.i, -1, !dbg !64107
  br i1 %.not.i4.i.i15.i.i.i, label %.split.i.i19.i.i.i, label %bb.aa, !dbg !64108

.split.i.i19.i.i.i:                               ; preds = %bb.z
  %i.bu = or i16 %.val9.i.i.i, %i.be, !dbg !64111
  %.not.i.i20.i.i.i = icmp eq i16 %i.bu, 0, !dbg !64111
  br i1 %.not.i.i20.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i, !dbg !64110

bb.aa:                                            ; preds = %bb.z
  %.not30.i.i16.i.i.i = icmp samesign ult i16 %.val9.i.i.i, %.val11.i.i.i, !dbg !64109
  br i1 %.not30.i.i16.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, !dbg !64110

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i: ; preds = %bb.aa, %.split.i.i19.i.i.i, %.lr.ph.split.split.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !dbg !64101, !alias.scope !64026, !noalias !64023
  %i.bv = icmp eq ptr %i.br, %i.c, !dbg !64102
  br i1 %i.bv, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, label %.lr.ph.split.split.i.i.i, !dbg !64102

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i, %bb.aa, %.split.i.i19.i.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i, %bb.y, %bb.x
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %i.bc, %bb.x ], [ %.sroa.0.08.us16.i.i.i, %bb.y ], [ %i.c, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i ], [ %i.c, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i ], [ %.sroa.0.08.i.i.i, %.split.i.i19.i.i.i ], [ %.sroa.0.08.i.i.i, %bb.aa ], !dbg !64112 ; 2 uses
  store i16 %.val11.i.i.i, ptr %.sroa.0.0.lcssa.i.i.i, align 8, !dbg !64113, !alias.scope !64026, !noalias !64027
  %.sroa.521.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 8, !dbg !64113
  store double %i.bk, ptr %.sroa.521.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !dbg !64113, !alias.scope !64026, !noalias !64027
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !64114

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, %bb.w, %.split.i.i.i.i.i, %bb.u, %.lr.ph.i.i
  %i.bw = add nuw nsw i64 %.sroa.05.06.i.i, 1, !dbg !64115 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bw, %i.j, !dbg !64082
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !dbg !64083

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1f_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1g_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %._crit_edge, %.loopexit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !64119, !noalias !64021
  br label %bb.ar, !dbg !64120

._crit_edge231:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.0112.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.0111.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable8heapsort8heapsortTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112.lcssa, i64 noundef %.sroa.15.0111.lcssa, ptr noalias nonnull align 8 poison) #53, !dbg !64121
  br label %bb.ar, !dbg !64120

.lr.ph230:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.0109229 = phi i32 [ %i.bx, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.0110228 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 3 uses
  %.sroa.15.0111227 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 15 uses
  %.sroa.0.0112226 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 25 uses
  %i.bx = add nsw i32 %.sroa.026.0109229, -1, !dbg !64122 ; 3 uses
  %i.by = lshr i64 %.sroa.15.0111227, 3, !dbg !64123 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.by, 6, !dbg !64124
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 %.idx.i, !dbg !64124 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.by, 112, !dbg !64125
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 %.idx2.i, !dbg !64125 ; 4 uses
  %i.cb = icmp samesign ult i64 %.sroa.15.0111227, 64, !dbg !64126
  br i1 %i.cb, label %bb.ac, label %bb.ab, !dbg !64126

bb.ab:                                            ; preds = %.lr.ph230
  %i.cc = tail call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB14_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB15_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly align 8 %.sroa.0.0112226, ptr noundef readonly %i.bz, ptr noundef readonly %i.ca, i64 noundef %i.by), !dbg !64127
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64128

bb.ac:                                            ; preds = %.lr.ph230
  %.val10.i = load i16, ptr %.sroa.0.0112226, align 8, !dbg !64129, !alias.scope !64030, !noundef !3509 ; 7 uses
  %.val12.i = load i16, ptr %i.bz, align 8, !dbg !64129, !alias.scope !64030, !noundef !3509 ; 9 uses
  %i.cd = and i16 %.val10.i, 32767, !dbg !64130   ; 3 uses
  %i.ce = icmp samesign ugt i16 %i.cd, 31744, !dbg !64130
  br i1 %i.ce, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i, label %bb.ad, !dbg !64131

bb.ad:                                            ; preds = %bb.ac
  %i.cf = and i16 %.val12.i, 32767, !dbg !64132   ; 3 uses
  %i.cg = icmp samesign ugt i16 %i.cf, 31744, !dbg !64132
  br i1 %i.cg, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.ae, !dbg !64133

bb.ae:                                            ; preds = %bb.ad
  %.not.i4.i.i.i = icmp sgt i16 %.val12.i, -1, !dbg !64134 ; 2 uses
  %i.ch = icmp sgt i16 %.val10.i, -1, !dbg !64135
  br i1 %i.ch, label %bb.af, label %bb.ag, !dbg !64135

bb.af:                                            ; preds = %bb.ae
  %.not31.i.i.i = icmp samesign ult i16 %.val10.i, %.val12.i
  %or.cond.i.i = select i1 %.not.i4.i.i.i, i1 %.not31.i.i.i, i1 false, !dbg !64135
  br i1 %or.cond.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i, !dbg !64135

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not.i4.i.i.i, label %.split.i.i.i, label %bb.ah, !dbg !64135

.split.i.i.i:                                     ; preds = %bb.ag
  %i.ci = or i16 %.val12.i, %i.cd, !dbg !64136
  %.not.i.i.i = icmp eq i16 %i.ci, 0, !dbg !64136
  br i1 %.not.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !64137

bb.ah:                                            ; preds = %bb.ag
  %.not30.i.i.i = icmp samesign ult i16 %.val12.i, %.val10.i, !dbg !64138
  br i1 %.not30.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i, !dbg !64137

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i: ; preds = %bb.ah, %.split.i.i.i, %bb.af
  br label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !64139

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i: ; preds = %bb.ac
  %.val8.i = load i16, ptr %i.ca, align 8, !dbg !64140, !alias.scope !64030, !noundef !3509
  %.pre = and i16 %.val12.i, 32767, !dbg !64141
  br label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i, !dbg !64142

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i, %bb.ah, %.split.i.i.i, %bb.af, %bb.ad
  %.sroa.0.0.i.i.i5.i = phi i1 [ false, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i ], [ true, %bb.ad ], [ true, %bb.af ], [ true, %.split.i.i.i ], [ true, %bb.ah ] ; 2 uses
  %.val86.i = load i16, ptr %i.ca, align 8, !dbg !64140, !alias.scope !64030, !noundef !3509 ; 7 uses
  %i.cj = and i16 %.val86.i, 32767, !dbg !64143
  %i.ck = icmp samesign ugt i16 %i.cj, 31744, !dbg !64143
  br i1 %i.ck, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i, label %bb.ai, !dbg !64144

bb.ai:                                            ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i
  %.not.i4.i.i14.i = icmp sgt i16 %.val86.i, -1, !dbg !64145 ; 2 uses
  %i.cl = icmp sgt i16 %.val10.i, -1, !dbg !64146
  br i1 %i.cl, label %bb.aj, label %bb.ak, !dbg !64146

bb.aj:                                            ; preds = %bb.ai
  %.not31.i.i20.i = icmp samesign ult i16 %.val10.i, %.val86.i
  %or.cond.i21.i = select i1 %.not.i4.i.i14.i, i1 %.not31.i.i20.i, i1 false, !dbg !64146
  br i1 %or.cond.i21.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !64146

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not.i4.i.i14.i, label %.split.i.i18.i, label %bb.al, !dbg !64146

.split.i.i18.i:                                   ; preds = %bb.ak
  %i.cm = or i16 %.val86.i, %i.cd, !dbg !64147
  %.not.i.i19.i = icmp eq i16 %i.cm, 0, !dbg !64147
  br i1 %.not.i.i19.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i, !dbg !64148

bb.al:                                            ; preds = %bb.ak
  %.not30.i.i15.i = icmp samesign ult i16 %.val86.i, %.val10.i, !dbg !64149
  br i1 %.not30.i.i15.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !64148

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i: ; preds = %bb.al, %.split.i.i18.i, %bb.aj, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i
  br i1 %.sroa.0.0.i.i.i5.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64142

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i: ; preds = %bb.al, %.split.i.i18.i, %bb.aj
  br i1 %.sroa.0.0.i.i.i5.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i, !dbg !64142

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i
  %.pre-phi.i = phi i16 [ %i.cf, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i ], [ %i.cf, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.pre, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i ], !dbg !64141 ; 2 uses
  %.sroa.0.0.i.i.i413.i = phi i1 [ true, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i ], [ false, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ false, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i ]
  %.val8812.i = phi i16 [ %.val86.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i ], [ %.val86.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.val8.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i ] ; 5 uses
  %i.cn = icmp samesign ugt i16 %.pre-phi.i, 31744, !dbg !64141
  br i1 %i.cn, label %.thread18.i.i25.i, label %bb.am, !dbg !64150

bb.am:                                            ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i
  %i.co = and i16 %.val8812.i, 32767, !dbg !64151
  %i.cp = icmp samesign ugt i16 %i.co, 31744, !dbg !64151
  br i1 %i.cp, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i, label %bb.an, !dbg !64152

bb.an:                                            ; preds = %bb.am
  %.not.i4.i.i23.i = icmp sgt i16 %.val8812.i, -1, !dbg !64153 ; 2 uses
  %i.cq = icmp sgt i16 %.val12.i, -1, !dbg !64154
  br i1 %i.cq, label %bb.ao, label %bb.ap, !dbg !64154

bb.ao:                                            ; preds = %bb.an
  %.not31.i.i29.i = icmp samesign ult i16 %.val12.i, %.val8812.i
  %or.cond.i30.i = select i1 %.not.i4.i.i23.i, i1 %.not31.i.i29.i, i1 false, !dbg !64154
  br i1 %or.cond.i30.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i, label %.thread18.i.i25.i, !dbg !64154

bb.ap:                                            ; preds = %bb.an
  br i1 %.not.i4.i.i23.i, label %.split.i.i27.i, label %bb.aq, !dbg !64154

.split.i.i27.i:                                   ; preds = %bb.ap
  %i.cr = or i16 %.val8812.i, %.pre-phi.i, !dbg !64155
  %.not.i.i28.i = icmp eq i16 %i.cr, 0, !dbg !64155
  br i1 %.not.i.i28.i, label %.thread18.i.i25.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i, !dbg !64156

bb.aq:                                            ; preds = %bb.ap
  %.not30.i.i24.i = icmp samesign ult i16 %.val8812.i, %.val12.i, !dbg !64157
  br i1 %.not30.i.i24.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i, label %.thread18.i.i25.i, !dbg !64156

.thread18.i.i25.i:                                ; preds = %bb.aq, %.split.i.i27.i, %bb.ao, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i
  br label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i, !dbg !64158

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i: ; preds = %.thread18.i.i25.i, %bb.aq, %.split.i.i27.i, %bb.ao, %bb.am
  %.sroa.0.0.i.i.i26.i = phi i1 [ true, %bb.aq ], [ false, %.thread18.i.i25.i ], [ true, %bb.am ], [ true, %.split.i.i27.i ], [ true, %bb.ao ], !dbg !64151
  %i.cs = xor i1 %.sroa.0.0.i.i.i413.i, %.sroa.0.0.i.i.i26.i, !dbg !64159
  %..i.i = select i1 %i.cs, ptr %i.ca, ptr %i.bz, !dbg !64160
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64160

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ab, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i
  %.sroa.0.0.i.sink.i = phi ptr [ %i.cc, %bb.ab ], [ %.sroa.0.0112226, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %..i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i ], [ %.sroa.0.0112226, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i ]
  %i.ct = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !64161
  %i.cu = ptrtoint ptr %.sroa.0.0112226 to i64, !dbg !64161
  %i.cv = sub nuw i64 %i.ct, %i.cu, !dbg !64161   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.cv, 4, !dbg !64161 ; 3 uses
  %i.cw = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.0111227, !dbg !64162
  tail call void @llvm.assume(i1 %i.cw), !dbg !64163
  %.not = icmp eq ptr %.sroa.023.0110228, null, !dbg !64164
  br i1 %.not, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.bh, !dbg !64165

bb.ar:                                            ; preds = %._crit_edge231, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1f_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1g_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit
  ret void, !dbg !64166

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %bb.bk, %.split.i.i, %bb.bi, %bb.bm, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64031), !dbg !64167
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE14swap_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112226, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0111227, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32), !dbg !64168
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 16, !dbg !64169 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64032), !dbg !64170
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64033), !dbg !64170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !64171, !noalias !64034
  %i.cy = load i16, ptr %i.cx, align 8, !dbg !64172, !alias.scope !64035, !noalias !64033, !noundef !3509
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 24, !dbg !64172
  %i.da = load double, ptr %i.cz, align 8, !dbg !64172, !alias.scope !64035, !noalias !64033, !noundef !3509
  store i16 %i.cy, ptr %i.b, align 8, !dbg !64173, !noalias !64034
  store double %i.da, ptr %i.f, align 8, !dbg !64173, !noalias !64034
  %i.db = getelementptr [16 x i8], ptr %.sroa.0.0112226, i64 %.sroa.15.0111227, !dbg !64174 ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -16, !dbg !64174 ; 3 uses
  %.sroa.13.048.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 32, !dbg !64175 ; 4 uses
  %i.dd = icmp ult ptr %.sroa.13.048.i.i, %i.dc, !dbg !64176
  %.val2.i.pre.i.i = load i16, ptr %.sroa.0.0112226, align 8, !alias.scope !64036, !noalias !64032 ; 12 uses
  %i.de = and i16 %.val2.i.pre.i.i, 32767         ; 2 uses
  br i1 %i.dd, label %.lr.ph.i.i39, label %.preheader.i.i, !dbg !64176

.lr.ph.i.i39:                                     ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread
  %i.df = icmp samesign ugt i16 %i.de, 31744
  %.not.i4.i.i.i13.i.i = icmp sgt i16 %.val2.i.pre.i.i, -1 ; 4 uses
  br i1 %i.df, label %.lr.ph.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i39, %.lr.ph.split.us.i.i
  %.sroa.13.051.us.i.i = phi ptr [ %.sroa.13.0.us.i.i, %.lr.ph.split.us.i.i ], [ %.sroa.13.048.i.i, %.lr.ph.i.i39 ] ; 3 uses
  %.sroa.033.050.us.i.i = phi ptr [ %i.dk, %.lr.ph.split.us.i.i ], [ %i.cx, %.lr.ph.i.i39 ] ; 3 uses
  %.sroa.23.049.us.i.i = phi i64 [ %i.do, %.lr.ph.split.us.i.i ], [ 0, %.lr.ph.i.i39 ] ; 2 uses
  %.val.i11.us.i.i = load i16, ptr %.sroa.13.051.us.i.i, align 8, !dbg !64177, !alias.scope !64035, !noalias !64037, !noundef !3509
  %i.dg = and i16 %.val.i11.us.i.i, 32767, !dbg !64178
  %i.dh = icmp samesign ult i16 %i.dg, 31745, !dbg !64178
  %..i.i40 = zext i1 %i.dh to i64, !dbg !64179
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.23.049.us.i.i, !dbg !64180 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.050.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false), !dbg !64181, !alias.scope !64035, !noalias !64037
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.051.us.i.i, i64 16, i1 false), !dbg !64182, !alias.scope !64035, !noalias !64037
  %i.dj = add i64 %.sroa.23.049.us.i.i, %..i.i40, !dbg !64183 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.033.050.us.i.i, i64 32, !dbg !64184 ; 4 uses
  %.val.i22.us.i.i = load i16, ptr %i.dk, align 8, !dbg !64185, !alias.scope !64035, !noalias !64038, !noundef !3509
  %i.dl = and i16 %.val.i22.us.i.i, 32767, !dbg !64186
  %i.dm = icmp samesign ult i16 %i.dl, 31745, !dbg !64186
  %spec.select.i.i = zext i1 %i.dm to i64, !dbg !64187
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.dj, !dbg !64188 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.051.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !dbg !64189, !alias.scope !64035, !noalias !64038
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false), !dbg !64190, !alias.scope !64035, !noalias !64038
  %i.do = add i64 %i.dj, %spec.select.i.i, !dbg !64191 ; 2 uses
  %.sroa.13.0.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.033.050.us.i.i, i64 48, !dbg !64175 ; 3 uses
  %i.dp = icmp ult ptr %.sroa.13.0.us.i.i, %i.dc, !dbg !64176
  br i1 %i.dp, label %.lr.ph.split.us.i.i, label %.preheader.split.us.i.i.preheader, !dbg !64176

.preheader.i.i:                                   ; preds = %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread ], [ %i.ev, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i ], !dbg !64175 ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB17_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB18_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %.sroa.23.1.us76.i.i = phi i64 [ %i.ec, %bb.au ], [ %.sroa.23.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !64175 ; 2 uses
  %.sroa.13.1.us77.i.i = phi ptr [ %.sroa.13.1.sroa.gep.us83.i.i, %bb.au ], [ %.sroa.13.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !64175 ; 4 uses
  %.sroa.033.1.us78.i.i = phi ptr [ %.sroa.13.1.us77.i.i, %bb.au ], [ %.sroa.033.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !64175
  %i.dw = icmp eq ptr %.sroa.13.1.us77.i.i, %i.db, !dbg !64193 ; 2 uses
  %.sroa.01.0.us79.i.i = select i1 %i.dw, ptr %i.b, ptr %.sroa.13.1.us77.i.i, !dbg !64194 ; 2 uses
  %.val.i.us80.i.i = load i16, ptr %.sroa.01.0.us79.i.i, align 8, !dbg !64195, !noalias !64039, !noundef !3509 ; 3 uses
  %i.dx = and i16 %.val.i.us80.i.i, 32767, !dbg !64196 ; 2 uses
  %i.dy = icmp samesign ugt i16 %i.dx, 31744, !dbg !64196
  br i1 %i.dy, label %.thread18.i.i.i.us81.i.i, label %bb.as, !dbg !64203

bb.as:                                            ; preds = %.preheader.split.split.us.i.i
  %i.dz = icmp sgt i16 %.val.i.us80.i.i, -1, !dbg !64204
  br i1 %i.dz, label %bb.at, label %.split.i.i.i.us.i.i, !dbg !64204

.split.i.i.i.us.i.i:                              ; preds = %bb.as
  %i.ea = or i16 %i.dx, %.val2.i.pre.i.i, !dbg !64205
  %.not.i.i.i.us.i.i = icmp eq i16 %i.ea, 0, !dbg !64205
  br i1 %.not.i.i.i.us.i.i, label %.thread18.i.i.i.us81.i.i, label %bb.au, !dbg !64206

bb.at:                                            ; preds = %bb.as
  %.not31.i.i.i.us.i.i = icmp samesign ult i16 %.val.i.us80.i.i, %.val2.i.pre.i.i
  br i1 %.not31.i.i.i.us.i.i, label %bb.au, label %.thread18.i.i.i.us81.i.i, !dbg !64204

.thread18.i.i.i.us81.i.i:                         ; preds = %bb.at, %.split.i.i.i.us.i.i, %.preheader.split.split.us.i.i
  br label %bb.au, !dbg !64207

bb.au:                                            ; preds = %.thread18.i.i.i.us81.i.i, %bb.at, %.split.i.i.i.us.i.i
  %.sroa.0.0.i.i.i.i.us82.i.i = phi i64 [ 1, %.split.i.i.i.us.i.i ], [ 0, %.thread18.i.i.i.us81.i.i ], [ 1, %bb.at ], !dbg !64197
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.23.1.us76.i.i, !dbg !64198 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.1.us78.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !dbg !64199, !alias.scope !64035, !noalias !64039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.us79.i.i, i64 16, i1 false), !dbg !64200, !noalias !64039
  %i.ec = add i64 %.sroa.0.0.i.i.i.i.us82.i.i, %.sroa.23.1.us76.i.i, !dbg !64201 ; 2 uses
  %.sroa.13.1.sroa.gep.us83.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.us77.i.i, i64 16, !dbg !64202
  br i1 %i.dw, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.preheader.split.split.us.i.i, !dbg !64192

.preheader.split.split.i.i:                       ; preds = %.preheader.split.i.i, %bb.aw
  %.sroa.23.1.i.i = phi i64 [ %i.ei, %bb.aw ], [ %.sroa.23.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !64175 ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %bb.aw ], [ %.sroa.13.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !64175 ; 4 uses
  %.sroa.033.1.i.i = phi ptr [ %.sroa.13.1.i.i, %bb.aw ], [ %.sroa.033.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !64175
  %i.ed = icmp eq ptr %.sroa.13.1.i.i, %i.db, !dbg !64193 ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.ed, ptr %i.b, ptr %.sroa.13.1.i.i, !dbg !64194 ; 2 uses
  %.val.i.i.i = load i16, ptr %.sroa.01.0.i.i, align 8, !dbg !64195, !noalias !64039, !noundef !3509 ; 3 uses
  %i.ee = and i16 %.val.i.i.i, 32767, !dbg !64196
  %i.ef = icmp samesign ugt i16 %i.ee, 31744, !dbg !64196
  br i1 %i.ef, label %.thread18.i.i.i.i.i, label %bb.av, !dbg !64203

bb.av:                                            ; preds = %.preheader.split.split.i.i
  %i.eg = icmp slt i16 %.val.i.i.i, 0, !dbg !64204
  %.not30.i.i.i.i.i37 = icmp samesign ult i16 %.val2.i.pre.i.i, %.val.i.i.i
  %or.cond.i.i38 = select i1 %i.eg, i1 %.not30.i.i.i.i.i37, i1 false, !dbg !64204
  br i1 %or.cond.i.i38, label %bb.aw, label %.thread18.i.i.i.i.i, !dbg !64204

.thread18.i.i.i.i.i:                              ; preds = %bb.av, %.preheader.split.split.i.i
  br label %bb.aw, !dbg !64207

bb.aw:                                            ; preds = %.thread18.i.i.i.i.i, %bb.av
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 1, %bb.av ], [ 0, %.thread18.i.i.i.i.i ], !dbg !64197
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.23.1.i.i, !dbg !64198 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !dbg !64199, !alias.scope !64035, !noalias !64039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !dbg !64200, !noalias !64039
  %i.ei = add i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.23.1.i.i, !dbg !64201 ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16, !dbg !64202
  br i1 %i.ed, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.preheader.split.split.i.i, !dbg !64192

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.i.i39, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i
  %.sroa.13.051.i.i = phi ptr [ %.sroa.13.0.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i ], [ %.sroa.13.048.i.i, %.lr.ph.i.i39 ] ; 3 uses
  %.sroa.033.050.i.i = phi ptr [ %i.ep, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i ], [ %i.cx, %.lr.ph.i.i39 ] ; 3 uses
  %.sroa.23.049.i.i = phi i64 [ %i.ev, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i ], [ 0, %.lr.ph.i.i39 ] ; 2 uses
  %.val.i11.i.i = load i16, ptr %.sroa.13.051.i.i, align 8, !dbg !64177, !alias.scope !64035, !noalias !64037, !noundef !3509 ; 4 uses
  %i.ej = and i16 %.val.i11.i.i, 32767, !dbg !64178 ; 2 uses
  %i.ek = icmp samesign ugt i16 %i.ej, 31744, !dbg !64178
  br i1 %i.ek, label %.thread18.i.i.i15.i.i, label %bb.ax, !dbg !64208

bb.ax:                                            ; preds = %.lr.ph.split.split.i.i
  %i.el = icmp sgt i16 %.val.i11.i.i, -1, !dbg !64209
  br i1 %i.el, label %bb.ay, label %bb.az, !dbg !64209

bb.ay:                                            ; preds = %bb.ax
  %.not31.i.i.i19.i.i = icmp samesign ult i16 %.val.i11.i.i, %.val2.i.pre.i.i
  %or.cond.i.i20.i.i = select i1 %.not.i4.i.i.i13.i.i, i1 %.not31.i.i.i19.i.i, i1 false, !dbg !64209
  br i1 %or.cond.i.i20.i.i, label %bb.bb, label %.thread18.i.i.i15.i.i, !dbg !64209

bb.az:                                            ; preds = %bb.ax
  br i1 %.not.i4.i.i.i13.i.i, label %.split.i.i.i17.i.i, label %bb.ba, !dbg !64209

.split.i.i.i17.i.i:                               ; preds = %bb.az
  %i.em = or i16 %i.ej, %.val2.i.pre.i.i, !dbg !64210
  %.not.i.i.i18.i.i = icmp eq i16 %i.em, 0, !dbg !64210
  br i1 %.not.i.i.i18.i.i, label %.thread18.i.i.i15.i.i, label %bb.bb, !dbg !64211

bb.ba:                                            ; preds = %bb.az
  %.not30.i.i.i14.i.i = icmp samesign ult i16 %.val2.i.pre.i.i, %.val.i11.i.i, !dbg !64212
  br i1 %.not30.i.i.i14.i.i, label %bb.bb, label %.thread18.i.i.i15.i.i, !dbg !64211

.thread18.i.i.i15.i.i:                            ; preds = %bb.ba, %.split.i.i.i17.i.i, %bb.ay, %.lr.ph.split.split.i.i
  br label %bb.bb, !dbg !64213

bb.bb:                                            ; preds = %.thread18.i.i.i15.i.i, %bb.ba, %.split.i.i.i17.i.i, %bb.ay
  %.sroa.0.0.i.i.i.i16.i.i = phi i64 [ 1, %bb.ba ], [ 0, %.thread18.i.i.i15.i.i ], [ 1, %bb.ay ], [ 1, %.split.i.i.i17.i.i ], !dbg !64179
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.23.049.i.i, !dbg !64180 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.050.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !dbg !64181, !alias.scope !64035, !noalias !64037
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.051.i.i, i64 16, i1 false), !dbg !64182, !alias.scope !64035, !noalias !64037
  %i.eo = add i64 %.sroa.0.0.i.i.i.i16.i.i, %.sroa.23.049.i.i, !dbg !64183 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i, i64 32, !dbg !64184 ; 4 uses
  %.val.i22.i.i = load i16, ptr %i.ep, align 8, !dbg !64185, !alias.scope !64035, !noalias !64038, !noundef !3509 ; 4 uses
  %i.eq = and i16 %.val.i22.i.i, 32767, !dbg !64186 ; 2 uses
  %i.er = icmp samesign ugt i16 %i.eq, 31744, !dbg !64186
  br i1 %i.er, label %.thread18.i.i.i26.i.i, label %bb.bc, !dbg !64187

bb.bc:                                            ; preds = %bb.bb
  %i.es = icmp sgt i16 %.val.i22.i.i, -1, !dbg !64214
  br i1 %i.es, label %bb.bd, label %bb.be, !dbg !64214

bb.bd:                                            ; preds = %bb.bc
  %.not31.i.i.i30.i.i = icmp samesign ult i16 %.val.i22.i.i, %.val2.i.pre.i.i
  %or.cond.i.i31.i.i = select i1 %.not.i4.i.i.i13.i.i, i1 %.not31.i.i.i30.i.i, i1 false, !dbg !64214
  br i1 %or.cond.i.i31.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i, label %.thread18.i.i.i26.i.i, !dbg !64214

bb.be:                                            ; preds = %bb.bc
  br i1 %.not.i4.i.i.i13.i.i, label %.split.i.i.i28.i.i, label %bb.bf, !dbg !64214

.split.i.i.i28.i.i:                               ; preds = %bb.be
  %i.et = or i16 %i.eq, %.val2.i.pre.i.i, !dbg !64215
  %.not.i.i.i29.i.i = icmp eq i16 %i.et, 0, !dbg !64215
  br i1 %.not.i.i.i29.i.i, label %.thread18.i.i.i26.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i, !dbg !64216

bb.bf:                                            ; preds = %bb.be
  %.not30.i.i.i25.i.i = icmp samesign ult i16 %.val2.i.pre.i.i, %.val.i22.i.i, !dbg !64217
  br i1 %.not30.i.i.i25.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i, label %.thread18.i.i.i26.i.i, !dbg !64216

.thread18.i.i.i26.i.i:                            ; preds = %bb.bf, %.split.i.i.i28.i.i, %bb.bd, %bb.bb
  br label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i, !dbg !64218

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i: ; preds = %.thread18.i.i.i26.i.i, %bb.bf, %.split.i.i.i28.i.i, %bb.bd
  %.sroa.0.0.i.i.i.i27.i.i = phi i64 [ 1, %bb.bf ], [ 0, %.thread18.i.i.i26.i.i ], [ 1, %bb.bd ], [ 1, %.split.i.i.i28.i.i ], !dbg !64219
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.eo, !dbg !64188 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.051.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 16, i1 false), !dbg !64189, !alias.scope !64035, !noalias !64038
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !dbg !64190, !alias.scope !64035, !noalias !64038
  %i.ev = add i64 %.sroa.0.0.i.i.i.i27.i.i, %i.eo, !dbg !64191 ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i, i64 48, !dbg !64175 ; 3 uses
  %i.ew = icmp ult ptr %.sroa.13.0.i.i, %i.dc, !dbg !64176
  br i1 %i.ew, label %.lr.ph.split.split.i.i, label %.preheader.i.i, !dbg !64176

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.aw, %bb.au, %.preheader.split.us.i.i
  %.us-phi74.i.i = phi i64 [ %i.dv, %.preheader.split.us.i.i ], [ %i.ec, %bb.au ], [ %i.ei, %bb.aw ], !dbg !64220 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !64220, !noalias !64034
  %.not7.i = icmp ult i64 %.us-phi74.i.i, %.sroa.15.0111227, !dbg !64221
  br i1 %.not7.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, label %bb.bg, !dbg !64221

bb.bg:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  tail call void @llvm.trap(), !dbg !64222
  unreachable, !dbg !64222

_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE14swap_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112226, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0111227, i64 noundef 0, i64 noundef %.us-phi74.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !dbg !64223
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0112226, i64 %.us-phi74.i.i, !dbg !64224 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16, !dbg !64225
  %i.ez = xor i64 %.us-phi74.i.i, -1, !dbg !64226
  %i.fa = add i64 %.sroa.15.0111227, %i.ez, !dbg !64226
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB17_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB18_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112226, i64 noundef %.us-phi74.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.0110228, i32 noundef %i.bx, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !64227
  br label %.backedge, !dbg !64228

bb.bh:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 %i.cv, !dbg !64229
  %.sroa.023.0.val = load i16, ptr %.sroa.023.0110228, align 8, !dbg !64230, !noundef !3509 ; 4 uses
  %.val = load i16, ptr %i.fb, align 8, !dbg !64230, !noundef !3509 ; 5 uses
  %i.fc = and i16 %.sroa.023.0.val, 32767, !dbg !64231 ; 2 uses
  %i.fd = icmp samesign ugt i16 %i.fc, 31744, !dbg !64231
  br i1 %i.fd, label %bb.bn, label %bb.bi, !dbg !64232

bb.bi:                                            ; preds = %bb.bh
  %i.fe = and i16 %.val, 32767, !dbg !64233
  %i.ff = icmp samesign ugt i16 %i.fe, 31744, !dbg !64233
  br i1 %i.ff, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.bj, !dbg !64234

bb.bj:                                            ; preds = %bb.bi
  %.not.i4.i.i = icmp sgt i16 %.val, -1, !dbg !64235 ; 2 uses
  %i.fg = icmp sgt i16 %.sroa.023.0.val, -1, !dbg !64236
  br i1 %i.fg, label %bb.bk, label %bb.bl, !dbg !64236

bb.bk:                                            ; preds = %bb.bj
  %.not31.i.i = icmp samesign ult i16 %.sroa.023.0.val, %.val
  %or.cond.i = select i1 %.not.i4.i.i, i1 %.not31.i.i, i1 false, !dbg !64236
  br i1 %or.cond.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.bn, !dbg !64236

bb.bl:                                            ; preds = %bb.bj
  br i1 %.not.i4.i.i, label %.split.i.i, label %bb.bm, !dbg !64236

.split.i.i:                                       ; preds = %bb.bl
  %i.fh = or i16 %.val, %i.fc, !dbg !64237
  %.not.i.i = icmp eq i16 %i.fh, 0, !dbg !64237
  br i1 %.not.i.i, label %bb.bn, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !64238

bb.bm:                                            ; preds = %bb.bl
  %.not30.i.i = icmp samesign ult i16 %.val, %.sroa.023.0.val, !dbg !64239
  br i1 %.not30.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.bn, !dbg !64238

bb.bn:                                            ; preds = %bb.bh, %bb.bk, %.split.i.i, %bb.bm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64040), !dbg !64240
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE14swap_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112226, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0111227, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32), !dbg !64241
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 16, !dbg !64242 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64041), !dbg !64243
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64042), !dbg !64243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !64244, !noalias !64043
  %i.fj = load i16, ptr %i.fi, align 8, !dbg !64245, !alias.scope !64044, !noalias !64042, !noundef !3509
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 24, !dbg !64245
  %i.fl = load double, ptr %i.fk, align 8, !dbg !64245, !alias.scope !64044, !noalias !64042, !noundef !3509
  store i16 %i.fj, ptr %i.a, align 8, !dbg !64246, !noalias !64043
  store double %i.fl, ptr %i.e, align 8, !dbg !64246, !noalias !64043
  %i.fm = getelementptr [16 x i8], ptr %.sroa.0.0112226, i64 %.sroa.15.0111227, !dbg !64247 ; 4 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 -16, !dbg !64247 ; 3 uses
  %.sroa.13.046.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 32, !dbg !64248 ; 6 uses
  %i.fo = icmp ult ptr %.sroa.13.046.i.i, %i.fn, !dbg !64249
  %.val2.i.pre.i.i48 = load i16, ptr %.sroa.0.0112226, align 8, !alias.scope !64045, !noalias !64041 ; 9 uses
  %i.fp = and i16 %.val2.i.pre.i.i48, 32767       ; 5 uses
  br i1 %i.fo, label %.lr.ph.i.i69, label %.preheader.i.i49, !dbg !64249

.lr.ph.i.i69:                                     ; preds = %bb.bn
  %i.fq = icmp samesign ugt i16 %i.fp, 31744
  br i1 %i.fq, label %.thread18.i.i.i.i15.us.i.i.preheader, label %.lr.ph.split.i.i

.thread18.i.i.i.i15.us.i.i.preheader:             ; preds = %.lr.ph.i.i69
  %5 = shl i64 %.sroa.15.0111227, 4, !dbg !64249
  %6 = add i64 %5, -64, !dbg !64249
  %7 = lshr i64 %6, 5, !dbg !64249                ; 2 uses
  %8 = add nuw nsw i64 %7, 1, !dbg !64249         ; 2 uses
  %9 = icmp eq i64 %7, 0, !dbg !64249
  br i1 %9, label %.thread18.i.i.i.i.us.i.i.preheader.a, label %.thread18.i.i.i.i15.us.i.i.preheader.new, !dbg !64249

.thread18.i.i.i.i15.us.i.i.preheader.new:         ; preds = %.thread18.i.i.i.i15.us.i.i.preheader
  %unroll_iter = and i64 %8, 1152921504606846974, !dbg !64249
  br label %.thread18.i.i.i.i15.us.i.i, !dbg !64249

.thread18.i.i.i.i15.us.i.i:                       ; preds = %.thread18.i.i.i.i15.us.i.i, %.thread18.i.i.i.i15.us.i.i.preheader.new
  %.sroa.13.049.us.i.i = phi ptr [ %.sroa.13.046.i.i, %.thread18.i.i.i.i15.us.i.i.preheader.new ], [ %.sroa.13.0.us.i.i73.a, %.thread18.i.i.i.i15.us.i.i ] ; 2 uses
  %.sroa.031.048.us.i.i = phi ptr [ %i.fi, %.thread18.i.i.i.i15.us.i.i.preheader.new ], [ %i.fs, %.thread18.i.i.i.i15.us.i.i ] ; 5 uses
  %.sroa.23.047.us.i.i = phi i64 [ 0, %.thread18.i.i.i.i15.us.i.i.preheader.new ], [ %i.fu, %.thread18.i.i.i.i15.us.i.i ] ; 3 uses
  %.sroa.23.047.us.i.i.a = phi i64 [ 0, %.thread18.i.i.i.i15.us.i.i.preheader.new ], [ %niter.next.1, %.thread18.i.i.i.i15.us.i.i ]
  %10 = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.047.us.i.i, !dbg !64250 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.048.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !dbg !64251, !alias.scope !64044, !noalias !64046
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.us.i.i, i64 16, i1 false), !dbg !64252, !alias.scope !64044, !noalias !64046
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us.i.i, i64 32, !dbg !64253 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 16, !dbg !64254 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !dbg !64255, !alias.scope !64044, !noalias !64047
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false), !dbg !64256, !alias.scope !64044, !noalias !64047
  %.sroa.13.0.us.i.i73 = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us.i.i, i64 48, !dbg !64248 ; 2 uses
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.047.us.i.i, !dbg !64250 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.fr, i64 32, !dbg !64250 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !dbg !64251, !alias.scope !64044, !noalias !64046
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0.us.i.i73, i64 16, i1 false), !dbg !64252, !alias.scope !64044, !noalias !64046
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us.i.i, i64 64, !dbg !64253 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 48, !dbg !64254 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0.us.i.i73, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !dbg !64255, !alias.scope !64044, !noalias !64047
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i64 16, i1 false), !dbg !64256, !alias.scope !64044, !noalias !64047
  %i.fu = add nuw nsw i64 %.sroa.23.047.us.i.i, 4, !dbg !64257 ; 3 uses
  %.sroa.13.0.us.i.i73.a = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us.i.i, i64 80, !dbg !64248 ; 3 uses
  %niter.next.1 = add i64 %.sroa.23.047.us.i.i.a, 2, !dbg !64249 ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !64249
  br i1 %niter.ncmp.1.not, label %.thread18.i.i.i.i.us.i.i.preheader.loopexit.unr-lcssa, label %.thread18.i.i.i.i15.us.i.i, !dbg !64249

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i69
  %i.fv = icmp sgt i16 %.val2.i.pre.i.i48, -1
  br i1 %i.fv, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i70

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %.lr.ph.split.split.us.i.i
  %.sroa.13.049.us54.i.i = phi ptr [ %.sroa.13.0.us68.i.i, %.lr.ph.split.split.us.i.i ], [ %.sroa.13.046.i.i, %.lr.ph.split.i.i ] ; 3 uses
  %.sroa.031.048.us55.i.i = phi ptr [ %i.gb, %.lr.ph.split.split.us.i.i ], [ %i.fi, %.lr.ph.split.i.i ] ; 3 uses
  %.sroa.23.047.us56.i.i = phi i64 [ %i.gg, %.lr.ph.split.split.us.i.i ], [ 0, %.lr.ph.split.i.i ] ; 2 uses
  %.val.i11.us57.i.i = load i16, ptr %.sroa.13.049.us54.i.i, align 8, !dbg !64258, !alias.scope !64044, !noalias !64046, !noundef !3509 ; 3 uses
  %i.fw = and i16 %.val.i11.us57.i.i, 32767, !dbg !64259
  %i.fx = icmp samesign ult i16 %i.fw, 31745, !dbg !64259
  %.not.i4.i.i.i.i13.us.i.i = icmp slt i16 %.val.i11.us57.i.i, 0, !dbg !64260
  %.not31.i.i.i.i18.us.i.i = icmp samesign uge i16 %.val2.i.pre.i.i48, %.val.i11.us57.i.i, !dbg !64260
  %or.cond.i.i.i19.us.not.i.i = select i1 %.not.i4.i.i.i.i13.us.i.i, i1 true, i1 %.not31.i.i.i.i18.us.i.i, !dbg !64260
  %narrow.i.i = select i1 %i.fx, i1 %or.cond.i.i.i19.us.not.i.i, i1 false, !dbg !64260
  %i.fy = zext i1 %narrow.i.i to i64, !dbg !64260
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.047.us56.i.i, !dbg !64250 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.048.us55.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i64 16, i1 false), !dbg !64251, !alias.scope !64044, !noalias !64046
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.us54.i.i, i64 16, i1 false), !dbg !64252, !alias.scope !64044, !noalias !64046
  %i.ga = add i64 %.sroa.23.047.us56.i.i, %i.fy, !dbg !64261 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us55.i.i, i64 32, !dbg !64253 ; 4 uses
  %.val.i21.us59.i.i = load i16, ptr %i.gb, align 8, !dbg !64262, !alias.scope !64044, !noalias !64047, !noundef !3509 ; 3 uses
  %i.gc = and i16 %.val.i21.us59.i.i, 32767, !dbg !64263
  %i.gd = icmp samesign ult i16 %i.gc, 31745, !dbg !64263
  %.not.i4.i.i.i.i23.us60.i.i = icmp slt i16 %.val.i21.us59.i.i, 0, !dbg !64264
  %.not31.i.i.i.i28.us64.i.i = icmp samesign uge i16 %.val2.i.pre.i.i48, %.val.i21.us59.i.i, !dbg !64264
  %or.cond.i.i.i29.us65.not.i.i = select i1 %.not.i4.i.i.i.i23.us60.i.i, i1 true, i1 %.not31.i.i.i.i28.us64.i.i, !dbg !64264
  %narrow121.i.i = select i1 %i.gd, i1 %or.cond.i.i.i29.us65.not.i.i, i1 false, !dbg !64264
  %i.ge = zext i1 %narrow121.i.i to i64, !dbg !64264
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.ga, !dbg !64254 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.us54.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i64 16, i1 false), !dbg !64255, !alias.scope !64044, !noalias !64047
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !dbg !64256, !alias.scope !64044, !noalias !64047
  %i.gg = add i64 %i.ga, %i.ge, !dbg !64257       ; 2 uses
  %.sroa.13.0.us68.i.i = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us55.i.i, i64 48, !dbg !64248 ; 3 uses
  %i.gh = icmp ult ptr %.sroa.13.0.us68.i.i, %i.fn, !dbg !64249
  br i1 %i.gh, label %.lr.ph.split.split.us.i.i, label %.preheader.split.split.us.i.i60.preheader, !dbg !64249

.preheader.i.i49:                                 ; preds = %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i, %bb.bn
  %.sroa.23.0.lcssa.i.i50 = phi i64 [ 0, %bb.bn ], [ %i.hm, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], !dbg !64248 ; 3 uses
  %.sroa.031.0.lcssa.i.i = phi ptr [ %i.fi, %bb.bn ], [ %i.hg, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], !dbg !64248 ; 3 uses
  %.sroa.13.0.lcssa.i.i51 = phi ptr [ %.sroa.13.046.i.i, %bb.bn ], [ %.sroa.13.0.i.i72, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], !dbg !64248 ; 3 uses
  %i.gi = icmp samesign ugt i16 %i.fp, 31744
  br i1 %i.gi, label %.thread18.i.i.i.i.us.i.i.preheader, label %.preheader.split.i.i52

.thread18.i.i.i.i.us.i.i.preheader.loopexit.unr-lcssa: ; preds = %.thread18.i.i.i.i15.us.i.i
  %14 = and i64 %.sroa.15.0111227, 2, !dbg !64249
  %lcmp.mod.not.not = icmp eq i64 %14, 0, !dbg !64249
  br i1 %lcmp.mod.not.not, label %.thread18.i.i.i.i.us.i.i.preheader.a, label %.thread18.i.i.i.i.us.i.i.preheader, !dbg !64249

.thread18.i.i.i.i.us.i.i.preheader.a:             ; preds = %.thread18.i.i.i.i.us.i.i.preheader.loopexit.unr-lcssa, %.thread18.i.i.i.i15.us.i.i.preheader
  %.sroa.13.049.us.i.i.epil.init = phi ptr [ %.sroa.13.046.i.i, %.thread18.i.i.i.i15.us.i.i.preheader ], [ %.sroa.13.0.us.i.i73.a, %.thread18.i.i.i.i.us.i.i.preheader.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.031.048.us.i.i.epil.init = phi ptr [ %i.fi, %.thread18.i.i.i.i15.us.i.i.preheader ], [ %i.fs, %.thread18.i.i.i.i.us.i.i.preheader.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.23.1.us.i.i65.ph.a = phi i64 [ 0, %.thread18.i.i.i.i15.us.i.i.preheader ], [ %i.fu, %.thread18.i.i.i.i.us.i.i.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod261 = trunc i64 %8 to i1, !dbg !64249
  tail call void @llvm.assume(i1 %lcmp.mod261), !dbg !64249
  %15 = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.1.us.i.i65.ph.a, !dbg !64250 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.048.us.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !dbg !64251, !alias.scope !64044, !noalias !64046
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.us.i.i.epil.init, i64 16, i1 false), !dbg !64252, !alias.scope !64044, !noalias !64046
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us.i.i.epil.init, i64 32, !dbg !64253 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 16, !dbg !64254 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.us.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !dbg !64255, !alias.scope !64044, !noalias !64047
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !dbg !64256, !alias.scope !64044, !noalias !64047
  %18 = add nuw nsw i64 %.sroa.23.1.us.i.i65.ph.a, 2, !dbg !64257
  %.sroa.13.0.us.i.i73.epil = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us.i.i.epil.init, i64 48, !dbg !64248
  br label %.thread18.i.i.i.i.us.i.i.preheader, !dbg !64265

.thread18.i.i.i.i.us.i.i.preheader:               ; preds = %.thread18.i.i.i.i.us.i.i.preheader.a, %.thread18.i.i.i.i.us.i.i.preheader.loopexit.unr-lcssa, %.preheader.i.i49
  %.sroa.23.1.us.i.i65.ph = phi i64 [ %.sroa.23.0.lcssa.i.i50, %.preheader.i.i49 ], [ %i.fu, %.thread18.i.i.i.i.us.i.i.preheader.loopexit.unr-lcssa ], [ %18, %.thread18.i.i.i.i.us.i.i.preheader.a ]
  %.sroa.13.1.us.i.i66.ph = phi ptr [ %.sroa.13.0.lcssa.i.i51, %.preheader.i.i49 ], [ %.sroa.13.0.us.i.i73.a, %.thread18.i.i.i.i.us.i.i.preheader.loopexit.unr-lcssa ], [ %.sroa.13.0.us.i.i73.epil, %.thread18.i.i.i.i.us.i.i.preheader.a ]
  %.sroa.031.1.us.i.i.ph = phi ptr [ %.sroa.031.0.lcssa.i.i, %.preheader.i.i49 ], [ %i.fs, %.thread18.i.i.i.i.us.i.i.preheader.loopexit.unr-lcssa ], [ %16, %.thread18.i.i.i.i.us.i.i.preheader.a ]
  br label %.thread18.i.i.i.i.us.i.i, !dbg !64265

.thread18.i.i.i.i.us.i.i:                         ; preds = %.thread18.i.i.i.i.us.i.i.preheader, %.thread18.i.i.i.i.us.i.i
  %.sroa.23.1.us.i.i65 = phi i64 [ %i.gl, %.thread18.i.i.i.i.us.i.i ], [ %.sroa.23.1.us.i.i65.ph, %.thread18.i.i.i.i.us.i.i.preheader ], !dbg !64248 ; 2 uses
  %.sroa.13.1.us.i.i66 = phi ptr [ %.sroa.13.1.sroa.gep.us.i.i68, %.thread18.i.i.i.i.us.i.i ], [ %.sroa.13.1.us.i.i66.ph, %.thread18.i.i.i.i.us.i.i.preheader ], !dbg !64248 ; 4 uses
  %.sroa.031.1.us.i.i = phi ptr [ %.sroa.13.1.us.i.i66, %.thread18.i.i.i.i.us.i.i ], [ %.sroa.031.1.us.i.i.ph, %.thread18.i.i.i.i.us.i.i.preheader ], !dbg !64248
  %i.gj = icmp eq ptr %.sroa.13.1.us.i.i66, %i.fm, !dbg !64266 ; 2 uses
  %.sroa.01.0.us.i.i67 = select i1 %i.gj, ptr %i.a, ptr %.sroa.13.1.us.i.i66, !dbg !64267
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.1.us.i.i65, !dbg !64268 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.1.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !dbg !64269, !alias.scope !64044, !noalias !64048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.us.i.i67, i64 16, i1 false), !dbg !64270, !noalias !64048
  %i.gl = add i64 %.sroa.23.1.us.i.i65, 1, !dbg !64271 ; 2 uses
  %.sroa.13.1.sroa.gep.us.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.us.i.i66, i64 16, !dbg !64272
  br i1 %i.gj, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.thread18.i.i.i.i.us.i.i, !dbg !64265

.preheader.split.i.i52:                           ; preds = %.preheader.i.i49
  %i.gm = icmp sgt i16 %.val2.i.pre.i.i48, -1
  br i1 %i.gm, label %.preheader.split.split.us.i.i60.preheader, label %.preheader.split.split.i.i53

.preheader.split.split.us.i.i60.preheader:        ; preds = %.lr.ph.split.split.us.i.i, %.preheader.split.i.i52
  %.sroa.23.1.us76.i.i61.ph = phi i64 [ %.sroa.23.0.lcssa.i.i50, %.preheader.split.i.i52 ], [ %i.gg, %.lr.ph.split.split.us.i.i ]
  %.sroa.13.1.us77.i.i62.ph = phi ptr [ %.sroa.13.0.lcssa.i.i51, %.preheader.split.i.i52 ], [ %.sroa.13.0.us68.i.i, %.lr.ph.split.split.us.i.i ]
  %.sroa.031.1.us78.i.i.ph = phi ptr [ %.sroa.031.0.lcssa.i.i, %.preheader.split.i.i52 ], [ %i.gb, %.lr.ph.split.split.us.i.i ]
  br label %.preheader.split.split.us.i.i60, !dbg !64265

.preheader.split.split.us.i.i60:                  ; preds = %.preheader.split.split.us.i.i60.preheader, %.preheader.split.split.us.i.i60
  %.sroa.23.1.us76.i.i61 = phi i64 [ %i.gs, %.preheader.split.split.us.i.i60 ], [ %.sroa.23.1.us76.i.i61.ph, %.preheader.split.split.us.i.i60.preheader ], !dbg !64248 ; 2 uses
  %.sroa.13.1.us77.i.i62 = phi ptr [ %.sroa.13.1.sroa.gep.us82.i.i, %.preheader.split.split.us.i.i60 ], [ %.sroa.13.1.us77.i.i62.ph, %.preheader.split.split.us.i.i60.preheader ], !dbg !64248 ; 4 uses
  %.sroa.031.1.us78.i.i = phi ptr [ %.sroa.13.1.us77.i.i62, %.preheader.split.split.us.i.i60 ], [ %.sroa.031.1.us78.i.i.ph, %.preheader.split.split.us.i.i60.preheader ], !dbg !64248
  %i.gn = icmp eq ptr %.sroa.13.1.us77.i.i62, %i.fm, !dbg !64266 ; 2 uses
  %.sroa.01.0.us79.i.i63 = select i1 %i.gn, ptr %i.a, ptr %.sroa.13.1.us77.i.i62, !dbg !64267 ; 2 uses
  %.val.i.us80.i.i64 = load i16, ptr %.sroa.01.0.us79.i.i63, align 8, !dbg !64273, !noalias !64048, !noundef !3509 ; 3 uses
  %i.go = and i16 %.val.i.us80.i.i64, 32767, !dbg !64274
  %i.gp = icmp samesign ult i16 %i.go, 31745, !dbg !64274
  %.not.i4.i.i.i.i.us.i.i = icmp slt i16 %.val.i.us80.i.i64, 0, !dbg !64275
  %.not31.i.i.i.i.us.i.i = icmp samesign uge i16 %.val2.i.pre.i.i48, %.val.i.us80.i.i64, !dbg !64275
  %or.cond.i.i.i.us.not.i.i = select i1 %.not.i4.i.i.i.i.us.i.i, i1 true, i1 %.not31.i.i.i.i.us.i.i, !dbg !64275
  %narrow86.i.i = select i1 %i.gp, i1 %or.cond.i.i.i.us.not.i.i, i1 false, !dbg !64275
  %i.gq = zext i1 %narrow86.i.i to i64, !dbg !64275
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.1.us76.i.i61, !dbg !64268 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.1.us78.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !dbg !64269, !alias.scope !64044, !noalias !64048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.us79.i.i63, i64 16, i1 false), !dbg !64270, !noalias !64048
  %i.gs = add i64 %.sroa.23.1.us76.i.i61, %i.gq, !dbg !64271 ; 2 uses
  %.sroa.13.1.sroa.gep.us82.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.us77.i.i62, i64 16, !dbg !64272
  br i1 %i.gn, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.preheader.split.split.us.i.i60, !dbg !64265

.preheader.split.split.i.i53:                     ; preds = %.preheader.split.i.i52, %bb.bq
  %.sroa.23.1.i.i54 = phi i64 [ %i.gz, %bb.bq ], [ %.sroa.23.0.lcssa.i.i50, %.preheader.split.i.i52 ], !dbg !64248 ; 2 uses
  %.sroa.13.1.i.i55 = phi ptr [ %.sroa.13.1.sroa.gep.i.i58, %bb.bq ], [ %.sroa.13.0.lcssa.i.i51, %.preheader.split.i.i52 ], !dbg !64248 ; 4 uses
  %.sroa.031.1.i.i = phi ptr [ %.sroa.13.1.i.i55, %bb.bq ], [ %.sroa.031.0.lcssa.i.i, %.preheader.split.i.i52 ], !dbg !64248
  %i.gt = icmp eq ptr %.sroa.13.1.i.i55, %i.fm, !dbg !64266 ; 2 uses
  %.sroa.01.0.i.i56 = select i1 %i.gt, ptr %i.a, ptr %.sroa.13.1.i.i55, !dbg !64267 ; 2 uses
  %.val.i.i.i57 = load i16, ptr %.sroa.01.0.i.i56, align 8, !dbg !64273, !noalias !64048, !noundef !3509 ; 4 uses
  %i.gu = and i16 %.val.i.i.i57, 32767, !dbg !64274
  %i.gv = icmp samesign ugt i16 %i.gu, 31744, !dbg !64274
  br i1 %i.gv, label %bb.bq, label %bb.bo, !dbg !64275

bb.bo:                                            ; preds = %.preheader.split.split.i.i53
  %.not.i4.i.i.i.i.i.i = icmp sgt i16 %.val.i.i.i57, -1, !dbg !64276
  br i1 %.not.i4.i.i.i.i.i.i, label %.split.i.i.i.i.i.i, label %bb.bp, !dbg !64277

.split.i.i.i.i.i.i:                               ; preds = %bb.bo
  %i.gw = or i16 %.val.i.i.i57, %i.fp, !dbg !64278
  %.not.i.i.i.i.i.i = icmp eq i16 %i.gw, 0, !dbg !64278
  br i1 %.not.i.i.i.i.i.i, label %.thread18.i.i.i.i.i.i, label %bb.bq, !dbg !64279

bb.bp:                                            ; preds = %bb.bo
  %.not30.i.i.i.i.i.i = icmp samesign ult i16 %.val.i.i.i57, %.val2.i.pre.i.i48, !dbg !64280
  br i1 %.not30.i.i.i.i.i.i, label %bb.bq, label %.thread18.i.i.i.i.i.i, !dbg !64279

.thread18.i.i.i.i.i.i:                            ; preds = %bb.bp, %.split.i.i.i.i.i.i
  br label %bb.bq, !dbg !64281

bb.bq:                                            ; preds = %.thread18.i.i.i.i.i.i, %bb.bp, %.split.i.i.i.i.i.i, %.preheader.split.split.i.i53
  %i.gx = phi i64 [ 0, %bb.bp ], [ 1, %.thread18.i.i.i.i.i.i ], [ 0, %.preheader.split.split.i.i53 ], [ 0, %.split.i.i.i.i.i.i ], !dbg !64274
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.1.i.i54, !dbg !64268 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !dbg !64269, !alias.scope !64044, !noalias !64048
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i56, i64 16, i1 false), !dbg !64270, !noalias !64048
  %i.gz = add i64 %i.gx, %.sroa.23.1.i.i54, !dbg !64271 ; 2 uses
  %.sroa.13.1.sroa.gep.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i55, i64 16, !dbg !64272
  br i1 %i.gt, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.preheader.split.split.i.i53, !dbg !64265

.lr.ph.split.split.i.i70:                         ; preds = %.lr.ph.split.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i
  %.sroa.13.049.i.i = phi ptr [ %.sroa.13.0.i.i72, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], [ %.sroa.13.046.i.i, %.lr.ph.split.i.i ] ; 3 uses
  %.sroa.031.048.i.i = phi ptr [ %i.hg, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], [ %i.fi, %.lr.ph.split.i.i ] ; 3 uses
  %.sroa.23.047.i.i = phi i64 [ %i.hm, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], [ 0, %.lr.ph.split.i.i ] ; 2 uses
  %.val.i11.i.i71 = load i16, ptr %.sroa.13.049.i.i, align 8, !dbg !64258, !alias.scope !64044, !noalias !64046, !noundef !3509 ; 4 uses
  %i.ha = and i16 %.val.i11.i.i71, 32767, !dbg !64259
  %i.hb = icmp samesign ugt i16 %i.ha, 31744, !dbg !64259
  br i1 %i.hb, label %bb.bt, label %bb.br, !dbg !64260

bb.br:                                            ; preds = %.lr.ph.split.split.i.i70
  %.not.i4.i.i.i.i13.i.i = icmp sgt i16 %.val.i11.i.i71, -1, !dbg !64282
  br i1 %.not.i4.i.i.i.i13.i.i, label %.split.i.i.i.i16.i.i, label %bb.bs, !dbg !64283

.split.i.i.i.i16.i.i:                             ; preds = %bb.br
  %i.hc = or i16 %.val.i11.i.i71, %i.fp, !dbg !64284
  %.not.i.i.i.i17.i.i = icmp eq i16 %i.hc, 0, !dbg !64284
  br i1 %.not.i.i.i.i17.i.i, label %.thread18.i.i.i.i15.i.i, label %bb.bt, !dbg !64285

bb.bs:                                            ; preds = %bb.br
  %.not30.i.i.i.i14.i.i = icmp samesign ult i16 %.val.i11.i.i71, %.val2.i.pre.i.i48, !dbg !64286
  br i1 %.not30.i.i.i.i14.i.i, label %bb.bt, label %.thread18.i.i.i.i15.i.i, !dbg !64285

.thread18.i.i.i.i15.i.i:                          ; preds = %bb.bs, %.split.i.i.i.i16.i.i
  br label %bb.bt, !dbg !64287

bb.bt:                                            ; preds = %.thread18.i.i.i.i15.i.i, %bb.bs, %.split.i.i.i.i16.i.i, %.lr.ph.split.split.i.i70
  %i.hd = phi i64 [ 0, %bb.bs ], [ 1, %.thread18.i.i.i.i15.i.i ], [ 0, %.lr.ph.split.split.i.i70 ], [ 0, %.split.i.i.i.i16.i.i ], !dbg !64259
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.047.i.i, !dbg !64250 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.048.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false), !dbg !64251, !alias.scope !64044, !noalias !64046
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.i.i, i64 16, i1 false), !dbg !64252, !alias.scope !64044, !noalias !64046
  %i.hf = add i64 %i.hd, %.sroa.23.047.i.i, !dbg !64261 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.031.048.i.i, i64 32, !dbg !64253 ; 4 uses
  %.val.i21.i.i = load i16, ptr %i.hg, align 8, !dbg !64262, !alias.scope !64044, !noalias !64047, !noundef !3509 ; 4 uses
  %i.hh = and i16 %.val.i21.i.i, 32767, !dbg !64263
  %i.hi = icmp samesign ugt i16 %i.hh, 31744, !dbg !64263
  br i1 %i.hi, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i, label %bb.bu, !dbg !64264

bb.bu:                                            ; preds = %bb.bt
  %.not.i4.i.i.i.i23.i.i = icmp sgt i16 %.val.i21.i.i, -1, !dbg !64288
  br i1 %.not.i4.i.i.i.i23.i.i, label %.split.i.i.i.i26.i.i, label %bb.bv, !dbg !64289

.split.i.i.i.i26.i.i:                             ; preds = %bb.bu
  %i.hj = or i16 %.val.i21.i.i, %i.fp, !dbg !64290
  %.not.i.i.i.i27.i.i = icmp eq i16 %i.hj, 0, !dbg !64290
  br i1 %.not.i.i.i.i27.i.i, label %.thread18.i.i.i.i25.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i, !dbg !64291

bb.bv:                                            ; preds = %bb.bu
  %.not30.i.i.i.i24.i.i = icmp samesign ult i16 %.val.i21.i.i, %.val2.i.pre.i.i48, !dbg !64292
  br i1 %.not30.i.i.i.i24.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i, label %.thread18.i.i.i.i25.i.i, !dbg !64291

.thread18.i.i.i.i25.i.i:                          ; preds = %bb.bv, %.split.i.i.i.i26.i.i
  br label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i, !dbg !64293

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i: ; preds = %.thread18.i.i.i.i25.i.i, %bb.bv, %.split.i.i.i.i26.i.i, %bb.bt
  %i.hk = phi i64 [ 0, %bb.bv ], [ 1, %.thread18.i.i.i.i25.i.i ], [ 0, %bb.bt ], [ 0, %.split.i.i.i.i26.i.i ], !dbg !64263
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.hf, !dbg !64254 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i64 16, i1 false), !dbg !64255, !alias.scope !64044, !noalias !64047
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i64 16, i1 false), !dbg !64256, !alias.scope !64044, !noalias !64047
  %i.hm = add i64 %i.hk, %i.hf, !dbg !64257       ; 2 uses
  %.sroa.13.0.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.031.048.i.i, i64 48, !dbg !64248 ; 3 uses
  %i.hn = icmp ult ptr %.sroa.13.0.i.i72, %i.fn, !dbg !64249
  br i1 %i.hn, label %.lr.ph.split.split.i.i70, label %.preheader.i.i49, !dbg !64249

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.bq, %.preheader.split.split.us.i.i60, %.thread18.i.i.i.i.us.i.i
  %.us-phi75.i.i = phi i64 [ %i.gl, %.thread18.i.i.i.i.us.i.i ], [ %i.gs, %.preheader.split.split.us.i.i60 ], [ %i.gz, %bb.bq ], !dbg !64294 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !64294, !noalias !64043
  %.not7.i59 = icmp ult i64 %.us-phi75.i.i, %.sroa.15.0111227, !dbg !64295
  br i1 %.not7.i59, label %bb.bx, label %bb.bw, !dbg !64295

bb.bw:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  tail call void @llvm.trap(), !dbg !64296
  unreachable, !dbg !64296

bb.bx:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE14swap_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112226, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0111227, i64 noundef 0, i64 noundef %.us-phi75.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !dbg !64297
  %i.ho = add nuw nsw i64 %.us-phi75.i.i, 1, !dbg !64298 ; 2 uses
  %i.hp = sub nuw i64 %.sroa.15.0111227, %i.ho, !dbg !64299
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0112226, i64 %i.ho, !dbg !64300
  br label %.backedge, !dbg !64120

.backedge:                                        ; preds = %bb.bx, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.023.0.be = phi ptr [ %i.ex, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit ], [ null, %bb.bx ]
  %.sroa.15.0.be = phi i64 [ %i.fa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit ], [ %i.hp, %bb.bx ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ey, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit ], [ %i.hq, %bb.bx ] ; 3 uses
  %i.hr = icmp ult i64 %.sroa.15.0.be, 33, !dbg !64052
  br i1 %i.hr, label %._crit_edge, label %bb.b, !dbg !64052
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortTddENCINvMB8_SB17_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !64301 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [768 x i8], align 8               ; 20 uses
  %i.d = icmp samesign ult i64 %1, 33, !dbg !64859
  br i1 %i.d, label %._crit_edge, label %.lr.ph, !dbg !64859

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp eq i32 %3, 0, !dbg !64860
  br i1 %i.e, label %._crit_edge160, label %.lr.ph159, !dbg !64860

bb.b:                                             ; preds = %.backedge
  %i.f = icmp eq i32 %i.ef, 0, !dbg !64860
  br i1 %i.f, label %._crit_edge160, label %.lr.ph159, !dbg !64860

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64824), !dbg !64861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !64862, !noalias !64824
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64825), !dbg !64863
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64826), !dbg !64863
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 2, !dbg !64864
  br i1 %i.g, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalTddENCINvMB8_SB1f_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !64864

bb.c:                                             ; preds = %._crit_edge
  %i.h = lshr i64 %.sroa.15.0.lcssa, 1, !dbg !64865 ; 12 uses
  %i.i = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15, !dbg !64866
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !64866

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7, !dbg !64867
  br i1 %i.j, label %bb.f, label %bb.g, !dbg !64867

end_hunk_1
