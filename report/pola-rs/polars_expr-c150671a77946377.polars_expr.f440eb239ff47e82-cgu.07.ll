Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB17_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB18_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr:bb.a

bb.n:                                             ; preds = %bb.m, %.split.i.i.i.1.i.i, %bb.l, %bb.i
  %i.al = load double, ptr %i.ae, align 8, !dbg !61127, !alias.scope !61105, !noalias !61047, !noundef !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !dbg !61130, !alias.scope !61105, !noalias !61047
  %i.am = icmp eq i64 %.sroa.05.06.1.i.i, 1, !dbg !61132
  br i1 %i.am, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, label %.lr.ph.split.i.1.i.i, !dbg !61132

.lr.ph.split.i.1.i.i:                             ; preds = %bb.n
  %i.an = icmp sgt i16 %.val11.i.1.i.i, -1
  br i1 %i.an, label %.lr.ph.split.split.us.i.1.i.i, label %.lr.ph.split.split.i.1.i.i

.lr.ph.split.split.i.1.i.i:                       ; preds = %.lr.ph.split.i.1.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i
  %.sroa.0.08.i.1.i.i = phi ptr [ %i.ao, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i ], [ %i.ad, %.lr.ph.split.i.1.i.i ] ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.0.08.i.1.i.i, i64 -16, !dbg !61133 ; 4 uses
  %.val9.i.1.i.i = load i16, ptr %i.ao, align 8, !dbg !61135, !alias.scope !61105, !noalias !61047, !noundef !13 ; 4 uses
  %i.ap = and i16 %.val9.i.1.i.i, 32767, !dbg !61136
  %i.aq = icmp samesign ugt i16 %i.ap, 31744, !dbg !61136
  br i1 %i.aq, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i, label %bb.o, !dbg !61140

bb.o:                                             ; preds = %.lr.ph.split.split.i.1.i.i
  %.not.i4.i.i15.i.1.i.i = icmp sgt i16 %.val9.i.1.i.i, -1, !dbg !61147
  br i1 %.not.i4.i.i15.i.1.i.i, label %.split.i.i19.i.1.i.i, label %bb.p, !dbg !61148

bb.p:                                             ; preds = %bb.o
  %.not30.i.i16.i.1.i.i = icmp samesign ult i16 %.val9.i.1.i.i, %.val11.i.1.i.i, !dbg !61149
  br i1 %.not30.i.i16.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, !dbg !61151

.split.i.i19.i.1.i.i:                             ; preds = %bb.o
  %i.ar = or i16 %.val9.i.1.i.i, %i.af, !dbg !61152
  %.not.i.i20.i.1.i.i = icmp eq i16 %i.ar, 0, !dbg !61152
  br i1 %.not.i.i20.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i, !dbg !61151

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i: ; preds = %.split.i.i19.i.1.i.i, %bb.p, %.lr.ph.split.split.i.1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.i.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !dbg !61130, !alias.scope !61105, !noalias !61047
  %i.as = icmp eq ptr %i.ao, %i.z, !dbg !61132
  br i1 %i.as, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, label %.lr.ph.split.split.i.1.i.i, !dbg !61132

.lr.ph.split.split.us.i.1.i.i:                    ; preds = %.lr.ph.split.i.1.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i
  %.sroa.0.08.us16.i.1.i.i = phi ptr [ %i.at, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i ], [ %i.ad, %.lr.ph.split.i.1.i.i ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.08.us16.i.1.i.i, i64 -16, !dbg !61133 ; 4 uses
  %.val9.us17.i.1.i.i = load i16, ptr %i.at, align 8, !dbg !61135, !alias.scope !61105, !noalias !61047, !noundef !13 ; 3 uses
  %i.au = and i16 %.val9.us17.i.1.i.i, 32767, !dbg !61136
  %i.av = icmp samesign ugt i16 %i.au, 31744, !dbg !61136
  br i1 %i.av, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i, label %bb.q, !dbg !61140

bb.q:                                             ; preds = %.lr.ph.split.split.us.i.1.i.i
  %.not.i4.i.i15.us.i.1.i.i = icmp sgt i16 %.val9.us17.i.1.i.i, -1, !dbg !61147
  %.not31.i.i21.us.i.1.i.i = icmp samesign ult i16 %.val11.i.1.i.i, %.val9.us17.i.1.i.i
  %or.cond.i22.us.i.1.i.i = select i1 %.not.i4.i.i15.us.i.1.i.i, i1 %.not31.i.i21.us.i.1.i.i, i1 false, !dbg !61148
  br i1 %or.cond.i22.us.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, !dbg !61148

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i: ; preds = %bb.q, %.lr.ph.split.split.us.i.1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.us16.i.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !dbg !61130, !alias.scope !61105, !noalias !61047
  %i.aw = icmp eq ptr %i.at, %i.z, !dbg !61132
  br i1 %i.aw, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, label %.lr.ph.split.split.us.i.1.i.i, !dbg !61132

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i, %.split.i.i19.i.1.i.i, %bb.p, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i, %bb.q, %bb.n
  %.sroa.0.0.lcssa.i.1.i.i = phi ptr [ %i.ad, %bb.n ], [ %i.z, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.1.i.i ], [ %.sroa.0.08.us16.i.1.i.i, %bb.q ], [ %.sroa.0.08.i.1.i.i, %bb.p ], [ %i.z, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.1.i.i ], [ %.sroa.0.08.i.1.i.i, %.split.i.i19.i.1.i.i ], !dbg !61153 ; 2 uses
  store i16 %.val11.i.1.i.i, ptr %.sroa.0.0.lcssa.i.1.i.i, align 8, !dbg !61154, !alias.scope !61105, !noalias !61158
  %.sroa.521.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i.i, i64 8, !dbg !61154
  store double %i.al, ptr %.sroa.521.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !dbg !61154, !alias.scope !61105, !noalias !61158
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.1.i.i, !dbg !61163

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.1.i.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.1.i.i, %bb.m, %.split.i.i.i.1.i.i, %bb.l, %.lr.ph.1.i.i
  %i.ax = add nuw i64 %.sroa.05.06.1.i.i, 1, !dbg !61164 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %i.ax, %i.w, !dbg !61074
  br i1 %exitcond.1.not.i.i, label %.loopexit.1.i.i, label %.lr.ph.1.i.i, !dbg !61089

.loopexit.1.i.i:                                  ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.1.i.i, %.loopexit.i.i
  invoke fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1g_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1h_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.lcssa)
          to label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1f_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1g_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.r, !dbg !61170

bb.r:                                             ; preds = %.loopexit.1.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = shl nuw nsw i64 %.sroa.15.0.lcssa, 4, !dbg !61172
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.c, i64 %i.az, i1 false), !dbg !61172, !alias.scope !61069, !noalias !61176
  resume { ptr, i32 } %i.ay, !dbg !61181

.lr.ph.i.i:                                       ; preds = %bb.h, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i
  %.sroa.05.06.i.i = phi i64 [ %i.bw, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %.sroa.0.0.i.i, %bb.h ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.05.06.i.i, !dbg !61094
  %.idx.i.i = shl nuw nsw i64 %.sroa.05.06.i.i, 4, !dbg !61097
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i, !dbg !61097 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !dbg !61099, !alias.scope !61069
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16, !dbg !61101 ; 5 uses
  %.val11.i.i.i = load i16, ptr %i.bb, align 8, !dbg !61104, !alias.scope !61105, !noalias !61047, !noundef !13 ; 8 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 8, !dbg !61104
  %.val13.i.i.i = load i16, ptr %i.bc, align 8, !dbg !61104, !alias.scope !61105, !noalias !61047, !noundef !13 ; 5 uses
  %i.be = and i16 %.val11.i.i.i, 32767, !dbg !61106 ; 3 uses
  %i.bf = icmp samesign ugt i16 %i.be, 31744, !dbg !61106
  br i1 %i.bf, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.s, !dbg !61114

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.bg = and i16 %.val13.i.i.i, 32767, !dbg !61119
  %i.bh = icmp samesign ugt i16 %i.bg, 31744, !dbg !61119
  br i1 %i.bh, label %bb.x, label %bb.t, !dbg !61120

bb.t:                                             ; preds = %bb.s
  %.not.i4.i.i.i.i.i = icmp sgt i16 %.val13.i.i.i, -1, !dbg !61121 ; 2 uses
  %i.bi = icmp sgt i16 %.val11.i.i.i, -1, !dbg !61122
  br i1 %i.bi, label %bb.u, label %bb.v, !dbg !61122

bb.u:                                             ; preds = %bb.t
  %.not31.i.i.i.i.i = icmp samesign ult i16 %.val11.i.i.i, %.val13.i.i.i
  %or.cond.i.i.i.i = select i1 %.not.i4.i.i.i.i.i, i1 %.not31.i.i.i.i.i, i1 false, !dbg !61122
  br i1 %or.cond.i.i.i.i, label %bb.x, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !61122

bb.v:                                             ; preds = %bb.t
  br i1 %.not.i4.i.i.i.i.i, label %.split.i.i.i.i.i, label %bb.w, !dbg !61122

.split.i.i.i.i.i:                                 ; preds = %bb.v
  %i.bj = or i16 %.val13.i.i.i, %i.be, !dbg !61126
  %.not.i.i.i.i.i = icmp eq i16 %i.bj, 0, !dbg !61126
  br i1 %.not.i.i.i.i.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.x, !dbg !61125

bb.w:                                             ; preds = %bb.v
  %.not30.i.i.i.i.i = icmp samesign ult i16 %.val13.i.i.i, %.val11.i.i.i, !dbg !61123
  br i1 %.not30.i.i.i.i.i, label %bb.x, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !61125

bb.x:                                             ; preds = %bb.w, %.split.i.i.i.i.i, %bb.u, %bb.s
  %i.bk = load double, ptr %i.bd, align 8, !dbg !61127, !alias.scope !61105, !noalias !61047, !noundef !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !dbg !61130, !alias.scope !61105, !noalias !61047
  %i.bl = icmp eq i64 %.sroa.05.06.i.i, 1, !dbg !61132
  br i1 %i.bl, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, label %.lr.ph.split.i.i.i, !dbg !61132

.lr.ph.split.i.i.i:                               ; preds = %bb.x
  %i.bm = icmp sgt i16 %.val11.i.i.i, -1
  br i1 %i.bm, label %.lr.ph.split.split.us.i.i.i, label %.lr.ph.split.split.i.i.i

.lr.ph.split.split.us.i.i.i:                      ; preds = %.lr.ph.split.i.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i
  %.sroa.0.08.us16.i.i.i = phi ptr [ %i.bn, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i ], [ %i.bc, %.lr.ph.split.i.i.i ] ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.08.us16.i.i.i, i64 -16, !dbg !61133 ; 4 uses
  %.val9.us17.i.i.i = load i16, ptr %i.bn, align 8, !dbg !61135, !alias.scope !61105, !noalias !61047, !noundef !13 ; 3 uses
  %i.bo = and i16 %.val9.us17.i.i.i, 32767, !dbg !61136
  %i.bp = icmp samesign ugt i16 %i.bo, 31744, !dbg !61136
  br i1 %i.bp, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i, label %bb.y, !dbg !61140

bb.y:                                             ; preds = %.lr.ph.split.split.us.i.i.i
  %.not.i4.i.i15.us.i.i.i = icmp sgt i16 %.val9.us17.i.i.i, -1, !dbg !61147
  %.not31.i.i21.us.i.i.i = icmp samesign ult i16 %.val11.i.i.i, %.val9.us17.i.i.i
  %or.cond.i22.us.i.i.i = select i1 %.not.i4.i.i15.us.i.i.i, i1 %.not31.i.i21.us.i.i.i, i1 false, !dbg !61148
  br i1 %or.cond.i22.us.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, !dbg !61148

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i: ; preds = %bb.y, %.lr.ph.split.split.us.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.us16.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !dbg !61130, !alias.scope !61105, !noalias !61047
  %i.bq = icmp eq ptr %i.bn, %i.c, !dbg !61132
  br i1 %i.bq, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, label %.lr.ph.split.split.us.i.i.i, !dbg !61132

.lr.ph.split.split.i.i.i:                         ; preds = %.lr.ph.split.i.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.br, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i ], [ %i.bc, %.lr.ph.split.i.i.i ] ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i, i64 -16, !dbg !61133 ; 4 uses
  %.val9.i.i.i = load i16, ptr %i.br, align 8, !dbg !61135, !alias.scope !61105, !noalias !61047, !noundef !13 ; 4 uses
  %i.bs = and i16 %.val9.i.i.i, 32767, !dbg !61136
  %i.bt = icmp samesign ugt i16 %i.bs, 31744, !dbg !61136
  br i1 %i.bt, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i, label %bb.z, !dbg !61140

bb.z:                                             ; preds = %.lr.ph.split.split.i.i.i
  %.not.i4.i.i15.i.i.i = icmp sgt i16 %.val9.i.i.i, -1, !dbg !61147
  br i1 %.not.i4.i.i15.i.i.i, label %.split.i.i19.i.i.i, label %bb.aa, !dbg !61148

.split.i.i19.i.i.i:                               ; preds = %bb.z
  %i.bu = or i16 %.val9.i.i.i, %i.be, !dbg !61152
  %.not.i.i20.i.i.i = icmp eq i16 %i.bu, 0, !dbg !61152
  br i1 %.not.i.i20.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i, !dbg !61151

bb.aa:                                            ; preds = %bb.z
  %.not30.i.i16.i.i.i = icmp samesign ult i16 %.val9.i.i.i, %.val11.i.i.i, !dbg !61149
  br i1 %.not30.i.i16.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, !dbg !61151

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i: ; preds = %bb.aa, %.split.i.i19.i.i.i, %.lr.ph.split.split.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !dbg !61130, !alias.scope !61105, !noalias !61047
  %i.bv = icmp eq ptr %i.br, %i.c, !dbg !61132
  br i1 %i.bv, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, label %.lr.ph.split.split.i.i.i, !dbg !61132

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i, %bb.aa, %.split.i.i19.i.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i, %bb.y, %bb.x
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %i.bc, %bb.x ], [ %.sroa.0.08.us16.i.i.i, %bb.y ], [ %i.c, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.us.i.i.i ], [ %i.c, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.i.i.i ], [ %.sroa.0.08.i.i.i, %.split.i.i19.i.i.i ], [ %.sroa.0.08.i.i.i, %bb.aa ], !dbg !61153 ; 2 uses
  store i16 %.val11.i.i.i, ptr %.sroa.0.0.lcssa.i.i.i, align 8, !dbg !61154, !alias.scope !61105, !noalias !61158
  %.sroa.521.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 8, !dbg !61154
  store double %i.bk, ptr %.sroa.521.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !dbg !61154, !alias.scope !61105, !noalias !61158
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !61163

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB18_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB19_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit23.thread.i.i.i, %bb.w, %.split.i.i.i.i.i, %bb.u, %.lr.ph.i.i
  %i.bw = add nuw i64 %.sroa.05.06.i.i, 1, !dbg !61164 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bw, %i.j, !dbg !61074
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !dbg !61089

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1f_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1g_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %._crit_edge, %.loopexit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !61182, !noalias !61013
  br label %bb.ar, !dbg !61183

._crit_edge231:                                   ; preds = %bb.b, %.lr.ph
  %.sroa.0.0112.lcssa = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.0.be, %bb.b ]
  %.sroa.15.0111.lcssa = phi i64 [ %1, %.lr.ph ], [ %.sroa.15.0.be, %bb.b ]
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable8heapsort8heapsortTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112.lcssa, i64 noundef %.sroa.15.0111.lcssa, ptr noalias nonnull align 8 poison) #53, !dbg !61185
  br label %bb.ar, !dbg !61183

.lr.ph230:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.026.0109229 = phi i32 [ %i.bx, %bb.b ], [ %3, %.lr.ph ]
  %.sroa.023.0110228 = phi ptr [ %.sroa.023.0.be, %bb.b ], [ %2, %.lr.ph ] ; 3 uses
  %.sroa.15.0111227 = phi i64 [ %.sroa.15.0.be, %bb.b ], [ %1, %.lr.ph ] ; 13 uses
  %.sroa.0.0112226 = phi ptr [ %.sroa.0.0.be, %bb.b ], [ %0, %.lr.ph ] ; 25 uses
  %i.bx = add nsw i32 %.sroa.026.0109229, -1, !dbg !61186 ; 3 uses
  %i.by = lshr i64 %.sroa.15.0111227, 3, !dbg !61187 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.by, 6, !dbg !61192
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 %.idx.i, !dbg !61192 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.by, 112, !dbg !61197
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 %.idx2.i, !dbg !61197 ; 4 uses
  %i.cb = icmp samesign ult i64 %.sroa.15.0111227, 64, !dbg !61200
  br i1 %i.cb, label %bb.ac, label %bb.ab, !dbg !61200

bb.ab:                                            ; preds = %.lr.ph230
  %i.cc = tail call fastcc noundef ptr @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot11median3_recTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB14_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB15_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull readonly align 8 %.sroa.0.0112226, ptr noundef readonly %i.bz, ptr noundef readonly %i.ca, i64 noundef %i.by), !dbg !61202
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61203

bb.ac:                                            ; preds = %.lr.ph230
  %.val10.i = load i16, ptr %.sroa.0.0112226, align 8, !dbg !61204, !alias.scope !61206, !noundef !13 ; 7 uses
  %.val12.i = load i16, ptr %i.bz, align 8, !dbg !61204, !alias.scope !61206, !noundef !13 ; 9 uses
  %i.cd = and i16 %.val10.i, 32767, !dbg !61209   ; 3 uses
  %i.ce = icmp samesign ugt i16 %i.cd, 31744, !dbg !61209
  br i1 %i.ce, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i, label %bb.ad, !dbg !61217

bb.ad:                                            ; preds = %bb.ac
  %i.cf = and i16 %.val12.i, 32767, !dbg !61222   ; 3 uses
  %i.cg = icmp samesign ugt i16 %i.cf, 31744, !dbg !61222
  br i1 %i.cg, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.ae, !dbg !61223

bb.ae:                                            ; preds = %bb.ad
  %.not.i4.i.i.i = icmp sgt i16 %.val12.i, -1, !dbg !61224 ; 2 uses
  %i.ch = icmp sgt i16 %.val10.i, -1, !dbg !61225
  br i1 %i.ch, label %bb.af, label %bb.ag, !dbg !61225

bb.af:                                            ; preds = %bb.ae
  %.not31.i.i.i = icmp samesign ult i16 %.val10.i, %.val12.i
  %or.cond.i.i = select i1 %.not.i4.i.i.i, i1 %.not31.i.i.i, i1 false, !dbg !61225
  br i1 %or.cond.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i, !dbg !61225

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not.i4.i.i.i, label %.split.i.i.i, label %bb.ah, !dbg !61225

.split.i.i.i:                                     ; preds = %bb.ag
  %i.ci = or i16 %.val12.i, %i.cd, !dbg !61226
  %.not.i.i.i = icmp eq i16 %i.ci, 0, !dbg !61226
  br i1 %.not.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !61227

bb.ah:                                            ; preds = %bb.ag
  %.not30.i.i.i = icmp samesign ult i16 %.val12.i, %.val10.i, !dbg !61228
  br i1 %.not30.i.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i, !dbg !61227

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i: ; preds = %bb.ah, %.split.i.i.i, %bb.af
  br label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !61230

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i: ; preds = %bb.ac
  %.val8.i = load i16, ptr %i.ca, align 8, !dbg !61240, !alias.scope !61206, !noundef !13
  %.pre = and i16 %.val12.i, 32767, !dbg !61241
  br label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i, !dbg !61249

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i, %bb.ah, %.split.i.i.i, %bb.af, %bb.ad
  %.sroa.0.0.i.i.i5.i = phi i1 [ false, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread10.i ], [ true, %bb.ad ], [ true, %bb.af ], [ true, %.split.i.i.i ], [ true, %bb.ah ] ; 2 uses
  %.val86.i = load i16, ptr %i.ca, align 8, !dbg !61240, !alias.scope !61206, !noundef !13 ; 7 uses
  %i.cj = and i16 %.val86.i, 32767, !dbg !61250
  %i.ck = icmp samesign ugt i16 %i.cj, 31744, !dbg !61250
  br i1 %i.ck, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i, label %bb.ai, !dbg !61251

bb.ai:                                            ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i
  %.not.i4.i.i14.i = icmp sgt i16 %.val86.i, -1, !dbg !61252 ; 2 uses
  %i.cl = icmp sgt i16 %.val10.i, -1, !dbg !61253
  br i1 %i.cl, label %bb.aj, label %bb.ak, !dbg !61253

bb.aj:                                            ; preds = %bb.ai
  %.not31.i.i20.i = icmp samesign ult i16 %.val10.i, %.val86.i
  %or.cond.i21.i = select i1 %.not.i4.i.i14.i, i1 %.not31.i.i20.i, i1 false, !dbg !61253
  br i1 %or.cond.i21.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !61253

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not.i4.i.i14.i, label %.split.i.i18.i, label %bb.al, !dbg !61253

.split.i.i18.i:                                   ; preds = %bb.ak
  %i.cm = or i16 %.val86.i, %i.cd, !dbg !61254
  %.not.i.i19.i = icmp eq i16 %i.cm, 0, !dbg !61254
  br i1 %.not.i.i19.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i, !dbg !61255

bb.al:                                            ; preds = %bb.ak
  %.not30.i.i15.i = icmp samesign ult i16 %.val86.i, %.val10.i, !dbg !61256
  br i1 %.not30.i.i15.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !61255

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i: ; preds = %bb.al, %.split.i.i18.i, %bb.aj, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i
  br i1 %.sroa.0.0.i.i.i5.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61249

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i: ; preds = %bb.al, %.split.i.i18.i, %bb.aj
  br i1 %.sroa.0.0.i.i.i5.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i, !dbg !61249

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i: ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i
  %.pre-phi.i = phi i16 [ %i.cf, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i ], [ %i.cf, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.pre, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i ], !dbg !61241 ; 2 uses
  %.sroa.0.0.i.i.i413.i = phi i1 [ true, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i ], [ false, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ false, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i ]
  %.val8812.i = phi i16 [ %.val86.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i ], [ %.val86.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.val8.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thread.i ] ; 5 uses
  %i.cn = icmp samesign ugt i16 %.pre-phi.i, 31744, !dbg !61241
  br i1 %i.cn, label %.thread18.i.i25.i, label %bb.am, !dbg !61258

bb.am:                                            ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i
  %i.co = and i16 %.val8812.i, 32767, !dbg !61263
  %i.cp = icmp samesign ugt i16 %i.co, 31744, !dbg !61263
  br i1 %i.cp, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i, label %bb.an, !dbg !61264

bb.an:                                            ; preds = %bb.am
  %.not.i4.i.i23.i = icmp sgt i16 %.val8812.i, -1, !dbg !61265 ; 2 uses
  %i.cq = icmp sgt i16 %.val12.i, -1, !dbg !61266
  br i1 %i.cq, label %bb.ao, label %bb.ap, !dbg !61266

bb.ao:                                            ; preds = %bb.an
  %.not31.i.i29.i = icmp samesign ult i16 %.val12.i, %.val8812.i
  %or.cond.i30.i = select i1 %.not.i4.i.i23.i, i1 %.not31.i.i29.i, i1 false, !dbg !61266
  br i1 %or.cond.i30.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i, label %.thread18.i.i25.i, !dbg !61266

bb.ap:                                            ; preds = %bb.an
  br i1 %.not.i4.i.i23.i, label %.split.i.i27.i, label %bb.aq, !dbg !61266

.split.i.i27.i:                                   ; preds = %bb.ap
  %i.cr = or i16 %.val8812.i, %.pre-phi.i, !dbg !61267
  %.not.i.i28.i = icmp eq i16 %i.cr, 0, !dbg !61267
  br i1 %.not.i.i28.i, label %.thread18.i.i25.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i, !dbg !61268

bb.aq:                                            ; preds = %bb.ap
  %.not30.i.i24.i = icmp samesign ult i16 %.val8812.i, %.val12.i, !dbg !61269
  br i1 %.not30.i.i24.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i, label %.thread18.i.i25.i, !dbg !61268

.thread18.i.i25.i:                                ; preds = %bb.aq, %.split.i.i27.i, %bb.ao, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22._crit_edge.i
  br label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i, !dbg !61271

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i: ; preds = %.thread18.i.i25.i, %bb.aq, %.split.i.i27.i, %bb.ao, %bb.am
  %.sroa.0.0.i.i.i26.i = phi i1 [ true, %bb.aq ], [ false, %.thread18.i.i25.i ], [ true, %bb.am ], [ true, %.split.i.i27.i ], [ true, %bb.ao ], !dbg !61263
  %i.cs = xor i1 %.sroa.0.0.i.i.i413.i, %.sroa.0.0.i.i.i26.i, !dbg !61272
  %..i.i = select i1 %i.cs, ptr %i.ca, ptr %i.bz, !dbg !61273
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61273

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ab, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i
  %.sroa.0.0.i.sink.i = phi ptr [ %i.cc, %bb.ab ], [ %.sroa.0.0112226, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %..i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit31.i ], [ %.sroa.0.0112226, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit22.thr_comm.i ]
  %i.ct = ptrtoint ptr %.sroa.0.0.i.sink.i to i64, !dbg !61274
  %i.cu = ptrtoint ptr %.sroa.0.0112226 to i64, !dbg !61274
  %i.cv = sub nuw i64 %i.ct, %i.cu, !dbg !61274   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.cv, 4, !dbg !61274 ; 3 uses
  %i.cw = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.0111227, !dbg !61277
  tail call void @llvm.assume(i1 %i.cw), !dbg !61279
  %.not = icmp eq ptr %.sroa.023.0110228, null, !dbg !61282
  br i1 %.not, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.bh, !dbg !61285

bb.ar:                                            ; preds = %._crit_edge231, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1f_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1g_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit
  ret void, !dbg !61286

_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %bb.bk, %.split.i.i, %bb.bi, %bb.bm, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61287), !dbg !61290
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE14swap_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112226, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0111227, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32), !dbg !61291
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 16, !dbg !61295 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61306), !dbg !61309
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61312), !dbg !61309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !61314, !noalias !61320
  %i.cy = load i16, ptr %i.cx, align 8, !dbg !61321, !alias.scope !61324, !noalias !61312, !noundef !13
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 24, !dbg !61321
  %i.da = load double, ptr %i.cz, align 8, !dbg !61321, !alias.scope !61324, !noalias !61312, !noundef !13
  store i16 %i.cy, ptr %i.b, align 8, !dbg !61325, !noalias !61320
  store double %i.da, ptr %i.f, align 8, !dbg !61325, !noalias !61320
  %i.db = getelementptr [16 x i8], ptr %.sroa.0.0112226, i64 %.sroa.15.0111227, !dbg !61328 ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -16, !dbg !61328 ; 3 uses
  %.sroa.13.048.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 32, !dbg !61334 ; 4 uses
  %i.dd = icmp ult ptr %.sroa.13.048.i.i, %i.dc, !dbg !61335
  %.val2.i.pre.i.i = load i16, ptr %.sroa.0.0112226, align 8, !alias.scope !61337, !noalias !61306 ; 12 uses
  %i.de = and i16 %.val2.i.pre.i.i, 32767         ; 2 uses
  br i1 %i.dd, label %.lr.ph.i.i39, label %.preheader.i.i, !dbg !61335

.lr.ph.i.i39:                                     ; preds = %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread
  %i.df = icmp samesign ugt i16 %i.de, 31744
  %.not.i4.i.i.i13.i.i = icmp sgt i16 %.val2.i.pre.i.i, -1 ; 4 uses
  br i1 %i.df, label %.lr.ph.split.us.i.i, label %.lr.ph.split.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i39, %.lr.ph.split.us.i.i
  %.sroa.13.051.us.i.i = phi ptr [ %.sroa.13.0.us.i.i, %.lr.ph.split.us.i.i ], [ %.sroa.13.048.i.i, %.lr.ph.i.i39 ] ; 3 uses
  %.sroa.033.050.us.i.i = phi ptr [ %i.dk, %.lr.ph.split.us.i.i ], [ %i.cx, %.lr.ph.i.i39 ] ; 3 uses
  %.sroa.23.049.us.i.i = phi i64 [ %i.do, %.lr.ph.split.us.i.i ], [ 0, %.lr.ph.i.i39 ] ; 2 uses
  %.val.i11.us.i.i = load i16, ptr %.sroa.13.051.us.i.i, align 8, !dbg !61338, !alias.scope !61324, !noalias !61341, !noundef !13
  %i.dg = and i16 %.val.i11.us.i.i, 32767, !dbg !61344
  %i.dh = icmp samesign ult i16 %i.dg, 31745, !dbg !61344
  %..i.i40 = zext i1 %i.dh to i64, !dbg !61352
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.23.049.us.i.i, !dbg !61353 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.050.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false), !dbg !61357, !alias.scope !61324, !noalias !61341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.051.us.i.i, i64 16, i1 false), !dbg !61361, !alias.scope !61324, !noalias !61341
  %i.dj = add i64 %.sroa.23.049.us.i.i, %..i.i40, !dbg !61364 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.033.050.us.i.i, i64 32, !dbg !61365 ; 4 uses
  %.val.i22.us.i.i = load i16, ptr %i.dk, align 8, !dbg !61367, !alias.scope !61324, !noalias !61369, !noundef !13
  %i.dl = and i16 %.val.i22.us.i.i, 32767, !dbg !61372
  %i.dm = icmp samesign ult i16 %i.dl, 31745, !dbg !61372
  %spec.select.i.i = zext i1 %i.dm to i64, !dbg !61380
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.dj, !dbg !61385 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.051.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !dbg !61387, !alias.scope !61324, !noalias !61369
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false), !dbg !61389, !alias.scope !61324, !noalias !61369
  %i.do = add i64 %i.dj, %spec.select.i.i, !dbg !61391 ; 2 uses
  %.sroa.13.0.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.033.050.us.i.i, i64 48, !dbg !61334 ; 3 uses
  %i.dp = icmp ult ptr %.sroa.13.0.us.i.i, %i.dc, !dbg !61335
  br i1 %i.dp, label %.lr.ph.split.us.i.i, label %.preheader.split.us.i.i.preheader, !dbg !61335

.preheader.i.i:                                   ; preds = %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread ], [ %i.ev, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i ], !dbg !61334 ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB17_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB18_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %.sroa.23.1.us76.i.i = phi i64 [ %i.ec, %bb.au ], [ %.sroa.23.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !61334 ; 2 uses
  %.sroa.13.1.us77.i.i = phi ptr [ %.sroa.13.1.sroa.gep.us83.i.i, %bb.au ], [ %.sroa.13.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !61334 ; 4 uses
  %.sroa.033.1.us78.i.i = phi ptr [ %.sroa.13.1.us77.i.i, %bb.au ], [ %.sroa.033.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !61334
  %i.dw = icmp eq ptr %.sroa.13.1.us77.i.i, %i.db, !dbg !61395 ; 2 uses
  %.sroa.01.0.us79.i.i = select i1 %i.dw, ptr %i.b, ptr %.sroa.13.1.us77.i.i, !dbg !61396 ; 2 uses
  %.val.i.us80.i.i = load i16, ptr %.sroa.01.0.us79.i.i, align 8, !dbg !61397, !noalias !61399, !noundef !13 ; 3 uses
  %i.dx = and i16 %.val.i.us80.i.i, 32767, !dbg !61402 ; 2 uses
  %i.dy = icmp samesign ugt i16 %i.dx, 31744, !dbg !61402
  br i1 %i.dy, label %.thread18.i.i.i.us81.i.i, label %bb.as, !dbg !61420

bb.as:                                            ; preds = %.preheader.split.split.us.i.i
  %i.dz = icmp sgt i16 %.val.i.us80.i.i, -1, !dbg !61425
  br i1 %i.dz, label %bb.at, label %.split.i.i.i.us.i.i, !dbg !61425

.split.i.i.i.us.i.i:                              ; preds = %bb.as
  %i.ea = or i16 %i.dx, %.val2.i.pre.i.i, !dbg !61426
  %.not.i.i.i.us.i.i = icmp eq i16 %i.ea, 0, !dbg !61426
  br i1 %.not.i.i.i.us.i.i, label %.thread18.i.i.i.us81.i.i, label %bb.au, !dbg !61427

bb.at:                                            ; preds = %bb.as
  %.not31.i.i.i.us.i.i = icmp samesign ult i16 %.val.i.us80.i.i, %.val2.i.pre.i.i
  br i1 %.not31.i.i.i.us.i.i, label %bb.au, label %.thread18.i.i.i.us81.i.i, !dbg !61425

.thread18.i.i.i.us81.i.i:                         ; preds = %bb.at, %.split.i.i.i.us.i.i, %.preheader.split.split.us.i.i
  br label %bb.au, !dbg !61428

bb.au:                                            ; preds = %.thread18.i.i.i.us81.i.i, %bb.at, %.split.i.i.i.us.i.i
  %.sroa.0.0.i.i.i.i.us82.i.i = phi i64 [ 1, %.split.i.i.i.us.i.i ], [ 0, %.thread18.i.i.i.us81.i.i ], [ 1, %bb.at ], !dbg !61410
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.23.1.us76.i.i, !dbg !61411 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.1.us78.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !dbg !61413, !alias.scope !61324, !noalias !61399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.us79.i.i, i64 16, i1 false), !dbg !61415, !noalias !61399
  %i.ec = add i64 %.sroa.0.0.i.i.i.i.us82.i.i, %.sroa.23.1.us76.i.i, !dbg !61417 ; 2 uses
  %.sroa.13.1.sroa.gep.us83.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.us77.i.i, i64 16, !dbg !61418
  br i1 %i.dw, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.preheader.split.split.us.i.i, !dbg !61392

.preheader.split.split.i.i:                       ; preds = %.preheader.split.i.i, %bb.aw
  %.sroa.23.1.i.i = phi i64 [ %i.ei, %bb.aw ], [ %.sroa.23.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !61334 ; 2 uses
  %.sroa.13.1.i.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %bb.aw ], [ %.sroa.13.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !61334 ; 4 uses
  %.sroa.033.1.i.i = phi ptr [ %.sroa.13.1.i.i, %bb.aw ], [ %.sroa.033.0.lcssa.i.i, %.preheader.split.i.i ], !dbg !61334
  %i.ed = icmp eq ptr %.sroa.13.1.i.i, %i.db, !dbg !61395 ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.ed, ptr %i.b, ptr %.sroa.13.1.i.i, !dbg !61396 ; 2 uses
  %.val.i.i.i = load i16, ptr %.sroa.01.0.i.i, align 8, !dbg !61397, !noalias !61399, !noundef !13 ; 3 uses
  %i.ee = and i16 %.val.i.i.i, 32767, !dbg !61402
  %i.ef = icmp samesign ugt i16 %i.ee, 31744, !dbg !61402
  br i1 %i.ef, label %.thread18.i.i.i.i.i, label %bb.av, !dbg !61420

bb.av:                                            ; preds = %.preheader.split.split.i.i
  %i.eg = icmp slt i16 %.val.i.i.i, 0, !dbg !61425
  %.not30.i.i.i.i.i37 = icmp samesign ult i16 %.val2.i.pre.i.i, %.val.i.i.i
  %or.cond.i.i38 = select i1 %i.eg, i1 %.not30.i.i.i.i.i37, i1 false, !dbg !61425
  br i1 %or.cond.i.i38, label %bb.aw, label %.thread18.i.i.i.i.i, !dbg !61425

.thread18.i.i.i.i.i:                              ; preds = %bb.av, %.preheader.split.split.i.i
  br label %bb.aw, !dbg !61428

bb.aw:                                            ; preds = %.thread18.i.i.i.i.i, %bb.av
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 1, %bb.av ], [ 0, %.thread18.i.i.i.i.i ], !dbg !61410
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.23.1.i.i, !dbg !61411 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !dbg !61413, !alias.scope !61324, !noalias !61399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i, i64 16, i1 false), !dbg !61415, !noalias !61399
  %i.ei = add i64 %.sroa.0.0.i.i.i.i.i.i, %.sroa.23.1.i.i, !dbg !61417 ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i, i64 16, !dbg !61418
  br i1 %i.ed, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.preheader.split.split.i.i, !dbg !61392

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.i.i39, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i
  %.sroa.13.051.i.i = phi ptr [ %.sroa.13.0.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i ], [ %.sroa.13.048.i.i, %.lr.ph.i.i39 ] ; 3 uses
  %.sroa.033.050.i.i = phi ptr [ %i.ep, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i ], [ %i.cx, %.lr.ph.i.i39 ] ; 3 uses
  %.sroa.23.049.i.i = phi i64 [ %i.ev, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i ], [ 0, %.lr.ph.i.i39 ] ; 2 uses
  %.val.i11.i.i = load i16, ptr %.sroa.13.051.i.i, align 8, !dbg !61338, !alias.scope !61324, !noalias !61341, !noundef !13 ; 4 uses
  %i.ej = and i16 %.val.i11.i.i, 32767, !dbg !61344 ; 2 uses
  %i.ek = icmp samesign ugt i16 %i.ej, 31744, !dbg !61344
  br i1 %i.ek, label %.thread18.i.i.i15.i.i, label %bb.ax, !dbg !61429

bb.ax:                                            ; preds = %.lr.ph.split.split.i.i
  %i.el = icmp sgt i16 %.val.i11.i.i, -1, !dbg !61434
  br i1 %i.el, label %bb.ay, label %bb.az, !dbg !61434

bb.ay:                                            ; preds = %bb.ax
  %.not31.i.i.i19.i.i = icmp samesign ult i16 %.val.i11.i.i, %.val2.i.pre.i.i
  %or.cond.i.i20.i.i = select i1 %.not.i4.i.i.i13.i.i, i1 %.not31.i.i.i19.i.i, i1 false, !dbg !61434
  br i1 %or.cond.i.i20.i.i, label %bb.bb, label %.thread18.i.i.i15.i.i, !dbg !61434

bb.az:                                            ; preds = %bb.ax
  br i1 %.not.i4.i.i.i13.i.i, label %.split.i.i.i17.i.i, label %bb.ba, !dbg !61434

.split.i.i.i17.i.i:                               ; preds = %bb.az
  %i.em = or i16 %i.ej, %.val2.i.pre.i.i, !dbg !61435
  %.not.i.i.i18.i.i = icmp eq i16 %i.em, 0, !dbg !61435
  br i1 %.not.i.i.i18.i.i, label %.thread18.i.i.i15.i.i, label %bb.bb, !dbg !61436

bb.ba:                                            ; preds = %bb.az
  %.not30.i.i.i14.i.i = icmp samesign ult i16 %.val2.i.pre.i.i, %.val.i11.i.i, !dbg !61437
  br i1 %.not30.i.i.i14.i.i, label %bb.bb, label %.thread18.i.i.i15.i.i, !dbg !61436

.thread18.i.i.i15.i.i:                            ; preds = %bb.ba, %.split.i.i.i17.i.i, %bb.ay, %.lr.ph.split.split.i.i
  br label %bb.bb, !dbg !61439

bb.bb:                                            ; preds = %.thread18.i.i.i15.i.i, %bb.ba, %.split.i.i.i17.i.i, %bb.ay
  %.sroa.0.0.i.i.i.i16.i.i = phi i64 [ 1, %bb.ba ], [ 0, %.thread18.i.i.i15.i.i ], [ 1, %bb.ay ], [ 1, %.split.i.i.i17.i.i ], !dbg !61352
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.23.049.i.i, !dbg !61353 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.050.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !dbg !61357, !alias.scope !61324, !noalias !61341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.051.i.i, i64 16, i1 false), !dbg !61361, !alias.scope !61324, !noalias !61341
  %i.eo = add i64 %.sroa.0.0.i.i.i.i16.i.i, %.sroa.23.049.i.i, !dbg !61364 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i, i64 32, !dbg !61365 ; 4 uses
  %.val.i22.i.i = load i16, ptr %i.ep, align 8, !dbg !61367, !alias.scope !61324, !noalias !61369, !noundef !13 ; 4 uses
  %i.eq = and i16 %.val.i22.i.i, 32767, !dbg !61372 ; 2 uses
  %i.er = icmp samesign ugt i16 %i.eq, 31744, !dbg !61372
  br i1 %i.er, label %.thread18.i.i.i26.i.i, label %bb.bc, !dbg !61380

bb.bc:                                            ; preds = %bb.bb
  %i.es = icmp sgt i16 %.val.i22.i.i, -1, !dbg !61440
  br i1 %i.es, label %bb.bd, label %bb.be, !dbg !61440

bb.bd:                                            ; preds = %bb.bc
  %.not31.i.i.i30.i.i = icmp samesign ult i16 %.val.i22.i.i, %.val2.i.pre.i.i
  %or.cond.i.i31.i.i = select i1 %.not.i4.i.i.i13.i.i, i1 %.not31.i.i.i30.i.i, i1 false, !dbg !61440
  br i1 %or.cond.i.i31.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i, label %.thread18.i.i.i26.i.i, !dbg !61440

bb.be:                                            ; preds = %bb.bc
  br i1 %.not.i4.i.i.i13.i.i, label %.split.i.i.i28.i.i, label %bb.bf, !dbg !61440

.split.i.i.i28.i.i:                               ; preds = %bb.be
  %i.et = or i16 %i.eq, %.val2.i.pre.i.i, !dbg !61441
  %.not.i.i.i29.i.i = icmp eq i16 %i.et, 0, !dbg !61441
  br i1 %.not.i.i.i29.i.i, label %.thread18.i.i.i26.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i, !dbg !61442

bb.bf:                                            ; preds = %bb.be
  %.not30.i.i.i25.i.i = icmp samesign ult i16 %.val2.i.pre.i.i, %.val.i22.i.i, !dbg !61443
  br i1 %.not30.i.i.i25.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i, label %.thread18.i.i.i26.i.i, !dbg !61442

.thread18.i.i.i26.i.i:                            ; preds = %bb.bf, %.split.i.i.i28.i.i, %bb.bd, %bb.bb
  br label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i, !dbg !61445

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0CskY9G75ZWc4U_11polars_expr.exit32.i.i: ; preds = %.thread18.i.i.i26.i.i, %bb.bf, %.split.i.i.i28.i.i, %bb.bd
  %.sroa.0.0.i.i.i.i27.i.i = phi i64 [ 1, %bb.bf ], [ 0, %.thread18.i.i.i26.i.i ], [ 1, %bb.bd ], [ 1, %.split.i.i.i28.i.i ], !dbg !61446
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.eo, !dbg !61385 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.051.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i64 16, i1 false), !dbg !61387, !alias.scope !61324, !noalias !61369
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false), !dbg !61389, !alias.scope !61324, !noalias !61369
  %i.ev = add i64 %.sroa.0.0.i.i.i.i27.i.i, %i.eo, !dbg !61391 ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i, i64 48, !dbg !61334 ; 3 uses
  %i.ew = icmp ult ptr %.sroa.13.0.i.i, %i.dc, !dbg !61335
  br i1 %i.ew, label %.lr.ph.split.split.i.i, label %.preheader.i.i, !dbg !61335

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.aw, %bb.au, %.preheader.split.us.i.i
  %.us-phi74.i.i = phi i64 [ %i.dv, %.preheader.split.us.i.i ], [ %i.ec, %bb.au ], [ %i.ei, %bb.aw ], !dbg !61447 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !61447, !noalias !61320
  %.not7.i = icmp ult i64 %.us-phi74.i.i, %.sroa.15.0111227, !dbg !61448
  br i1 %.not7.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit, label %bb.bg, !dbg !61448

bb.bg:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  tail call void @llvm.trap(), !dbg !61450
  unreachable, !dbg !61450

_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE14swap_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112226, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0111227, i64 noundef 0, i64 noundef %.us-phi74.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !dbg !61451
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0112226, i64 %.us-phi74.i.i, !dbg !61452 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16, !dbg !61458
  %i.ez = xor i64 %.us-phi74.i.i, -1, !dbg !61464
  %i.fa = add i64 %.sroa.15.0111227, %i.ez, !dbg !61464
  tail call fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB17_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB18_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112226, i64 noundef %.us-phi74.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.023.0110228, i32 noundef %i.bx, ptr noalias noundef align 8 dereferenceable(8) %4), !dbg !61465
  br label %.backedge, !dbg !61468

bb.bh:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared5pivot12choose_pivotTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvMB8_SB15_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB16_FjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 %i.cv, !dbg !61469
  %.sroa.023.0.val = load i16, ptr %.sroa.023.0110228, align 8, !dbg !61470, !noundef !13 ; 4 uses
  %.val = load i16, ptr %i.fb, align 8, !dbg !61470, !noundef !13 ; 5 uses
  %i.fc = and i16 %.sroa.023.0.val, 32767, !dbg !61471 ; 2 uses
  %i.fd = icmp samesign ugt i16 %i.fc, 31744, !dbg !61471
  br i1 %i.fd, label %bb.bn, label %bb.bi, !dbg !61479

bb.bi:                                            ; preds = %bb.bh
  %i.fe = and i16 %.val, 32767, !dbg !61484
  %i.ff = icmp samesign ugt i16 %i.fe, 31744, !dbg !61484
  br i1 %i.ff, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.bj, !dbg !61485

bb.bj:                                            ; preds = %bb.bi
  %.not.i4.i.i = icmp sgt i16 %.val, -1, !dbg !61486 ; 2 uses
  %i.fg = icmp sgt i16 %.sroa.023.0.val, -1, !dbg !61487
  br i1 %i.fg, label %bb.bk, label %bb.bl, !dbg !61487

bb.bk:                                            ; preds = %bb.bj
  %.not31.i.i = icmp samesign ult i16 %.sroa.023.0.val, %.val
  %or.cond.i = select i1 %.not.i4.i.i, i1 %.not31.i.i, i1 false, !dbg !61487
  br i1 %or.cond.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.bn, !dbg !61487

bb.bl:                                            ; preds = %bb.bj
  br i1 %.not.i4.i.i, label %.split.i.i, label %bb.bm, !dbg !61487

.split.i.i:                                       ; preds = %bb.bl
  %i.fh = or i16 %.val, %i.fc, !dbg !61488
  %.not.i.i = icmp eq i16 %i.fh, 0, !dbg !61488
  br i1 %.not.i.i, label %bb.bn, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !61489

bb.bm:                                            ; preds = %bb.bl
  %.not30.i.i = icmp samesign ult i16 %.val, %.sroa.023.0.val, !dbg !61490
  br i1 %.not30.i.i, label %_RNCINvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileBy_FjjjETjjEEs_0s_0E0CskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.bn, !dbg !61489

bb.bn:                                            ; preds = %bb.bh, %bb.bk, %.split.i.i, %bb.bm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61492), !dbg !61495
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE14swap_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112226, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0111227, i64 noundef 0, i64 noundef range(i64 0, 576460752303423487) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32), !dbg !61496
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 16, !dbg !61500 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61505), !dbg !61508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61511), !dbg !61508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !61513, !noalias !61519
  %i.fj = load i16, ptr %i.fi, align 8, !dbg !61520, !alias.scope !61523, !noalias !61511, !noundef !13
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 24, !dbg !61520
  %i.fl = load double, ptr %i.fk, align 8, !dbg !61520, !alias.scope !61523, !noalias !61511, !noundef !13
  store i16 %i.fj, ptr %i.a, align 8, !dbg !61524, !noalias !61519
  store double %i.fl, ptr %i.e, align 8, !dbg !61524, !noalias !61519
  %i.fm = getelementptr [16 x i8], ptr %.sroa.0.0112226, i64 %.sroa.15.0111227, !dbg !61527 ; 4 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 -16, !dbg !61527 ; 4 uses
  %.sroa.13.046.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0112226, i64 32, !dbg !61533 ; 5 uses
  %i.fo = icmp ult ptr %.sroa.13.046.i.i, %i.fn, !dbg !61534
  %.val2.i.pre.i.i48 = load i16, ptr %.sroa.0.0112226, align 8, !alias.scope !61536, !noalias !61505 ; 9 uses
  %i.fp = and i16 %.val2.i.pre.i.i48, 32767       ; 5 uses
  br i1 %i.fo, label %.lr.ph.i.i69, label %.preheader.i.i49, !dbg !61534

.lr.ph.i.i69:                                     ; preds = %bb.bn
  %i.fq = icmp samesign ugt i16 %i.fp, 31744
  br i1 %i.fq, label %.thread18.i.i.i.i15.us.i.i, label %.lr.ph.split.i.i

.thread18.i.i.i.i15.us.i.i:                       ; preds = %.lr.ph.i.i69, %.thread18.i.i.i.i15.us.i.i
  %.sroa.13.049.us.i.i = phi ptr [ %.sroa.13.0.us.i.i73.a, %.thread18.i.i.i.i15.us.i.i ], [ %.sroa.13.046.i.i, %.lr.ph.i.i69 ] ; 2 uses
  %.sroa.031.048.us.i.i = phi ptr [ %i.fs, %.thread18.i.i.i.i15.us.i.i ], [ %i.fi, %.lr.ph.i.i69 ] ; 3 uses
  %.sroa.23.047.us.i.i.a = phi i64 [ %i.fu, %.thread18.i.i.i.i15.us.i.i ], [ 0, %.lr.ph.i.i69 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.047.us.i.i.a, !dbg !61537 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.048.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i64 16, i1 false), !dbg !61543, !alias.scope !61523, !noalias !61547
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.us.i.i, i64 16, i1 false), !dbg !61550, !alias.scope !61523, !noalias !61547
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us.i.i, i64 32, !dbg !61553 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 16, !dbg !61555 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !dbg !61558, !alias.scope !61523, !noalias !61560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i64 16, i1 false), !dbg !61563, !alias.scope !61523, !noalias !61560
  %i.fu = add nuw nsw i64 %.sroa.23.047.us.i.i.a, 2, !dbg !61565 ; 2 uses
  %.sroa.13.0.us.i.i73.a = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us.i.i, i64 48, !dbg !61533 ; 3 uses
  %5 = icmp ult ptr %.sroa.13.0.us.i.i73.a, %i.fn, !dbg !61534
  br i1 %5, label %.thread18.i.i.i.i15.us.i.i, label %.thread18.i.i.i.i.us.i.i.preheader.a, !dbg !61534

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i69
  %i.fv = icmp sgt i16 %.val2.i.pre.i.i48, -1
  br i1 %i.fv, label %.lr.ph.split.split.us.i.i, label %.lr.ph.split.split.i.i70

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.i.i, %.lr.ph.split.split.us.i.i
  %.sroa.13.049.us54.i.i = phi ptr [ %.sroa.13.0.us68.i.i, %.lr.ph.split.split.us.i.i ], [ %.sroa.13.046.i.i, %.lr.ph.split.i.i ] ; 3 uses
  %.sroa.031.048.us55.i.i = phi ptr [ %i.gb, %.lr.ph.split.split.us.i.i ], [ %i.fi, %.lr.ph.split.i.i ] ; 3 uses
  %.sroa.23.047.us56.i.i = phi i64 [ %i.gg, %.lr.ph.split.split.us.i.i ], [ 0, %.lr.ph.split.i.i ] ; 2 uses
  %.val.i11.us57.i.i = load i16, ptr %.sroa.13.049.us54.i.i, align 8, !dbg !61566, !alias.scope !61523, !noalias !61547, !noundef !13 ; 3 uses
  %i.fw = and i16 %.val.i11.us57.i.i, 32767, !dbg !61567
  %i.fx = icmp samesign ult i16 %i.fw, 31745, !dbg !61567
  %.not.i4.i.i.i.i13.us.i.i = icmp slt i16 %.val.i11.us57.i.i, 0, !dbg !61574
  %.not31.i.i.i.i18.us.i.i = icmp samesign uge i16 %.val2.i.pre.i.i48, %.val.i11.us57.i.i, !dbg !61574
  %or.cond.i.i.i19.us.not.i.i = select i1 %.not.i4.i.i.i.i13.us.i.i, i1 true, i1 %.not31.i.i.i.i18.us.i.i, !dbg !61574
  %narrow.i.i = select i1 %i.fx, i1 %or.cond.i.i.i19.us.not.i.i, i1 false, !dbg !61574
  %i.fy = zext i1 %narrow.i.i to i64, !dbg !61574
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.047.us56.i.i, !dbg !61537 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.048.us55.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i64 16, i1 false), !dbg !61543, !alias.scope !61523, !noalias !61547
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.us54.i.i, i64 16, i1 false), !dbg !61550, !alias.scope !61523, !noalias !61547
  %i.ga = add i64 %.sroa.23.047.us56.i.i, %i.fy, !dbg !61581 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us55.i.i, i64 32, !dbg !61553 ; 4 uses
  %.val.i21.us59.i.i = load i16, ptr %i.gb, align 8, !dbg !61582, !alias.scope !61523, !noalias !61560, !noundef !13 ; 3 uses
  %i.gc = and i16 %.val.i21.us59.i.i, 32767, !dbg !61583
  %i.gd = icmp samesign ult i16 %i.gc, 31745, !dbg !61583
  %.not.i4.i.i.i.i23.us60.i.i = icmp slt i16 %.val.i21.us59.i.i, 0, !dbg !61588
  %.not31.i.i.i.i28.us64.i.i = icmp samesign uge i16 %.val2.i.pre.i.i48, %.val.i21.us59.i.i, !dbg !61588
  %or.cond.i.i.i29.us65.not.i.i = select i1 %.not.i4.i.i.i.i23.us60.i.i, i1 true, i1 %.not31.i.i.i.i28.us64.i.i, !dbg !61588
  %narrow121.i.i = select i1 %i.gd, i1 %or.cond.i.i.i29.us65.not.i.i, i1 false, !dbg !61588
  %i.ge = zext i1 %narrow121.i.i to i64, !dbg !61588
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.ga, !dbg !61555 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.us54.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i64 16, i1 false), !dbg !61558, !alias.scope !61523, !noalias !61560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !dbg !61563, !alias.scope !61523, !noalias !61560
  %i.gg = add i64 %i.ga, %i.ge, !dbg !61565       ; 2 uses
  %.sroa.13.0.us68.i.i = getelementptr inbounds nuw i8, ptr %.sroa.031.048.us55.i.i, i64 48, !dbg !61533 ; 3 uses
  %i.gh = icmp ult ptr %.sroa.13.0.us68.i.i, %i.fn, !dbg !61534
  br i1 %i.gh, label %.lr.ph.split.split.us.i.i, label %.preheader.split.split.us.i.i60.preheader, !dbg !61534

.preheader.i.i49:                                 ; preds = %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i, %bb.bn
  %.sroa.23.0.lcssa.i.i50 = phi i64 [ 0, %bb.bn ], [ %i.hm, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], !dbg !61533 ; 3 uses
  %.sroa.031.0.lcssa.i.i = phi ptr [ %i.fi, %bb.bn ], [ %i.hg, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], !dbg !61533 ; 3 uses
  %.sroa.13.0.lcssa.i.i51 = phi ptr [ %.sroa.13.046.i.i, %bb.bn ], [ %.sroa.13.0.i.i72, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], !dbg !61533 ; 3 uses
  %i.gi = icmp samesign ugt i16 %i.fp, 31744
  br i1 %i.gi, label %.thread18.i.i.i.i.us.i.i.preheader.a, label %.preheader.split.i.i52

.thread18.i.i.i.i.us.i.i.preheader.a:             ; preds = %.thread18.i.i.i.i15.us.i.i, %.preheader.i.i49
  %.sroa.23.1.us.i.i65.ph.a = phi i64 [ %.sroa.23.0.lcssa.i.i50, %.preheader.i.i49 ], [ %i.fu, %.thread18.i.i.i.i15.us.i.i ]
  %.sroa.13.1.us.i.i66.ph = phi ptr [ %.sroa.13.0.lcssa.i.i51, %.preheader.i.i49 ], [ %.sroa.13.0.us.i.i73.a, %.thread18.i.i.i.i15.us.i.i ]
  %.sroa.031.1.us.i.i.ph = phi ptr [ %.sroa.031.0.lcssa.i.i, %.preheader.i.i49 ], [ %i.fs, %.thread18.i.i.i.i15.us.i.i ]
  br label %.thread18.i.i.i.i.us.i.i, !dbg !61595

.thread18.i.i.i.i.us.i.i:                         ; preds = %.thread18.i.i.i.i.us.i.i.preheader.a, %.thread18.i.i.i.i.us.i.i
  %.sroa.23.1.us.i.i65 = phi i64 [ %i.gl, %.thread18.i.i.i.i.us.i.i ], [ %.sroa.23.1.us.i.i65.ph.a, %.thread18.i.i.i.i.us.i.i.preheader.a ], !dbg !61533 ; 2 uses
  %.sroa.13.1.us.i.i66 = phi ptr [ %.sroa.13.1.sroa.gep.us.i.i68, %.thread18.i.i.i.i.us.i.i ], [ %.sroa.13.1.us.i.i66.ph, %.thread18.i.i.i.i.us.i.i.preheader.a ], !dbg !61533 ; 4 uses
  %.sroa.031.1.us.i.i = phi ptr [ %.sroa.13.1.us.i.i66, %.thread18.i.i.i.i.us.i.i ], [ %.sroa.031.1.us.i.i.ph, %.thread18.i.i.i.i.us.i.i.preheader.a ], !dbg !61533
  %i.gj = icmp eq ptr %.sroa.13.1.us.i.i66, %i.fm, !dbg !61598 ; 2 uses
  %.sroa.01.0.us.i.i67 = select i1 %i.gj, ptr %i.a, ptr %.sroa.13.1.us.i.i66, !dbg !61599
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.1.us.i.i65, !dbg !61600 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.1.us.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !dbg !61603, !alias.scope !61523, !noalias !61605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.us.i.i67, i64 16, i1 false), !dbg !61608, !noalias !61605
  %i.gl = add i64 %.sroa.23.1.us.i.i65, 1, !dbg !61610 ; 2 uses
  %.sroa.13.1.sroa.gep.us.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.us.i.i66, i64 16, !dbg !61611
  br i1 %i.gj, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.thread18.i.i.i.i.us.i.i, !dbg !61595

.preheader.split.i.i52:                           ; preds = %.preheader.i.i49
  %i.gm = icmp sgt i16 %.val2.i.pre.i.i48, -1
  br i1 %i.gm, label %.preheader.split.split.us.i.i60.preheader, label %.preheader.split.split.i.i53

.preheader.split.split.us.i.i60.preheader:        ; preds = %.lr.ph.split.split.us.i.i, %.preheader.split.i.i52
  %.sroa.23.1.us76.i.i61.ph = phi i64 [ %.sroa.23.0.lcssa.i.i50, %.preheader.split.i.i52 ], [ %i.gg, %.lr.ph.split.split.us.i.i ]
  %.sroa.13.1.us77.i.i62.ph = phi ptr [ %.sroa.13.0.lcssa.i.i51, %.preheader.split.i.i52 ], [ %.sroa.13.0.us68.i.i, %.lr.ph.split.split.us.i.i ]
  %.sroa.031.1.us78.i.i.ph = phi ptr [ %.sroa.031.0.lcssa.i.i, %.preheader.split.i.i52 ], [ %i.gb, %.lr.ph.split.split.us.i.i ]
  br label %.preheader.split.split.us.i.i60, !dbg !61595

.preheader.split.split.us.i.i60:                  ; preds = %.preheader.split.split.us.i.i60.preheader, %.preheader.split.split.us.i.i60
  %.sroa.23.1.us76.i.i61 = phi i64 [ %i.gs, %.preheader.split.split.us.i.i60 ], [ %.sroa.23.1.us76.i.i61.ph, %.preheader.split.split.us.i.i60.preheader ], !dbg !61533 ; 2 uses
  %.sroa.13.1.us77.i.i62 = phi ptr [ %.sroa.13.1.sroa.gep.us82.i.i, %.preheader.split.split.us.i.i60 ], [ %.sroa.13.1.us77.i.i62.ph, %.preheader.split.split.us.i.i60.preheader ], !dbg !61533 ; 4 uses
  %.sroa.031.1.us78.i.i = phi ptr [ %.sroa.13.1.us77.i.i62, %.preheader.split.split.us.i.i60 ], [ %.sroa.031.1.us78.i.i.ph, %.preheader.split.split.us.i.i60.preheader ], !dbg !61533
  %i.gn = icmp eq ptr %.sroa.13.1.us77.i.i62, %i.fm, !dbg !61598 ; 2 uses
  %.sroa.01.0.us79.i.i63 = select i1 %i.gn, ptr %i.a, ptr %.sroa.13.1.us77.i.i62, !dbg !61599 ; 2 uses
  %.val.i.us80.i.i64 = load i16, ptr %.sroa.01.0.us79.i.i63, align 8, !dbg !61613, !noalias !61605, !noundef !13 ; 3 uses
  %i.go = and i16 %.val.i.us80.i.i64, 32767, !dbg !61614
  %i.gp = icmp samesign ult i16 %i.go, 31745, !dbg !61614
  %.not.i4.i.i.i.i.us.i.i = icmp slt i16 %.val.i.us80.i.i64, 0, !dbg !61619
  %.not31.i.i.i.i.us.i.i = icmp samesign uge i16 %.val2.i.pre.i.i48, %.val.i.us80.i.i64, !dbg !61619
  %or.cond.i.i.i.us.not.i.i = select i1 %.not.i4.i.i.i.i.us.i.i, i1 true, i1 %.not31.i.i.i.i.us.i.i, !dbg !61619
  %narrow86.i.i = select i1 %i.gp, i1 %or.cond.i.i.i.us.not.i.i, i1 false, !dbg !61619
  %i.gq = zext i1 %narrow86.i.i to i64, !dbg !61619
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.1.us76.i.i61, !dbg !61600 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.1.us78.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !dbg !61603, !alias.scope !61523, !noalias !61605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.us79.i.i63, i64 16, i1 false), !dbg !61608, !noalias !61605
  %i.gs = add i64 %.sroa.23.1.us76.i.i61, %i.gq, !dbg !61610 ; 2 uses
  %.sroa.13.1.sroa.gep.us82.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.us77.i.i62, i64 16, !dbg !61611
  br i1 %i.gn, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.preheader.split.split.us.i.i60, !dbg !61595

.preheader.split.split.i.i53:                     ; preds = %.preheader.split.i.i52, %bb.bq
  %.sroa.23.1.i.i54 = phi i64 [ %i.gz, %bb.bq ], [ %.sroa.23.0.lcssa.i.i50, %.preheader.split.i.i52 ], !dbg !61533 ; 2 uses
  %.sroa.13.1.i.i55 = phi ptr [ %.sroa.13.1.sroa.gep.i.i58, %bb.bq ], [ %.sroa.13.0.lcssa.i.i51, %.preheader.split.i.i52 ], !dbg !61533 ; 4 uses
  %.sroa.031.1.i.i = phi ptr [ %.sroa.13.1.i.i55, %bb.bq ], [ %.sroa.031.0.lcssa.i.i, %.preheader.split.i.i52 ], !dbg !61533
  %i.gt = icmp eq ptr %.sroa.13.1.i.i55, %i.fm, !dbg !61598 ; 2 uses
  %.sroa.01.0.i.i56 = select i1 %i.gt, ptr %i.a, ptr %.sroa.13.1.i.i55, !dbg !61599 ; 2 uses
  %.val.i.i.i57 = load i16, ptr %.sroa.01.0.i.i56, align 8, !dbg !61613, !noalias !61605, !noundef !13 ; 4 uses
  %i.gu = and i16 %.val.i.i.i57, 32767, !dbg !61614
  %i.gv = icmp samesign ugt i16 %i.gu, 31744, !dbg !61614
  br i1 %i.gv, label %bb.bq, label %bb.bo, !dbg !61619

bb.bo:                                            ; preds = %.preheader.split.split.i.i53
  %.not.i4.i.i.i.i.i.i = icmp sgt i16 %.val.i.i.i57, -1, !dbg !61626
  br i1 %.not.i4.i.i.i.i.i.i, label %.split.i.i.i.i.i.i, label %bb.bp, !dbg !61627

.split.i.i.i.i.i.i:                               ; preds = %bb.bo
  %i.gw = or i16 %.val.i.i.i57, %i.fp, !dbg !61628
  %.not.i.i.i.i.i.i = icmp eq i16 %i.gw, 0, !dbg !61628
  br i1 %.not.i.i.i.i.i.i, label %.thread18.i.i.i.i.i.i, label %bb.bq, !dbg !61629

bb.bp:                                            ; preds = %bb.bo
  %.not30.i.i.i.i.i.i = icmp samesign ult i16 %.val.i.i.i57, %.val2.i.pre.i.i48, !dbg !61630
  br i1 %.not30.i.i.i.i.i.i, label %bb.bq, label %.thread18.i.i.i.i.i.i, !dbg !61629

.thread18.i.i.i.i.i.i:                            ; preds = %bb.bp, %.split.i.i.i.i.i.i
  br label %bb.bq, !dbg !61632

bb.bq:                                            ; preds = %.thread18.i.i.i.i.i.i, %bb.bp, %.split.i.i.i.i.i.i, %.preheader.split.split.i.i53
  %i.gx = phi i64 [ 0, %bb.bp ], [ 1, %.thread18.i.i.i.i.i.i ], [ 0, %.preheader.split.split.i.i53 ], [ 0, %.split.i.i.i.i.i.i ], !dbg !61614
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.1.i.i54, !dbg !61600 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !dbg !61603, !alias.scope !61523, !noalias !61605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.0.i.i56, i64 16, i1 false), !dbg !61608, !noalias !61605
  %i.gz = add i64 %i.gx, %.sroa.23.1.i.i54, !dbg !61610 ; 2 uses
  %.sroa.13.1.sroa.gep.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.i55, i64 16, !dbg !61611
  br i1 %i.gt, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.preheader.split.split.i.i53, !dbg !61595

.lr.ph.split.split.i.i70:                         ; preds = %.lr.ph.split.i.i, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i
  %.sroa.13.049.i.i = phi ptr [ %.sroa.13.0.i.i72, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], [ %.sroa.13.046.i.i, %.lr.ph.split.i.i ] ; 3 uses
  %.sroa.031.048.i.i = phi ptr [ %i.hg, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], [ %i.fi, %.lr.ph.split.i.i ] ; 3 uses
  %.sroa.23.047.i.i = phi i64 [ %i.hm, %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i ], [ 0, %.lr.ph.split.i.i ] ; 2 uses
  %.val.i11.i.i71 = load i16, ptr %.sroa.13.049.i.i, align 8, !dbg !61566, !alias.scope !61523, !noalias !61547, !noundef !13 ; 4 uses
  %i.ha = and i16 %.val.i11.i.i71, 32767, !dbg !61567
  %i.hb = icmp samesign ugt i16 %i.ha, 31744, !dbg !61567
  br i1 %i.hb, label %bb.bt, label %bb.br, !dbg !61574

bb.br:                                            ; preds = %.lr.ph.split.split.i.i70
  %.not.i4.i.i.i.i13.i.i = icmp sgt i16 %.val.i11.i.i71, -1, !dbg !61633
  br i1 %.not.i4.i.i.i.i13.i.i, label %.split.i.i.i.i16.i.i, label %bb.bs, !dbg !61634

.split.i.i.i.i16.i.i:                             ; preds = %bb.br
  %i.hc = or i16 %.val.i11.i.i71, %i.fp, !dbg !61635
  %.not.i.i.i.i17.i.i = icmp eq i16 %i.hc, 0, !dbg !61635
  br i1 %.not.i.i.i.i17.i.i, label %.thread18.i.i.i.i15.i.i, label %bb.bt, !dbg !61636

bb.bs:                                            ; preds = %bb.br
  %.not30.i.i.i.i14.i.i = icmp samesign ult i16 %.val.i11.i.i71, %.val2.i.pre.i.i48, !dbg !61637
  br i1 %.not30.i.i.i.i14.i.i, label %bb.bt, label %.thread18.i.i.i.i15.i.i, !dbg !61636

.thread18.i.i.i.i15.i.i:                          ; preds = %bb.bs, %.split.i.i.i.i16.i.i
  br label %bb.bt, !dbg !61639

bb.bt:                                            ; preds = %.thread18.i.i.i.i15.i.i, %bb.bs, %.split.i.i.i.i16.i.i, %.lr.ph.split.split.i.i70
  %i.hd = phi i64 [ 0, %bb.bs ], [ 1, %.thread18.i.i.i.i15.i.i ], [ 0, %.lr.ph.split.split.i.i70 ], [ 0, %.split.i.i.i.i16.i.i ], !dbg !61567
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %.sroa.23.047.i.i, !dbg !61537 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.031.048.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.he, i64 16, i1 false), !dbg !61543, !alias.scope !61523, !noalias !61547
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.i.i, i64 16, i1 false), !dbg !61550, !alias.scope !61523, !noalias !61547
  %i.hf = add i64 %i.hd, %.sroa.23.047.i.i, !dbg !61581 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.031.048.i.i, i64 32, !dbg !61553 ; 4 uses
  %.val.i21.i.i = load i16, ptr %i.hg, align 8, !dbg !61582, !alias.scope !61523, !noalias !61560, !noundef !13 ; 4 uses
  %i.hh = and i16 %.val.i21.i.i, 32767, !dbg !61583
  %i.hi = icmp samesign ugt i16 %i.hh, 31744, !dbg !61583
  br i1 %i.hi, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i, label %bb.bu, !dbg !61588

bb.bu:                                            ; preds = %bb.bt
  %.not.i4.i.i.i.i23.i.i = icmp sgt i16 %.val.i21.i.i, -1, !dbg !61640
  br i1 %.not.i4.i.i.i.i23.i.i, label %.split.i.i.i.i26.i.i, label %bb.bv, !dbg !61641

.split.i.i.i.i26.i.i:                             ; preds = %bb.bu
  %i.hj = or i16 %.val.i21.i.i, %i.fp, !dbg !61642
  %.not.i.i.i.i27.i.i = icmp eq i16 %i.hj, 0, !dbg !61642
  br i1 %.not.i.i.i.i27.i.i, label %.thread18.i.i.i.i25.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i, !dbg !61643

bb.bv:                                            ; preds = %bb.bu
  %.not30.i.i.i.i24.i.i = icmp samesign ult i16 %.val.i21.i.i, %.val2.i.pre.i.i48, !dbg !61644
  br i1 %.not30.i.i.i.i24.i.i, label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i, label %.thread18.i.i.i.i25.i.i, !dbg !61643

.thread18.i.i.i.i25.i.i:                          ; preds = %bb.bv, %.split.i.i.i.i26.i.i
  br label %_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i, !dbg !61646

_RNCINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB4_9quicksortB1z_NCINvMBa_SB1z_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1A_FjjjETjjEEs_0s_0E0E0E0CskY9G75ZWc4U_11polars_expr.exit30.i.i: ; preds = %.thread18.i.i.i.i25.i.i, %bb.bv, %.split.i.i.i.i26.i.i, %bb.bt
  %i.hk = phi i64 [ 0, %bb.bv ], [ 1, %.thread18.i.i.i.i25.i.i ], [ 0, %bb.bt ], [ 0, %.split.i.i.i.i26.i.i ], !dbg !61583
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.fi, i64 %i.hf, !dbg !61555 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.049.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i64 16, i1 false), !dbg !61558, !alias.scope !61523, !noalias !61560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i64 16, i1 false), !dbg !61563, !alias.scope !61523, !noalias !61560
  %i.hm = add i64 %i.hk, %i.hf, !dbg !61565       ; 2 uses
  %.sroa.13.0.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.031.048.i.i, i64 48, !dbg !61533 ; 3 uses
  %i.hn = icmp ult ptr %.sroa.13.0.i.i72, %i.fn, !dbg !61534
  br i1 %i.hn, label %.lr.ph.split.split.i.i70, label %.preheader.i.i49, !dbg !61534

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.bq, %.preheader.split.split.us.i.i60, %.thread18.i.i.i.i.us.i.i
  %.us-phi75.i.i = phi i64 [ %i.gl, %.thread18.i.i.i.i.us.i.i ], [ %i.gs, %.preheader.split.split.us.i.i60 ], [ %i.gz, %bb.bq ], !dbg !61647 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !61647, !noalias !61519
  %.not7.i59 = icmp ult i64 %.us-phi75.i.i, %.sroa.15.0111227, !dbg !61648
  br i1 %.not7.i59, label %bb.bx, label %bb.bw, !dbg !61648

bb.bw:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  tail call void @llvm.trap(), !dbg !61650
  unreachable, !dbg !61650

bb.bx:                                            ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTNtNtCs2mZqlW55729_12polars_utils7float164pf16dENCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantileB1y_FjjjETjjEEs_0s_0E0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  tail call void @_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE14swap_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %.sroa.0.0112226, i64 noundef range(i64 33, 576460752303423488) %.sroa.15.0111227, i64 noundef 0, i64 noundef %.us-phi75.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !dbg !61651
  %i.ho = add nuw nsw i64 %.us-phi75.i.i, 1, !dbg !61652 ; 2 uses
  %i.hp = sub nuw i64 %.sroa.15.0111227, %i.ho, !dbg !61654
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0112226, i64 %i.ho, !dbg !61660
  br label %.backedge, !dbg !61183

.backedge:                                        ; preds = %bb.bx, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.023.0.be = phi ptr [ %i.ex, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit ], [ null, %bb.bx ]
  %.sroa.15.0.be = phi i64 [ %i.fa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit ], [ %i.hp, %bb.bx ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.ey, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16dE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit ], [ %i.hq, %bb.bx ] ; 3 uses
  %i.hr = icmp ult i64 %.sroa.15.0.be, 33, !dbg !61002
  br i1 %i.hr, label %._crit_edge, label %bb.b, !dbg !61002
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort8unstable9quicksort9quicksortTddENCINvMB8_SB17_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !61665 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [768 x i8], align 8               ; 20 uses
  %i.d = icmp samesign ult i64 %1, 33, !dbg !61666
  br i1 %i.d, label %._crit_edge, label %.lr.ph, !dbg !61666

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp eq i32 %3, 0, !dbg !61667
  br i1 %i.e, label %._crit_edge160, label %.lr.ph159, !dbg !61667

bb.b:                                             ; preds = %.backedge
  %i.f = icmp eq i32 %i.ef, 0, !dbg !61667
  br i1 %i.f, label %._crit_edge160, label %.lr.ph159, !dbg !61667

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 9 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61668), !dbg !61671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !61676, !noalias !61668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61679), !dbg !61682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61685), !dbg !61682
  %i.g = icmp samesign ult i64 %.sroa.15.0.lcssa, 2, !dbg !61687
  br i1 %i.g, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared9smallsort18small_sort_generalTddENCINvMB8_SB1f_16sort_unstable_byNCNCINvNtNtNtCslFlrwjHoTci_14polars_compute7rolling8no_nulls8quantile31rolling_apply_weighted_quantiledFjjjETjjEEs_0s_0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !61687

bb.c:                                             ; preds = %._crit_edge
  %i.h = lshr i64 %.sroa.15.0.lcssa, 1, !dbg !61691 ; 12 uses
  %i.i = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15, !dbg !61693
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !61693

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7, !dbg !61696
  br i1 %i.j, label %bb.f, label %bb.g, !dbg !61696

end_hunk_1
