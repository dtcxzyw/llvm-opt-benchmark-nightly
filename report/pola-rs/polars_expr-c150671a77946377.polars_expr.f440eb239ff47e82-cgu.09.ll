Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.09?download=true
inline.NumInlined: 10247
inline.NumDeleted: 3945
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BT_ECskY9G75ZWc4U_11polars_expr:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10902), !dbg !11015
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10903), !dbg !11015
  %.sroa.097.0.copyload = load ptr, ptr %i.l, align 8, !dbg !11016, !alias.scope !10904
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !11016
  %.sroa.498.0.copyload = load ptr, ptr %.sroa.498.0..sroa_idx, align 8, !dbg !11016, !alias.scope !10904
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !11016
  %.sroa.599.0.copyload = load ptr, ptr %.sroa.599.0..sroa_idx, align 8, !dbg !11016, !alias.scope !10904
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !11016
  %.sroa.7101.0.copyload = load i64, ptr %.sroa.7101.0..sroa_idx, align 8, !dbg !11016, !alias.scope !10904
  %.sroa.8102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !11016
  %.sroa.8102.0.copyload = load i64, ptr %.sroa.8102.0..sroa_idx, align 8, !dbg !11016, !alias.scope !10904
  %.sroa.9103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !11016
  %.sroa.9103.0.copyload = load i64, ptr %.sroa.9103.0..sroa_idx, align 8, !dbg !11016, !alias.scope !10904
  %.sroa.10104.56.copyload = load ptr, ptr %i.k, align 8, !dbg !11016, !alias.scope !10905
  %.sroa.12105.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !11016
  %.sroa.12105.56.copyload = load ptr, ptr %.sroa.12105.56..sroa_idx, align 8, !dbg !11016, !alias.scope !10905
  %.sroa.13106.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !11016
  %.sroa.13106.56.copyload = load ptr, ptr %.sroa.13106.56..sroa_idx, align 8, !dbg !11016, !alias.scope !10905
  %.sroa.15108.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !11016
  %.sroa.15108.56.copyload = load i64, ptr %.sroa.15108.56..sroa_idx, align 8, !dbg !11016, !alias.scope !10905
  %.sroa.16109.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !11016
  %.sroa.16109.56.copyload = load i64, ptr %.sroa.16109.56..sroa_idx, align 8, !dbg !11016, !alias.scope !10905
  %.sroa.17.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !11016
  %.sroa.17.56.copyload = load i64, ptr %.sroa.17.56..sroa_idx, align 8, !dbg !11016, !alias.scope !10905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11018, !noalias !10906
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.i, i8 0, i64 1024, i1 false), !noalias !10906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11019, !noalias !10906
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.h, i8 0, i64 1024, i1 false), !noalias !10906
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br label %bb.k, !dbg !11020

bb.k:                                             ; preds = %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i, %bb.j
  %.sroa.34.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.34.3, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11021 ; 4 uses
  %.sroa.0.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.0.3, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11021 ; 8 uses
  %.sroa.63.0.i = phi i64 [ %.sroa.17.56.copyload, %bb.j ], [ %.sroa.63.1.i.ph277, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 5 uses
  %.sroa.59.0.i = phi i64 [ %.sroa.16109.56.copyload, %bb.j ], [ %.sroa.59.1.i.ph278, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 3 uses
  %.sroa.55.0.i = phi i64 [ %.sroa.15108.56.copyload, %bb.j ], [ %.sroa.55.1.i.ph279, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 3 uses
  %.sroa.45.0.i = phi ptr [ %.sroa.13106.56.copyload, %bb.j ], [ %.sroa.45.1.i.ph280, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 8 uses
  %.sroa.39.0.i = phi ptr [ %.sroa.12105.56.copyload, %bb.j ], [ %.sroa.39.1.i.lcssa, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 7 uses
  %.sroa.35.0.i = phi ptr [ %.sroa.10104.56.copyload, %bb.j ], [ %.sroa.35.1.i.lcssa, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 4 uses
  %.sroa.31.0.i = phi i64 [ %.sroa.9103.0.copyload, %bb.j ], [ %.sroa.31.1.i.lcssa, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 5 uses
  %.sroa.27.0.i = phi i64 [ %.sroa.8102.0.copyload, %bb.j ], [ %.sroa.27.1.i.lcssa, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 3 uses
  %.sroa.23.0.i = phi i64 [ %.sroa.7101.0.copyload, %bb.j ], [ %.sroa.23.1.i.lcssa, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 3 uses
  %.sroa.13.0.i = phi ptr [ %.sroa.599.0.copyload, %bb.j ], [ %.sroa.13.1.i.lcssa, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 8 uses
  %.sroa.7.0.i = phi ptr [ %.sroa.498.0.copyload, %bb.j ], [ %.sroa.7.1.i.lcssa, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 7 uses
  %.sroa.067.0.i = phi ptr [ %.sroa.097.0.copyload, %bb.j ], [ %.sroa.067.1.i.lcssa, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11022 ; 4 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.j ], [ %i.ko, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11023 ; 7 uses
  %i.aq = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.hc, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11021 ; 6 uses
  %i.ar = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.hd, %_RNvXsO_NtCs2mZqlW55729_12polars_utils7float16NtB5_4pf16INtNtCslmKYcnV0hjo_10num_traits4cast11AsPrimitivedE3as_.exit36.i ], !dbg !11021 ; 7 uses
  %.not.i.i.i37.i = icmp eq ptr %.sroa.067.0.i, null, !dbg !11024
  br i1 %.not.i.i.i37.i, label %bb.n, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i38.i, !dbg !11025

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i38.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  %i.as = icmp eq ptr %.sroa.067.0.i, %.sroa.7.0.i, !dbg !11026 ; 2 uses
  %spec.select.idx.i = select i1 %i.as, i64 0, i64 2, !dbg !11027
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.067.0.i, i64 %spec.select.idx.i, !dbg !11027
  %spec.select148.i = select i1 %i.as, ptr null, ptr %.sroa.067.0.i, !dbg !11027
  %i.at = icmp eq i64 %.sroa.27.0.i, 0, !dbg !11028
  br i1 %i.at, label %bb.l, label %._crit_edge.i.i.i.i.i40.i, !dbg !11028

bb.l:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i38.i
  %i.au = icmp eq i64 %.sroa.31.0.i, 0, !dbg !11029
  br i1 %i.au, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i43.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i63.i, !dbg !11029

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i63.i: ; preds = %bb.l
  %.sroa.0.0.i.i.i.i.i.i64.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.0.i, i64 64), !dbg !11030 ; 2 uses
  %i.av = sub nuw i64 %.sroa.31.0.i, %.sroa.0.0.i.i.i.i.i.i64.i, !dbg !11031
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i65.i = load i64, ptr %.sroa.13.0.i, align 1, !dbg !11032, !noalias !10908
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i, i64 8, !dbg !11033
  br label %._crit_edge.i.i.i.i.i40.i, !dbg !11034

._crit_edge.i.i.i.i.i40.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i63.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i38.i
  %.sroa.31.7.i = phi i64 [ %i.av, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i63.i ], [ %.sroa.31.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i38.i ], !dbg !11022
  %.sroa.13.7.i = phi ptr [ %i.aw, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i63.i ], [ %.sroa.13.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i38.i ], !dbg !11022
  %i.ax = phi i64 [ %.sroa.0.0.i.i.i.i.i.i64.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i63.i ], [ %.sroa.27.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i38.i ], !dbg !11035
  %i.ay = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i65.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i63.i ], [ %.sroa.23.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i38.i ], !dbg !11036 ; 2 uses
  %i.az = trunc i64 %i.ay to i8, !dbg !11036
  %i.ba = lshr i64 %i.ay, 1, !dbg !11037
  %i.bb = add i64 %i.ax, -1, !dbg !11035
  %i.bc = and i8 %i.az, 1, !dbg !11038
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i43.i, !dbg !11039

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i43.i: ; preds = %._crit_edge.i.i.i.i.i40.i, %bb.l
  %.sroa.31.8.i = phi i64 [ 0, %bb.l ], [ %.sroa.31.7.i, %._crit_edge.i.i.i.i.i40.i ], !dbg !11022
  %.sroa.27.6.i = phi i64 [ 0, %bb.l ], [ %i.bb, %._crit_edge.i.i.i.i.i40.i ], !dbg !11022
  %.sroa.23.6.i = phi i64 [ %.sroa.23.0.i, %bb.l ], [ %i.ba, %._crit_edge.i.i.i.i.i40.i ], !dbg !11022
  %.sroa.13.8.i = phi ptr [ %.sroa.13.0.i, %bb.l ], [ %.sroa.13.7.i, %._crit_edge.i.i.i.i.i40.i ], !dbg !11022
  %.sroa.0.0.i8.i.i.i.i44.i = phi i8 [ 2, %bb.l ], [ %i.bc, %._crit_edge.i.i.i.i.i40.i ], !dbg !11040
  %i.bd = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i44.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select148.i), !dbg !11041, !noalias !10909 ; 2 uses
  %i.be = extractvalue { i8, ptr } %i.bd, 0, !dbg !11042 ; 2 uses
  %.not.i.i.i.i45.i = icmp eq i8 %i.be, 2, !dbg !11043
  br i1 %.not.i.i.i.i45.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.m, !dbg !11044

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i43.i
  %i.bf = extractvalue { i8, ptr } %i.bd, 1, !dbg !11042 ; 2 uses
  %i.bg = trunc nuw i8 %i.be to i1, !dbg !11045
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  %..i.i.i.i46.i = select i1 %i.bg, ptr %i.bf, ptr null, !dbg !11046
  br label %bb.p, !dbg !11047

bb.n:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i), "nonnull"(ptr %.sroa.13.0.i) ]
  %i.bh = icmp eq ptr %.sroa.7.0.i, %.sroa.13.0.i, !dbg !11048
  br i1 %i.bh, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.o, !dbg !11049

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 2, !dbg !11050
  br label %bb.p, !dbg !11051

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.31.9.i = phi i64 [ %.sroa.31.0.i, %bb.o ], [ %.sroa.31.8.i, %bb.m ], !dbg !11022
  %.sroa.27.7.i = phi i64 [ %.sroa.27.0.i, %bb.o ], [ %.sroa.27.6.i, %bb.m ], !dbg !11022
  %.sroa.23.7.i = phi i64 [ %.sroa.23.0.i, %bb.o ], [ %.sroa.23.6.i, %bb.m ], !dbg !11022
  %.sroa.13.9.i = phi ptr [ %.sroa.13.0.i, %bb.o ], [ %.sroa.13.8.i, %bb.m ], !dbg !11022
  %.sroa.7.5.i = phi ptr [ %i.bi, %bb.o ], [ %.sroa.7.0.i, %bb.m ], !dbg !11022
  %.sroa.067.7.i = phi ptr [ null, %bb.o ], [ %spec.select.i, %bb.m ], !dbg !11022
  %.sroa.3.0.i.pn.i.ph.i.i47.i = phi ptr [ %.sroa.7.0.i, %bb.o ], [ %..i.i.i.i46.i, %bb.m ]
  %.not.i10.i.i48.i = icmp eq ptr %.sroa.35.0.i, null, !dbg !11052
  br i1 %.not.i10.i.i48.i, label %bb.s, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i49.i, !dbg !11053

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i49.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i) ]
  %i.bj = icmp eq ptr %.sroa.35.0.i, %.sroa.39.0.i, !dbg !11054 ; 2 uses
  %spec.select149.idx.i = select i1 %i.bj, i64 0, i64 2, !dbg !11055
  %spec.select149.i = getelementptr inbounds nuw i8, ptr %.sroa.35.0.i, i64 %spec.select149.idx.i, !dbg !11055
  %spec.select150.i = select i1 %i.bj, ptr null, ptr %.sroa.35.0.i, !dbg !11055
  %i.bk = icmp eq i64 %.sroa.59.0.i, 0, !dbg !11056
  br i1 %i.bk, label %bb.q, label %._crit_edge.i.i.i13.i.i51.i, !dbg !11056

bb.q:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i49.i
  %i.bl = icmp eq i64 %.sroa.63.0.i, 0, !dbg !11057
  br i1 %i.bl, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i54.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i60.i, !dbg !11057

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i60.i: ; preds = %bb.q
  %.sroa.0.0.i.i.i.i25.i.i61.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.0.i, i64 64), !dbg !11058 ; 2 uses
  %i.bm = sub nuw i64 %.sroa.63.0.i, %.sroa.0.0.i.i.i.i25.i.i61.i, !dbg !11059
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.i) ]
  %.sroa.02.0.copyload.i.i.i26.i.i62.i = load i64, ptr %.sroa.45.0.i, align 1, !dbg !11060, !noalias !10910
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.45.0.i, i64 8, !dbg !11061
  br label %._crit_edge.i.i.i13.i.i51.i, !dbg !11062

._crit_edge.i.i.i13.i.i51.i:                      ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i60.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i49.i
  %.sroa.63.7.i = phi i64 [ %i.bm, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i60.i ], [ %.sroa.63.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i49.i ], !dbg !11022
  %.sroa.45.7.i = phi ptr [ %i.bn, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i60.i ], [ %.sroa.45.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i49.i ], !dbg !11022
  %i.bo = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i61.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i60.i ], [ %.sroa.59.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i49.i ], !dbg !11063
  %i.bp = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i62.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i60.i ], [ %.sroa.55.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i49.i ], !dbg !11064 ; 2 uses
  %i.bq = trunc i64 %i.bp to i8, !dbg !11064
  %i.br = lshr i64 %i.bp, 1, !dbg !11065
  %i.bs = add i64 %i.bo, -1, !dbg !11063
  %i.bt = and i8 %i.bq, 1, !dbg !11066
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i54.i, !dbg !11067

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i54.i: ; preds = %._crit_edge.i.i.i13.i.i51.i, %bb.q
  %.sroa.63.8.i = phi i64 [ 0, %bb.q ], [ %.sroa.63.7.i, %._crit_edge.i.i.i13.i.i51.i ], !dbg !11022
  %.sroa.59.6.i = phi i64 [ 0, %bb.q ], [ %i.bs, %._crit_edge.i.i.i13.i.i51.i ], !dbg !11022
  %.sroa.55.6.i = phi i64 [ %.sroa.55.0.i, %bb.q ], [ %i.br, %._crit_edge.i.i.i13.i.i51.i ], !dbg !11022
  %.sroa.45.8.i = phi ptr [ %.sroa.45.0.i, %bb.q ], [ %.sroa.45.7.i, %._crit_edge.i.i.i13.i.i51.i ], !dbg !11022
  %.sroa.0.0.i8.i.i17.i.i55.i = phi i8 [ 2, %bb.q ], [ %i.bt, %._crit_edge.i.i.i13.i.i51.i ], !dbg !11068
  %i.bu = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i55.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select150.i), !dbg !11069, !noalias !10911 ; 2 uses
  %i.bv = extractvalue { i8, ptr } %i.bu, 0, !dbg !11070 ; 2 uses
  %.not.i.i18.i.i56.i = icmp eq i8 %i.bv, 2, !dbg !11071
  br i1 %.not.i.i18.i.i56.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.r, !dbg !11072

bb.r:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i54.i
  %i.bw = extractvalue { i8, ptr } %i.bu, 1, !dbg !11070 ; 2 uses
  %i.bx = trunc nuw i8 %i.bv to i1, !dbg !11073
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %..i.i19.i.i57.i = select i1 %i.bx, ptr %i.bw, ptr null, !dbg !11074
  br label %.lr.ph.i.i.i.i.preheader, !dbg !11075

bb.s:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i), "nonnull"(ptr %.sroa.45.0.i) ]
  %i.by = icmp eq ptr %.sroa.39.0.i, %.sroa.45.0.i, !dbg !11076
  br i1 %i.by, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.t, !dbg !11077

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.39.0.i, i64 2, !dbg !11078
  br label %.lr.ph.i.i.i.i.preheader, !dbg !11079

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.t, %bb.r
  %.sroa.63.1.i.ph = phi i64 [ %.sroa.63.0.i, %bb.t ], [ %.sroa.63.8.i, %bb.r ]
  %.sroa.59.1.i.ph = phi i64 [ %.sroa.59.0.i, %bb.t ], [ %.sroa.59.6.i, %bb.r ]
  %.sroa.55.1.i.ph = phi i64 [ %.sroa.55.0.i, %bb.t ], [ %.sroa.55.6.i, %bb.r ]
  %.sroa.45.1.i.ph = phi ptr [ %.sroa.45.0.i, %bb.t ], [ %.sroa.45.8.i, %bb.r ]
  %.sroa.39.1.i.ph = phi ptr [ %i.bz, %bb.t ], [ %.sroa.39.0.i, %bb.r ] ; 4 uses
  %.sroa.35.1.i.ph = phi ptr [ null, %bb.t ], [ %spec.select149.i, %bb.r ]
  %.sroa.1194.0.i.ph = phi ptr [ %.sroa.39.0.i, %bb.t ], [ %..i.i19.i.i57.i, %bb.r ]
  br label %.lr.ph.i.i.i.i.outer, !dbg !11080

.lr.ph.i.i.i.i.outer:                             ; preds = %.lr.ph.i.i.i.i.preheader, %bb.al
  %.sroa.893.0.i.ph = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i47.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.al ] ; 2 uses
  %.sroa.63.1.i.ph277 = phi i64 [ %.sroa.63.1.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.63.4.i, %bb.al ] ; 5 uses
  %.sroa.59.1.i.ph278 = phi i64 [ %.sroa.59.1.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.59.3.i, %bb.al ] ; 3 uses
  %.sroa.55.1.i.ph279 = phi i64 [ %.sroa.55.1.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.55.3.i, %bb.al ] ; 3 uses
  %.sroa.45.1.i.ph280 = phi ptr [ %.sroa.45.1.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.45.4.i, %bb.al ] ; 10 uses
  %.sroa.35.1.i.ph282 = phi ptr [ %.sroa.35.1.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %spec.select153.i, %bb.al ] ; 5 uses
  %.sroa.31.1.i.ph = phi i64 [ %.sroa.31.9.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.31.5.i.peel, %bb.al ] ; 6 uses
  %.sroa.27.1.i.ph = phi i64 [ %.sroa.27.7.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.27.4.i.peel, %bb.al ] ; 4 uses
  %.sroa.23.1.i.ph = phi i64 [ %.sroa.23.7.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.23.4.i.peel, %bb.al ] ; 4 uses
  %.sroa.13.1.i.ph = phi ptr [ %.sroa.13.9.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.13.5.i.peel, %bb.al ] ; 8 uses
  %.sroa.7.1.i.ph = phi ptr [ %.sroa.7.5.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.3.i.peel, %bb.al ] ; 6 uses
  %.sroa.067.1.i.ph = phi ptr [ %.sroa.067.7.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.067.4.i.peel, %bb.al ] ; 5 uses
  %.sroa.1194.0.i.ph283 = phi ptr [ %.sroa.1194.0.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %..i.i19.i.i.i, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10912), !dbg !11081
  call void @llvm.experimental.noalias.scope.decl(metadata !10913), !dbg !11081
  call void @llvm.experimental.noalias.scope.decl(metadata !10914), !dbg !11082
  call void @llvm.experimental.noalias.scope.decl(metadata !10915), !dbg !11082
  call void @llvm.experimental.noalias.scope.decl(metadata !10916), !dbg !11083
  call void @llvm.experimental.noalias.scope.decl(metadata !10917), !dbg !11083
  %.not.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.893.0.i.ph, null, !dbg !11084
  br i1 %.not.i.i.i.i.i.i.i.peel, label %bb.v, label %bb.u, !dbg !11080

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.outer
  %i.ca = load i16, ptr %.sroa.893.0.i.ph, align 2, !dbg !11085, !alias.scope !10918, !noalias !10919, !noundef !3009
  br label %bb.v, !dbg !11086

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.outer
  %.sroa.05.0.i.i.i.i.i.i.i.peel = phi i16 [ 1, %bb.u ], [ 0, %.lr.ph.i.i.i.i.outer ], !dbg !11087
  %.sroa.5.0.i.i.i.i.i.i.i.peel = phi i16 [ %i.ca, %bb.u ], [ undef, %.lr.ph.i.i.i.i.outer ], !dbg !11088
  %.not9.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.1194.0.i.ph283, null, !dbg !11089
  br i1 %.not9.i.i.i.i.i.i.i.peel, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel, label %bb.w, !dbg !11090

bb.w:                                             ; preds = %bb.v
  %i.cb = load i16, ptr %.sroa.1194.0.i.ph283, align 2, !dbg !11091, !alias.scope !10920, !noalias !10919, !noundef !3009
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel, !dbg !11092

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel: ; preds = %bb.w, %bb.v
  %.sroa.06.0.i.i.i.i.i.i.i.peel = phi i16 [ 1, %bb.w ], [ 0, %bb.v ], !dbg !11093
  %.sroa.57.0.i.i.i.i.i.i.i.peel = phi i16 [ %i.cb, %bb.w ], [ undef, %bb.v ], !dbg !11088
  %i.cc = call i48 @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16E3zipBI_ECskY9G75ZWc4U_11polars_expr(i16 noundef %.sroa.05.0.i.i.i.i.i.i.i.peel, i16 %.sroa.5.0.i.i.i.i.i.i.i.peel, i16 noundef %.sroa.06.0.i.i.i.i.i.i.i.peel, i16 %.sroa.57.0.i.i.i.i.i.i.i.peel), !dbg !11094, !noalias !10921 ; 2 uses
  %i.cd = trunc i48 %i.cc to i1, !dbg !11081
  br i1 %i.cd, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i, label %bb.x, !dbg !11081

bb.x:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel
  %.not.i.i.i.i.peel = icmp eq ptr %.sroa.067.1.i.ph, null, !dbg !11095
  br i1 %.not.i.i.i.i.peel, label %bb.aa, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, !dbg !11096

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel: ; preds = %bb.x
  %i.ce = icmp eq ptr %.sroa.067.1.i.ph, %.sroa.7.1.i.ph, !dbg !11097 ; 2 uses
  %spec.select151.idx.i.peel = select i1 %i.ce, i64 0, i64 2, !dbg !11098
  %spec.select151.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.067.1.i.ph, i64 %spec.select151.idx.i.peel, !dbg !11098
  %spec.select152.i.peel = select i1 %i.ce, ptr null, ptr %.sroa.067.1.i.ph, !dbg !11098
  %i.cf = icmp eq i64 %.sroa.27.1.i.ph, 0, !dbg !11099
  br i1 %i.cf, label %bb.y, label %._crit_edge.i.i.i.i.i.i.peel, !dbg !11099

bb.y:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %i.cg = icmp eq i64 %.sroa.31.1.i.ph, 0, !dbg !11100
  br i1 %i.cg, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, !dbg !11100

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel: ; preds = %bb.y
  %.sroa.0.0.i.i.i.i.i.i.i.peel = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.1.i.ph, i64 64), !dbg !11101 ; 2 uses
  %i.ch = sub nuw i64 %.sroa.31.1.i.ph, %.sroa.0.0.i.i.i.i.i.i.i.peel, !dbg !11102
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.1.i.ph) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i.peel = load i64, ptr %.sroa.13.1.i.ph, align 1, !dbg !11103, !noalias !10922
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i.ph, i64 8, !dbg !11104
  br label %._crit_edge.i.i.i.i.i.i.peel, !dbg !11105

._crit_edge.i.i.i.i.i.i.peel:                     ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %.sroa.31.3.i.peel = phi i64 [ %i.ch, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.31.1.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11022
  %.sroa.13.3.i.peel = phi ptr [ %i.ci, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.13.1.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11022
  %i.cj = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.27.1.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11106
  %i.ck = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.23.1.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11107 ; 2 uses
  %i.cl = trunc i64 %i.ck to i8, !dbg !11107
  %i.cm = lshr i64 %i.ck, 1, !dbg !11108
  %i.cn = add i64 %i.cj, -1, !dbg !11106
  %i.co = and i8 %i.cl, 1, !dbg !11109
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, !dbg !11110

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel: ; preds = %._crit_edge.i.i.i.i.i.i.peel, %bb.y
  %.sroa.31.4.i.peel = phi i64 [ 0, %bb.y ], [ %.sroa.31.3.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !11022
  %.sroa.27.3.i.peel = phi i64 [ 0, %bb.y ], [ %i.cn, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !11022
  %.sroa.23.3.i.peel = phi i64 [ %.sroa.23.1.i.ph, %bb.y ], [ %i.cm, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !11022
  %.sroa.13.4.i.peel = phi ptr [ %.sroa.13.1.i.ph, %bb.y ], [ %.sroa.13.3.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !11022
  %.sroa.0.0.i8.i.i.i.i.i.peel = phi i8 [ 2, %bb.y ], [ %i.co, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !11111
  %i.cp = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.peel, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select152.i.peel), !dbg !11112, !noalias !10923 ; 2 uses
  %i.cq = extractvalue { i8, ptr } %i.cp, 0, !dbg !11113 ; 2 uses
  %.not.i.i.i.i.i.peel = icmp eq i8 %i.cq, 2, !dbg !11114
  br i1 %.not.i.i.i.i.i.peel, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.z, !dbg !11115

bb.z:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel
  %i.cr = extractvalue { i8, ptr } %i.cp, 1, !dbg !11113 ; 2 uses
  %i.cs = trunc nuw i8 %i.cq to i1, !dbg !11116
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %..i.i.i.i.i.peel = select i1 %i.cs, ptr %i.cr, ptr null, !dbg !11117
  br label %bb.ac, !dbg !11118

bb.aa:                                            ; preds = %bb.x
  %i.ct = icmp eq ptr %.sroa.7.1.i.ph, %.sroa.13.1.i.ph, !dbg !11119
  br i1 %i.ct, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.ab, !dbg !11120

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.ph, i64 2, !dbg !11121
  br label %bb.ac, !dbg !11122

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.31.5.i.peel = phi i64 [ %.sroa.31.1.i.ph, %bb.ab ], [ %.sroa.31.4.i.peel, %bb.z ], !dbg !11022 ; 2 uses
  %.sroa.27.4.i.peel = phi i64 [ %.sroa.27.1.i.ph, %bb.ab ], [ %.sroa.27.3.i.peel, %bb.z ], !dbg !11022 ; 2 uses
  %.sroa.23.4.i.peel = phi i64 [ %.sroa.23.1.i.ph, %bb.ab ], [ %.sroa.23.3.i.peel, %bb.z ], !dbg !11022 ; 2 uses
  %.sroa.13.5.i.peel = phi ptr [ %.sroa.13.1.i.ph, %bb.ab ], [ %.sroa.13.4.i.peel, %bb.z ], !dbg !11022 ; 2 uses
  %.sroa.7.3.i.peel = phi ptr [ %i.cu, %bb.ab ], [ %.sroa.7.1.i.ph, %bb.z ], !dbg !11022 ; 2 uses
  %.sroa.067.4.i.peel = phi ptr [ null, %bb.ab ], [ %spec.select151.i.peel, %bb.z ], !dbg !11022 ; 2 uses
  %.sroa.3.0.i.pn.i.ph.i.i.i.peel = phi ptr [ %.sroa.7.1.i.ph, %bb.ab ], [ %..i.i.i.i.i.peel, %bb.z ] ; 2 uses
  %.not.i10.i.i.i.peel = icmp eq ptr %.sroa.35.1.i.ph282, null, !dbg !11123
  br i1 %.not.i10.i.i.i.peel, label %bb.ad, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i, !dbg !11124

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.1.i.ph280) ]
  %i.cv = icmp eq ptr %.sroa.39.1.i.ph, %.sroa.45.1.i.ph280, !dbg !11125
  br i1 %i.cv, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %.lr.ph.i.i.i.i, !dbg !11126

.lr.ph.i.i.i.i:                                   ; preds = %bb.am, %bb.ad
  %.sroa.893.0.i = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.ad ], [ %.sroa.3.0.i.pn.i.ph.i.i.i, %bb.am ], !dbg !11127 ; 2 uses
  %.sroa.31.1.i = phi i64 [ %.sroa.31.5.i.peel, %bb.ad ], [ %.sroa.31.5.i, %bb.am ], !dbg !11022 ; 6 uses
  %.sroa.27.1.i = phi i64 [ %.sroa.27.4.i.peel, %bb.ad ], [ %.sroa.27.4.i, %bb.am ], !dbg !11022 ; 4 uses
  %.sroa.23.1.i = phi i64 [ %.sroa.23.4.i.peel, %bb.ad ], [ %.sroa.23.4.i, %bb.am ], !dbg !11022 ; 4 uses
  %.sroa.13.1.i = phi ptr [ %.sroa.13.5.i.peel, %bb.ad ], [ %.sroa.13.5.i, %bb.am ], !dbg !11022 ; 8 uses
  %.sroa.7.1.i = phi ptr [ %.sroa.7.3.i.peel, %bb.ad ], [ %.sroa.7.3.i, %bb.am ], !dbg !11022 ; 6 uses
  %.sroa.067.1.i = phi ptr [ %.sroa.067.4.i.peel, %bb.ad ], [ %.sroa.067.4.i, %bb.am ], !dbg !11022 ; 5 uses
  %.sroa.1194.0.i = phi ptr [ %.sroa.39.1.i.ph, %bb.ad ], [ %.sroa.39.1.i, %bb.am ], !dbg !11127 ; 2 uses
  %.sroa.39.1.i = getelementptr inbounds nuw i8, ptr %.sroa.1194.0.i, i64 2, !dbg !11128 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10924), !dbg !11081
  call void @llvm.experimental.noalias.scope.decl(metadata !10925), !dbg !11081
  call void @llvm.experimental.noalias.scope.decl(metadata !10926), !dbg !11082
  call void @llvm.experimental.noalias.scope.decl(metadata !10927), !dbg !11082
  call void @llvm.experimental.noalias.scope.decl(metadata !10928), !dbg !11083
  call void @llvm.experimental.noalias.scope.decl(metadata !10929), !dbg !11083
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.893.0.i, null, !dbg !11084
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, label %bb.ae, !dbg !11080

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cw = load i16, ptr %.sroa.893.0.i, align 2, !dbg !11085, !alias.scope !10930, !noalias !10919, !noundef !3009
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !11086

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.ae
  %.sroa.05.0.i.i.i.i.i.i.i = phi i16 [ 1, %bb.ae ], [ 0, %.lr.ph.i.i.i.i ], !dbg !11087
  %.sroa.5.0.i.i.i.i.i.i.i = phi i16 [ %i.cw, %bb.ae ], [ undef, %.lr.ph.i.i.i.i ], !dbg !11088
  %i.cx = load i16, ptr %.sroa.1194.0.i, align 2, !dbg !11091, !alias.scope !10931, !noalias !10919, !noundef !3009
  %i.cy = call i48 @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtCs2mZqlW55729_12polars_utils7float164pf16E3zipBI_ECskY9G75ZWc4U_11polars_expr(i16 noundef %.sroa.05.0.i.i.i.i.i.i.i, i16 %.sroa.5.0.i.i.i.i.i.i.i, i16 noundef 1, i16 %i.cx), !dbg !11094, !noalias !10932 ; 2 uses
  %i.cz = trunc i48 %i.cy to i1, !dbg !11081
  br i1 %i.cz, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i, label %bb.af, !dbg !11081

bb.af:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.sroa.067.1.i, null, !dbg !11095
  br i1 %.not.i.i.i.i, label %bb.ai, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !11096

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.af
  %i.da = icmp eq ptr %.sroa.067.1.i, %.sroa.7.1.i, !dbg !11097 ; 2 uses
  %spec.select151.idx.i = select i1 %i.da, i64 0, i64 2, !dbg !11098
  %spec.select151.i = getelementptr inbounds nuw i8, ptr %.sroa.067.1.i, i64 %spec.select151.idx.i, !dbg !11098
  %spec.select152.i = select i1 %i.da, ptr null, ptr %.sroa.067.1.i, !dbg !11098
  %i.db = icmp eq i64 %.sroa.27.1.i, 0, !dbg !11099
  br i1 %i.db, label %bb.ag, label %._crit_edge.i.i.i.i.i.i, !dbg !11099

bb.ag:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.dc = icmp eq i64 %.sroa.31.1.i, 0, !dbg !11100
  br i1 %i.dc, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !11100

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.ag
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.1.i, i64 64), !dbg !11101 ; 2 uses
  %i.dd = sub nuw i64 %.sroa.31.1.i, %.sroa.0.0.i.i.i.i.i.i.i, !dbg !11102
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.1.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.13.1.i, align 1, !dbg !11103, !noalias !10922
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8, !dbg !11104
  br label %._crit_edge.i.i.i.i.i.i, !dbg !11105

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.31.3.i = phi i64 [ %i.dd, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.31.1.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !11022
  %.sroa.13.3.i = phi ptr [ %i.de, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.13.1.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !11022
  %i.df = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.27.1.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !11106
  %i.dg = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.23.1.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !11107 ; 2 uses
  %i.dh = trunc i64 %i.dg to i8, !dbg !11107
  %i.di = lshr i64 %i.dg, 1, !dbg !11108
  %i.dj = add i64 %i.df, -1, !dbg !11106
  %i.dk = and i8 %i.dh, 1, !dbg !11109
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !11110

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.ag
  %.sroa.31.4.i = phi i64 [ 0, %bb.ag ], [ %.sroa.31.3.i, %._crit_edge.i.i.i.i.i.i ], !dbg !11022
  %.sroa.27.3.i = phi i64 [ 0, %bb.ag ], [ %i.dj, %._crit_edge.i.i.i.i.i.i ], !dbg !11022
  %.sroa.23.3.i = phi i64 [ %.sroa.23.1.i, %bb.ag ], [ %i.di, %._crit_edge.i.i.i.i.i.i ], !dbg !11022
  %.sroa.13.4.i = phi ptr [ %.sroa.13.1.i, %bb.ag ], [ %.sroa.13.3.i, %._crit_edge.i.i.i.i.i.i ], !dbg !11022
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ 2, %bb.ag ], [ %i.dk, %._crit_edge.i.i.i.i.i.i ], !dbg !11111
  %i.dl = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select152.i), !dbg !11112, !noalias !10923 ; 2 uses
  %i.dm = extractvalue { i8, ptr } %i.dl, 0, !dbg !11113 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.dm, 2, !dbg !11114
  br i1 %.not.i.i.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.ah, !dbg !11115

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.dn = extractvalue { i8, ptr } %i.dl, 1, !dbg !11113 ; 2 uses
  %i.do = trunc nuw i8 %i.dm to i1, !dbg !11116
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dn) ]
  %..i.i.i.i.i = select i1 %i.do, ptr %i.dn, ptr null, !dbg !11117
  br label %bb.am, !dbg !11118

bb.ai:                                            ; preds = %bb.af
  %i.dp = icmp eq ptr %.sroa.7.1.i, %.sroa.13.1.i, !dbg !11119
  br i1 %i.dp, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.aj, !dbg !11120

bb.aj:                                            ; preds = %bb.ai
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i, i64 2, !dbg !11121
  br label %bb.am, !dbg !11122

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i: ; preds = %bb.ac
  %i.dr = icmp eq ptr %.sroa.35.1.i.ph282, %.sroa.39.1.i.ph, !dbg !11129 ; 2 uses
  %spec.select153.idx.i = select i1 %i.dr, i64 0, i64 2, !dbg !11130
  %spec.select153.i = getelementptr inbounds nuw i8, ptr %.sroa.35.1.i.ph282, i64 %spec.select153.idx.i, !dbg !11130
  %spec.select154.i = select i1 %i.dr, ptr null, ptr %.sroa.35.1.i.ph282, !dbg !11130
  %i.ds = icmp eq i64 %.sroa.59.1.i.ph278, 0, !dbg !11131
  br i1 %i.ds, label %bb.ak, label %._crit_edge.i.i.i13.i.i.i, !dbg !11131

bb.ak:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %i.dt = icmp eq i64 %.sroa.63.1.i.ph277, 0, !dbg !11132
  br i1 %i.dt, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, !dbg !11132

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i: ; preds = %bb.ak
  %.sroa.0.0.i.i.i.i25.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.1.i.ph277, i64 64), !dbg !11133 ; 2 uses
  %i.du = sub nuw i64 %.sroa.63.1.i.ph277, %.sroa.0.0.i.i.i.i25.i.i.i, !dbg !11134
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.1.i.ph280) ]
  %.sroa.02.0.copyload.i.i.i26.i.i.i = load i64, ptr %.sroa.45.1.i.ph280, align 1, !dbg !11135, !noalias !10933
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.45.1.i.ph280, i64 8, !dbg !11136
  br label %._crit_edge.i.i.i13.i.i.i, !dbg !11137

._crit_edge.i.i.i13.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %.sroa.63.3.i = phi i64 [ %i.du, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.63.1.i.ph277, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !11022
  %.sroa.45.3.i = phi ptr [ %i.dv, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.45.1.i.ph280, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !11022
  %i.dw = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.59.1.i.ph278, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !11138
  %i.dx = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.55.1.i.ph279, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !11139 ; 2 uses
  %i.dy = trunc i64 %i.dx to i8, !dbg !11139
  %i.dz = lshr i64 %i.dx, 1, !dbg !11140
  %i.ea = add i64 %i.dw, -1, !dbg !11138
  %i.eb = and i8 %i.dy, 1, !dbg !11141
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, !dbg !11142

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i: ; preds = %._crit_edge.i.i.i13.i.i.i, %bb.ak
  %.sroa.63.4.i = phi i64 [ 0, %bb.ak ], [ %.sroa.63.3.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !11022
  %.sroa.59.3.i = phi i64 [ 0, %bb.ak ], [ %i.ea, %._crit_edge.i.i.i13.i.i.i ], !dbg !11022
  %.sroa.55.3.i = phi i64 [ %.sroa.55.1.i.ph279, %bb.ak ], [ %i.dz, %._crit_edge.i.i.i13.i.i.i ], !dbg !11022
  %.sroa.45.4.i = phi ptr [ %.sroa.45.1.i.ph280, %bb.ak ], [ %.sroa.45.3.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !11022
  %.sroa.0.0.i8.i.i17.i.i.i = phi i8 [ 2, %bb.ak ], [ %i.eb, %._crit_edge.i.i.i13.i.i.i ], !dbg !11143
  %i.ec = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRNtNtCs2mZqlW55729_12polars_utils7float164pf16ECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i.i, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) %spec.select154.i), !dbg !11144, !noalias !10934 ; 2 uses
  %i.ed = extractvalue { i8, ptr } %i.ec, 0, !dbg !11145 ; 2 uses
  %.not.i.i18.i.i.i = icmp eq i8 %i.ed, 2, !dbg !11146
  br i1 %.not.i.i18.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %bb.al, !dbg !11147

bb.al:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %i.ee = extractvalue { i8, ptr } %i.ec, 1, !dbg !11145 ; 2 uses
  %i.ef = trunc nuw i8 %i.ed to i1, !dbg !11148
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  %..i.i19.i.i.i = select i1 %i.ef, ptr %i.ee, ptr null, !dbg !11149
  br label %.lr.ph.i.i.i.i.outer, !dbg !11150

bb.am:                                            ; preds = %bb.ah, %bb.aj
  %.sroa.31.5.i = phi i64 [ %.sroa.31.1.i, %bb.aj ], [ %.sroa.31.4.i, %bb.ah ], !dbg !11022
  %.sroa.27.4.i = phi i64 [ %.sroa.27.1.i, %bb.aj ], [ %.sroa.27.3.i, %bb.ah ], !dbg !11022
  %.sroa.23.4.i = phi i64 [ %.sroa.23.1.i, %bb.aj ], [ %.sroa.23.3.i, %bb.ah ], !dbg !11022
  %.sroa.13.5.i = phi ptr [ %.sroa.13.1.i, %bb.aj ], [ %.sroa.13.4.i, %bb.ah ], !dbg !11022
  %.sroa.7.3.i = phi ptr [ %i.dq, %bb.aj ], [ %.sroa.7.1.i, %bb.ah ], !dbg !11022
  %.sroa.067.4.i = phi ptr [ null, %bb.aj ], [ %spec.select151.i, %bb.ah ], !dbg !11022
  %.sroa.3.0.i.pn.i.ph.i.i.i = phi ptr [ %.sroa.7.1.i, %bb.aj ], [ %..i.i.i.i.i, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.1.i.ph280) ]
  %i.eg = icmp eq ptr %.sroa.39.1.i, %.sroa.45.1.i.ph280, !dbg !11125
  br i1 %i.eg, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, label %.lr.ph.i.i.i.i, !dbg !11126, !llvm.loop !10735

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  %.lcssa302 = phi i48 [ %i.cy, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %i.cc, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel ], !dbg !11094 ; 2 uses
  %.sroa.39.1.i.lcssa = phi ptr [ %.sroa.39.1.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %.sroa.39.1.i.ph, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel ], !dbg !11022
  %.sroa.35.1.i.lcssa = phi ptr [ null, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %.sroa.35.1.i.ph282, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel ], !dbg !11022
  %.sroa.31.1.i.lcssa = phi i64 [ %.sroa.31.1.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %.sroa.31.1.i.ph, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel ], !dbg !11022
  %.sroa.27.1.i.lcssa = phi i64 [ %.sroa.27.1.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %.sroa.27.1.i.ph, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel ], !dbg !11022
  %.sroa.23.1.i.lcssa = phi i64 [ %.sroa.23.1.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %.sroa.23.1.i.ph, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel ], !dbg !11022
  %.sroa.13.1.i.lcssa = phi ptr [ %.sroa.13.1.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %.sroa.13.1.i.ph, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel ], !dbg !11022
  %.sroa.7.1.i.lcssa = phi ptr [ %.sroa.7.1.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %.sroa.7.1.i.ph, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel ], !dbg !11022
  %.sroa.067.1.i.lcssa = phi ptr [ %.sroa.067.1.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ %.sroa.067.1.i.ph, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTINtNtBe_6option6OptionRNtNtCs2mZqlW55729_12polars_utils7float164pf16EB1h_ETB1E_B1E_EQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB1E_B1E_E0E0CskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.peel ], !dbg !11022
  %.sroa.021.2.extract.shift.i = lshr i48 %.lcssa302, 16, !dbg !11151 ; 2 uses
  %.sroa.021.2.extract.trunc.i = trunc i48 %.sroa.021.2.extract.shift.i to i16, !dbg !11151 ; 5 uses
  %.sroa.021.4.extract.shift.i = lshr i48 %.lcssa302, 32, !dbg !11151 ; 2 uses
  %.sroa.021.4.extract.trunc.i = trunc nuw i48 %.sroa.021.4.extract.shift.i to i16, !dbg !11151 ; 5 uses
  %i.eh = icmp ugt i64 %.sroa.0.0.i, 127, !dbg !11152
  br i1 %i.eh, label %bb.at, label %bb.ax, !dbg !11152

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %bb.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i54.i, %bb.n, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i43.i, %bb.ad, %bb.aa, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, %bb.am, %bb.ai, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %.not.i = icmp eq i64 %.sroa.0.0.i, 0, !dbg !11153
  %i.ei = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>, !dbg !11021
  %i.ej = insertelement <2 x double> %i.ei, double %.sroa.34.1, i64 1, !dbg !11021 ; 3 uses
  %i.ek = extractelement <2 x double> %i.ar, i64 0, !dbg !11153 ; 4 uses
  br i1 %.not.i, label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB1U_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRB12_INtNtNtB1Y_5slice4iter4IterB12_ENtNtB3d_8iterator10BitmapIterEB38_ENCINvB2_12pearson_corrB12_B12_E0ENCB5z_s_0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.an, !dbg !11153

bb.an:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i
  %i.el = icmp ult i64 %.sroa.0.0.i, 129
  br i1 %i.el, label %bb.ap, label %bb.ao, !dbg !11154, !prof !3147

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0.i, i64 noundef 128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #43, !dbg !11155, !noalias !10906
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11156, !noalias !10935
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef range(i64 1, 129) %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef range(i64 1, 129) %.sroa.0.0.i), !dbg !11156, !noalias !10906
  call void @llvm.experimental.noalias.scope.decl(metadata !10936), !dbg !11157
  %i.em = load double, ptr %i.g, align 8, !dbg !11158, !alias.scope !10937, !noalias !10935, !noundef !3009 ; 6 uses
  %i.en = fcmp oeq double %i.em, 0.000000e+00, !dbg !11158
  br i1 %i.en, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit.i, label %bb.aq, !dbg !11158

bb.aq:                                            ; preds = %bb.ap
  %i.eo = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !11159
  br i1 %i.eo, label %bb.as, label %bb.ar, !dbg !11159

bb.ar:                                            ; preds = %bb.aq
  %i.ep = fadd double %.sroa.0.1, %i.em, !dbg !11160 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !11161
  %i.er = load double, ptr %i.eq, align 8, !dbg !11161, !alias.scope !10937, !noalias !10935, !noundef !3009 ; 2 uses
  %i.es = fsub double %i.er, %i.ek, !dbg !11161   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !11162
  %i.eu = load double, ptr %i.et, align 8, !dbg !11162, !alias.scope !10937, !noalias !10935, !noundef !3009 ; 2 uses
  %i.ev = extractelement <2 x double> %i.ar, i64 1, !dbg !11162
  %i.ew = fsub double %i.eu, %i.ev, !dbg !11162   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !11163
  %i.ey = load double, ptr %i.ex, align 8, !dbg !11163, !alias.scope !10937, !noalias !10935, !noundef !3009
  %i.ez = fdiv double %i.em, %i.ep, !dbg !11164   ; 2 uses
  %i.fa = fmul double %i.ez, %i.es, !dbg !11165
  %i.fb = fadd double %i.ek, %i.fa, !dbg !11166   ; 2 uses
  %i.fc = fmul double %i.ez, %i.ew, !dbg !11167
  %i.fd = fsub double %i.er, %i.fb, !dbg !11168
  %i.fe = insertelement <2 x double> poison, double %i.fc, i64 0, !dbg !11169
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !11170
  %i.fg = fmul double %i.em, %i.fd, !dbg !11171   ; 2 uses
  %i.fh = fmul double %i.es, %i.fg, !dbg !11171
  %i.fi = fadd double %i.ey, %i.fh, !dbg !11163
  %i.fj = insertelement <2 x double> %i.fe, double %i.fi, i64 1, !dbg !11169
  %i.fk = fadd <2 x double> %i.ej, %i.fj, !dbg !11169 ; 2 uses
  %i.fl = load <2 x double>, ptr %i.ff, align 8, !dbg !11170, !alias.scope !10937, !noalias !10935
  %i.fm = extractelement <2 x double> %i.fk, i64 0, !dbg !11172
  %i.fn = fsub double %i.eu, %i.fm, !dbg !11172
  %i.fo = fmul double %i.em, %i.fn, !dbg !11173
  %i.fp = insertelement <2 x double> poison, double %i.ew, i64 0, !dbg !11174
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !11174
  %i.fr = insertelement <2 x double> poison, double %i.fg, i64 0, !dbg !11174
  %i.fs = insertelement <2 x double> %i.fr, double %i.fo, i64 1, !dbg !11174
  %i.ft = fmul <2 x double> %i.fq, %i.fs, !dbg !11174
  %i.fu = fadd <2 x double> %i.fl, %i.ft, !dbg !11170
  %i.fv = fadd <2 x double> %i.aq, %i.fu, !dbg !11175
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !11176

bb.as:                                            ; preds = %bb.aq
  %.sroa.16.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !11177
  %.sroa.16.0.copyload40 = load double, ptr %.sroa.16.0..sroa_idx39, align 8, !dbg !11177, !alias.scope !10938, !noalias !10939
  %.sroa.25.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !11177
  %i.fw = load <2 x double>, ptr %.sroa.25.0..sroa_idx50, align 8, !dbg !11177, !alias.scope !10938, !noalias !10939
  %.sroa.43.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !11177
  %i.fx = load <2 x double>, ptr %.sroa.43.0..sroa_idx72, align 8, !dbg !11177, !alias.scope !10938, !noalias !10939
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !11178

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.as, %bb.ar, %bb.ap
  %.sroa.16.2 = phi double [ %i.ek, %bb.ap ], [ %.sroa.16.0.copyload40, %bb.as ], [ %i.fb, %bb.ar ], !dbg !11179
  %.sroa.0.2 = phi double [ %.sroa.0.1, %bb.ap ], [ %i.em, %bb.as ], [ %i.ep, %bb.ar ], !dbg !11179
  %i.fy = phi <2 x double> [ %i.ej, %bb.ap ], [ %i.fw, %bb.as ], [ %i.fk, %bb.ar ], !dbg !11179
  %i.fz = phi <2 x double> [ %i.aq, %bb.ap ], [ %i.fx, %bb.as ], [ %i.fv, %bb.ar ], !dbg !11179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11180, !noalias !10935
  br label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryNtNtCs2mZqlW55729_12polars_utils7float164pf16B12_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB1U_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRB12_INtNtNtB1Y_5slice4iter4IterB12_ENtNtB3d_8iterator10BitmapIterEB38_ENCINvB2_12pearson_corrB12_B12_E0ENCB5z_s_0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !11181

bb.at:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11182, !noalias !10940
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef 128), !dbg !11182, !noalias !10906
  call void @llvm.experimental.noalias.scope.decl(metadata !10941), !dbg !11183
  %i.ga = load double, ptr %i.f, align 8, !dbg !11184, !alias.scope !10942, !noalias !10940, !noundef !3009 ; 5 uses
  %i.gb = fcmp oeq double %i.ga, 0.000000e+00, !dbg !11184
  br i1 %i.gb, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit26.i, label %bb.au, !dbg !11184

bb.au:                                            ; preds = %bb.at
  %i.gc = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !11185
  br i1 %i.gc, label %bb.aw, label %bb.av, !dbg !11185

bb.av:                                            ; preds = %bb.au
  %i.gd = fadd double %.sroa.0.1, %i.ga, !dbg !11186 ; 2 uses
  %i.ge = fdiv double %i.ga, %i.gd, !dbg !11187
  %i.gf = load double, ptr %i.ao, align 8, !dbg !11188, !alias.scope !10942, !noalias !10940, !noundef !3009
  %i.gg = load <2 x double>, ptr %i.an, align 8, !dbg !11189, !alias.scope !10942, !noalias !10940 ; 2 uses
  %i.gh = fsub <2 x double> %i.gg, %i.ar, !dbg !11189 ; 3 uses
  %i.gi = insertelement <2 x double> poison, double %i.ge, i64 0, !dbg !11190
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !11190
  %i.gk = fmul <2 x double> %i.gj, %i.gh, !dbg !11190
  %i.gl = fadd <2 x double> %i.ar, %i.gk, !dbg !11191 ; 2 uses
  %i.gm = fsub <2 x double> %i.gg, %i.gl, !dbg !11192
  %i.gn = insertelement <2 x double> poison, double %i.ga, i64 0, !dbg !11193
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !11193
  %i.gp = fmul <2 x double> %i.go, %i.gm, !dbg !11193 ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.gh, %i.gp, !dbg !11193
  %i.gq = extractelement <2 x double> %foldExtExtBinop, i64 0, !dbg !11193
  %i.gr = fadd double %i.gf, %i.gq, !dbg !11188
  %i.gs = fadd double %.sroa.34.1, %i.gr, !dbg !11194
  %i.gt = load <2 x double>, ptr %i.ap, align 8, !dbg !11195, !alias.scope !10942, !noalias !10940
  %i.gu = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> <i32 1, i32 1>, !dbg !11196
  %i.gv = fmul <2 x double> %i.gu, %i.gp, !dbg !11196
  %i.gw = fadd <2 x double> %i.gt, %i.gv, !dbg !11195
  %i.gx = fadd <2 x double> %i.aq, %i.gw, !dbg !11197
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit26.i, !dbg !11198

bb.aw:                                            ; preds = %bb.au
  %i.gy = load <2 x double>, ptr %i.an, align 8, !dbg !11199, !alias.scope !10943, !noalias !10944
  %.sroa.34.0.copyload64 = load double, ptr %i.ao, align 8, !dbg !11199, !alias.scope !10943, !noalias !10944
  %i.gz = load <2 x double>, ptr %i.ap, align 8, !dbg !11199, !alias.scope !10943, !noalias !10944
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit26.i, !dbg !11200

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit26.i: ; preds = %bb.aw, %bb.av, %bb.at
  %.sroa.34.4 = phi double [ %.sroa.34.1, %bb.at ], [ %.sroa.34.0.copyload64, %bb.aw ], [ %i.gs, %bb.av ], !dbg !11179
  %.sroa.0.4 = phi double [ %.sroa.0.1, %bb.at ], [ %i.ga, %bb.aw ], [ %i.gd, %bb.av ], !dbg !11179
  %i.ha = phi <2 x double> [ %i.aq, %bb.at ], [ %i.gz, %bb.aw ], [ %i.gx, %bb.av ], !dbg !11179
  %i.hb = phi <2 x double> [ %i.ar, %bb.at ], [ %i.gy, %bb.aw ], [ %i.gl, %bb.av ], !dbg !11179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11201, !noalias !10940
  br label %bb.ax, !dbg !11202

bb.ax:                                            ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit26.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.34.3 = phi double [ %.sroa.34.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit26.i ], [ %.sroa.34.1, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !11021
  %.sroa.0.3 = phi double [ %.sroa.0.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit26.i ], [ %.sroa.0.1, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !11021
  %.sroa.0.1.i12 = phi i64 [ 0, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit26.i ], [ %.sroa.0.0.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !11023 ; 3 uses
  %i.hc = phi <2 x double> [ %i.ha, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit26.i ], [ %i.aq, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !11021
  %i.hd = phi <2 x double> [ %i.hb, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrNtNtCs2mZqlW55729_12polars_utils7float164pf16BV_Es_0CskY9G75ZWc4U_11polars_expr.exit26.i ], [ %i.ar, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtNtBb_5slice4iter4IterB2G_ENtNtB1v_8iterator10BitmapIterEB1q_ENCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrB2G_B2G_E0ENtNtNtB9_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !11021
  %i.he = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !11203, !noalias !10906 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0, !dbg !11204
  br i1 %i.hf, label %.split.i.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, !dbg !11204, !prof !3173

.split.i.i.i:                                     ; preds = %bb.ax
  %i.hg = call noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize(), !dbg !11205, !noalias !10906
  %i.hh = and i128 %i.hg, 36028797018963968, !dbg !11206
  %.not1.i.i.i = icmp eq i128 %i.hh, 0, !dbg !11206
  br i1 %.not1.i.i.i, label %bb.ay, label %bb.bh, !dbg !11207

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i: ; preds = %bb.ax
  %i.hi = and i64 %i.he, 36028797018963968, !dbg !11208
  %.not.i.i.i = icmp eq i64 %i.hi, 0, !dbg !11208
  br i1 %.not.i.i.i, label %bb.ay, label %bb.bh, !dbg !11207

bb.ay:                                            ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i.i, %.split.i.i.i
  %i.hj = and i16 %.sroa.021.2.extract.trunc.i, 32767, !dbg !11209
  %i.hk = icmp eq i16 %i.hj, 0, !dbg !11209
  br i1 %i.hk, label %bb.az, label %bb.ba, !dbg !11209

bb.az:                                            ; preds = %bb.ay
  %.sroa.021.2.extract.trunc.mask.i = and i48 %.sroa.021.2.extract.shift.i, 65535, !dbg !11210
  %i.hl = zext nneg i48 %.sroa.021.2.extract.trunc.mask.i to i64, !dbg !11210
  %i.hm = shl nuw i64 %i.hl, 48, !dbg !11210
  br label %_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch19f16_to_f64_fallback.exit.i.i.i, !dbg !11211

bb.ba:                                            ; preds = %bb.ay
  %i.hn = and i16 %.sroa.021.2.extract.trunc.i, -32768, !dbg !11212
  %i.ho = zext i16 %i.hn to i64, !dbg !11212      ; 2 uses
  %i.hp = and i16 %.sroa.021.2.extract.trunc.i, 31744, !dbg !11213 ; 3 uses
  %i.hq = and i16 %.sroa.021.2.extract.trunc.i, 1023, !dbg !11214 ; 3 uses
  %i.hr = zext nneg i16 %i.hq to i64, !dbg !11214 ; 3 uses
  %i.hs = icmp eq i16 %i.hp, 31744, !dbg !11215
  br i1 %i.hs, label %bb.bb, label %bb.bc, !dbg !11215

bb.bb:                                            ; preds = %bb.ba
  %i.ht = icmp eq i16 %i.hq, 0, !dbg !11216
  %i.hu = shl nuw i64 %i.ho, 48, !dbg !11217      ; 2 uses
  br i1 %i.ht, label %bb.bd, label %bb.be, !dbg !11216

bb.bc:                                            ; preds = %bb.ba
  %i.hv = shl nuw i64 %i.ho, 48, !dbg !11218      ; 2 uses
  %i.hw = icmp eq i16 %i.hp, 0, !dbg !11219
end_hunk_0
begin_hunk_1_@_RINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddECskY9G75ZWc4U_11polars_expr:bb.a
  %.sroa.079.0.copyload = load ptr, ptr %i.l, align 8, !dbg !11890, !alias.scope !11775
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !11890
  %.sroa.480.0.copyload = load ptr, ptr %.sroa.480.0..sroa_idx, align 8, !dbg !11890, !alias.scope !11775
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !11890
  %.sroa.581.0.copyload = load ptr, ptr %.sroa.581.0..sroa_idx, align 8, !dbg !11890, !alias.scope !11775
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !11890
  %.sroa.783.0.copyload = load i64, ptr %.sroa.783.0..sroa_idx, align 8, !dbg !11890, !alias.scope !11775
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !11890
  %.sroa.884.0.copyload = load i64, ptr %.sroa.884.0..sroa_idx, align 8, !dbg !11890, !alias.scope !11775
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !11890
  %.sroa.985.0.copyload = load i64, ptr %.sroa.985.0..sroa_idx, align 8, !dbg !11890, !alias.scope !11775
  %.sroa.1086.56.copyload = load ptr, ptr %i.k, align 8, !dbg !11890, !alias.scope !11776
  %.sroa.1287.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !11890
  %.sroa.1287.56.copyload = load ptr, ptr %.sroa.1287.56..sroa_idx, align 8, !dbg !11890, !alias.scope !11776
  %.sroa.1388.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !11890
  %.sroa.1388.56.copyload = load ptr, ptr %.sroa.1388.56..sroa_idx, align 8, !dbg !11890, !alias.scope !11776
  %.sroa.1590.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !11890
  %.sroa.1590.56.copyload = load i64, ptr %.sroa.1590.56..sroa_idx, align 8, !dbg !11890, !alias.scope !11776
  %.sroa.1691.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !11890
  %.sroa.1691.56.copyload = load i64, ptr %.sroa.1691.56..sroa_idx, align 8, !dbg !11890, !alias.scope !11776
  %.sroa.17.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !11890
  %.sroa.17.56.copyload = load i64, ptr %.sroa.17.56..sroa_idx, align 8, !dbg !11890, !alias.scope !11776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11892, !noalias !11777
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.j, i8 0, i64 1024, i1 false), !noalias !11777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11893, !noalias !11777
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.i, i8 0, i64 1024, i1 false), !noalias !11777
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br label %bb.k, !dbg !11894

bb.k:                                             ; preds = %bb.ax, %bb.j
  %.sroa.34.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.34.3, %bb.ax ], !dbg !11895 ; 4 uses
  %.sroa.0.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.0.3, %bb.ax ], !dbg !11895 ; 8 uses
  %.sroa.63.0.i = phi i64 [ %.sroa.17.56.copyload, %bb.j ], [ %.sroa.63.2.i.ph223, %bb.ax ], !dbg !11896 ; 5 uses
  %.sroa.59.0.i = phi i64 [ %.sroa.1691.56.copyload, %bb.j ], [ %.sroa.59.2.i.ph224, %bb.ax ], !dbg !11896 ; 3 uses
  %.sroa.55.0.i = phi i64 [ %.sroa.1590.56.copyload, %bb.j ], [ %.sroa.55.2.i.ph225, %bb.ax ], !dbg !11896 ; 3 uses
  %.sroa.45.0.i = phi ptr [ %.sroa.1388.56.copyload, %bb.j ], [ %.sroa.45.2.i.ph226, %bb.ax ], !dbg !11896 ; 8 uses
  %.sroa.39.0.i = phi ptr [ %.sroa.1287.56.copyload, %bb.j ], [ %.sroa.39.2.i.lcssa, %bb.ax ], !dbg !11896 ; 7 uses
  %.sroa.35.0.i = phi ptr [ %.sroa.1086.56.copyload, %bb.j ], [ %.sroa.35.2.i.lcssa, %bb.ax ], !dbg !11896 ; 4 uses
  %.sroa.31.0.i = phi i64 [ %.sroa.985.0.copyload, %bb.j ], [ %.sroa.31.2.i.lcssa, %bb.ax ], !dbg !11896 ; 5 uses
  %.sroa.27.0.i = phi i64 [ %.sroa.884.0.copyload, %bb.j ], [ %.sroa.27.2.i.lcssa, %bb.ax ], !dbg !11896 ; 3 uses
  %.sroa.23.0.i = phi i64 [ %.sroa.783.0.copyload, %bb.j ], [ %.sroa.23.2.i.lcssa, %bb.ax ], !dbg !11896 ; 3 uses
  %.sroa.13.0.i = phi ptr [ %.sroa.581.0.copyload, %bb.j ], [ %.sroa.13.2.i.lcssa, %bb.ax ], !dbg !11896 ; 8 uses
  %.sroa.7.0.i = phi ptr [ %.sroa.480.0.copyload, %bb.j ], [ %.sroa.7.2.i.lcssa, %bb.ax ], !dbg !11896 ; 7 uses
  %.sroa.053.0.i = phi ptr [ %.sroa.079.0.copyload, %bb.j ], [ %.sroa.053.2.i.lcssa, %bb.ax ], !dbg !11896 ; 4 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.j ], [ %i.hk, %bb.ax ], !dbg !11897 ; 7 uses
  %i.as = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.hg, %bb.ax ], !dbg !11895 ; 6 uses
  %i.at = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.hh, %bb.ax ], !dbg !11895 ; 7 uses
  %.not.i.i.i23.i = icmp eq ptr %.sroa.053.0.i, null, !dbg !11898
  br i1 %.not.i.i.i23.i, label %bb.n, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i, !dbg !11899

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  %i.au = icmp eq ptr %.sroa.053.0.i, %.sroa.7.0.i, !dbg !11900 ; 2 uses
  %spec.select.idx.i = select i1 %i.au, i64 0, i64 8, !dbg !11901
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.053.0.i, i64 %spec.select.idx.i, !dbg !11901
  %spec.select135.i = select i1 %i.au, ptr null, ptr %.sroa.053.0.i, !dbg !11901
  %i.av = icmp eq i64 %.sroa.27.0.i, 0, !dbg !11902
  br i1 %i.av, label %bb.l, label %._crit_edge.i.i.i.i.i26.i, !dbg !11902

bb.l:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i
  %i.aw = icmp eq i64 %.sroa.31.0.i, 0, !dbg !11903
  br i1 %i.aw, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i, !dbg !11903

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i: ; preds = %bb.l
  %.sroa.0.0.i.i.i.i.i.i50.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.0.i, i64 64), !dbg !11904 ; 2 uses
  %i.ax = sub nuw i64 %.sroa.31.0.i, %.sroa.0.0.i.i.i.i.i.i50.i, !dbg !11905
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i51.i = load i64, ptr %.sroa.13.0.i, align 1, !dbg !11906, !noalias !11779
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i, i64 8, !dbg !11907
  br label %._crit_edge.i.i.i.i.i26.i, !dbg !11908

._crit_edge.i.i.i.i.i26.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i
  %.sroa.31.8.i = phi i64 [ %i.ax, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.31.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !11896
  %.sroa.13.8.i = phi ptr [ %i.ay, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.13.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !11896
  %i.az = phi i64 [ %.sroa.0.0.i.i.i.i.i.i50.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.27.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !11909
  %i.ba = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i51.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.23.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !11910 ; 2 uses
  %i.bb = trunc i64 %i.ba to i8, !dbg !11910
  %i.bc = lshr i64 %i.ba, 1, !dbg !11911
  %i.bd = add i64 %i.az, -1, !dbg !11909
  %i.be = and i8 %i.bb, 1, !dbg !11912
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, !dbg !11913

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i: ; preds = %._crit_edge.i.i.i.i.i26.i, %bb.l
  %.sroa.31.9.i = phi i64 [ 0, %bb.l ], [ %.sroa.31.8.i, %._crit_edge.i.i.i.i.i26.i ], !dbg !11896
  %.sroa.27.7.i = phi i64 [ 0, %bb.l ], [ %i.bd, %._crit_edge.i.i.i.i.i26.i ], !dbg !11896
  %.sroa.23.7.i = phi i64 [ %.sroa.23.0.i, %bb.l ], [ %i.bc, %._crit_edge.i.i.i.i.i26.i ], !dbg !11896
  %.sroa.13.9.i = phi ptr [ %.sroa.13.0.i, %bb.l ], [ %.sroa.13.8.i, %._crit_edge.i.i.i.i.i26.i ], !dbg !11896
  %.sroa.0.0.i8.i.i.i.i30.i = phi i8 [ 2, %bb.l ], [ %i.be, %._crit_edge.i.i.i.i.i26.i ], !dbg !11914
  %i.bf = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i30.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select135.i), !dbg !11915, !noalias !11780 ; 2 uses
  %i.bg = extractvalue { i8, ptr } %i.bf, 0, !dbg !11916 ; 2 uses
  %.not.i.i.i.i31.i = icmp eq i8 %i.bg, 2, !dbg !11917
  br i1 %.not.i.i.i.i31.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.m, !dbg !11918

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i
  %i.bh = extractvalue { i8, ptr } %i.bf, 1, !dbg !11916 ; 2 uses
  %i.bi = trunc nuw i8 %i.bg to i1, !dbg !11919
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ], !noalias !11781
  %..i.i.i.i32.i = select i1 %i.bi, ptr %i.bh, ptr null, !dbg !11920
  br label %bb.p, !dbg !11921

bb.n:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i), "nonnull"(ptr %.sroa.13.0.i) ]
  %i.bj = icmp eq ptr %.sroa.7.0.i, %.sroa.13.0.i, !dbg !11922
  br i1 %i.bj, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.o, !dbg !11923

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 8, !dbg !11924
  br label %bb.p, !dbg !11925

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.31.10.i = phi i64 [ %.sroa.31.0.i, %bb.o ], [ %.sroa.31.9.i, %bb.m ], !dbg !11896
  %.sroa.27.8.i = phi i64 [ %.sroa.27.0.i, %bb.o ], [ %.sroa.27.7.i, %bb.m ], !dbg !11896
  %.sroa.23.8.i = phi i64 [ %.sroa.23.0.i, %bb.o ], [ %.sroa.23.7.i, %bb.m ], !dbg !11896
  %.sroa.13.10.i = phi ptr [ %.sroa.13.0.i, %bb.o ], [ %.sroa.13.9.i, %bb.m ], !dbg !11896
  %.sroa.7.6.i = phi ptr [ %i.bk, %bb.o ], [ %.sroa.7.0.i, %bb.m ], !dbg !11896
  %.sroa.053.8.i = phi ptr [ null, %bb.o ], [ %spec.select.i, %bb.m ], !dbg !11896
  %.sroa.3.0.i.pn.i.ph.i.i33.i = phi ptr [ %.sroa.7.0.i, %bb.o ], [ %..i.i.i.i32.i, %bb.m ]
  %.not.i10.i.i34.i = icmp eq ptr %.sroa.35.0.i, null, !dbg !11926
  br i1 %.not.i10.i.i34.i, label %bb.s, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i, !dbg !11927

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i) ]
  %i.bl = icmp eq ptr %.sroa.35.0.i, %.sroa.39.0.i, !dbg !11928 ; 2 uses
  %spec.select136.idx.i = select i1 %i.bl, i64 0, i64 8, !dbg !11929
  %spec.select136.i = getelementptr inbounds nuw i8, ptr %.sroa.35.0.i, i64 %spec.select136.idx.i, !dbg !11929
  %spec.select137.i = select i1 %i.bl, ptr null, ptr %.sroa.35.0.i, !dbg !11929
  %i.bm = icmp eq i64 %.sroa.59.0.i, 0, !dbg !11930
  br i1 %i.bm, label %bb.q, label %._crit_edge.i.i.i13.i.i37.i, !dbg !11930

bb.q:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i
  %i.bn = icmp eq i64 %.sroa.63.0.i, 0, !dbg !11931
  br i1 %i.bn, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i, !dbg !11931

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i: ; preds = %bb.q
  %.sroa.0.0.i.i.i.i25.i.i47.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.0.i, i64 64), !dbg !11932 ; 2 uses
  %i.bo = sub nuw i64 %.sroa.63.0.i, %.sroa.0.0.i.i.i.i25.i.i47.i, !dbg !11933
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.i) ]
  %.sroa.02.0.copyload.i.i.i26.i.i48.i = load i64, ptr %.sroa.45.0.i, align 1, !dbg !11934, !noalias !11782
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.45.0.i, i64 8, !dbg !11935
  br label %._crit_edge.i.i.i13.i.i37.i, !dbg !11936

._crit_edge.i.i.i13.i.i37.i:                      ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i
  %.sroa.63.8.i = phi i64 [ %i.bo, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.63.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !11896
  %.sroa.45.8.i = phi ptr [ %i.bp, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.45.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !11896
  %i.bq = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i47.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.59.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !11937
  %i.br = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i48.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.55.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !11938 ; 2 uses
  %i.bs = trunc i64 %i.br to i8, !dbg !11938
  %i.bt = lshr i64 %i.br, 1, !dbg !11939
  %i.bu = add i64 %i.bq, -1, !dbg !11937
  %i.bv = and i8 %i.bs, 1, !dbg !11940
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, !dbg !11941

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i: ; preds = %._crit_edge.i.i.i13.i.i37.i, %bb.q
  %.sroa.63.9.i = phi i64 [ 0, %bb.q ], [ %.sroa.63.8.i, %._crit_edge.i.i.i13.i.i37.i ], !dbg !11896
  %.sroa.59.7.i = phi i64 [ 0, %bb.q ], [ %i.bu, %._crit_edge.i.i.i13.i.i37.i ], !dbg !11896
  %.sroa.55.7.i = phi i64 [ %.sroa.55.0.i, %bb.q ], [ %i.bt, %._crit_edge.i.i.i13.i.i37.i ], !dbg !11896
  %.sroa.45.9.i = phi ptr [ %.sroa.45.0.i, %bb.q ], [ %.sroa.45.8.i, %._crit_edge.i.i.i13.i.i37.i ], !dbg !11896
  %.sroa.0.0.i8.i.i17.i.i41.i = phi i8 [ 2, %bb.q ], [ %i.bv, %._crit_edge.i.i.i13.i.i37.i ], !dbg !11942
  %i.bw = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i41.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select137.i), !dbg !11943, !noalias !11783 ; 2 uses
  %i.bx = extractvalue { i8, ptr } %i.bw, 0, !dbg !11944 ; 2 uses
  %.not.i.i18.i.i42.i = icmp eq i8 %i.bx, 2, !dbg !11945
  br i1 %.not.i.i18.i.i42.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.r, !dbg !11946

bb.r:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i
  %i.by = extractvalue { i8, ptr } %i.bw, 1, !dbg !11944 ; 2 uses
  %i.bz = trunc nuw i8 %i.bx to i1, !dbg !11947
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ], !noalias !11781
  %..i.i19.i.i43.i = select i1 %i.bz, ptr %i.by, ptr null, !dbg !11948
  br label %.lr.ph.i.i.i.i.preheader, !dbg !11949

bb.s:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i), "nonnull"(ptr %.sroa.45.0.i) ]
  %i.ca = icmp eq ptr %.sroa.39.0.i, %.sroa.45.0.i, !dbg !11950
  br i1 %i.ca, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.t, !dbg !11951

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.39.0.i, i64 8, !dbg !11952
  br label %.lr.ph.i.i.i.i.preheader, !dbg !11953

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.t, %bb.r
  %.sroa.63.2.i.ph = phi i64 [ %.sroa.63.0.i, %bb.t ], [ %.sroa.63.9.i, %bb.r ]
  %.sroa.59.2.i.ph = phi i64 [ %.sroa.59.0.i, %bb.t ], [ %.sroa.59.7.i, %bb.r ]
  %.sroa.55.2.i.ph = phi i64 [ %.sroa.55.0.i, %bb.t ], [ %.sroa.55.7.i, %bb.r ]
  %.sroa.45.2.i.ph = phi ptr [ %.sroa.45.0.i, %bb.t ], [ %.sroa.45.9.i, %bb.r ]
  %.sroa.39.2.i.ph = phi ptr [ %i.cb, %bb.t ], [ %.sroa.39.0.i, %bb.r ] ; 4 uses
  %.sroa.35.2.i.ph = phi ptr [ null, %bb.t ], [ %spec.select136.i, %bb.r ]
  %.sroa.1283.0.i.ph = phi ptr [ %.sroa.39.0.i, %bb.t ], [ %..i.i19.i.i43.i, %bb.r ]
  br label %.lr.ph.i.i.i.i.outer, !dbg !11954

.lr.ph.i.i.i.i.outer:                             ; preds = %.lr.ph.i.i.i.i.preheader, %bb.al
  %.sroa.982.0.i.ph = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i33.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.al ] ; 2 uses
  %.sroa.63.2.i.ph223 = phi i64 [ %.sroa.63.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.63.5.i, %bb.al ] ; 5 uses
  %.sroa.59.2.i.ph224 = phi i64 [ %.sroa.59.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.59.4.i, %bb.al ] ; 3 uses
  %.sroa.55.2.i.ph225 = phi i64 [ %.sroa.55.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.55.4.i, %bb.al ] ; 3 uses
  %.sroa.45.2.i.ph226 = phi ptr [ %.sroa.45.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.45.5.i, %bb.al ] ; 10 uses
  %.sroa.35.2.i.ph228 = phi ptr [ %.sroa.35.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %spec.select140.i, %bb.al ] ; 5 uses
  %.sroa.31.2.i.ph = phi i64 [ %.sroa.31.10.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.31.6.i.peel, %bb.al ] ; 6 uses
  %.sroa.27.2.i.ph = phi i64 [ %.sroa.27.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.27.5.i.peel, %bb.al ] ; 4 uses
  %.sroa.23.2.i.ph = phi i64 [ %.sroa.23.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.23.5.i.peel, %bb.al ] ; 4 uses
  %.sroa.13.2.i.ph = phi ptr [ %.sroa.13.10.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.13.6.i.peel, %bb.al ] ; 8 uses
  %.sroa.7.2.i.ph = phi ptr [ %.sroa.7.6.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.4.i.peel, %bb.al ] ; 6 uses
  %.sroa.053.2.i.ph = phi ptr [ %.sroa.053.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.053.5.i.peel, %bb.al ] ; 5 uses
  %.sroa.1283.0.i.ph229 = phi ptr [ %.sroa.1283.0.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %..i.i19.i.i.i, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11784), !dbg !11955
  call void @llvm.experimental.noalias.scope.decl(metadata !11785), !dbg !11955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11956, !noalias !11786
  call void @llvm.experimental.noalias.scope.decl(metadata !11787), !dbg !11956
  call void @llvm.experimental.noalias.scope.decl(metadata !11788), !dbg !11956
  call void @llvm.experimental.noalias.scope.decl(metadata !11789), !dbg !11957
  call void @llvm.experimental.noalias.scope.decl(metadata !11790), !dbg !11957
  %.not.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.982.0.i.ph, null, !dbg !11958
  br i1 %.not.i.i.i.i.i.i.i.peel, label %bb.v, label %bb.u, !dbg !11954

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.outer
  %i.cc = load double, ptr %.sroa.982.0.i.ph, align 8, !dbg !11959, !alias.scope !11791, !noalias !11792, !noundef !3009
  br label %bb.v, !dbg !11960

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.outer
  %.sroa.5.0.i.i.i.i.i.i.i.peel = phi double [ %i.cc, %bb.u ], [ undef, %.lr.ph.i.i.i.i.outer ], !dbg !11961
  %.sroa.04.0.i.i.i.i.i.i.i.peel = phi i64 [ 1, %bb.u ], [ 0, %.lr.ph.i.i.i.i.outer ], !dbg !11962
  %.not7.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.1283.0.i.ph229, null, !dbg !11963
  br i1 %.not7.i.i.i.i.i.i.i.peel, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, label %bb.w, !dbg !11964

bb.w:                                             ; preds = %bb.v
  %i.cd = load double, ptr %.sroa.1283.0.i.ph229, align 8, !dbg !11965, !alias.scope !11793, !noalias !11792, !noundef !3009
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, !dbg !11966

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel: ; preds = %bb.w, %bb.v
  %.sroa.05.0.i.i.i.i.i.i.i.peel = phi i64 [ 1, %bb.w ], [ 0, %bb.v ], !dbg !11967
  %.sroa.56.0.i.i.i.i.i.i.i.peel = phi double [ %i.cd, %bb.w ], [ undef, %bb.v ], !dbg !11961
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptiondE3zipdECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.sroa.04.0.i.i.i.i.i.i.i.peel, double %.sroa.5.0.i.i.i.i.i.i.i.peel, i64 noundef %.sroa.05.0.i.i.i.i.i.i.i.peel, double %.sroa.56.0.i.i.i.i.i.i.i.peel), !dbg !11968, !noalias !11794
  %i.ce = load i64, ptr %i.h, align 8, !dbg !11956, !range !3185, !noalias !11786, !noundef !3009
  %i.cf = trunc nuw i64 %i.ce to i1, !dbg !11969
  br i1 %i.cf, label %.loopexit, label %bb.x, !dbg !11969

bb.x:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11970, !noalias !11786
  %.not.i.i.i.i.peel = icmp eq ptr %.sroa.053.2.i.ph, null, !dbg !11971
  br i1 %.not.i.i.i.i.peel, label %bb.aa, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, !dbg !11972

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel: ; preds = %bb.x
  %i.cg = icmp eq ptr %.sroa.053.2.i.ph, %.sroa.7.2.i.ph, !dbg !11973 ; 2 uses
  %spec.select138.idx.i.peel = select i1 %i.cg, i64 0, i64 8, !dbg !11974
  %spec.select138.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.053.2.i.ph, i64 %spec.select138.idx.i.peel, !dbg !11974
  %spec.select139.i.peel = select i1 %i.cg, ptr null, ptr %.sroa.053.2.i.ph, !dbg !11974
  %i.ch = icmp eq i64 %.sroa.27.2.i.ph, 0, !dbg !11975
  br i1 %i.ch, label %bb.y, label %._crit_edge.i.i.i.i.i.i.peel, !dbg !11975

bb.y:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %i.ci = icmp eq i64 %.sroa.31.2.i.ph, 0, !dbg !11976
  br i1 %i.ci, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, !dbg !11976

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel: ; preds = %bb.y
  %.sroa.0.0.i.i.i.i.i.i.i.peel = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.2.i.ph, i64 64), !dbg !11977 ; 2 uses
  %i.cj = sub nuw i64 %.sroa.31.2.i.ph, %.sroa.0.0.i.i.i.i.i.i.i.peel, !dbg !11978
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2.i.ph) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i.peel = load i64, ptr %.sroa.13.2.i.ph, align 1, !dbg !11979, !noalias !11795
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.13.2.i.ph, i64 8, !dbg !11980
  br label %._crit_edge.i.i.i.i.i.i.peel, !dbg !11981

._crit_edge.i.i.i.i.i.i.peel:                     ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %.sroa.31.4.i.peel = phi i64 [ %i.cj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.31.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.13.4.i.peel = phi ptr [ %i.ck, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.13.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11896
  %i.cl = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.27.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11982
  %i.cm = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.23.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11983 ; 2 uses
  %i.cn = trunc i64 %i.cm to i8, !dbg !11983
  %i.co = lshr i64 %i.cm, 1, !dbg !11984
  %i.cp = add i64 %i.cl, -1, !dbg !11982
  %i.cq = and i8 %i.cn, 1, !dbg !11985
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, !dbg !11986

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel: ; preds = %._crit_edge.i.i.i.i.i.i.peel, %bb.y
  %.sroa.31.5.i.peel = phi i64 [ 0, %bb.y ], [ %.sroa.31.4.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.27.4.i.peel = phi i64 [ 0, %bb.y ], [ %i.cp, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.23.4.i.peel = phi i64 [ %.sroa.23.2.i.ph, %bb.y ], [ %i.co, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.13.5.i.peel = phi ptr [ %.sroa.13.2.i.ph, %bb.y ], [ %.sroa.13.4.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.0.0.i8.i.i.i.i.i.peel = phi i8 [ 2, %bb.y ], [ %i.cq, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !11987
  %i.cr = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.peel, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select139.i.peel), !dbg !11988, !noalias !11796 ; 2 uses
  %i.cs = extractvalue { i8, ptr } %i.cr, 0, !dbg !11989 ; 2 uses
  %.not.i.i.i.i.i.peel = icmp eq i8 %i.cs, 2, !dbg !11990
  br i1 %.not.i.i.i.i.i.peel, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.z, !dbg !11991

bb.z:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel
  %i.ct = extractvalue { i8, ptr } %i.cr, 1, !dbg !11989 ; 2 uses
  %i.cu = trunc nuw i8 %i.cs to i1, !dbg !11992
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ], !noalias !11781
  %..i.i.i.i.i.peel = select i1 %i.cu, ptr %i.ct, ptr null, !dbg !11993
  br label %bb.ac, !dbg !11994

bb.aa:                                            ; preds = %bb.x
  %i.cv = icmp eq ptr %.sroa.7.2.i.ph, %.sroa.13.2.i.ph, !dbg !11995
  br i1 %i.cv, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.ab, !dbg !11996

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.7.2.i.ph, i64 8, !dbg !11997
  br label %bb.ac, !dbg !11998

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.31.6.i.peel = phi i64 [ %.sroa.31.2.i.ph, %bb.ab ], [ %.sroa.31.5.i.peel, %bb.z ], !dbg !11896 ; 2 uses
  %.sroa.27.5.i.peel = phi i64 [ %.sroa.27.2.i.ph, %bb.ab ], [ %.sroa.27.4.i.peel, %bb.z ], !dbg !11896 ; 2 uses
  %.sroa.23.5.i.peel = phi i64 [ %.sroa.23.2.i.ph, %bb.ab ], [ %.sroa.23.4.i.peel, %bb.z ], !dbg !11896 ; 2 uses
  %.sroa.13.6.i.peel = phi ptr [ %.sroa.13.2.i.ph, %bb.ab ], [ %.sroa.13.5.i.peel, %bb.z ], !dbg !11896 ; 2 uses
  %.sroa.7.4.i.peel = phi ptr [ %i.cw, %bb.ab ], [ %.sroa.7.2.i.ph, %bb.z ], !dbg !11896 ; 2 uses
  %.sroa.053.5.i.peel = phi ptr [ null, %bb.ab ], [ %spec.select138.i.peel, %bb.z ], !dbg !11896 ; 2 uses
  %.sroa.3.0.i.pn.i.ph.i.i.i.peel = phi ptr [ %.sroa.7.2.i.ph, %bb.ab ], [ %..i.i.i.i.i.peel, %bb.z ] ; 2 uses
  %.not.i10.i.i.i.peel = icmp eq ptr %.sroa.35.2.i.ph228, null, !dbg !11999
  br i1 %.not.i10.i.i.i.peel, label %bb.ad, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i, !dbg !12000

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %i.cx = icmp eq ptr %.sroa.39.2.i.ph, %.sroa.45.2.i.ph226, !dbg !12001
  br i1 %i.cx, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %.lr.ph.i.i.i.i, !dbg !12002

.lr.ph.i.i.i.i:                                   ; preds = %bb.am, %bb.ad
  %.sroa.982.0.i = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.ad ], [ %.sroa.3.0.i.pn.i.ph.i.i.i, %bb.am ], !dbg !12003 ; 2 uses
  %.sroa.31.2.i = phi i64 [ %.sroa.31.6.i.peel, %bb.ad ], [ %.sroa.31.6.i, %bb.am ], !dbg !11896 ; 6 uses
  %.sroa.27.2.i = phi i64 [ %.sroa.27.5.i.peel, %bb.ad ], [ %.sroa.27.5.i, %bb.am ], !dbg !11896 ; 4 uses
  %.sroa.23.2.i = phi i64 [ %.sroa.23.5.i.peel, %bb.ad ], [ %.sroa.23.5.i, %bb.am ], !dbg !11896 ; 4 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.6.i.peel, %bb.ad ], [ %.sroa.13.6.i, %bb.am ], !dbg !11896 ; 8 uses
  %.sroa.7.2.i = phi ptr [ %.sroa.7.4.i.peel, %bb.ad ], [ %.sroa.7.4.i, %bb.am ], !dbg !11896 ; 6 uses
  %.sroa.053.2.i = phi ptr [ %.sroa.053.5.i.peel, %bb.ad ], [ %.sroa.053.5.i, %bb.am ], !dbg !11896 ; 5 uses
  %.sroa.1283.0.i = phi ptr [ %.sroa.39.2.i.ph, %bb.ad ], [ %.sroa.39.2.i, %bb.am ], !dbg !12003 ; 2 uses
  %.sroa.39.2.i = getelementptr inbounds nuw i8, ptr %.sroa.1283.0.i, i64 8, !dbg !12004 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11797), !dbg !11955
  call void @llvm.experimental.noalias.scope.decl(metadata !11798), !dbg !11955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11956, !noalias !11799
  call void @llvm.experimental.noalias.scope.decl(metadata !11800), !dbg !11956
  call void @llvm.experimental.noalias.scope.decl(metadata !11801), !dbg !11956
  call void @llvm.experimental.noalias.scope.decl(metadata !11802), !dbg !11957
  call void @llvm.experimental.noalias.scope.decl(metadata !11803), !dbg !11957
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.982.0.i, null, !dbg !11958
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, label %bb.ae, !dbg !11954

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cy = load double, ptr %.sroa.982.0.i, align 8, !dbg !11959, !alias.scope !11804, !noalias !11792, !noundef !3009
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !11960

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.ae
  %.sroa.5.0.i.i.i.i.i.i.i = phi double [ %i.cy, %bb.ae ], [ undef, %.lr.ph.i.i.i.i ], !dbg !11961
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ 1, %bb.ae ], [ 0, %.lr.ph.i.i.i.i ], !dbg !11962
  %i.cz = load double, ptr %.sroa.1283.0.i, align 8, !dbg !11965, !alias.scope !11805, !noalias !11792, !noundef !3009
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptiondE3zipdECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.sroa.04.0.i.i.i.i.i.i.i, double %.sroa.5.0.i.i.i.i.i.i.i, i64 noundef 1, double %i.cz), !dbg !11968, !noalias !11806
  %i.da = load i64, ptr %i.h, align 8, !dbg !11956, !range !3185, !noalias !11799, !noundef !3009
  %i.db = trunc nuw i64 %i.da to i1, !dbg !11969
  br i1 %i.db, label %.loopexit, label %bb.af, !dbg !11969

bb.af:                                            ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11970, !noalias !11799
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.2.i, null, !dbg !11971
  br i1 %.not.i.i.i.i, label %bb.ai, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !11972

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.af
  %i.dc = icmp eq ptr %.sroa.053.2.i, %.sroa.7.2.i, !dbg !11973 ; 2 uses
  %spec.select138.idx.i = select i1 %i.dc, i64 0, i64 8, !dbg !11974
  %spec.select138.i = getelementptr inbounds nuw i8, ptr %.sroa.053.2.i, i64 %spec.select138.idx.i, !dbg !11974
  %spec.select139.i = select i1 %i.dc, ptr null, ptr %.sroa.053.2.i, !dbg !11974
  %i.dd = icmp eq i64 %.sroa.27.2.i, 0, !dbg !11975
  br i1 %i.dd, label %bb.ag, label %._crit_edge.i.i.i.i.i.i, !dbg !11975

bb.ag:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.de = icmp eq i64 %.sroa.31.2.i, 0, !dbg !11976
  br i1 %i.de, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !11976

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.ag
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.2.i, i64 64), !dbg !11977 ; 2 uses
  %i.df = sub nuw i64 %.sroa.31.2.i, %.sroa.0.0.i.i.i.i.i.i.i, !dbg !11978
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.13.2.i, align 1, !dbg !11979, !noalias !11795
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.13.2.i, i64 8, !dbg !11980
  br label %._crit_edge.i.i.i.i.i.i, !dbg !11981

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.31.4.i = phi i64 [ %i.df, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.31.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !11896
  %.sroa.13.4.i = phi ptr [ %i.dg, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.13.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !11896
  %i.dh = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.27.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !11982
  %i.di = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.23.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !11983 ; 2 uses
  %i.dj = trunc i64 %i.di to i8, !dbg !11983
  %i.dk = lshr i64 %i.di, 1, !dbg !11984
  %i.dl = add i64 %i.dh, -1, !dbg !11982
  %i.dm = and i8 %i.dj, 1, !dbg !11985
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !11986

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.ag
  %.sroa.31.5.i = phi i64 [ 0, %bb.ag ], [ %.sroa.31.4.i, %._crit_edge.i.i.i.i.i.i ], !dbg !11896
  %.sroa.27.4.i = phi i64 [ 0, %bb.ag ], [ %i.dl, %._crit_edge.i.i.i.i.i.i ], !dbg !11896
  %.sroa.23.4.i = phi i64 [ %.sroa.23.2.i, %bb.ag ], [ %i.dk, %._crit_edge.i.i.i.i.i.i ], !dbg !11896
  %.sroa.13.5.i = phi ptr [ %.sroa.13.2.i, %bb.ag ], [ %.sroa.13.4.i, %._crit_edge.i.i.i.i.i.i ], !dbg !11896
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ 2, %bb.ag ], [ %i.dm, %._crit_edge.i.i.i.i.i.i ], !dbg !11987
  %i.dn = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select139.i), !dbg !11988, !noalias !11796 ; 2 uses
  %i.do = extractvalue { i8, ptr } %i.dn, 0, !dbg !11989 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.do, 2, !dbg !11990
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.ah, !dbg !11991

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.dp = extractvalue { i8, ptr } %i.dn, 1, !dbg !11989 ; 2 uses
  %i.dq = trunc nuw i8 %i.do to i1, !dbg !11992
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ], !noalias !11781
  %..i.i.i.i.i = select i1 %i.dq, ptr %i.dp, ptr null, !dbg !11993
  br label %bb.am, !dbg !11994

bb.ai:                                            ; preds = %bb.af
  %i.dr = icmp eq ptr %.sroa.7.2.i, %.sroa.13.2.i, !dbg !11995
  br i1 %i.dr, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.aj, !dbg !11996

bb.aj:                                            ; preds = %bb.ai
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.7.2.i, i64 8, !dbg !11997
  br label %bb.am, !dbg !11998

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i: ; preds = %bb.ac
  %i.dt = icmp eq ptr %.sroa.35.2.i.ph228, %.sroa.39.2.i.ph, !dbg !12005 ; 2 uses
  %spec.select140.idx.i = select i1 %i.dt, i64 0, i64 8, !dbg !12006
  %spec.select140.i = getelementptr inbounds nuw i8, ptr %.sroa.35.2.i.ph228, i64 %spec.select140.idx.i, !dbg !12006
  %spec.select141.i = select i1 %i.dt, ptr null, ptr %.sroa.35.2.i.ph228, !dbg !12006
  %i.du = icmp eq i64 %.sroa.59.2.i.ph224, 0, !dbg !12007
  br i1 %i.du, label %bb.ak, label %._crit_edge.i.i.i13.i.i.i, !dbg !12007

bb.ak:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %i.dv = icmp eq i64 %.sroa.63.2.i.ph223, 0, !dbg !12008
  br i1 %i.dv, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, !dbg !12008

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i: ; preds = %bb.ak
  %.sroa.0.0.i.i.i.i25.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.2.i.ph223, i64 64), !dbg !12009 ; 2 uses
  %i.dw = sub nuw i64 %.sroa.63.2.i.ph223, %.sroa.0.0.i.i.i.i25.i.i.i, !dbg !12010
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %.sroa.02.0.copyload.i.i.i26.i.i.i = load i64, ptr %.sroa.45.2.i.ph226, align 1, !dbg !12011, !noalias !11807
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.45.2.i.ph226, i64 8, !dbg !12012
  br label %._crit_edge.i.i.i13.i.i.i, !dbg !12013

._crit_edge.i.i.i13.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %.sroa.63.4.i = phi i64 [ %i.dw, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.63.2.i.ph223, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !11896
  %.sroa.45.4.i = phi ptr [ %i.dx, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.45.2.i.ph226, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !11896
  %i.dy = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.59.2.i.ph224, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !12014
  %i.dz = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.55.2.i.ph225, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterdENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !12015 ; 2 uses
  %i.ea = trunc i64 %i.dz to i8, !dbg !12015
  %i.eb = lshr i64 %i.dz, 1, !dbg !12016
  %i.ec = add i64 %i.dy, -1, !dbg !12014
  %i.ed = and i8 %i.ea, 1, !dbg !12017
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, !dbg !12018

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i: ; preds = %._crit_edge.i.i.i13.i.i.i, %bb.ak
  %.sroa.63.5.i = phi i64 [ 0, %bb.ak ], [ %.sroa.63.4.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !11896
  %.sroa.59.4.i = phi i64 [ 0, %bb.ak ], [ %i.ec, %._crit_edge.i.i.i13.i.i.i ], !dbg !11896
  %.sroa.55.4.i = phi i64 [ %.sroa.55.2.i.ph225, %bb.ak ], [ %i.eb, %._crit_edge.i.i.i13.i.i.i ], !dbg !11896
  %.sroa.45.5.i = phi ptr [ %.sroa.45.2.i.ph226, %bb.ak ], [ %.sroa.45.4.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !11896
  %.sroa.0.0.i8.i.i17.i.i.i = phi i8 [ 2, %bb.ak ], [ %i.ed, %._crit_edge.i.i.i13.i.i.i ], !dbg !12019
  %i.ee = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRdECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select141.i), !dbg !12020, !noalias !11808 ; 2 uses
  %i.ef = extractvalue { i8, ptr } %i.ee, 0, !dbg !12021 ; 2 uses
  %.not.i.i18.i.i.i = icmp eq i8 %i.ef, 2, !dbg !12022
  br i1 %.not.i.i18.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.al, !dbg !12023

bb.al:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %i.eg = extractvalue { i8, ptr } %i.ee, 1, !dbg !12021 ; 2 uses
  %i.eh = trunc nuw i8 %i.ef to i1, !dbg !12024
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eg) ], !noalias !11781
  %..i.i19.i.i.i = select i1 %i.eh, ptr %i.eg, ptr null, !dbg !12025
  br label %.lr.ph.i.i.i.i.outer, !dbg !12026

bb.am:                                            ; preds = %bb.ah, %bb.aj
  %.sroa.31.6.i = phi i64 [ %.sroa.31.2.i, %bb.aj ], [ %.sroa.31.5.i, %bb.ah ], !dbg !11896
  %.sroa.27.5.i = phi i64 [ %.sroa.27.2.i, %bb.aj ], [ %.sroa.27.4.i, %bb.ah ], !dbg !11896
  %.sroa.23.5.i = phi i64 [ %.sroa.23.2.i, %bb.aj ], [ %.sroa.23.4.i, %bb.ah ], !dbg !11896
  %.sroa.13.6.i = phi ptr [ %.sroa.13.2.i, %bb.aj ], [ %.sroa.13.5.i, %bb.ah ], !dbg !11896
  %.sroa.7.4.i = phi ptr [ %i.ds, %bb.aj ], [ %.sroa.7.2.i, %bb.ah ], !dbg !11896
  %.sroa.053.5.i = phi ptr [ null, %bb.aj ], [ %spec.select138.i, %bb.ah ], !dbg !11896
  %.sroa.3.0.i.pn.i.ph.i.i.i = phi ptr [ %.sroa.7.2.i, %bb.aj ], [ %..i.i.i.i.i, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %i.ei = icmp eq ptr %.sroa.39.2.i, %.sroa.45.2.i.ph226, !dbg !12001
  br i1 %i.ei, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %.lr.ph.i.i.i.i, !dbg !12002, !llvm.loop !11672

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.39.2.i.lcssa = phi ptr [ %.sroa.39.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.39.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.35.2.i.lcssa = phi ptr [ null, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.35.2.i.ph228, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.31.2.i.lcssa = phi i64 [ %.sroa.31.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.31.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.27.2.i.lcssa = phi i64 [ %.sroa.27.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.27.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.23.2.i.lcssa = phi i64 [ %.sroa.23.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.23.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.13.2.i.lcssa = phi ptr [ %.sroa.13.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.13.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.7.2.i.lcssa = phi ptr [ %.sroa.7.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.7.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11896
  %.sroa.053.2.i.lcssa = phi ptr [ %.sroa.053.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.053.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddE0INtB7_5FnMutTTINtNtBb_6option6OptionRdEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !11896
  %i.ej = load double, ptr %i.an, align 8, !dbg !12027, !noalias !11799, !noundef !3009
  %i.ek = load double, ptr %i.ao, align 8, !dbg !12027, !noalias !11799, !noundef !3009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11970, !noalias !11799
  %i.el = icmp ugt i64 %.sroa.0.0.i, 127, !dbg !12028
  br i1 %i.el, label %bb.at, label %bb.ax, !dbg !12028

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i: ; preds = %bb.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, %bb.n, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, %bb.ad, %bb.aa, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, %bb.am, %bb.ai, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %.not.i = icmp eq i64 %.sroa.0.0.i, 0, !dbg !12029
  %i.em = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>, !dbg !11895
  %i.en = insertelement <2 x double> %i.em, double %.sroa.34.1, i64 1, !dbg !11895 ; 3 uses
  %i.eo = extractelement <2 x double> %i.at, i64 0, !dbg !12029 ; 4 uses
  br i1 %.not.i, label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryddINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtB1d_5slice4iter4IterdENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrddE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.an, !dbg !12029

bb.an:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i
  %i.ep = icmp ult i64 %.sroa.0.0.i, 129
  br i1 %i.ep, label %bb.ap, label %bb.ao, !dbg !12030, !prof !3147

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0.i, i64 noundef 128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #43, !dbg !12031, !noalias !11777
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12032, !noalias !11809
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef range(i64 1, 129) %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef range(i64 1, 129) %.sroa.0.0.i), !dbg !12032, !noalias !11777
  call void @llvm.experimental.noalias.scope.decl(metadata !11810), !dbg !12033
  %i.eq = load double, ptr %i.g, align 8, !dbg !12034, !alias.scope !11811, !noalias !11809, !noundef !3009 ; 6 uses
  %i.er = fcmp oeq double %i.eq, 0.000000e+00, !dbg !12034
  br i1 %i.er, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit.i, label %bb.aq, !dbg !12034

bb.aq:                                            ; preds = %bb.ap
  %i.es = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !12035
  br i1 %i.es, label %bb.as, label %bb.ar, !dbg !12035

bb.ar:                                            ; preds = %bb.aq
  %i.et = fadd double %.sroa.0.1, %i.eq, !dbg !12036 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !12037
  %i.ev = load double, ptr %i.eu, align 8, !dbg !12037, !alias.scope !11811, !noalias !11809, !noundef !3009 ; 2 uses
  %i.ew = fsub double %i.ev, %i.eo, !dbg !12037   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !12038
  %i.ey = load double, ptr %i.ex, align 8, !dbg !12038, !alias.scope !11811, !noalias !11809, !noundef !3009 ; 2 uses
  %i.ez = extractelement <2 x double> %i.at, i64 1, !dbg !12038
  %i.fa = fsub double %i.ey, %i.ez, !dbg !12038   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !12039
  %i.fc = load double, ptr %i.fb, align 8, !dbg !12039, !alias.scope !11811, !noalias !11809, !noundef !3009
  %i.fd = fdiv double %i.eq, %i.et, !dbg !12040   ; 2 uses
  %i.fe = fmul double %i.fd, %i.ew, !dbg !12041
  %i.ff = fadd double %i.eo, %i.fe, !dbg !12042   ; 2 uses
  %i.fg = fmul double %i.fd, %i.fa, !dbg !12043
  %i.fh = fsub double %i.ev, %i.ff, !dbg !12044
  %i.fi = insertelement <2 x double> poison, double %i.fg, i64 0, !dbg !12045
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !12046
  %i.fk = fmul double %i.eq, %i.fh, !dbg !12047   ; 2 uses
  %i.fl = fmul double %i.ew, %i.fk, !dbg !12047
  %i.fm = fadd double %i.fc, %i.fl, !dbg !12039
  %i.fn = insertelement <2 x double> %i.fi, double %i.fm, i64 1, !dbg !12045
  %i.fo = fadd <2 x double> %i.en, %i.fn, !dbg !12045 ; 2 uses
  %i.fp = load <2 x double>, ptr %i.fj, align 8, !dbg !12046, !alias.scope !11811, !noalias !11809
  %i.fq = extractelement <2 x double> %i.fo, i64 0, !dbg !12048
  %i.fr = fsub double %i.ey, %i.fq, !dbg !12048
  %i.fs = fmul double %i.eq, %i.fr, !dbg !12049
  %i.ft = insertelement <2 x double> poison, double %i.fa, i64 0, !dbg !12050
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !12050
  %i.fv = insertelement <2 x double> poison, double %i.fk, i64 0, !dbg !12050
  %i.fw = insertelement <2 x double> %i.fv, double %i.fs, i64 1, !dbg !12050
  %i.fx = fmul <2 x double> %i.fu, %i.fw, !dbg !12050
  %i.fy = fadd <2 x double> %i.fp, %i.fx, !dbg !12046
  %i.fz = fadd <2 x double> %i.as, %i.fy, !dbg !12051
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !12052

bb.as:                                            ; preds = %bb.aq
  %.sroa.16.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !12053
  %.sroa.16.0.copyload22 = load double, ptr %.sroa.16.0..sroa_idx21, align 8, !dbg !12053, !alias.scope !11812, !noalias !11813
  %.sroa.25.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !12053
  %i.ga = load <2 x double>, ptr %.sroa.25.0..sroa_idx32, align 8, !dbg !12053, !alias.scope !11812, !noalias !11813
  %.sroa.43.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !12053
  %i.gb = load <2 x double>, ptr %.sroa.43.0..sroa_idx54, align 8, !dbg !12053, !alias.scope !11812, !noalias !11813
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !12054

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.as, %bb.ar, %bb.ap
  %.sroa.16.2 = phi double [ %i.eo, %bb.ap ], [ %.sroa.16.0.copyload22, %bb.as ], [ %i.ff, %bb.ar ], !dbg !12055
  %.sroa.0.2 = phi double [ %.sroa.0.1, %bb.ap ], [ %i.eq, %bb.as ], [ %i.et, %bb.ar ], !dbg !12055
  %i.gc = phi <2 x double> [ %i.en, %bb.ap ], [ %i.ga, %bb.as ], [ %i.fo, %bb.ar ], !dbg !12055
  %i.gd = phi <2 x double> [ %i.as, %bb.ap ], [ %i.gb, %bb.as ], [ %i.fz, %bb.ar ], !dbg !12055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12056, !noalias !11809
  br label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryddINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtB1d_5slice4iter4IterdENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrddE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !12057

bb.at:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12058, !noalias !11814
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 128), !dbg !12058, !noalias !11777
  call void @llvm.experimental.noalias.scope.decl(metadata !11815), !dbg !12059
  %i.ge = load double, ptr %i.f, align 8, !dbg !12060, !alias.scope !11816, !noalias !11814, !noundef !3009 ; 5 uses
  %i.gf = fcmp oeq double %i.ge, 0.000000e+00, !dbg !12060
  br i1 %i.gf, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, label %bb.au, !dbg !12060

bb.au:                                            ; preds = %bb.at
  %i.gg = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !12061
  br i1 %i.gg, label %bb.aw, label %bb.av, !dbg !12061

bb.av:                                            ; preds = %bb.au
  %i.gh = fadd double %.sroa.0.1, %i.ge, !dbg !12062 ; 2 uses
  %i.gi = fdiv double %i.ge, %i.gh, !dbg !12063
  %i.gj = load double, ptr %i.aq, align 8, !dbg !12064, !alias.scope !11816, !noalias !11814, !noundef !3009
  %i.gk = load <2 x double>, ptr %i.ap, align 8, !dbg !12065, !alias.scope !11816, !noalias !11814 ; 2 uses
  %i.gl = fsub <2 x double> %i.gk, %i.at, !dbg !12065 ; 3 uses
  %i.gm = insertelement <2 x double> poison, double %i.gi, i64 0, !dbg !12066
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !12066
  %i.go = fmul <2 x double> %i.gn, %i.gl, !dbg !12066
  %i.gp = fadd <2 x double> %i.at, %i.go, !dbg !12067 ; 2 uses
  %i.gq = fsub <2 x double> %i.gk, %i.gp, !dbg !12068
  %i.gr = insertelement <2 x double> poison, double %i.ge, i64 0, !dbg !12069
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !12069
  %i.gt = fmul <2 x double> %i.gs, %i.gq, !dbg !12069 ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.gl, %i.gt, !dbg !12069
  %i.gu = extractelement <2 x double> %foldExtExtBinop, i64 0, !dbg !12069
  %i.gv = fadd double %i.gj, %i.gu, !dbg !12064
  %i.gw = fadd double %.sroa.34.1, %i.gv, !dbg !12070
  %i.gx = load <2 x double>, ptr %i.ar, align 8, !dbg !12071, !alias.scope !11816, !noalias !11814
  %i.gy = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> <i32 1, i32 1>, !dbg !12072
  %i.gz = fmul <2 x double> %i.gy, %i.gt, !dbg !12072
  %i.ha = fadd <2 x double> %i.gx, %i.gz, !dbg !12071
  %i.hb = fadd <2 x double> %i.as, %i.ha, !dbg !12073
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !12074

bb.aw:                                            ; preds = %bb.au
  %i.hc = load <2 x double>, ptr %i.ap, align 8, !dbg !12075, !alias.scope !11817, !noalias !11818
  %.sroa.34.0.copyload46 = load double, ptr %i.aq, align 8, !dbg !12075, !alias.scope !11817, !noalias !11818
  %i.hd = load <2 x double>, ptr %i.ar, align 8, !dbg !12075, !alias.scope !11817, !noalias !11818
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !12076

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit22.i: ; preds = %bb.aw, %bb.av, %bb.at
  %.sroa.34.4 = phi double [ %.sroa.34.1, %bb.at ], [ %.sroa.34.0.copyload46, %bb.aw ], [ %i.gw, %bb.av ], !dbg !12055
  %.sroa.0.4 = phi double [ %.sroa.0.1, %bb.at ], [ %i.ge, %bb.aw ], [ %i.gh, %bb.av ], !dbg !12055
  %i.he = phi <2 x double> [ %i.as, %bb.at ], [ %i.hd, %bb.aw ], [ %i.hb, %bb.av ], !dbg !12055
  %i.hf = phi <2 x double> [ %i.at, %bb.at ], [ %i.hc, %bb.aw ], [ %i.gp, %bb.av ], !dbg !12055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12077, !noalias !11814
  br label %bb.ax, !dbg !12078

bb.ax:                                            ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, %.loopexit
  %.sroa.34.3 = phi double [ %.sroa.34.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.34.1, %.loopexit ], !dbg !11895
  %.sroa.0.3 = phi double [ %.sroa.0.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.0.1, %.loopexit ], !dbg !11895
  %.sroa.0.1.i12 = phi i64 [ 0, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.0.0.i, %.loopexit ], !dbg !11897 ; 3 uses
  %i.hg = phi <2 x double> [ %i.he, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %i.as, %.loopexit ], !dbg !11895
  %i.hh = phi <2 x double> [ %i.hf, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %i.at, %.loopexit ], !dbg !11895
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.1.i12, !dbg !12079
  store double %i.ej, ptr %i.hi, align 8, !dbg !12079, !noalias !11777
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.0.1.i12, !dbg !12080
  store double %i.ek, ptr %i.hj, align 8, !dbg !12080, !noalias !11777
  %i.hk = add nuw nsw i64 %.sroa.0.1.i12, 1, !dbg !12081
  br label %bb.k, !dbg !11894

_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryddINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtB1d_5slice4iter4IterdENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrddE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.16.5 = phi double [ %i.eo, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %.sroa.16.2, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !11895
  %.sroa.0.5 = phi double [ %.sroa.0.1, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %.sroa.0.2, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !11895
  %i.hl = phi <2 x double> [ %i.en, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %i.gc, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !11895
  %i.hm = phi <2 x double> [ %i.as, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRdINtNtNtBa_5slice4iter4IterdENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %i.gd, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrddEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !11895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12082, !noalias !11777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12083, !noalias !11777
  br label %bb.bi, !dbg !12084

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread: ; preds = %bb.g, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !12085
  %i.ho = load ptr, ptr %i.hn, align 8, !dbg !12085, !nonnull !3009, !noundef !3009 ; 2 uses
  %i.hp = load i64, ptr %i.m, align 8, !dbg !12086, !noundef !3009
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hp, !dbg !12087
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !12088
  %i.hs = load ptr, ptr %i.hr, align 8, !dbg !12088, !nonnull !3009, !noundef !3009 ; 2 uses
  %i.ht = load i64, ptr %i.o, align 8, !dbg !12089, !noundef !3009
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ht, !dbg !12090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12091, !noalias !11835
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterdEEBW_EINtB5_7ZipImplBW_BW_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.ho, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hs, ptr noundef nonnull %i.hu), !dbg !12092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12093, !noalias !11835
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !noalias !11835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12094, !noalias !11835
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false), !noalias !11835
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.hx = load i64, ptr %i.hv, align 8, !dbg !12095, !alias.scope !11836, !noalias !11835, !noundef !3009 ; 2 uses
  %i.hy = load i64, ptr %i.hw, align 8, !dbg !12096, !alias.scope !11836, !noalias !11835, !noundef !3009
  %i.hz = icmp ult i64 %i.hx, %i.hy, !dbg !12095
  br i1 %i.hz, label %.lr.ph.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !12095

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterdEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12097, !noalias !11835
  br label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryddINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB19_6copied6CopiedINtNtNtB1d_5slice4iter4IterdEEB1S_ENCINvB2_12pearson_corrddEs0_0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !12098

.lr.ph.i:                                         ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffECskY9G75ZWc4U_11polars_expr:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12492), !dbg !12607
  %.sroa.079.0.copyload = load ptr, ptr %i.l, align 8, !dbg !12608, !alias.scope !12493
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !12608
  %.sroa.480.0.copyload = load ptr, ptr %.sroa.480.0..sroa_idx, align 8, !dbg !12608, !alias.scope !12493
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !12608
  %.sroa.581.0.copyload = load ptr, ptr %.sroa.581.0..sroa_idx, align 8, !dbg !12608, !alias.scope !12493
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !12608
  %.sroa.783.0.copyload = load i64, ptr %.sroa.783.0..sroa_idx, align 8, !dbg !12608, !alias.scope !12493
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !12608
  %.sroa.884.0.copyload = load i64, ptr %.sroa.884.0..sroa_idx, align 8, !dbg !12608, !alias.scope !12493
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !12608
  %.sroa.985.0.copyload = load i64, ptr %.sroa.985.0..sroa_idx, align 8, !dbg !12608, !alias.scope !12493
  %.sroa.1086.56.copyload = load ptr, ptr %i.k, align 8, !dbg !12608, !alias.scope !12494
  %.sroa.1287.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !12608
  %.sroa.1287.56.copyload = load ptr, ptr %.sroa.1287.56..sroa_idx, align 8, !dbg !12608, !alias.scope !12494
  %.sroa.1388.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !12608
  %.sroa.1388.56.copyload = load ptr, ptr %.sroa.1388.56..sroa_idx, align 8, !dbg !12608, !alias.scope !12494
  %.sroa.1590.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !12608
  %.sroa.1590.56.copyload = load i64, ptr %.sroa.1590.56..sroa_idx, align 8, !dbg !12608, !alias.scope !12494
  %.sroa.1691.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !12608
  %.sroa.1691.56.copyload = load i64, ptr %.sroa.1691.56..sroa_idx, align 8, !dbg !12608, !alias.scope !12494
  %.sroa.17.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !12608
  %.sroa.17.56.copyload = load i64, ptr %.sroa.17.56..sroa_idx, align 8, !dbg !12608, !alias.scope !12494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !12609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12610, !noalias !12495
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.j, i8 0, i64 1024, i1 false), !noalias !12495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12611, !noalias !12495
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.i, i8 0, i64 1024, i1 false), !noalias !12495
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br label %bb.k, !dbg !12612

bb.k:                                             ; preds = %bb.ax, %bb.j
  %.sroa.34.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.34.3, %bb.ax ], !dbg !12613 ; 4 uses
  %.sroa.0.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.0.3, %bb.ax ], !dbg !12613 ; 8 uses
  %.sroa.63.0.i = phi i64 [ %.sroa.17.56.copyload, %bb.j ], [ %.sroa.63.2.i.ph223, %bb.ax ], !dbg !12614 ; 5 uses
  %.sroa.59.0.i = phi i64 [ %.sroa.1691.56.copyload, %bb.j ], [ %.sroa.59.2.i.ph224, %bb.ax ], !dbg !12614 ; 3 uses
  %.sroa.55.0.i = phi i64 [ %.sroa.1590.56.copyload, %bb.j ], [ %.sroa.55.2.i.ph225, %bb.ax ], !dbg !12614 ; 3 uses
  %.sroa.45.0.i = phi ptr [ %.sroa.1388.56.copyload, %bb.j ], [ %.sroa.45.2.i.ph226, %bb.ax ], !dbg !12614 ; 8 uses
  %.sroa.39.0.i = phi ptr [ %.sroa.1287.56.copyload, %bb.j ], [ %.sroa.39.2.i.lcssa, %bb.ax ], !dbg !12614 ; 7 uses
  %.sroa.35.0.i = phi ptr [ %.sroa.1086.56.copyload, %bb.j ], [ %.sroa.35.2.i.lcssa, %bb.ax ], !dbg !12614 ; 4 uses
  %.sroa.31.0.i = phi i64 [ %.sroa.985.0.copyload, %bb.j ], [ %.sroa.31.2.i.lcssa, %bb.ax ], !dbg !12614 ; 5 uses
  %.sroa.27.0.i = phi i64 [ %.sroa.884.0.copyload, %bb.j ], [ %.sroa.27.2.i.lcssa, %bb.ax ], !dbg !12614 ; 3 uses
  %.sroa.23.0.i = phi i64 [ %.sroa.783.0.copyload, %bb.j ], [ %.sroa.23.2.i.lcssa, %bb.ax ], !dbg !12614 ; 3 uses
  %.sroa.13.0.i = phi ptr [ %.sroa.581.0.copyload, %bb.j ], [ %.sroa.13.2.i.lcssa, %bb.ax ], !dbg !12614 ; 8 uses
  %.sroa.7.0.i = phi ptr [ %.sroa.480.0.copyload, %bb.j ], [ %.sroa.7.2.i.lcssa, %bb.ax ], !dbg !12614 ; 7 uses
  %.sroa.053.0.i = phi ptr [ %.sroa.079.0.copyload, %bb.j ], [ %.sroa.053.2.i.lcssa, %bb.ax ], !dbg !12614 ; 4 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.j ], [ %i.hl, %bb.ax ], !dbg !12615 ; 7 uses
  %i.ar = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.he, %bb.ax ], !dbg !12613 ; 6 uses
  %i.as = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.hf, %bb.ax ], !dbg !12613 ; 7 uses
  %.not.i.i.i23.i = icmp eq ptr %.sroa.053.0.i, null, !dbg !12616
  br i1 %.not.i.i.i23.i, label %bb.n, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i, !dbg !12617

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  %i.at = icmp eq ptr %.sroa.053.0.i, %.sroa.7.0.i, !dbg !12618 ; 2 uses
  %spec.select.idx.i = select i1 %i.at, i64 0, i64 4, !dbg !12619
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.053.0.i, i64 %spec.select.idx.i, !dbg !12619
  %spec.select135.i = select i1 %i.at, ptr null, ptr %.sroa.053.0.i, !dbg !12619
  %i.au = icmp eq i64 %.sroa.27.0.i, 0, !dbg !12620
  br i1 %i.au, label %bb.l, label %._crit_edge.i.i.i.i.i26.i, !dbg !12620

bb.l:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i
  %i.av = icmp eq i64 %.sroa.31.0.i, 0, !dbg !12621
  br i1 %i.av, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i, !dbg !12621

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i: ; preds = %bb.l
  %.sroa.0.0.i.i.i.i.i.i50.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.0.i, i64 64), !dbg !12622 ; 2 uses
  %i.aw = sub nuw i64 %.sroa.31.0.i, %.sroa.0.0.i.i.i.i.i.i50.i, !dbg !12623
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i51.i = load i64, ptr %.sroa.13.0.i, align 1, !dbg !12624, !noalias !12497
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i, i64 8, !dbg !12625
  br label %._crit_edge.i.i.i.i.i26.i, !dbg !12626

._crit_edge.i.i.i.i.i26.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i
  %.sroa.31.8.i = phi i64 [ %i.aw, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.31.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !12614
  %.sroa.13.8.i = phi ptr [ %i.ax, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.13.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !12614
  %i.ay = phi i64 [ %.sroa.0.0.i.i.i.i.i.i50.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.27.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !12627
  %i.az = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i51.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.23.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !12628 ; 2 uses
  %i.ba = trunc i64 %i.az to i8, !dbg !12628
  %i.bb = lshr i64 %i.az, 1, !dbg !12629
  %i.bc = add i64 %i.ay, -1, !dbg !12627
  %i.bd = and i8 %i.ba, 1, !dbg !12630
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, !dbg !12631

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i: ; preds = %._crit_edge.i.i.i.i.i26.i, %bb.l
  %.sroa.31.9.i = phi i64 [ 0, %bb.l ], [ %.sroa.31.8.i, %._crit_edge.i.i.i.i.i26.i ], !dbg !12614
  %.sroa.27.7.i = phi i64 [ 0, %bb.l ], [ %i.bc, %._crit_edge.i.i.i.i.i26.i ], !dbg !12614
  %.sroa.23.7.i = phi i64 [ %.sroa.23.0.i, %bb.l ], [ %i.bb, %._crit_edge.i.i.i.i.i26.i ], !dbg !12614
  %.sroa.13.9.i = phi ptr [ %.sroa.13.0.i, %bb.l ], [ %.sroa.13.8.i, %._crit_edge.i.i.i.i.i26.i ], !dbg !12614
  %.sroa.0.0.i8.i.i.i.i30.i = phi i8 [ 2, %bb.l ], [ %i.bd, %._crit_edge.i.i.i.i.i26.i ], !dbg !12632
  %i.be = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i30.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select135.i), !dbg !12633, !noalias !12498 ; 2 uses
  %i.bf = extractvalue { i8, ptr } %i.be, 0, !dbg !12634 ; 2 uses
  %.not.i.i.i.i31.i = icmp eq i8 %i.bf, 2, !dbg !12635
  br i1 %.not.i.i.i.i31.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.m, !dbg !12636

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i
  %i.bg = extractvalue { i8, ptr } %i.be, 1, !dbg !12634 ; 2 uses
  %i.bh = trunc nuw i8 %i.bf to i1, !dbg !12637
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ], !noalias !12499
  %..i.i.i.i32.i = select i1 %i.bh, ptr %i.bg, ptr null, !dbg !12638
  br label %bb.p, !dbg !12639

bb.n:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i), "nonnull"(ptr %.sroa.13.0.i) ]
  %i.bi = icmp eq ptr %.sroa.7.0.i, %.sroa.13.0.i, !dbg !12640
  br i1 %i.bi, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.o, !dbg !12641

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 4, !dbg !12642
  br label %bb.p, !dbg !12643

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.31.10.i = phi i64 [ %.sroa.31.0.i, %bb.o ], [ %.sroa.31.9.i, %bb.m ], !dbg !12614
  %.sroa.27.8.i = phi i64 [ %.sroa.27.0.i, %bb.o ], [ %.sroa.27.7.i, %bb.m ], !dbg !12614
  %.sroa.23.8.i = phi i64 [ %.sroa.23.0.i, %bb.o ], [ %.sroa.23.7.i, %bb.m ], !dbg !12614
  %.sroa.13.10.i = phi ptr [ %.sroa.13.0.i, %bb.o ], [ %.sroa.13.9.i, %bb.m ], !dbg !12614
  %.sroa.7.6.i = phi ptr [ %i.bj, %bb.o ], [ %.sroa.7.0.i, %bb.m ], !dbg !12614
  %.sroa.053.8.i = phi ptr [ null, %bb.o ], [ %spec.select.i, %bb.m ], !dbg !12614
  %.sroa.3.0.i.pn.i.ph.i.i33.i = phi ptr [ %.sroa.7.0.i, %bb.o ], [ %..i.i.i.i32.i, %bb.m ]
  %.not.i10.i.i34.i = icmp eq ptr %.sroa.35.0.i, null, !dbg !12644
  br i1 %.not.i10.i.i34.i, label %bb.s, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i, !dbg !12645

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i) ]
  %i.bk = icmp eq ptr %.sroa.35.0.i, %.sroa.39.0.i, !dbg !12646 ; 2 uses
  %spec.select136.idx.i = select i1 %i.bk, i64 0, i64 4, !dbg !12647
  %spec.select136.i = getelementptr inbounds nuw i8, ptr %.sroa.35.0.i, i64 %spec.select136.idx.i, !dbg !12647
  %spec.select137.i = select i1 %i.bk, ptr null, ptr %.sroa.35.0.i, !dbg !12647
  %i.bl = icmp eq i64 %.sroa.59.0.i, 0, !dbg !12648
  br i1 %i.bl, label %bb.q, label %._crit_edge.i.i.i13.i.i37.i, !dbg !12648

bb.q:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i
  %i.bm = icmp eq i64 %.sroa.63.0.i, 0, !dbg !12649
  br i1 %i.bm, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i, !dbg !12649

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i: ; preds = %bb.q
  %.sroa.0.0.i.i.i.i25.i.i47.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.0.i, i64 64), !dbg !12650 ; 2 uses
  %i.bn = sub nuw i64 %.sroa.63.0.i, %.sroa.0.0.i.i.i.i25.i.i47.i, !dbg !12651
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.i) ]
  %.sroa.02.0.copyload.i.i.i26.i.i48.i = load i64, ptr %.sroa.45.0.i, align 1, !dbg !12652, !noalias !12500
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.45.0.i, i64 8, !dbg !12653
  br label %._crit_edge.i.i.i13.i.i37.i, !dbg !12654

._crit_edge.i.i.i13.i.i37.i:                      ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i
  %.sroa.63.8.i = phi i64 [ %i.bn, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.63.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !12614
  %.sroa.45.8.i = phi ptr [ %i.bo, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.45.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !12614
  %i.bp = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i47.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.59.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !12655
  %i.bq = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i48.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.55.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !12656 ; 2 uses
  %i.br = trunc i64 %i.bq to i8, !dbg !12656
  %i.bs = lshr i64 %i.bq, 1, !dbg !12657
  %i.bt = add i64 %i.bp, -1, !dbg !12655
  %i.bu = and i8 %i.br, 1, !dbg !12658
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, !dbg !12659

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i: ; preds = %._crit_edge.i.i.i13.i.i37.i, %bb.q
  %.sroa.63.9.i = phi i64 [ 0, %bb.q ], [ %.sroa.63.8.i, %._crit_edge.i.i.i13.i.i37.i ], !dbg !12614
  %.sroa.59.7.i = phi i64 [ 0, %bb.q ], [ %i.bt, %._crit_edge.i.i.i13.i.i37.i ], !dbg !12614
  %.sroa.55.7.i = phi i64 [ %.sroa.55.0.i, %bb.q ], [ %i.bs, %._crit_edge.i.i.i13.i.i37.i ], !dbg !12614
  %.sroa.45.9.i = phi ptr [ %.sroa.45.0.i, %bb.q ], [ %.sroa.45.8.i, %._crit_edge.i.i.i13.i.i37.i ], !dbg !12614
  %.sroa.0.0.i8.i.i17.i.i41.i = phi i8 [ 2, %bb.q ], [ %i.bu, %._crit_edge.i.i.i13.i.i37.i ], !dbg !12660
  %i.bv = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i41.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select137.i), !dbg !12661, !noalias !12501 ; 2 uses
  %i.bw = extractvalue { i8, ptr } %i.bv, 0, !dbg !12662 ; 2 uses
  %.not.i.i18.i.i42.i = icmp eq i8 %i.bw, 2, !dbg !12663
  br i1 %.not.i.i18.i.i42.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.r, !dbg !12664

bb.r:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i
  %i.bx = extractvalue { i8, ptr } %i.bv, 1, !dbg !12662 ; 2 uses
  %i.by = trunc nuw i8 %i.bw to i1, !dbg !12665
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ], !noalias !12499
  %..i.i19.i.i43.i = select i1 %i.by, ptr %i.bx, ptr null, !dbg !12666
  br label %.lr.ph.i.i.i.i.preheader, !dbg !12667

bb.s:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i), "nonnull"(ptr %.sroa.45.0.i) ]
  %i.bz = icmp eq ptr %.sroa.39.0.i, %.sroa.45.0.i, !dbg !12668
  br i1 %i.bz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.t, !dbg !12669

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.39.0.i, i64 4, !dbg !12670
  br label %.lr.ph.i.i.i.i.preheader, !dbg !12671

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.t, %bb.r
  %.sroa.63.2.i.ph = phi i64 [ %.sroa.63.0.i, %bb.t ], [ %.sroa.63.9.i, %bb.r ]
  %.sroa.59.2.i.ph = phi i64 [ %.sroa.59.0.i, %bb.t ], [ %.sroa.59.7.i, %bb.r ]
  %.sroa.55.2.i.ph = phi i64 [ %.sroa.55.0.i, %bb.t ], [ %.sroa.55.7.i, %bb.r ]
  %.sroa.45.2.i.ph = phi ptr [ %.sroa.45.0.i, %bb.t ], [ %.sroa.45.9.i, %bb.r ]
  %.sroa.39.2.i.ph = phi ptr [ %i.ca, %bb.t ], [ %.sroa.39.0.i, %bb.r ] ; 4 uses
  %.sroa.35.2.i.ph = phi ptr [ null, %bb.t ], [ %spec.select136.i, %bb.r ]
  %.sroa.1283.0.i.ph = phi ptr [ %.sroa.39.0.i, %bb.t ], [ %..i.i19.i.i43.i, %bb.r ]
  br label %.lr.ph.i.i.i.i.outer, !dbg !12672

.lr.ph.i.i.i.i.outer:                             ; preds = %.lr.ph.i.i.i.i.preheader, %bb.al
  %.sroa.982.0.i.ph = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i33.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.al ] ; 2 uses
  %.sroa.63.2.i.ph223 = phi i64 [ %.sroa.63.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.63.5.i, %bb.al ] ; 5 uses
  %.sroa.59.2.i.ph224 = phi i64 [ %.sroa.59.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.59.4.i, %bb.al ] ; 3 uses
  %.sroa.55.2.i.ph225 = phi i64 [ %.sroa.55.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.55.4.i, %bb.al ] ; 3 uses
  %.sroa.45.2.i.ph226 = phi ptr [ %.sroa.45.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.45.5.i, %bb.al ] ; 10 uses
  %.sroa.35.2.i.ph228 = phi ptr [ %.sroa.35.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %spec.select140.i, %bb.al ] ; 5 uses
  %.sroa.31.2.i.ph = phi i64 [ %.sroa.31.10.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.31.6.i.peel, %bb.al ] ; 6 uses
  %.sroa.27.2.i.ph = phi i64 [ %.sroa.27.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.27.5.i.peel, %bb.al ] ; 4 uses
  %.sroa.23.2.i.ph = phi i64 [ %.sroa.23.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.23.5.i.peel, %bb.al ] ; 4 uses
  %.sroa.13.2.i.ph = phi ptr [ %.sroa.13.10.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.13.6.i.peel, %bb.al ] ; 8 uses
  %.sroa.7.2.i.ph = phi ptr [ %.sroa.7.6.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.4.i.peel, %bb.al ] ; 6 uses
  %.sroa.053.2.i.ph = phi ptr [ %.sroa.053.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.053.5.i.peel, %bb.al ] ; 5 uses
  %.sroa.1283.0.i.ph229 = phi ptr [ %.sroa.1283.0.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %..i.i19.i.i.i, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12502), !dbg !12673
  call void @llvm.experimental.noalias.scope.decl(metadata !12503), !dbg !12673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12674, !noalias !12504
  call void @llvm.experimental.noalias.scope.decl(metadata !12505), !dbg !12674
  call void @llvm.experimental.noalias.scope.decl(metadata !12506), !dbg !12674
  call void @llvm.experimental.noalias.scope.decl(metadata !12507), !dbg !12675
  call void @llvm.experimental.noalias.scope.decl(metadata !12508), !dbg !12675
  %.not.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.982.0.i.ph, null, !dbg !12676
  br i1 %.not.i.i.i.i.i.i.i.peel, label %bb.v, label %bb.u, !dbg !12672

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.outer
  %i.cb = load float, ptr %.sroa.982.0.i.ph, align 4, !dbg !12677, !alias.scope !12509, !noalias !12510, !noundef !3009
  br label %bb.v, !dbg !12678

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.outer
  %.sroa.5.0.i.i.i.i.i.i.i.peel = phi float [ %i.cb, %bb.u ], [ undef, %.lr.ph.i.i.i.i.outer ], !dbg !12679
  %.sroa.04.0.i.i.i.i.i.i.i.peel = phi i32 [ 1, %bb.u ], [ 0, %.lr.ph.i.i.i.i.outer ], !dbg !12680
  %.not7.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.1283.0.i.ph229, null, !dbg !12681
  br i1 %.not7.i.i.i.i.i.i.i.peel, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, label %bb.w, !dbg !12682

bb.w:                                             ; preds = %bb.v
  %i.cc = load float, ptr %.sroa.1283.0.i.ph229, align 4, !dbg !12683, !alias.scope !12511, !noalias !12510, !noundef !3009
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, !dbg !12684

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel: ; preds = %bb.w, %bb.v
  %.sroa.05.0.i.i.i.i.i.i.i.peel = phi i32 [ 1, %bb.w ], [ 0, %bb.v ], !dbg !12685
  %.sroa.56.0.i.i.i.i.i.i.i.peel = phi float [ %i.cc, %bb.w ], [ undef, %bb.v ], !dbg !12679
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionfE3zipfECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, i32 noundef %.sroa.04.0.i.i.i.i.i.i.i.peel, float %.sroa.5.0.i.i.i.i.i.i.i.peel, i32 noundef %.sroa.05.0.i.i.i.i.i.i.i.peel, float %.sroa.56.0.i.i.i.i.i.i.i.peel), !dbg !12686, !noalias !12512
  %i.cd = load i32, ptr %i.h, align 4, !dbg !12674, !range !3323, !noalias !12504, !noundef !3009
  %i.ce = trunc nuw i32 %i.cd to i1, !dbg !12687
  br i1 %i.ce, label %.loopexit, label %bb.x, !dbg !12687

bb.x:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12688, !noalias !12504
  %.not.i.i.i.i.peel = icmp eq ptr %.sroa.053.2.i.ph, null, !dbg !12689
  br i1 %.not.i.i.i.i.peel, label %bb.aa, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, !dbg !12690

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel: ; preds = %bb.x
  %i.cf = icmp eq ptr %.sroa.053.2.i.ph, %.sroa.7.2.i.ph, !dbg !12691 ; 2 uses
  %spec.select138.idx.i.peel = select i1 %i.cf, i64 0, i64 4, !dbg !12692
  %spec.select138.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.053.2.i.ph, i64 %spec.select138.idx.i.peel, !dbg !12692
  %spec.select139.i.peel = select i1 %i.cf, ptr null, ptr %.sroa.053.2.i.ph, !dbg !12692
  %i.cg = icmp eq i64 %.sroa.27.2.i.ph, 0, !dbg !12693
  br i1 %i.cg, label %bb.y, label %._crit_edge.i.i.i.i.i.i.peel, !dbg !12693

bb.y:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %i.ch = icmp eq i64 %.sroa.31.2.i.ph, 0, !dbg !12694
  br i1 %i.ch, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, !dbg !12694

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel: ; preds = %bb.y
  %.sroa.0.0.i.i.i.i.i.i.i.peel = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.2.i.ph, i64 64), !dbg !12695 ; 2 uses
  %i.ci = sub nuw i64 %.sroa.31.2.i.ph, %.sroa.0.0.i.i.i.i.i.i.i.peel, !dbg !12696
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2.i.ph) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i.peel = load i64, ptr %.sroa.13.2.i.ph, align 1, !dbg !12697, !noalias !12513
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.13.2.i.ph, i64 8, !dbg !12698
  br label %._crit_edge.i.i.i.i.i.i.peel, !dbg !12699

._crit_edge.i.i.i.i.i.i.peel:                     ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %.sroa.31.4.i.peel = phi i64 [ %i.ci, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.31.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.13.4.i.peel = phi ptr [ %i.cj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.13.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12614
  %i.ck = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.27.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12700
  %i.cl = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.23.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12701 ; 2 uses
  %i.cm = trunc i64 %i.cl to i8, !dbg !12701
  %i.cn = lshr i64 %i.cl, 1, !dbg !12702
  %i.co = add i64 %i.ck, -1, !dbg !12700
  %i.cp = and i8 %i.cm, 1, !dbg !12703
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, !dbg !12704

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel: ; preds = %._crit_edge.i.i.i.i.i.i.peel, %bb.y
  %.sroa.31.5.i.peel = phi i64 [ 0, %bb.y ], [ %.sroa.31.4.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.27.4.i.peel = phi i64 [ 0, %bb.y ], [ %i.co, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.23.4.i.peel = phi i64 [ %.sroa.23.2.i.ph, %bb.y ], [ %i.cn, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.13.5.i.peel = phi ptr [ %.sroa.13.2.i.ph, %bb.y ], [ %.sroa.13.4.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.0.0.i8.i.i.i.i.i.peel = phi i8 [ 2, %bb.y ], [ %i.cp, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !12705
  %i.cq = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.peel, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select139.i.peel), !dbg !12706, !noalias !12514 ; 2 uses
  %i.cr = extractvalue { i8, ptr } %i.cq, 0, !dbg !12707 ; 2 uses
  %.not.i.i.i.i.i.peel = icmp eq i8 %i.cr, 2, !dbg !12708
  br i1 %.not.i.i.i.i.i.peel, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.z, !dbg !12709

bb.z:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel
  %i.cs = extractvalue { i8, ptr } %i.cq, 1, !dbg !12707 ; 2 uses
  %i.ct = trunc nuw i8 %i.cr to i1, !dbg !12710
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ], !noalias !12499
  %..i.i.i.i.i.peel = select i1 %i.ct, ptr %i.cs, ptr null, !dbg !12711
  br label %bb.ac, !dbg !12712

bb.aa:                                            ; preds = %bb.x
  %i.cu = icmp eq ptr %.sroa.7.2.i.ph, %.sroa.13.2.i.ph, !dbg !12713
  br i1 %i.cu, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.ab, !dbg !12714

bb.ab:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.7.2.i.ph, i64 4, !dbg !12715
  br label %bb.ac, !dbg !12716

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.31.6.i.peel = phi i64 [ %.sroa.31.2.i.ph, %bb.ab ], [ %.sroa.31.5.i.peel, %bb.z ], !dbg !12614 ; 2 uses
  %.sroa.27.5.i.peel = phi i64 [ %.sroa.27.2.i.ph, %bb.ab ], [ %.sroa.27.4.i.peel, %bb.z ], !dbg !12614 ; 2 uses
  %.sroa.23.5.i.peel = phi i64 [ %.sroa.23.2.i.ph, %bb.ab ], [ %.sroa.23.4.i.peel, %bb.z ], !dbg !12614 ; 2 uses
  %.sroa.13.6.i.peel = phi ptr [ %.sroa.13.2.i.ph, %bb.ab ], [ %.sroa.13.5.i.peel, %bb.z ], !dbg !12614 ; 2 uses
  %.sroa.7.4.i.peel = phi ptr [ %i.cv, %bb.ab ], [ %.sroa.7.2.i.ph, %bb.z ], !dbg !12614 ; 2 uses
  %.sroa.053.5.i.peel = phi ptr [ null, %bb.ab ], [ %spec.select138.i.peel, %bb.z ], !dbg !12614 ; 2 uses
  %.sroa.3.0.i.pn.i.ph.i.i.i.peel = phi ptr [ %.sroa.7.2.i.ph, %bb.ab ], [ %..i.i.i.i.i.peel, %bb.z ] ; 2 uses
  %.not.i10.i.i.i.peel = icmp eq ptr %.sroa.35.2.i.ph228, null, !dbg !12717
  br i1 %.not.i10.i.i.i.peel, label %bb.ad, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i, !dbg !12718

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %i.cw = icmp eq ptr %.sroa.39.2.i.ph, %.sroa.45.2.i.ph226, !dbg !12719
  br i1 %i.cw, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %.lr.ph.i.i.i.i, !dbg !12720

.lr.ph.i.i.i.i:                                   ; preds = %bb.am, %bb.ad
  %.sroa.982.0.i = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.ad ], [ %.sroa.3.0.i.pn.i.ph.i.i.i, %bb.am ], !dbg !12721 ; 2 uses
  %.sroa.31.2.i = phi i64 [ %.sroa.31.6.i.peel, %bb.ad ], [ %.sroa.31.6.i, %bb.am ], !dbg !12614 ; 6 uses
  %.sroa.27.2.i = phi i64 [ %.sroa.27.5.i.peel, %bb.ad ], [ %.sroa.27.5.i, %bb.am ], !dbg !12614 ; 4 uses
  %.sroa.23.2.i = phi i64 [ %.sroa.23.5.i.peel, %bb.ad ], [ %.sroa.23.5.i, %bb.am ], !dbg !12614 ; 4 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.6.i.peel, %bb.ad ], [ %.sroa.13.6.i, %bb.am ], !dbg !12614 ; 8 uses
  %.sroa.7.2.i = phi ptr [ %.sroa.7.4.i.peel, %bb.ad ], [ %.sroa.7.4.i, %bb.am ], !dbg !12614 ; 6 uses
  %.sroa.053.2.i = phi ptr [ %.sroa.053.5.i.peel, %bb.ad ], [ %.sroa.053.5.i, %bb.am ], !dbg !12614 ; 5 uses
  %.sroa.1283.0.i = phi ptr [ %.sroa.39.2.i.ph, %bb.ad ], [ %.sroa.39.2.i, %bb.am ], !dbg !12721 ; 2 uses
  %.sroa.39.2.i = getelementptr inbounds nuw i8, ptr %.sroa.1283.0.i, i64 4, !dbg !12722 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12515), !dbg !12673
  call void @llvm.experimental.noalias.scope.decl(metadata !12516), !dbg !12673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12674, !noalias !12517
  call void @llvm.experimental.noalias.scope.decl(metadata !12518), !dbg !12674
  call void @llvm.experimental.noalias.scope.decl(metadata !12519), !dbg !12674
  call void @llvm.experimental.noalias.scope.decl(metadata !12520), !dbg !12675
  call void @llvm.experimental.noalias.scope.decl(metadata !12521), !dbg !12675
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.982.0.i, null, !dbg !12676
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, label %bb.ae, !dbg !12672

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cx = load float, ptr %.sroa.982.0.i, align 4, !dbg !12677, !alias.scope !12522, !noalias !12510, !noundef !3009
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !12678

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.ae
  %.sroa.5.0.i.i.i.i.i.i.i = phi float [ %i.cx, %bb.ae ], [ undef, %.lr.ph.i.i.i.i ], !dbg !12679
  %.sroa.04.0.i.i.i.i.i.i.i = phi i32 [ 1, %bb.ae ], [ 0, %.lr.ph.i.i.i.i ], !dbg !12680
  %i.cy = load float, ptr %.sroa.1283.0.i, align 4, !dbg !12683, !alias.scope !12523, !noalias !12510, !noundef !3009
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionfE3zipfECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, i32 noundef %.sroa.04.0.i.i.i.i.i.i.i, float %.sroa.5.0.i.i.i.i.i.i.i, i32 noundef 1, float %i.cy), !dbg !12686, !noalias !12524
  %i.cz = load i32, ptr %i.h, align 4, !dbg !12674, !range !3323, !noalias !12517, !noundef !3009
  %i.da = trunc nuw i32 %i.cz to i1, !dbg !12687
  br i1 %i.da, label %.loopexit, label %bb.af, !dbg !12687

bb.af:                                            ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12688, !noalias !12517
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.2.i, null, !dbg !12689
  br i1 %.not.i.i.i.i, label %bb.ai, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !12690

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.af
  %i.db = icmp eq ptr %.sroa.053.2.i, %.sroa.7.2.i, !dbg !12691 ; 2 uses
  %spec.select138.idx.i = select i1 %i.db, i64 0, i64 4, !dbg !12692
  %spec.select138.i = getelementptr inbounds nuw i8, ptr %.sroa.053.2.i, i64 %spec.select138.idx.i, !dbg !12692
  %spec.select139.i = select i1 %i.db, ptr null, ptr %.sroa.053.2.i, !dbg !12692
  %i.dc = icmp eq i64 %.sroa.27.2.i, 0, !dbg !12693
  br i1 %i.dc, label %bb.ag, label %._crit_edge.i.i.i.i.i.i, !dbg !12693

bb.ag:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.dd = icmp eq i64 %.sroa.31.2.i, 0, !dbg !12694
  br i1 %i.dd, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !12694

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.ag
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.2.i, i64 64), !dbg !12695 ; 2 uses
  %i.de = sub nuw i64 %.sroa.31.2.i, %.sroa.0.0.i.i.i.i.i.i.i, !dbg !12696
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.13.2.i, align 1, !dbg !12697, !noalias !12513
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.13.2.i, i64 8, !dbg !12698
  br label %._crit_edge.i.i.i.i.i.i, !dbg !12699

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.31.4.i = phi i64 [ %i.de, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.31.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !12614
  %.sroa.13.4.i = phi ptr [ %i.df, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.13.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !12614
  %i.dg = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.27.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !12700
  %i.dh = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.23.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !12701 ; 2 uses
  %i.di = trunc i64 %i.dh to i8, !dbg !12701
  %i.dj = lshr i64 %i.dh, 1, !dbg !12702
  %i.dk = add i64 %i.dg, -1, !dbg !12700
  %i.dl = and i8 %i.di, 1, !dbg !12703
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !12704

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.ag
  %.sroa.31.5.i = phi i64 [ 0, %bb.ag ], [ %.sroa.31.4.i, %._crit_edge.i.i.i.i.i.i ], !dbg !12614
  %.sroa.27.4.i = phi i64 [ 0, %bb.ag ], [ %i.dk, %._crit_edge.i.i.i.i.i.i ], !dbg !12614
  %.sroa.23.4.i = phi i64 [ %.sroa.23.2.i, %bb.ag ], [ %i.dj, %._crit_edge.i.i.i.i.i.i ], !dbg !12614
  %.sroa.13.5.i = phi ptr [ %.sroa.13.2.i, %bb.ag ], [ %.sroa.13.4.i, %._crit_edge.i.i.i.i.i.i ], !dbg !12614
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ 2, %bb.ag ], [ %i.dl, %._crit_edge.i.i.i.i.i.i ], !dbg !12705
  %i.dm = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select139.i), !dbg !12706, !noalias !12514 ; 2 uses
  %i.dn = extractvalue { i8, ptr } %i.dm, 0, !dbg !12707 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 2, !dbg !12708
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.ah, !dbg !12709

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.do = extractvalue { i8, ptr } %i.dm, 1, !dbg !12707 ; 2 uses
  %i.dp = trunc nuw i8 %i.dn to i1, !dbg !12710
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ], !noalias !12499
  %..i.i.i.i.i = select i1 %i.dp, ptr %i.do, ptr null, !dbg !12711
  br label %bb.am, !dbg !12712

bb.ai:                                            ; preds = %bb.af
  %i.dq = icmp eq ptr %.sroa.7.2.i, %.sroa.13.2.i, !dbg !12713
  br i1 %i.dq, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.aj, !dbg !12714

bb.aj:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.7.2.i, i64 4, !dbg !12715
  br label %bb.am, !dbg !12716

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i: ; preds = %bb.ac
  %i.ds = icmp eq ptr %.sroa.35.2.i.ph228, %.sroa.39.2.i.ph, !dbg !12723 ; 2 uses
  %spec.select140.idx.i = select i1 %i.ds, i64 0, i64 4, !dbg !12724
  %spec.select140.i = getelementptr inbounds nuw i8, ptr %.sroa.35.2.i.ph228, i64 %spec.select140.idx.i, !dbg !12724
  %spec.select141.i = select i1 %i.ds, ptr null, ptr %.sroa.35.2.i.ph228, !dbg !12724
  %i.dt = icmp eq i64 %.sroa.59.2.i.ph224, 0, !dbg !12725
  br i1 %i.dt, label %bb.ak, label %._crit_edge.i.i.i13.i.i.i, !dbg !12725

bb.ak:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %i.du = icmp eq i64 %.sroa.63.2.i.ph223, 0, !dbg !12726
  br i1 %i.du, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, !dbg !12726

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i: ; preds = %bb.ak
  %.sroa.0.0.i.i.i.i25.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.2.i.ph223, i64 64), !dbg !12727 ; 2 uses
  %i.dv = sub nuw i64 %.sroa.63.2.i.ph223, %.sroa.0.0.i.i.i.i25.i.i.i, !dbg !12728
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %.sroa.02.0.copyload.i.i.i26.i.i.i = load i64, ptr %.sroa.45.2.i.ph226, align 1, !dbg !12729, !noalias !12525
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.45.2.i.ph226, i64 8, !dbg !12730
  br label %._crit_edge.i.i.i13.i.i.i, !dbg !12731

._crit_edge.i.i.i13.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %.sroa.63.4.i = phi i64 [ %i.dv, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.63.2.i.ph223, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !12614
  %.sroa.45.4.i = phi ptr [ %i.dw, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.45.2.i.ph226, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !12614
  %i.dx = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.59.2.i.ph224, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !12732
  %i.dy = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.55.2.i.ph225, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !12733 ; 2 uses
  %i.dz = trunc i64 %i.dy to i8, !dbg !12733
  %i.ea = lshr i64 %i.dy, 1, !dbg !12734
  %i.eb = add i64 %i.dx, -1, !dbg !12732
  %i.ec = and i8 %i.dz, 1, !dbg !12735
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, !dbg !12736

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i: ; preds = %._crit_edge.i.i.i13.i.i.i, %bb.ak
  %.sroa.63.5.i = phi i64 [ 0, %bb.ak ], [ %.sroa.63.4.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !12614
  %.sroa.59.4.i = phi i64 [ 0, %bb.ak ], [ %i.eb, %._crit_edge.i.i.i13.i.i.i ], !dbg !12614
  %.sroa.55.4.i = phi i64 [ %.sroa.55.2.i.ph225, %bb.ak ], [ %i.ea, %._crit_edge.i.i.i13.i.i.i ], !dbg !12614
  %.sroa.45.5.i = phi ptr [ %.sroa.45.2.i.ph226, %bb.ak ], [ %.sroa.45.4.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !12614
  %.sroa.0.0.i8.i.i17.i.i.i = phi i8 [ 2, %bb.ak ], [ %i.ec, %._crit_edge.i.i.i13.i.i.i ], !dbg !12737
  %i.ed = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRfECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select141.i), !dbg !12738, !noalias !12526 ; 2 uses
  %i.ee = extractvalue { i8, ptr } %i.ed, 0, !dbg !12739 ; 2 uses
  %.not.i.i18.i.i.i = icmp eq i8 %i.ee, 2, !dbg !12740
  br i1 %.not.i.i18.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.al, !dbg !12741

bb.al:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %i.ef = extractvalue { i8, ptr } %i.ed, 1, !dbg !12739 ; 2 uses
  %i.eg = trunc nuw i8 %i.ee to i1, !dbg !12742
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ], !noalias !12499
  %..i.i19.i.i.i = select i1 %i.eg, ptr %i.ef, ptr null, !dbg !12743
  br label %.lr.ph.i.i.i.i.outer, !dbg !12744

bb.am:                                            ; preds = %bb.ah, %bb.aj
  %.sroa.31.6.i = phi i64 [ %.sroa.31.2.i, %bb.aj ], [ %.sroa.31.5.i, %bb.ah ], !dbg !12614
  %.sroa.27.5.i = phi i64 [ %.sroa.27.2.i, %bb.aj ], [ %.sroa.27.4.i, %bb.ah ], !dbg !12614
  %.sroa.23.5.i = phi i64 [ %.sroa.23.2.i, %bb.aj ], [ %.sroa.23.4.i, %bb.ah ], !dbg !12614
  %.sroa.13.6.i = phi ptr [ %.sroa.13.2.i, %bb.aj ], [ %.sroa.13.5.i, %bb.ah ], !dbg !12614
  %.sroa.7.4.i = phi ptr [ %i.dr, %bb.aj ], [ %.sroa.7.2.i, %bb.ah ], !dbg !12614
  %.sroa.053.5.i = phi ptr [ null, %bb.aj ], [ %spec.select138.i, %bb.ah ], !dbg !12614
  %.sroa.3.0.i.pn.i.ph.i.i.i = phi ptr [ %.sroa.7.2.i, %bb.aj ], [ %..i.i.i.i.i, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %i.eh = icmp eq ptr %.sroa.39.2.i, %.sroa.45.2.i.ph226, !dbg !12719
  br i1 %i.eh, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %.lr.ph.i.i.i.i, !dbg !12720, !llvm.loop !12387

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.39.2.i.lcssa = phi ptr [ %.sroa.39.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.39.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.35.2.i.lcssa = phi ptr [ null, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.35.2.i.ph228, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.31.2.i.lcssa = phi i64 [ %.sroa.31.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.31.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.27.2.i.lcssa = phi i64 [ %.sroa.27.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.27.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.23.2.i.lcssa = phi i64 [ %.sroa.23.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.23.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.13.2.i.lcssa = phi ptr [ %.sroa.13.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.13.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.7.2.i.lcssa = phi ptr [ %.sroa.7.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.7.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12614
  %.sroa.053.2.i.lcssa = phi ptr [ %.sroa.053.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.053.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffE0INtB7_5FnMutTTINtNtBb_6option6OptionRfEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !12614
  %i.ei = load <2 x float>, ptr %i.an, align 4, !dbg !12745, !noalias !12517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12688, !noalias !12517
  %i.ej = icmp ugt i64 %.sroa.0.0.i, 127, !dbg !12746
  br i1 %i.ej, label %bb.at, label %bb.ax, !dbg !12746

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i: ; preds = %bb.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, %bb.n, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, %bb.ad, %bb.aa, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, %bb.am, %bb.ai, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %.not.i = icmp eq i64 %.sroa.0.0.i, 0, !dbg !12747
  %i.ek = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 poison>, !dbg !12613
  %i.el = insertelement <2 x double> %i.ek, double %.sroa.34.1, i64 1, !dbg !12613 ; 3 uses
  %i.em = extractelement <2 x double> %i.as, i64 0, !dbg !12747 ; 4 uses
  br i1 %.not.i, label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryffINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtB1d_5slice4iter4IterfENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrffE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.an, !dbg !12747

bb.an:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i
  %i.en = icmp ult i64 %.sroa.0.0.i, 129
  br i1 %i.en, label %bb.ap, label %bb.ao, !dbg !12748, !prof !3147

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0.i, i64 noundef 128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #43, !dbg !12749, !noalias !12495
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !12750, !noalias !12527
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef range(i64 1, 129) %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef range(i64 1, 129) %.sroa.0.0.i), !dbg !12750, !noalias !12495
  call void @llvm.experimental.noalias.scope.decl(metadata !12528), !dbg !12751
  %i.eo = load double, ptr %i.g, align 8, !dbg !12752, !alias.scope !12529, !noalias !12527, !noundef !3009 ; 6 uses
  %i.ep = fcmp oeq double %i.eo, 0.000000e+00, !dbg !12752
  br i1 %i.ep, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit.i, label %bb.aq, !dbg !12752

bb.aq:                                            ; preds = %bb.ap
  %i.eq = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !12753
  br i1 %i.eq, label %bb.as, label %bb.ar, !dbg !12753

bb.ar:                                            ; preds = %bb.aq
  %i.er = fadd double %.sroa.0.1, %i.eo, !dbg !12754 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !12755
  %i.et = load double, ptr %i.es, align 8, !dbg !12755, !alias.scope !12529, !noalias !12527, !noundef !3009 ; 2 uses
  %i.eu = fsub double %i.et, %i.em, !dbg !12755   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !12756
  %i.ew = load double, ptr %i.ev, align 8, !dbg !12756, !alias.scope !12529, !noalias !12527, !noundef !3009 ; 2 uses
  %i.ex = extractelement <2 x double> %i.as, i64 1, !dbg !12756
  %i.ey = fsub double %i.ew, %i.ex, !dbg !12756   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !12757
  %i.fa = load double, ptr %i.ez, align 8, !dbg !12757, !alias.scope !12529, !noalias !12527, !noundef !3009
  %i.fb = fdiv double %i.eo, %i.er, !dbg !12758   ; 2 uses
  %i.fc = fmul double %i.fb, %i.eu, !dbg !12759
  %i.fd = fadd double %i.em, %i.fc, !dbg !12760   ; 2 uses
  %i.fe = fmul double %i.fb, %i.ey, !dbg !12761
  %i.ff = fsub double %i.et, %i.fd, !dbg !12762
  %i.fg = insertelement <2 x double> poison, double %i.fe, i64 0, !dbg !12763
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !12764
  %i.fi = fmul double %i.eo, %i.ff, !dbg !12765   ; 2 uses
  %i.fj = fmul double %i.eu, %i.fi, !dbg !12765
  %i.fk = fadd double %i.fa, %i.fj, !dbg !12757
  %i.fl = insertelement <2 x double> %i.fg, double %i.fk, i64 1, !dbg !12763
  %i.fm = fadd <2 x double> %i.el, %i.fl, !dbg !12763 ; 2 uses
  %i.fn = load <2 x double>, ptr %i.fh, align 8, !dbg !12764, !alias.scope !12529, !noalias !12527
  %i.fo = extractelement <2 x double> %i.fm, i64 0, !dbg !12766
  %i.fp = fsub double %i.ew, %i.fo, !dbg !12766
  %i.fq = fmul double %i.eo, %i.fp, !dbg !12767
  %i.fr = insertelement <2 x double> poison, double %i.ey, i64 0, !dbg !12768
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !12768
  %i.ft = insertelement <2 x double> poison, double %i.fi, i64 0, !dbg !12768
  %i.fu = insertelement <2 x double> %i.ft, double %i.fq, i64 1, !dbg !12768
  %i.fv = fmul <2 x double> %i.fs, %i.fu, !dbg !12768
  %i.fw = fadd <2 x double> %i.fn, %i.fv, !dbg !12764
  %i.fx = fadd <2 x double> %i.ar, %i.fw, !dbg !12769
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !12770

bb.as:                                            ; preds = %bb.aq
  %.sroa.16.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !12771
  %.sroa.16.0.copyload22 = load double, ptr %.sroa.16.0..sroa_idx21, align 8, !dbg !12771, !alias.scope !12530, !noalias !12531
  %.sroa.25.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !12771
  %i.fy = load <2 x double>, ptr %.sroa.25.0..sroa_idx32, align 8, !dbg !12771, !alias.scope !12530, !noalias !12531
  %.sroa.43.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !12771
  %i.fz = load <2 x double>, ptr %.sroa.43.0..sroa_idx54, align 8, !dbg !12771, !alias.scope !12530, !noalias !12531
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !12772

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.as, %bb.ar, %bb.ap
  %.sroa.16.2 = phi double [ %i.em, %bb.ap ], [ %.sroa.16.0.copyload22, %bb.as ], [ %i.fd, %bb.ar ], !dbg !12773
  %.sroa.0.2 = phi double [ %.sroa.0.1, %bb.ap ], [ %i.eo, %bb.as ], [ %i.er, %bb.ar ], !dbg !12773
  %i.ga = phi <2 x double> [ %i.el, %bb.ap ], [ %i.fy, %bb.as ], [ %i.fm, %bb.ar ], !dbg !12773
  %i.gb = phi <2 x double> [ %i.ar, %bb.ap ], [ %i.fz, %bb.as ], [ %i.fx, %bb.ar ], !dbg !12773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !12774, !noalias !12527
  br label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryffINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtB1d_5slice4iter4IterfENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrffE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !12775

bb.at:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12776, !noalias !12532
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 128), !dbg !12776, !noalias !12495
  call void @llvm.experimental.noalias.scope.decl(metadata !12533), !dbg !12777
  %i.gc = load double, ptr %i.f, align 8, !dbg !12778, !alias.scope !12534, !noalias !12532, !noundef !3009 ; 5 uses
  %i.gd = fcmp oeq double %i.gc, 0.000000e+00, !dbg !12778
  br i1 %i.gd, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, label %bb.au, !dbg !12778

bb.au:                                            ; preds = %bb.at
  %i.ge = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !12779
  br i1 %i.ge, label %bb.aw, label %bb.av, !dbg !12779

bb.av:                                            ; preds = %bb.au
  %i.gf = fadd double %.sroa.0.1, %i.gc, !dbg !12780 ; 2 uses
  %i.gg = fdiv double %i.gc, %i.gf, !dbg !12781
  %i.gh = load double, ptr %i.ap, align 8, !dbg !12782, !alias.scope !12534, !noalias !12532, !noundef !3009
  %i.gi = load <2 x double>, ptr %i.ao, align 8, !dbg !12783, !alias.scope !12534, !noalias !12532 ; 2 uses
  %i.gj = fsub <2 x double> %i.gi, %i.as, !dbg !12783 ; 3 uses
  %i.gk = insertelement <2 x double> poison, double %i.gg, i64 0, !dbg !12784
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !12784
  %i.gm = fmul <2 x double> %i.gl, %i.gj, !dbg !12784
  %i.gn = fadd <2 x double> %i.as, %i.gm, !dbg !12785 ; 2 uses
  %i.go = fsub <2 x double> %i.gi, %i.gn, !dbg !12786
  %i.gp = insertelement <2 x double> poison, double %i.gc, i64 0, !dbg !12787
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !12787
  %i.gr = fmul <2 x double> %i.gq, %i.go, !dbg !12787 ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.gj, %i.gr, !dbg !12787
  %i.gs = extractelement <2 x double> %foldExtExtBinop, i64 0, !dbg !12787
  %i.gt = fadd double %i.gh, %i.gs, !dbg !12782
  %i.gu = fadd double %.sroa.34.1, %i.gt, !dbg !12788
  %i.gv = load <2 x double>, ptr %i.aq, align 8, !dbg !12789, !alias.scope !12534, !noalias !12532
  %i.gw = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> <i32 1, i32 1>, !dbg !12790
  %i.gx = fmul <2 x double> %i.gw, %i.gr, !dbg !12790
  %i.gy = fadd <2 x double> %i.gv, %i.gx, !dbg !12789
  %i.gz = fadd <2 x double> %i.ar, %i.gy, !dbg !12791
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !12792

bb.aw:                                            ; preds = %bb.au
  %i.ha = load <2 x double>, ptr %i.ao, align 8, !dbg !12793, !alias.scope !12535, !noalias !12536
  %.sroa.34.0.copyload46 = load double, ptr %i.ap, align 8, !dbg !12793, !alias.scope !12535, !noalias !12536
  %i.hb = load <2 x double>, ptr %i.aq, align 8, !dbg !12793, !alias.scope !12535, !noalias !12536
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !12794

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit22.i: ; preds = %bb.aw, %bb.av, %bb.at
  %.sroa.34.4 = phi double [ %.sroa.34.1, %bb.at ], [ %.sroa.34.0.copyload46, %bb.aw ], [ %i.gu, %bb.av ], !dbg !12773
  %.sroa.0.4 = phi double [ %.sroa.0.1, %bb.at ], [ %i.gc, %bb.aw ], [ %i.gf, %bb.av ], !dbg !12773
  %i.hc = phi <2 x double> [ %i.ar, %bb.at ], [ %i.hb, %bb.aw ], [ %i.gz, %bb.av ], !dbg !12773
  %i.hd = phi <2 x double> [ %i.as, %bb.at ], [ %i.ha, %bb.aw ], [ %i.gn, %bb.av ], !dbg !12773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12795, !noalias !12532
  br label %bb.ax, !dbg !12796

bb.ax:                                            ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, %.loopexit
  %.sroa.34.3 = phi double [ %.sroa.34.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.34.1, %.loopexit ], !dbg !12613
  %.sroa.0.3 = phi double [ %.sroa.0.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.0.1, %.loopexit ], !dbg !12613
  %.sroa.0.1.i12 = phi i64 [ 0, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.0.0.i, %.loopexit ], !dbg !12615 ; 3 uses
  %i.he = phi <2 x double> [ %i.hc, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %i.ar, %.loopexit ], !dbg !12613
  %i.hf = phi <2 x double> [ %i.hd, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %i.as, %.loopexit ], !dbg !12613
  %i.hg = fpext <2 x float> %i.ei to <2 x double>, !dbg !12797 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.1.i12, !dbg !12798
  %i.hi = extractelement <2 x double> %i.hg, i64 0, !dbg !12798
  store double %i.hi, ptr %i.hh, align 8, !dbg !12798, !noalias !12495
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.0.1.i12, !dbg !12799
  %i.hk = extractelement <2 x double> %i.hg, i64 1, !dbg !12799
  store double %i.hk, ptr %i.hj, align 8, !dbg !12799, !noalias !12495
  %i.hl = add nuw nsw i64 %.sroa.0.1.i12, 1, !dbg !12800
  br label %bb.k, !dbg !12612

_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryffINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtB1d_5slice4iter4IterfENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrffE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.16.5 = phi double [ %i.em, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %.sroa.16.2, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !12613
  %.sroa.0.5 = phi double [ %.sroa.0.1, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %.sroa.0.2, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !12613
  %i.hm = phi <2 x double> [ %i.el, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %i.ga, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !12613
  %i.hn = phi <2 x double> [ %i.ar, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRfINtNtNtBa_5slice4iter4IterfENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %i.gb, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrffEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !12613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12801, !noalias !12495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12802, !noalias !12495
  br label %bb.bi, !dbg !12803

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread: ; preds = %bb.g, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !12804
  %i.hp = load ptr, ptr %i.ho, align 8, !dbg !12804, !nonnull !3009, !noundef !3009 ; 2 uses
  %i.hq = load i64, ptr %i.m, align 8, !dbg !12805, !noundef !3009
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hq, !dbg !12806
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !12807
  %i.ht = load ptr, ptr %i.hs, align 8, !dbg !12807, !nonnull !3009, !noundef !3009 ; 2 uses
  %i.hu = load i64, ptr %i.o, align 8, !dbg !12808, !noundef !3009
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hu, !dbg !12809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12810, !noalias !12553
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterfEEBW_EINtB5_7ZipImplBW_BW_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.hp, ptr noundef nonnull %i.hr, ptr noundef nonnull %i.ht, ptr noundef nonnull %i.hv), !dbg !12811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12812, !noalias !12553
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !noalias !12553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !12813, !noalias !12553
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false), !noalias !12553
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.hy = load i64, ptr %i.hw, align 8, !dbg !12814, !alias.scope !12554, !noalias !12553, !noundef !3009 ; 2 uses
  %i.hz = load i64, ptr %i.hx, align 8, !dbg !12815, !alias.scope !12554, !noalias !12553, !noundef !3009
  %i.ia = icmp ult i64 %i.hy, %i.hz, !dbg !12814
  br i1 %i.ia, label %.lr.ph.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !12814

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterfEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12816, !noalias !12553
  br label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryffINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB19_6copied6CopiedINtNtNtB1d_5slice4iter4IterfEEB1S_ENCINvB2_12pearson_corrffEs0_0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !12817

.lr.ph.i:                                         ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread
end_hunk_2
begin_hunk_3_@_RINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllECskY9G75ZWc4U_11polars_expr:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13213), !dbg !13328
  %.sroa.079.0.copyload = load ptr, ptr %i.l, align 8, !dbg !13329, !alias.scope !13214
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !13329
  %.sroa.480.0.copyload = load ptr, ptr %.sroa.480.0..sroa_idx, align 8, !dbg !13329, !alias.scope !13214
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !13329
  %.sroa.581.0.copyload = load ptr, ptr %.sroa.581.0..sroa_idx, align 8, !dbg !13329, !alias.scope !13214
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !13329
  %.sroa.783.0.copyload = load i64, ptr %.sroa.783.0..sroa_idx, align 8, !dbg !13329, !alias.scope !13214
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !13329
  %.sroa.884.0.copyload = load i64, ptr %.sroa.884.0..sroa_idx, align 8, !dbg !13329, !alias.scope !13214
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !13329
  %.sroa.985.0.copyload = load i64, ptr %.sroa.985.0..sroa_idx, align 8, !dbg !13329, !alias.scope !13214
  %.sroa.1086.56.copyload = load ptr, ptr %i.k, align 8, !dbg !13329, !alias.scope !13215
  %.sroa.1287.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !13329
  %.sroa.1287.56.copyload = load ptr, ptr %.sroa.1287.56..sroa_idx, align 8, !dbg !13329, !alias.scope !13215
  %.sroa.1388.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !13329
  %.sroa.1388.56.copyload = load ptr, ptr %.sroa.1388.56..sroa_idx, align 8, !dbg !13329, !alias.scope !13215
  %.sroa.1590.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !13329
  %.sroa.1590.56.copyload = load i64, ptr %.sroa.1590.56..sroa_idx, align 8, !dbg !13329, !alias.scope !13215
  %.sroa.1691.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !13329
  %.sroa.1691.56.copyload = load i64, ptr %.sroa.1691.56..sroa_idx, align 8, !dbg !13329, !alias.scope !13215
  %.sroa.17.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !13329
  %.sroa.17.56.copyload = load i64, ptr %.sroa.17.56..sroa_idx, align 8, !dbg !13329, !alias.scope !13215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !13330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !13330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !13331, !noalias !13216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.j, i8 0, i64 1024, i1 false), !noalias !13216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !13332, !noalias !13216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.i, i8 0, i64 1024, i1 false), !noalias !13216
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br label %bb.k, !dbg !13333

bb.k:                                             ; preds = %bb.ax, %bb.j
  %.sroa.34.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.34.3, %bb.ax ], !dbg !13334 ; 4 uses
  %.sroa.0.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.0.3, %bb.ax ], !dbg !13334 ; 8 uses
  %.sroa.63.0.i = phi i64 [ %.sroa.17.56.copyload, %bb.j ], [ %.sroa.63.2.i.ph223, %bb.ax ], !dbg !13335 ; 5 uses
  %.sroa.59.0.i = phi i64 [ %.sroa.1691.56.copyload, %bb.j ], [ %.sroa.59.2.i.ph224, %bb.ax ], !dbg !13335 ; 3 uses
  %.sroa.55.0.i = phi i64 [ %.sroa.1590.56.copyload, %bb.j ], [ %.sroa.55.2.i.ph225, %bb.ax ], !dbg !13335 ; 3 uses
  %.sroa.45.0.i = phi ptr [ %.sroa.1388.56.copyload, %bb.j ], [ %.sroa.45.2.i.ph226, %bb.ax ], !dbg !13335 ; 8 uses
  %.sroa.39.0.i = phi ptr [ %.sroa.1287.56.copyload, %bb.j ], [ %.sroa.39.2.i.lcssa, %bb.ax ], !dbg !13335 ; 7 uses
  %.sroa.35.0.i = phi ptr [ %.sroa.1086.56.copyload, %bb.j ], [ %.sroa.35.2.i.lcssa, %bb.ax ], !dbg !13335 ; 4 uses
  %.sroa.31.0.i = phi i64 [ %.sroa.985.0.copyload, %bb.j ], [ %.sroa.31.2.i.lcssa, %bb.ax ], !dbg !13335 ; 5 uses
  %.sroa.27.0.i = phi i64 [ %.sroa.884.0.copyload, %bb.j ], [ %.sroa.27.2.i.lcssa, %bb.ax ], !dbg !13335 ; 3 uses
  %.sroa.23.0.i = phi i64 [ %.sroa.783.0.copyload, %bb.j ], [ %.sroa.23.2.i.lcssa, %bb.ax ], !dbg !13335 ; 3 uses
  %.sroa.13.0.i = phi ptr [ %.sroa.581.0.copyload, %bb.j ], [ %.sroa.13.2.i.lcssa, %bb.ax ], !dbg !13335 ; 8 uses
  %.sroa.7.0.i = phi ptr [ %.sroa.480.0.copyload, %bb.j ], [ %.sroa.7.2.i.lcssa, %bb.ax ], !dbg !13335 ; 7 uses
  %.sroa.053.0.i = phi ptr [ %.sroa.079.0.copyload, %bb.j ], [ %.sroa.053.2.i.lcssa, %bb.ax ], !dbg !13335 ; 4 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.j ], [ %i.hl, %bb.ax ], !dbg !13336 ; 7 uses
  %i.ar = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.he, %bb.ax ], !dbg !13334 ; 6 uses
  %i.as = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.hf, %bb.ax ], !dbg !13334 ; 7 uses
  %.not.i.i.i23.i = icmp eq ptr %.sroa.053.0.i, null, !dbg !13337
  br i1 %.not.i.i.i23.i, label %bb.n, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i, !dbg !13338

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  %i.at = icmp eq ptr %.sroa.053.0.i, %.sroa.7.0.i, !dbg !13339 ; 2 uses
  %spec.select.idx.i = select i1 %i.at, i64 0, i64 4, !dbg !13340
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.053.0.i, i64 %spec.select.idx.i, !dbg !13340
  %spec.select135.i = select i1 %i.at, ptr null, ptr %.sroa.053.0.i, !dbg !13340
  %i.au = icmp eq i64 %.sroa.27.0.i, 0, !dbg !13341
  br i1 %i.au, label %bb.l, label %._crit_edge.i.i.i.i.i26.i, !dbg !13341

bb.l:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i
  %i.av = icmp eq i64 %.sroa.31.0.i, 0, !dbg !13342
  br i1 %i.av, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i, !dbg !13342

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i: ; preds = %bb.l
  %.sroa.0.0.i.i.i.i.i.i50.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.0.i, i64 64), !dbg !13343 ; 2 uses
  %i.aw = sub nuw i64 %.sroa.31.0.i, %.sroa.0.0.i.i.i.i.i.i50.i, !dbg !13344
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i51.i = load i64, ptr %.sroa.13.0.i, align 1, !dbg !13345, !noalias !13218
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i, i64 8, !dbg !13346
  br label %._crit_edge.i.i.i.i.i26.i, !dbg !13347

._crit_edge.i.i.i.i.i26.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i
  %.sroa.31.8.i = phi i64 [ %i.aw, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.31.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !13335
  %.sroa.13.8.i = phi ptr [ %i.ax, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.13.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !13335
  %i.ay = phi i64 [ %.sroa.0.0.i.i.i.i.i.i50.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.27.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !13348
  %i.az = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i51.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.23.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !13349 ; 2 uses
  %i.ba = trunc i64 %i.az to i8, !dbg !13349
  %i.bb = lshr i64 %i.az, 1, !dbg !13350
  %i.bc = add i64 %i.ay, -1, !dbg !13348
  %i.bd = and i8 %i.ba, 1, !dbg !13351
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, !dbg !13352

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i: ; preds = %._crit_edge.i.i.i.i.i26.i, %bb.l
  %.sroa.31.9.i = phi i64 [ 0, %bb.l ], [ %.sroa.31.8.i, %._crit_edge.i.i.i.i.i26.i ], !dbg !13335
  %.sroa.27.7.i = phi i64 [ 0, %bb.l ], [ %i.bc, %._crit_edge.i.i.i.i.i26.i ], !dbg !13335
  %.sroa.23.7.i = phi i64 [ %.sroa.23.0.i, %bb.l ], [ %i.bb, %._crit_edge.i.i.i.i.i26.i ], !dbg !13335
  %.sroa.13.9.i = phi ptr [ %.sroa.13.0.i, %bb.l ], [ %.sroa.13.8.i, %._crit_edge.i.i.i.i.i26.i ], !dbg !13335
  %.sroa.0.0.i8.i.i.i.i30.i = phi i8 [ 2, %bb.l ], [ %i.bd, %._crit_edge.i.i.i.i.i26.i ], !dbg !13353
  %i.be = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRlECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i30.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select135.i), !dbg !13354, !noalias !13219 ; 2 uses
  %i.bf = extractvalue { i8, ptr } %i.be, 0, !dbg !13355 ; 2 uses
  %.not.i.i.i.i31.i = icmp eq i8 %i.bf, 2, !dbg !13356
  br i1 %.not.i.i.i.i31.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.m, !dbg !13357

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i
  %i.bg = extractvalue { i8, ptr } %i.be, 1, !dbg !13355 ; 2 uses
  %i.bh = trunc nuw i8 %i.bf to i1, !dbg !13358
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ], !noalias !13220
  %..i.i.i.i32.i = select i1 %i.bh, ptr %i.bg, ptr null, !dbg !13359
  br label %bb.p, !dbg !13360

bb.n:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i), "nonnull"(ptr %.sroa.13.0.i) ]
  %i.bi = icmp eq ptr %.sroa.7.0.i, %.sroa.13.0.i, !dbg !13361
  br i1 %i.bi, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.o, !dbg !13362

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 4, !dbg !13363
  br label %bb.p, !dbg !13364

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.31.10.i = phi i64 [ %.sroa.31.0.i, %bb.o ], [ %.sroa.31.9.i, %bb.m ], !dbg !13335
  %.sroa.27.8.i = phi i64 [ %.sroa.27.0.i, %bb.o ], [ %.sroa.27.7.i, %bb.m ], !dbg !13335
  %.sroa.23.8.i = phi i64 [ %.sroa.23.0.i, %bb.o ], [ %.sroa.23.7.i, %bb.m ], !dbg !13335
  %.sroa.13.10.i = phi ptr [ %.sroa.13.0.i, %bb.o ], [ %.sroa.13.9.i, %bb.m ], !dbg !13335
  %.sroa.7.6.i = phi ptr [ %i.bj, %bb.o ], [ %.sroa.7.0.i, %bb.m ], !dbg !13335
  %.sroa.053.8.i = phi ptr [ null, %bb.o ], [ %spec.select.i, %bb.m ], !dbg !13335
  %.sroa.3.0.i.pn.i.ph.i.i33.i = phi ptr [ %.sroa.7.0.i, %bb.o ], [ %..i.i.i.i32.i, %bb.m ]
  %.not.i10.i.i34.i = icmp eq ptr %.sroa.35.0.i, null, !dbg !13365
  br i1 %.not.i10.i.i34.i, label %bb.s, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i, !dbg !13366

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i) ]
  %i.bk = icmp eq ptr %.sroa.35.0.i, %.sroa.39.0.i, !dbg !13367 ; 2 uses
  %spec.select136.idx.i = select i1 %i.bk, i64 0, i64 4, !dbg !13368
  %spec.select136.i = getelementptr inbounds nuw i8, ptr %.sroa.35.0.i, i64 %spec.select136.idx.i, !dbg !13368
  %spec.select137.i = select i1 %i.bk, ptr null, ptr %.sroa.35.0.i, !dbg !13368
  %i.bl = icmp eq i64 %.sroa.59.0.i, 0, !dbg !13369
  br i1 %i.bl, label %bb.q, label %._crit_edge.i.i.i13.i.i37.i, !dbg !13369

bb.q:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i
  %i.bm = icmp eq i64 %.sroa.63.0.i, 0, !dbg !13370
  br i1 %i.bm, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i, !dbg !13370

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i: ; preds = %bb.q
  %.sroa.0.0.i.i.i.i25.i.i47.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.0.i, i64 64), !dbg !13371 ; 2 uses
  %i.bn = sub nuw i64 %.sroa.63.0.i, %.sroa.0.0.i.i.i.i25.i.i47.i, !dbg !13372
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.i) ]
  %.sroa.02.0.copyload.i.i.i26.i.i48.i = load i64, ptr %.sroa.45.0.i, align 1, !dbg !13373, !noalias !13221
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.45.0.i, i64 8, !dbg !13374
  br label %._crit_edge.i.i.i13.i.i37.i, !dbg !13375

._crit_edge.i.i.i13.i.i37.i:                      ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i
  %.sroa.63.8.i = phi i64 [ %i.bn, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.63.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !13335
  %.sroa.45.8.i = phi ptr [ %i.bo, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.45.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !13335
  %i.bp = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i47.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.59.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !13376
  %i.bq = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i48.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.55.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !13377 ; 2 uses
  %i.br = trunc i64 %i.bq to i8, !dbg !13377
  %i.bs = lshr i64 %i.bq, 1, !dbg !13378
  %i.bt = add i64 %i.bp, -1, !dbg !13376
  %i.bu = and i8 %i.br, 1, !dbg !13379
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, !dbg !13380

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i: ; preds = %._crit_edge.i.i.i13.i.i37.i, %bb.q
  %.sroa.63.9.i = phi i64 [ 0, %bb.q ], [ %.sroa.63.8.i, %._crit_edge.i.i.i13.i.i37.i ], !dbg !13335
  %.sroa.59.7.i = phi i64 [ 0, %bb.q ], [ %i.bt, %._crit_edge.i.i.i13.i.i37.i ], !dbg !13335
  %.sroa.55.7.i = phi i64 [ %.sroa.55.0.i, %bb.q ], [ %i.bs, %._crit_edge.i.i.i13.i.i37.i ], !dbg !13335
  %.sroa.45.9.i = phi ptr [ %.sroa.45.0.i, %bb.q ], [ %.sroa.45.8.i, %._crit_edge.i.i.i13.i.i37.i ], !dbg !13335
  %.sroa.0.0.i8.i.i17.i.i41.i = phi i8 [ 2, %bb.q ], [ %i.bu, %._crit_edge.i.i.i13.i.i37.i ], !dbg !13381
  %i.bv = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRlECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i41.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select137.i), !dbg !13382, !noalias !13222 ; 2 uses
  %i.bw = extractvalue { i8, ptr } %i.bv, 0, !dbg !13383 ; 2 uses
  %.not.i.i18.i.i42.i = icmp eq i8 %i.bw, 2, !dbg !13384
  br i1 %.not.i.i18.i.i42.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.r, !dbg !13385

bb.r:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i
  %i.bx = extractvalue { i8, ptr } %i.bv, 1, !dbg !13383 ; 2 uses
  %i.by = trunc nuw i8 %i.bw to i1, !dbg !13386
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ], !noalias !13220
  %..i.i19.i.i43.i = select i1 %i.by, ptr %i.bx, ptr null, !dbg !13387
  br label %.lr.ph.i.i.i.i.preheader, !dbg !13388

bb.s:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i), "nonnull"(ptr %.sroa.45.0.i) ]
  %i.bz = icmp eq ptr %.sroa.39.0.i, %.sroa.45.0.i, !dbg !13389
  br i1 %i.bz, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.t, !dbg !13390

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.39.0.i, i64 4, !dbg !13391
  br label %.lr.ph.i.i.i.i.preheader, !dbg !13392

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.t, %bb.r
  %.sroa.63.2.i.ph = phi i64 [ %.sroa.63.0.i, %bb.t ], [ %.sroa.63.9.i, %bb.r ]
  %.sroa.59.2.i.ph = phi i64 [ %.sroa.59.0.i, %bb.t ], [ %.sroa.59.7.i, %bb.r ]
  %.sroa.55.2.i.ph = phi i64 [ %.sroa.55.0.i, %bb.t ], [ %.sroa.55.7.i, %bb.r ]
  %.sroa.45.2.i.ph = phi ptr [ %.sroa.45.0.i, %bb.t ], [ %.sroa.45.9.i, %bb.r ]
  %.sroa.39.2.i.ph = phi ptr [ %i.ca, %bb.t ], [ %.sroa.39.0.i, %bb.r ] ; 4 uses
  %.sroa.35.2.i.ph = phi ptr [ null, %bb.t ], [ %spec.select136.i, %bb.r ]
  %.sroa.1283.0.i.ph = phi ptr [ %.sroa.39.0.i, %bb.t ], [ %..i.i19.i.i43.i, %bb.r ]
  br label %.lr.ph.i.i.i.i.outer, !dbg !13393

.lr.ph.i.i.i.i.outer:                             ; preds = %.lr.ph.i.i.i.i.preheader, %bb.al
  %.sroa.982.0.i.ph = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i33.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.al ] ; 2 uses
  %.sroa.63.2.i.ph223 = phi i64 [ %.sroa.63.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.63.5.i, %bb.al ] ; 5 uses
  %.sroa.59.2.i.ph224 = phi i64 [ %.sroa.59.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.59.4.i, %bb.al ] ; 3 uses
  %.sroa.55.2.i.ph225 = phi i64 [ %.sroa.55.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.55.4.i, %bb.al ] ; 3 uses
  %.sroa.45.2.i.ph226 = phi ptr [ %.sroa.45.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.45.5.i, %bb.al ] ; 10 uses
  %.sroa.35.2.i.ph228 = phi ptr [ %.sroa.35.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %spec.select140.i, %bb.al ] ; 5 uses
  %.sroa.31.2.i.ph = phi i64 [ %.sroa.31.10.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.31.6.i.peel, %bb.al ] ; 6 uses
  %.sroa.27.2.i.ph = phi i64 [ %.sroa.27.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.27.5.i.peel, %bb.al ] ; 4 uses
  %.sroa.23.2.i.ph = phi i64 [ %.sroa.23.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.23.5.i.peel, %bb.al ] ; 4 uses
  %.sroa.13.2.i.ph = phi ptr [ %.sroa.13.10.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.13.6.i.peel, %bb.al ] ; 8 uses
  %.sroa.7.2.i.ph = phi ptr [ %.sroa.7.6.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.4.i.peel, %bb.al ] ; 6 uses
  %.sroa.053.2.i.ph = phi ptr [ %.sroa.053.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.053.5.i.peel, %bb.al ] ; 5 uses
  %.sroa.1283.0.i.ph229 = phi ptr [ %.sroa.1283.0.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %..i.i19.i.i.i, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13223), !dbg !13394
  call void @llvm.experimental.noalias.scope.decl(metadata !13224), !dbg !13394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13395, !noalias !13225
  call void @llvm.experimental.noalias.scope.decl(metadata !13226), !dbg !13395
  call void @llvm.experimental.noalias.scope.decl(metadata !13227), !dbg !13395
  call void @llvm.experimental.noalias.scope.decl(metadata !13228), !dbg !13396
  call void @llvm.experimental.noalias.scope.decl(metadata !13229), !dbg !13396
  %.not.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.982.0.i.ph, null, !dbg !13397
  br i1 %.not.i.i.i.i.i.i.i.peel, label %bb.v, label %bb.u, !dbg !13393

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.outer
  %i.cb = load i32, ptr %.sroa.982.0.i.ph, align 4, !dbg !13398, !alias.scope !13230, !noalias !13231, !noundef !3009
  br label %bb.v, !dbg !13399

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.outer
  %.sroa.5.0.i.i.i.i.i.i.i.peel = phi i32 [ %i.cb, %bb.u ], [ undef, %.lr.ph.i.i.i.i.outer ], !dbg !13400
  %.sroa.04.0.i.i.i.i.i.i.i.peel = phi i32 [ 1, %bb.u ], [ 0, %.lr.ph.i.i.i.i.outer ], !dbg !13401
  %.not7.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.1283.0.i.ph229, null, !dbg !13402
  br i1 %.not7.i.i.i.i.i.i.i.peel, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, label %bb.w, !dbg !13403

bb.w:                                             ; preds = %bb.v
  %i.cc = load i32, ptr %.sroa.1283.0.i.ph229, align 4, !dbg !13404, !alias.scope !13232, !noalias !13231, !noundef !3009
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, !dbg !13405

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel: ; preds = %bb.w, %bb.v
  %.sroa.05.0.i.i.i.i.i.i.i.peel = phi i32 [ 1, %bb.w ], [ 0, %bb.v ], !dbg !13406
  %.sroa.56.0.i.i.i.i.i.i.i.peel = phi i32 [ %i.cc, %bb.w ], [ undef, %bb.v ], !dbg !13400
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionlE3ziplECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, i32 noundef %.sroa.04.0.i.i.i.i.i.i.i.peel, i32 %.sroa.5.0.i.i.i.i.i.i.i.peel, i32 noundef %.sroa.05.0.i.i.i.i.i.i.i.peel, i32 %.sroa.56.0.i.i.i.i.i.i.i.peel), !dbg !13407, !noalias !13233
  %i.cd = load i32, ptr %i.h, align 4, !dbg !13395, !range !3323, !noalias !13225, !noundef !3009
  %i.ce = trunc nuw i32 %i.cd to i1, !dbg !13408
  br i1 %i.ce, label %.loopexit, label %bb.x, !dbg !13408

bb.x:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13409, !noalias !13225
  %.not.i.i.i.i.peel = icmp eq ptr %.sroa.053.2.i.ph, null, !dbg !13410
  br i1 %.not.i.i.i.i.peel, label %bb.aa, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, !dbg !13411

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel: ; preds = %bb.x
  %i.cf = icmp eq ptr %.sroa.053.2.i.ph, %.sroa.7.2.i.ph, !dbg !13412 ; 2 uses
  %spec.select138.idx.i.peel = select i1 %i.cf, i64 0, i64 4, !dbg !13413
  %spec.select138.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.053.2.i.ph, i64 %spec.select138.idx.i.peel, !dbg !13413
  %spec.select139.i.peel = select i1 %i.cf, ptr null, ptr %.sroa.053.2.i.ph, !dbg !13413
  %i.cg = icmp eq i64 %.sroa.27.2.i.ph, 0, !dbg !13414
  br i1 %i.cg, label %bb.y, label %._crit_edge.i.i.i.i.i.i.peel, !dbg !13414

bb.y:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %i.ch = icmp eq i64 %.sroa.31.2.i.ph, 0, !dbg !13415
  br i1 %i.ch, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, !dbg !13415

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel: ; preds = %bb.y
  %.sroa.0.0.i.i.i.i.i.i.i.peel = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.2.i.ph, i64 64), !dbg !13416 ; 2 uses
  %i.ci = sub nuw i64 %.sroa.31.2.i.ph, %.sroa.0.0.i.i.i.i.i.i.i.peel, !dbg !13417
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2.i.ph) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i.peel = load i64, ptr %.sroa.13.2.i.ph, align 1, !dbg !13418, !noalias !13234
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.13.2.i.ph, i64 8, !dbg !13419
  br label %._crit_edge.i.i.i.i.i.i.peel, !dbg !13420

._crit_edge.i.i.i.i.i.i.peel:                     ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %.sroa.31.4.i.peel = phi i64 [ %i.ci, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.31.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.13.4.i.peel = phi ptr [ %i.cj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.13.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13335
  %i.ck = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.27.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13421
  %i.cl = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.23.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13422 ; 2 uses
  %i.cm = trunc i64 %i.cl to i8, !dbg !13422
  %i.cn = lshr i64 %i.cl, 1, !dbg !13423
  %i.co = add i64 %i.ck, -1, !dbg !13421
  %i.cp = and i8 %i.cm, 1, !dbg !13424
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, !dbg !13425

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel: ; preds = %._crit_edge.i.i.i.i.i.i.peel, %bb.y
  %.sroa.31.5.i.peel = phi i64 [ 0, %bb.y ], [ %.sroa.31.4.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.27.4.i.peel = phi i64 [ 0, %bb.y ], [ %i.co, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.23.4.i.peel = phi i64 [ %.sroa.23.2.i.ph, %bb.y ], [ %i.cn, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.13.5.i.peel = phi ptr [ %.sroa.13.2.i.ph, %bb.y ], [ %.sroa.13.4.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.0.0.i8.i.i.i.i.i.peel = phi i8 [ 2, %bb.y ], [ %i.cp, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !13426
  %i.cq = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRlECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.peel, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select139.i.peel), !dbg !13427, !noalias !13235 ; 2 uses
  %i.cr = extractvalue { i8, ptr } %i.cq, 0, !dbg !13428 ; 2 uses
  %.not.i.i.i.i.i.peel = icmp eq i8 %i.cr, 2, !dbg !13429
  br i1 %.not.i.i.i.i.i.peel, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.z, !dbg !13430

bb.z:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel
  %i.cs = extractvalue { i8, ptr } %i.cq, 1, !dbg !13428 ; 2 uses
  %i.ct = trunc nuw i8 %i.cr to i1, !dbg !13431
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ], !noalias !13220
  %..i.i.i.i.i.peel = select i1 %i.ct, ptr %i.cs, ptr null, !dbg !13432
  br label %bb.ac, !dbg !13433

bb.aa:                                            ; preds = %bb.x
  %i.cu = icmp eq ptr %.sroa.7.2.i.ph, %.sroa.13.2.i.ph, !dbg !13434
  br i1 %i.cu, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.ab, !dbg !13435

bb.ab:                                            ; preds = %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.7.2.i.ph, i64 4, !dbg !13436
  br label %bb.ac, !dbg !13437

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.31.6.i.peel = phi i64 [ %.sroa.31.2.i.ph, %bb.ab ], [ %.sroa.31.5.i.peel, %bb.z ], !dbg !13335 ; 2 uses
  %.sroa.27.5.i.peel = phi i64 [ %.sroa.27.2.i.ph, %bb.ab ], [ %.sroa.27.4.i.peel, %bb.z ], !dbg !13335 ; 2 uses
  %.sroa.23.5.i.peel = phi i64 [ %.sroa.23.2.i.ph, %bb.ab ], [ %.sroa.23.4.i.peel, %bb.z ], !dbg !13335 ; 2 uses
  %.sroa.13.6.i.peel = phi ptr [ %.sroa.13.2.i.ph, %bb.ab ], [ %.sroa.13.5.i.peel, %bb.z ], !dbg !13335 ; 2 uses
  %.sroa.7.4.i.peel = phi ptr [ %i.cv, %bb.ab ], [ %.sroa.7.2.i.ph, %bb.z ], !dbg !13335 ; 2 uses
  %.sroa.053.5.i.peel = phi ptr [ null, %bb.ab ], [ %spec.select138.i.peel, %bb.z ], !dbg !13335 ; 2 uses
  %.sroa.3.0.i.pn.i.ph.i.i.i.peel = phi ptr [ %.sroa.7.2.i.ph, %bb.ab ], [ %..i.i.i.i.i.peel, %bb.z ] ; 2 uses
  %.not.i10.i.i.i.peel = icmp eq ptr %.sroa.35.2.i.ph228, null, !dbg !13438
  br i1 %.not.i10.i.i.i.peel, label %bb.ad, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i, !dbg !13439

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %i.cw = icmp eq ptr %.sroa.39.2.i.ph, %.sroa.45.2.i.ph226, !dbg !13440
  br i1 %i.cw, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %.lr.ph.i.i.i.i, !dbg !13441

.lr.ph.i.i.i.i:                                   ; preds = %bb.am, %bb.ad
  %.sroa.982.0.i = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.ad ], [ %.sroa.3.0.i.pn.i.ph.i.i.i, %bb.am ], !dbg !13442 ; 2 uses
  %.sroa.31.2.i = phi i64 [ %.sroa.31.6.i.peel, %bb.ad ], [ %.sroa.31.6.i, %bb.am ], !dbg !13335 ; 6 uses
  %.sroa.27.2.i = phi i64 [ %.sroa.27.5.i.peel, %bb.ad ], [ %.sroa.27.5.i, %bb.am ], !dbg !13335 ; 4 uses
  %.sroa.23.2.i = phi i64 [ %.sroa.23.5.i.peel, %bb.ad ], [ %.sroa.23.5.i, %bb.am ], !dbg !13335 ; 4 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.6.i.peel, %bb.ad ], [ %.sroa.13.6.i, %bb.am ], !dbg !13335 ; 8 uses
  %.sroa.7.2.i = phi ptr [ %.sroa.7.4.i.peel, %bb.ad ], [ %.sroa.7.4.i, %bb.am ], !dbg !13335 ; 6 uses
  %.sroa.053.2.i = phi ptr [ %.sroa.053.5.i.peel, %bb.ad ], [ %.sroa.053.5.i, %bb.am ], !dbg !13335 ; 5 uses
  %.sroa.1283.0.i = phi ptr [ %.sroa.39.2.i.ph, %bb.ad ], [ %.sroa.39.2.i, %bb.am ], !dbg !13442 ; 2 uses
  %.sroa.39.2.i = getelementptr inbounds nuw i8, ptr %.sroa.1283.0.i, i64 4, !dbg !13443 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13236), !dbg !13394
  call void @llvm.experimental.noalias.scope.decl(metadata !13237), !dbg !13394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !13395, !noalias !13238
  call void @llvm.experimental.noalias.scope.decl(metadata !13239), !dbg !13395
  call void @llvm.experimental.noalias.scope.decl(metadata !13240), !dbg !13395
  call void @llvm.experimental.noalias.scope.decl(metadata !13241), !dbg !13396
  call void @llvm.experimental.noalias.scope.decl(metadata !13242), !dbg !13396
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.982.0.i, null, !dbg !13397
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, label %bb.ae, !dbg !13393

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cx = load i32, ptr %.sroa.982.0.i, align 4, !dbg !13398, !alias.scope !13243, !noalias !13231, !noundef !3009
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !13399

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.ae
  %.sroa.5.0.i.i.i.i.i.i.i = phi i32 [ %i.cx, %bb.ae ], [ undef, %.lr.ph.i.i.i.i ], !dbg !13400
  %.sroa.04.0.i.i.i.i.i.i.i = phi i32 [ 1, %bb.ae ], [ 0, %.lr.ph.i.i.i.i ], !dbg !13401
  %i.cy = load i32, ptr %.sroa.1283.0.i, align 4, !dbg !13404, !alias.scope !13244, !noalias !13231, !noundef !3009
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionlE3ziplECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, i32 noundef %.sroa.04.0.i.i.i.i.i.i.i, i32 %.sroa.5.0.i.i.i.i.i.i.i, i32 noundef 1, i32 %i.cy), !dbg !13407, !noalias !13245
  %i.cz = load i32, ptr %i.h, align 4, !dbg !13395, !range !3323, !noalias !13238, !noundef !3009
  %i.da = trunc nuw i32 %i.cz to i1, !dbg !13408
  br i1 %i.da, label %.loopexit, label %bb.af, !dbg !13408

bb.af:                                            ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13409, !noalias !13238
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.2.i, null, !dbg !13410
  br i1 %.not.i.i.i.i, label %bb.ai, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !13411

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.af
  %i.db = icmp eq ptr %.sroa.053.2.i, %.sroa.7.2.i, !dbg !13412 ; 2 uses
  %spec.select138.idx.i = select i1 %i.db, i64 0, i64 4, !dbg !13413
  %spec.select138.i = getelementptr inbounds nuw i8, ptr %.sroa.053.2.i, i64 %spec.select138.idx.i, !dbg !13413
  %spec.select139.i = select i1 %i.db, ptr null, ptr %.sroa.053.2.i, !dbg !13413
  %i.dc = icmp eq i64 %.sroa.27.2.i, 0, !dbg !13414
  br i1 %i.dc, label %bb.ag, label %._crit_edge.i.i.i.i.i.i, !dbg !13414

bb.ag:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.dd = icmp eq i64 %.sroa.31.2.i, 0, !dbg !13415
  br i1 %i.dd, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !13415

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.ag
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.2.i, i64 64), !dbg !13416 ; 2 uses
  %i.de = sub nuw i64 %.sroa.31.2.i, %.sroa.0.0.i.i.i.i.i.i.i, !dbg !13417
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.13.2.i, align 1, !dbg !13418, !noalias !13234
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.13.2.i, i64 8, !dbg !13419
  br label %._crit_edge.i.i.i.i.i.i, !dbg !13420

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.31.4.i = phi i64 [ %i.de, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.31.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !13335
  %.sroa.13.4.i = phi ptr [ %i.df, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.13.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !13335
  %i.dg = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.27.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !13421
  %i.dh = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.23.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !13422 ; 2 uses
  %i.di = trunc i64 %i.dh to i8, !dbg !13422
  %i.dj = lshr i64 %i.dh, 1, !dbg !13423
  %i.dk = add i64 %i.dg, -1, !dbg !13421
  %i.dl = and i8 %i.di, 1, !dbg !13424
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !13425

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.ag
  %.sroa.31.5.i = phi i64 [ 0, %bb.ag ], [ %.sroa.31.4.i, %._crit_edge.i.i.i.i.i.i ], !dbg !13335
  %.sroa.27.4.i = phi i64 [ 0, %bb.ag ], [ %i.dk, %._crit_edge.i.i.i.i.i.i ], !dbg !13335
  %.sroa.23.4.i = phi i64 [ %.sroa.23.2.i, %bb.ag ], [ %i.dj, %._crit_edge.i.i.i.i.i.i ], !dbg !13335
  %.sroa.13.5.i = phi ptr [ %.sroa.13.2.i, %bb.ag ], [ %.sroa.13.4.i, %._crit_edge.i.i.i.i.i.i ], !dbg !13335
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ 2, %bb.ag ], [ %i.dl, %._crit_edge.i.i.i.i.i.i ], !dbg !13426
  %i.dm = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRlECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select139.i), !dbg !13427, !noalias !13235 ; 2 uses
  %i.dn = extractvalue { i8, ptr } %i.dm, 0, !dbg !13428 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.dn, 2, !dbg !13429
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.ah, !dbg !13430

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.do = extractvalue { i8, ptr } %i.dm, 1, !dbg !13428 ; 2 uses
  %i.dp = trunc nuw i8 %i.dn to i1, !dbg !13431
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ], !noalias !13220
  %..i.i.i.i.i = select i1 %i.dp, ptr %i.do, ptr null, !dbg !13432
  br label %bb.am, !dbg !13433

bb.ai:                                            ; preds = %bb.af
  %i.dq = icmp eq ptr %.sroa.7.2.i, %.sroa.13.2.i, !dbg !13434
  br i1 %i.dq, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.aj, !dbg !13435

bb.aj:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.7.2.i, i64 4, !dbg !13436
  br label %bb.am, !dbg !13437

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i: ; preds = %bb.ac
  %i.ds = icmp eq ptr %.sroa.35.2.i.ph228, %.sroa.39.2.i.ph, !dbg !13444 ; 2 uses
  %spec.select140.idx.i = select i1 %i.ds, i64 0, i64 4, !dbg !13445
  %spec.select140.i = getelementptr inbounds nuw i8, ptr %.sroa.35.2.i.ph228, i64 %spec.select140.idx.i, !dbg !13445
  %spec.select141.i = select i1 %i.ds, ptr null, ptr %.sroa.35.2.i.ph228, !dbg !13445
  %i.dt = icmp eq i64 %.sroa.59.2.i.ph224, 0, !dbg !13446
  br i1 %i.dt, label %bb.ak, label %._crit_edge.i.i.i13.i.i.i, !dbg !13446

bb.ak:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %i.du = icmp eq i64 %.sroa.63.2.i.ph223, 0, !dbg !13447
  br i1 %i.du, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, !dbg !13447

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i: ; preds = %bb.ak
  %.sroa.0.0.i.i.i.i25.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.2.i.ph223, i64 64), !dbg !13448 ; 2 uses
  %i.dv = sub nuw i64 %.sroa.63.2.i.ph223, %.sroa.0.0.i.i.i.i25.i.i.i, !dbg !13449
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %.sroa.02.0.copyload.i.i.i26.i.i.i = load i64, ptr %.sroa.45.2.i.ph226, align 1, !dbg !13450, !noalias !13246
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.45.2.i.ph226, i64 8, !dbg !13451
  br label %._crit_edge.i.i.i13.i.i.i, !dbg !13452

._crit_edge.i.i.i13.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %.sroa.63.4.i = phi i64 [ %i.dv, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.63.2.i.ph223, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !13335
  %.sroa.45.4.i = phi ptr [ %i.dw, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.45.2.i.ph226, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !13335
  %i.dx = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.59.2.i.ph224, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !13453
  %i.dy = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.55.2.i.ph225, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterlENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !13454 ; 2 uses
  %i.dz = trunc i64 %i.dy to i8, !dbg !13454
  %i.ea = lshr i64 %i.dy, 1, !dbg !13455
  %i.eb = add i64 %i.dx, -1, !dbg !13453
  %i.ec = and i8 %i.dz, 1, !dbg !13456
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, !dbg !13457

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i: ; preds = %._crit_edge.i.i.i13.i.i.i, %bb.ak
  %.sroa.63.5.i = phi i64 [ 0, %bb.ak ], [ %.sroa.63.4.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !13335
  %.sroa.59.4.i = phi i64 [ 0, %bb.ak ], [ %i.eb, %._crit_edge.i.i.i13.i.i.i ], !dbg !13335
  %.sroa.55.4.i = phi i64 [ %.sroa.55.2.i.ph225, %bb.ak ], [ %i.ea, %._crit_edge.i.i.i13.i.i.i ], !dbg !13335
  %.sroa.45.5.i = phi ptr [ %.sroa.45.2.i.ph226, %bb.ak ], [ %.sroa.45.4.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !13335
  %.sroa.0.0.i8.i.i17.i.i.i = phi i8 [ 2, %bb.ak ], [ %i.ec, %._crit_edge.i.i.i13.i.i.i ], !dbg !13458
  %i.ed = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRlECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select141.i), !dbg !13459, !noalias !13247 ; 2 uses
  %i.ee = extractvalue { i8, ptr } %i.ed, 0, !dbg !13460 ; 2 uses
  %.not.i.i18.i.i.i = icmp eq i8 %i.ee, 2, !dbg !13461
  br i1 %.not.i.i18.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.al, !dbg !13462

bb.al:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %i.ef = extractvalue { i8, ptr } %i.ed, 1, !dbg !13460 ; 2 uses
  %i.eg = trunc nuw i8 %i.ee to i1, !dbg !13463
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ], !noalias !13220
  %..i.i19.i.i.i = select i1 %i.eg, ptr %i.ef, ptr null, !dbg !13464
  br label %.lr.ph.i.i.i.i.outer, !dbg !13465

bb.am:                                            ; preds = %bb.ah, %bb.aj
  %.sroa.31.6.i = phi i64 [ %.sroa.31.2.i, %bb.aj ], [ %.sroa.31.5.i, %bb.ah ], !dbg !13335
  %.sroa.27.5.i = phi i64 [ %.sroa.27.2.i, %bb.aj ], [ %.sroa.27.4.i, %bb.ah ], !dbg !13335
  %.sroa.23.5.i = phi i64 [ %.sroa.23.2.i, %bb.aj ], [ %.sroa.23.4.i, %bb.ah ], !dbg !13335
  %.sroa.13.6.i = phi ptr [ %.sroa.13.2.i, %bb.aj ], [ %.sroa.13.5.i, %bb.ah ], !dbg !13335
  %.sroa.7.4.i = phi ptr [ %i.dr, %bb.aj ], [ %.sroa.7.2.i, %bb.ah ], !dbg !13335
  %.sroa.053.5.i = phi ptr [ null, %bb.aj ], [ %spec.select138.i, %bb.ah ], !dbg !13335
  %.sroa.3.0.i.pn.i.ph.i.i.i = phi ptr [ %.sroa.7.2.i, %bb.aj ], [ %..i.i.i.i.i, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %i.eh = icmp eq ptr %.sroa.39.2.i, %.sroa.45.2.i.ph226, !dbg !13440
  br i1 %i.eh, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %.lr.ph.i.i.i.i, !dbg !13441, !llvm.loop !13108

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.39.2.i.lcssa = phi ptr [ %.sroa.39.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.39.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.35.2.i.lcssa = phi ptr [ null, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.35.2.i.ph228, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.31.2.i.lcssa = phi i64 [ %.sroa.31.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.31.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.27.2.i.lcssa = phi i64 [ %.sroa.27.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.27.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.23.2.i.lcssa = phi i64 [ %.sroa.23.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.23.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.13.2.i.lcssa = phi ptr [ %.sroa.13.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.13.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.7.2.i.lcssa = phi ptr [ %.sroa.7.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.7.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13335
  %.sroa.053.2.i.lcssa = phi ptr [ %.sroa.053.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.053.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllE0INtB7_5FnMutTTINtNtBb_6option6OptionRlEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !13335
  %i.ei = load <2 x i32>, ptr %i.an, align 4, !dbg !13466, !noalias !13238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !13409, !noalias !13238
  %i.ej = icmp ugt i64 %.sroa.0.0.i, 127, !dbg !13467
  br i1 %i.ej, label %bb.at, label %bb.ax, !dbg !13467

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i: ; preds = %bb.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, %bb.n, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, %bb.ad, %bb.aa, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, %bb.am, %bb.ai, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %.not.i = icmp eq i64 %.sroa.0.0.i, 0, !dbg !13468
  %i.ek = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 poison>, !dbg !13334
  %i.el = insertelement <2 x double> %i.ek, double %.sroa.34.1, i64 1, !dbg !13334 ; 3 uses
  %i.em = extractelement <2 x double> %i.as, i64 0, !dbg !13468 ; 4 uses
  br i1 %.not.i, label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryllINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtB1d_5slice4iter4IterlENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrllE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.an, !dbg !13468

bb.an:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i
  %i.en = icmp ult i64 %.sroa.0.0.i, 129
  br i1 %i.en, label %bb.ap, label %bb.ao, !dbg !13469, !prof !3147

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0.i, i64 noundef 128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #43, !dbg !13470, !noalias !13216
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !13471, !noalias !13248
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef range(i64 1, 129) %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef range(i64 1, 129) %.sroa.0.0.i), !dbg !13471, !noalias !13216
  call void @llvm.experimental.noalias.scope.decl(metadata !13249), !dbg !13472
  %i.eo = load double, ptr %i.g, align 8, !dbg !13473, !alias.scope !13250, !noalias !13248, !noundef !3009 ; 6 uses
  %i.ep = fcmp oeq double %i.eo, 0.000000e+00, !dbg !13473
  br i1 %i.ep, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit.i, label %bb.aq, !dbg !13473

bb.aq:                                            ; preds = %bb.ap
  %i.eq = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !13474
  br i1 %i.eq, label %bb.as, label %bb.ar, !dbg !13474

bb.ar:                                            ; preds = %bb.aq
  %i.er = fadd double %.sroa.0.1, %i.eo, !dbg !13475 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !13476
  %i.et = load double, ptr %i.es, align 8, !dbg !13476, !alias.scope !13250, !noalias !13248, !noundef !3009 ; 2 uses
  %i.eu = fsub double %i.et, %i.em, !dbg !13476   ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !13477
  %i.ew = load double, ptr %i.ev, align 8, !dbg !13477, !alias.scope !13250, !noalias !13248, !noundef !3009 ; 2 uses
  %i.ex = extractelement <2 x double> %i.as, i64 1, !dbg !13477
  %i.ey = fsub double %i.ew, %i.ex, !dbg !13477   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !13478
  %i.fa = load double, ptr %i.ez, align 8, !dbg !13478, !alias.scope !13250, !noalias !13248, !noundef !3009
  %i.fb = fdiv double %i.eo, %i.er, !dbg !13479   ; 2 uses
  %i.fc = fmul double %i.fb, %i.eu, !dbg !13480
  %i.fd = fadd double %i.em, %i.fc, !dbg !13481   ; 2 uses
  %i.fe = fmul double %i.fb, %i.ey, !dbg !13482
  %i.ff = fsub double %i.et, %i.fd, !dbg !13483
  %i.fg = insertelement <2 x double> poison, double %i.fe, i64 0, !dbg !13484
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !13485
  %i.fi = fmul double %i.eo, %i.ff, !dbg !13486   ; 2 uses
  %i.fj = fmul double %i.eu, %i.fi, !dbg !13486
  %i.fk = fadd double %i.fa, %i.fj, !dbg !13478
  %i.fl = insertelement <2 x double> %i.fg, double %i.fk, i64 1, !dbg !13484
  %i.fm = fadd <2 x double> %i.el, %i.fl, !dbg !13484 ; 2 uses
  %i.fn = load <2 x double>, ptr %i.fh, align 8, !dbg !13485, !alias.scope !13250, !noalias !13248
  %i.fo = extractelement <2 x double> %i.fm, i64 0, !dbg !13487
  %i.fp = fsub double %i.ew, %i.fo, !dbg !13487
  %i.fq = fmul double %i.eo, %i.fp, !dbg !13488
  %i.fr = insertelement <2 x double> poison, double %i.ey, i64 0, !dbg !13489
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !13489
  %i.ft = insertelement <2 x double> poison, double %i.fi, i64 0, !dbg !13489
  %i.fu = insertelement <2 x double> %i.ft, double %i.fq, i64 1, !dbg !13489
  %i.fv = fmul <2 x double> %i.fs, %i.fu, !dbg !13489
  %i.fw = fadd <2 x double> %i.fn, %i.fv, !dbg !13485
  %i.fx = fadd <2 x double> %i.ar, %i.fw, !dbg !13490
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !13491

bb.as:                                            ; preds = %bb.aq
  %.sroa.16.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !13492
  %.sroa.16.0.copyload22 = load double, ptr %.sroa.16.0..sroa_idx21, align 8, !dbg !13492, !alias.scope !13251, !noalias !13252
  %.sroa.25.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !13492
  %i.fy = load <2 x double>, ptr %.sroa.25.0..sroa_idx32, align 8, !dbg !13492, !alias.scope !13251, !noalias !13252
  %.sroa.43.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !13492
  %i.fz = load <2 x double>, ptr %.sroa.43.0..sroa_idx54, align 8, !dbg !13492, !alias.scope !13251, !noalias !13252
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !13493

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.as, %bb.ar, %bb.ap
  %.sroa.16.2 = phi double [ %i.em, %bb.ap ], [ %.sroa.16.0.copyload22, %bb.as ], [ %i.fd, %bb.ar ], !dbg !13494
  %.sroa.0.2 = phi double [ %.sroa.0.1, %bb.ap ], [ %i.eo, %bb.as ], [ %i.er, %bb.ar ], !dbg !13494
  %i.ga = phi <2 x double> [ %i.el, %bb.ap ], [ %i.fy, %bb.as ], [ %i.fm, %bb.ar ], !dbg !13494
  %i.gb = phi <2 x double> [ %i.ar, %bb.ap ], [ %i.fz, %bb.as ], [ %i.fx, %bb.ar ], !dbg !13494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !13495, !noalias !13248
  br label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryllINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtB1d_5slice4iter4IterlENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrllE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !13496

bb.at:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !13497, !noalias !13253
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 128), !dbg !13497, !noalias !13216
  call void @llvm.experimental.noalias.scope.decl(metadata !13254), !dbg !13498
  %i.gc = load double, ptr %i.f, align 8, !dbg !13499, !alias.scope !13255, !noalias !13253, !noundef !3009 ; 5 uses
  %i.gd = fcmp oeq double %i.gc, 0.000000e+00, !dbg !13499
  br i1 %i.gd, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, label %bb.au, !dbg !13499

bb.au:                                            ; preds = %bb.at
  %i.ge = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !13500
  br i1 %i.ge, label %bb.aw, label %bb.av, !dbg !13500

bb.av:                                            ; preds = %bb.au
  %i.gf = fadd double %.sroa.0.1, %i.gc, !dbg !13501 ; 2 uses
  %i.gg = fdiv double %i.gc, %i.gf, !dbg !13502
  %i.gh = load double, ptr %i.ap, align 8, !dbg !13503, !alias.scope !13255, !noalias !13253, !noundef !3009
  %i.gi = load <2 x double>, ptr %i.ao, align 8, !dbg !13504, !alias.scope !13255, !noalias !13253 ; 2 uses
  %i.gj = fsub <2 x double> %i.gi, %i.as, !dbg !13504 ; 3 uses
  %i.gk = insertelement <2 x double> poison, double %i.gg, i64 0, !dbg !13505
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !13505
  %i.gm = fmul <2 x double> %i.gl, %i.gj, !dbg !13505
  %i.gn = fadd <2 x double> %i.as, %i.gm, !dbg !13506 ; 2 uses
  %i.go = fsub <2 x double> %i.gi, %i.gn, !dbg !13507
  %i.gp = insertelement <2 x double> poison, double %i.gc, i64 0, !dbg !13508
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !13508
  %i.gr = fmul <2 x double> %i.gq, %i.go, !dbg !13508 ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.gj, %i.gr, !dbg !13508
  %i.gs = extractelement <2 x double> %foldExtExtBinop, i64 0, !dbg !13508
  %i.gt = fadd double %i.gh, %i.gs, !dbg !13503
  %i.gu = fadd double %.sroa.34.1, %i.gt, !dbg !13509
  %i.gv = load <2 x double>, ptr %i.aq, align 8, !dbg !13510, !alias.scope !13255, !noalias !13253
  %i.gw = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> <i32 1, i32 1>, !dbg !13511
  %i.gx = fmul <2 x double> %i.gw, %i.gr, !dbg !13511
  %i.gy = fadd <2 x double> %i.gv, %i.gx, !dbg !13510
  %i.gz = fadd <2 x double> %i.ar, %i.gy, !dbg !13512
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !13513

bb.aw:                                            ; preds = %bb.au
  %i.ha = load <2 x double>, ptr %i.ao, align 8, !dbg !13514, !alias.scope !13256, !noalias !13257
  %.sroa.34.0.copyload46 = load double, ptr %i.ap, align 8, !dbg !13514, !alias.scope !13256, !noalias !13257
  %i.hb = load <2 x double>, ptr %i.aq, align 8, !dbg !13514, !alias.scope !13256, !noalias !13257
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !13515

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit22.i: ; preds = %bb.aw, %bb.av, %bb.at
  %.sroa.34.4 = phi double [ %.sroa.34.1, %bb.at ], [ %.sroa.34.0.copyload46, %bb.aw ], [ %i.gu, %bb.av ], !dbg !13494
  %.sroa.0.4 = phi double [ %.sroa.0.1, %bb.at ], [ %i.gc, %bb.aw ], [ %i.gf, %bb.av ], !dbg !13494
  %i.hc = phi <2 x double> [ %i.ar, %bb.at ], [ %i.hb, %bb.aw ], [ %i.gz, %bb.av ], !dbg !13494
  %i.hd = phi <2 x double> [ %i.as, %bb.at ], [ %i.ha, %bb.aw ], [ %i.gn, %bb.av ], !dbg !13494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !13516, !noalias !13253
  br label %bb.ax, !dbg !13517

bb.ax:                                            ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, %.loopexit
  %.sroa.34.3 = phi double [ %.sroa.34.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.34.1, %.loopexit ], !dbg !13334
  %.sroa.0.3 = phi double [ %.sroa.0.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.0.1, %.loopexit ], !dbg !13334
  %.sroa.0.1.i12 = phi i64 [ 0, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.0.0.i, %.loopexit ], !dbg !13336 ; 3 uses
  %i.he = phi <2 x double> [ %i.hc, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %i.ar, %.loopexit ], !dbg !13334
  %i.hf = phi <2 x double> [ %i.hd, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %i.as, %.loopexit ], !dbg !13334
  %i.hg = sitofp <2 x i32> %i.ei to <2 x double>, !dbg !13518 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.1.i12, !dbg !13519
  %i.hi = extractelement <2 x double> %i.hg, i64 0, !dbg !13519
  store double %i.hi, ptr %i.hh, align 8, !dbg !13519, !noalias !13216
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.0.1.i12, !dbg !13520
  %i.hk = extractelement <2 x double> %i.hg, i64 1, !dbg !13520
  store double %i.hk, ptr %i.hj, align 8, !dbg !13520, !noalias !13216
  %i.hl = add nuw nsw i64 %.sroa.0.1.i12, 1, !dbg !13521
  br label %bb.k, !dbg !13333

_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryllINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtB1d_5slice4iter4IterlENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrllE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.16.5 = phi double [ %i.em, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %.sroa.16.2, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !13334
  %.sroa.0.5 = phi double [ %.sroa.0.1, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %.sroa.0.2, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !13334
  %i.hm = phi <2 x double> [ %i.el, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %i.ga, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !13334
  %i.hn = phi <2 x double> [ %i.ar, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRlINtNtNtBa_5slice4iter4IterlENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %i.gb, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrllEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !13334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !13522, !noalias !13216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !13523, !noalias !13216
  br label %bb.bi, !dbg !13524

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread: ; preds = %bb.g, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !13525
  %i.hp = load ptr, ptr %i.ho, align 8, !dbg !13525, !nonnull !3009, !noundef !3009 ; 2 uses
  %i.hq = load i64, ptr %i.m, align 8, !dbg !13526, !noundef !3009
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hq, !dbg !13527
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !13528
  %i.ht = load ptr, ptr %i.hs, align 8, !dbg !13528, !nonnull !3009, !noundef !3009 ; 2 uses
  %i.hu = load i64, ptr %i.o, align 8, !dbg !13529, !noundef !3009
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hu, !dbg !13530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !13531, !noalias !13274
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterlEEBW_EINtB5_7ZipImplBW_BW_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.hp, ptr noundef nonnull %i.hr, ptr noundef nonnull %i.ht, ptr noundef nonnull %i.hv), !dbg !13532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !13533, !noalias !13274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !noalias !13274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !13534, !noalias !13274
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false), !noalias !13274
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.hy = load i64, ptr %i.hw, align 8, !dbg !13535, !alias.scope !13275, !noalias !13274, !noundef !3009 ; 2 uses
  %i.hz = load i64, ptr %i.hx, align 8, !dbg !13536, !alias.scope !13275, !noalias !13274, !noundef !3009
  %i.ia = icmp ult i64 %i.hy, %i.hz, !dbg !13535
  br i1 %i.ia, label %.lr.ph.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterlEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !13535

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterlEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13537, !noalias !13274
  br label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryllINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB19_6copied6CopiedINtNtNtB1d_5slice4iter4IterlEEB1S_ENCINvB2_12pearson_corrllEs0_0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !13538

.lr.ph.i:                                         ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread
end_hunk_3
begin_hunk_4_@_RINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmECskY9G75ZWc4U_11polars_expr:bb.a
  %.sroa.079.0.copyload = load ptr, ptr %i.l, align 8, !dbg !14051, !alias.scope !13936
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !14051
  %.sroa.480.0.copyload = load ptr, ptr %.sroa.480.0..sroa_idx, align 8, !dbg !14051, !alias.scope !13936
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !14051
  %.sroa.581.0.copyload = load ptr, ptr %.sroa.581.0..sroa_idx, align 8, !dbg !14051, !alias.scope !13936
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !14051
  %.sroa.783.0.copyload = load i64, ptr %.sroa.783.0..sroa_idx, align 8, !dbg !14051, !alias.scope !13936
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !14051
  %.sroa.884.0.copyload = load i64, ptr %.sroa.884.0..sroa_idx, align 8, !dbg !14051, !alias.scope !13936
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !14051
  %.sroa.985.0.copyload = load i64, ptr %.sroa.985.0..sroa_idx, align 8, !dbg !14051, !alias.scope !13936
  %.sroa.1086.56.copyload = load ptr, ptr %i.k, align 8, !dbg !14051, !alias.scope !13937
  %.sroa.1287.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14051
  %.sroa.1287.56.copyload = load ptr, ptr %.sroa.1287.56..sroa_idx, align 8, !dbg !14051, !alias.scope !13937
  %.sroa.1388.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14051
  %.sroa.1388.56.copyload = load ptr, ptr %.sroa.1388.56..sroa_idx, align 8, !dbg !14051, !alias.scope !13937
  %.sroa.1590.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !14051
  %.sroa.1590.56.copyload = load i64, ptr %.sroa.1590.56..sroa_idx, align 8, !dbg !14051, !alias.scope !13937
  %.sroa.1691.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !14051
  %.sroa.1691.56.copyload = load i64, ptr %.sroa.1691.56..sroa_idx, align 8, !dbg !14051, !alias.scope !13937
  %.sroa.17.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !14051
  %.sroa.17.56.copyload = load i64, ptr %.sroa.17.56..sroa_idx, align 8, !dbg !14051, !alias.scope !13937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !14052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14053, !noalias !13938
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.j, i8 0, i64 1024, i1 false), !noalias !13938
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14054, !noalias !13938
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.i, i8 0, i64 1024, i1 false), !noalias !13938
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br label %bb.k, !dbg !14055

bb.k:                                             ; preds = %bb.ax, %bb.j
  %.sroa.34.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.34.3, %bb.ax ], !dbg !14056 ; 4 uses
  %.sroa.0.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.0.3, %bb.ax ], !dbg !14056 ; 8 uses
  %.sroa.63.0.i = phi i64 [ %.sroa.17.56.copyload, %bb.j ], [ %.sroa.63.2.i.ph223, %bb.ax ], !dbg !14057 ; 5 uses
  %.sroa.59.0.i = phi i64 [ %.sroa.1691.56.copyload, %bb.j ], [ %.sroa.59.2.i.ph224, %bb.ax ], !dbg !14057 ; 3 uses
  %.sroa.55.0.i = phi i64 [ %.sroa.1590.56.copyload, %bb.j ], [ %.sroa.55.2.i.ph225, %bb.ax ], !dbg !14057 ; 3 uses
  %.sroa.45.0.i = phi ptr [ %.sroa.1388.56.copyload, %bb.j ], [ %.sroa.45.2.i.ph226, %bb.ax ], !dbg !14057 ; 8 uses
  %.sroa.39.0.i = phi ptr [ %.sroa.1287.56.copyload, %bb.j ], [ %.sroa.39.2.i.lcssa, %bb.ax ], !dbg !14057 ; 7 uses
  %.sroa.35.0.i = phi ptr [ %.sroa.1086.56.copyload, %bb.j ], [ %.sroa.35.2.i.lcssa, %bb.ax ], !dbg !14057 ; 4 uses
  %.sroa.31.0.i = phi i64 [ %.sroa.985.0.copyload, %bb.j ], [ %.sroa.31.2.i.lcssa, %bb.ax ], !dbg !14057 ; 5 uses
  %.sroa.27.0.i = phi i64 [ %.sroa.884.0.copyload, %bb.j ], [ %.sroa.27.2.i.lcssa, %bb.ax ], !dbg !14057 ; 3 uses
  %.sroa.23.0.i = phi i64 [ %.sroa.783.0.copyload, %bb.j ], [ %.sroa.23.2.i.lcssa, %bb.ax ], !dbg !14057 ; 3 uses
  %.sroa.13.0.i = phi ptr [ %.sroa.581.0.copyload, %bb.j ], [ %.sroa.13.2.i.lcssa, %bb.ax ], !dbg !14057 ; 8 uses
  %.sroa.7.0.i = phi ptr [ %.sroa.480.0.copyload, %bb.j ], [ %.sroa.7.2.i.lcssa, %bb.ax ], !dbg !14057 ; 7 uses
  %.sroa.053.0.i = phi ptr [ %.sroa.079.0.copyload, %bb.j ], [ %.sroa.053.2.i.lcssa, %bb.ax ], !dbg !14057 ; 4 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.j ], [ %i.hm, %bb.ax ], !dbg !14058 ; 7 uses
  %i.as = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.hg, %bb.ax ], !dbg !14056 ; 6 uses
  %i.at = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.hh, %bb.ax ], !dbg !14056 ; 7 uses
  %.not.i.i.i23.i = icmp eq ptr %.sroa.053.0.i, null, !dbg !14059
  br i1 %.not.i.i.i23.i, label %bb.n, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i, !dbg !14060

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  %i.au = icmp eq ptr %.sroa.053.0.i, %.sroa.7.0.i, !dbg !14061 ; 2 uses
  %spec.select.idx.i = select i1 %i.au, i64 0, i64 4, !dbg !14062
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.053.0.i, i64 %spec.select.idx.i, !dbg !14062
  %spec.select135.i = select i1 %i.au, ptr null, ptr %.sroa.053.0.i, !dbg !14062
  %i.av = icmp eq i64 %.sroa.27.0.i, 0, !dbg !14063
  br i1 %i.av, label %bb.l, label %._crit_edge.i.i.i.i.i26.i, !dbg !14063

bb.l:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i
  %i.aw = icmp eq i64 %.sroa.31.0.i, 0, !dbg !14064
  br i1 %i.aw, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i, !dbg !14064

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i: ; preds = %bb.l
  %.sroa.0.0.i.i.i.i.i.i50.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.0.i, i64 64), !dbg !14065 ; 2 uses
  %i.ax = sub nuw i64 %.sroa.31.0.i, %.sroa.0.0.i.i.i.i.i.i50.i, !dbg !14066
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i51.i = load i64, ptr %.sroa.13.0.i, align 1, !dbg !14067, !noalias !13940
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i, i64 8, !dbg !14068
  br label %._crit_edge.i.i.i.i.i26.i, !dbg !14069

._crit_edge.i.i.i.i.i26.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i
  %.sroa.31.8.i = phi i64 [ %i.ax, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.31.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !14057
  %.sroa.13.8.i = phi ptr [ %i.ay, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.13.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !14057
  %i.az = phi i64 [ %.sroa.0.0.i.i.i.i.i.i50.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.27.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !14070
  %i.ba = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i51.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.23.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !14071 ; 2 uses
  %i.bb = trunc i64 %i.ba to i8, !dbg !14071
  %i.bc = lshr i64 %i.ba, 1, !dbg !14072
  %i.bd = add i64 %i.az, -1, !dbg !14070
  %i.be = and i8 %i.bb, 1, !dbg !14073
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, !dbg !14074

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i: ; preds = %._crit_edge.i.i.i.i.i26.i, %bb.l
  %.sroa.31.9.i = phi i64 [ 0, %bb.l ], [ %.sroa.31.8.i, %._crit_edge.i.i.i.i.i26.i ], !dbg !14057
  %.sroa.27.7.i = phi i64 [ 0, %bb.l ], [ %i.bd, %._crit_edge.i.i.i.i.i26.i ], !dbg !14057
  %.sroa.23.7.i = phi i64 [ %.sroa.23.0.i, %bb.l ], [ %i.bc, %._crit_edge.i.i.i.i.i26.i ], !dbg !14057
  %.sroa.13.9.i = phi ptr [ %.sroa.13.0.i, %bb.l ], [ %.sroa.13.8.i, %._crit_edge.i.i.i.i.i26.i ], !dbg !14057
  %.sroa.0.0.i8.i.i.i.i30.i = phi i8 [ 2, %bb.l ], [ %i.be, %._crit_edge.i.i.i.i.i26.i ], !dbg !14075
  %i.bf = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRmECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i30.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select135.i), !dbg !14076, !noalias !13941 ; 2 uses
  %i.bg = extractvalue { i8, ptr } %i.bf, 0, !dbg !14077 ; 2 uses
  %.not.i.i.i.i31.i = icmp eq i8 %i.bg, 2, !dbg !14078
  br i1 %.not.i.i.i.i31.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.m, !dbg !14079

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i
  %i.bh = extractvalue { i8, ptr } %i.bf, 1, !dbg !14077 ; 2 uses
  %i.bi = trunc nuw i8 %i.bg to i1, !dbg !14080
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ], !noalias !13942
  %..i.i.i.i32.i = select i1 %i.bi, ptr %i.bh, ptr null, !dbg !14081
  br label %bb.p, !dbg !14082

bb.n:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i), "nonnull"(ptr %.sroa.13.0.i) ]
  %i.bj = icmp eq ptr %.sroa.7.0.i, %.sroa.13.0.i, !dbg !14083
  br i1 %i.bj, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.o, !dbg !14084

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 4, !dbg !14085
  br label %bb.p, !dbg !14086

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.31.10.i = phi i64 [ %.sroa.31.0.i, %bb.o ], [ %.sroa.31.9.i, %bb.m ], !dbg !14057
  %.sroa.27.8.i = phi i64 [ %.sroa.27.0.i, %bb.o ], [ %.sroa.27.7.i, %bb.m ], !dbg !14057
  %.sroa.23.8.i = phi i64 [ %.sroa.23.0.i, %bb.o ], [ %.sroa.23.7.i, %bb.m ], !dbg !14057
  %.sroa.13.10.i = phi ptr [ %.sroa.13.0.i, %bb.o ], [ %.sroa.13.9.i, %bb.m ], !dbg !14057
  %.sroa.7.6.i = phi ptr [ %i.bk, %bb.o ], [ %.sroa.7.0.i, %bb.m ], !dbg !14057
  %.sroa.053.8.i = phi ptr [ null, %bb.o ], [ %spec.select.i, %bb.m ], !dbg !14057
  %.sroa.3.0.i.pn.i.ph.i.i33.i = phi ptr [ %.sroa.7.0.i, %bb.o ], [ %..i.i.i.i32.i, %bb.m ]
  %.not.i10.i.i34.i = icmp eq ptr %.sroa.35.0.i, null, !dbg !14087
  br i1 %.not.i10.i.i34.i, label %bb.s, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i, !dbg !14088

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i) ]
  %i.bl = icmp eq ptr %.sroa.35.0.i, %.sroa.39.0.i, !dbg !14089 ; 2 uses
  %spec.select136.idx.i = select i1 %i.bl, i64 0, i64 4, !dbg !14090
  %spec.select136.i = getelementptr inbounds nuw i8, ptr %.sroa.35.0.i, i64 %spec.select136.idx.i, !dbg !14090
  %spec.select137.i = select i1 %i.bl, ptr null, ptr %.sroa.35.0.i, !dbg !14090
  %i.bm = icmp eq i64 %.sroa.59.0.i, 0, !dbg !14091
  br i1 %i.bm, label %bb.q, label %._crit_edge.i.i.i13.i.i37.i, !dbg !14091

bb.q:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i
  %i.bn = icmp eq i64 %.sroa.63.0.i, 0, !dbg !14092
  br i1 %i.bn, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i, !dbg !14092

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i: ; preds = %bb.q
  %.sroa.0.0.i.i.i.i25.i.i47.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.0.i, i64 64), !dbg !14093 ; 2 uses
  %i.bo = sub nuw i64 %.sroa.63.0.i, %.sroa.0.0.i.i.i.i25.i.i47.i, !dbg !14094
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.i) ]
  %.sroa.02.0.copyload.i.i.i26.i.i48.i = load i64, ptr %.sroa.45.0.i, align 1, !dbg !14095, !noalias !13943
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.45.0.i, i64 8, !dbg !14096
  br label %._crit_edge.i.i.i13.i.i37.i, !dbg !14097

._crit_edge.i.i.i13.i.i37.i:                      ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i
  %.sroa.63.8.i = phi i64 [ %i.bo, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.63.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !14057
  %.sroa.45.8.i = phi ptr [ %i.bp, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.45.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !14057
  %i.bq = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i47.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.59.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !14098
  %i.br = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i48.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.55.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !14099 ; 2 uses
  %i.bs = trunc i64 %i.br to i8, !dbg !14099
  %i.bt = lshr i64 %i.br, 1, !dbg !14100
  %i.bu = add i64 %i.bq, -1, !dbg !14098
  %i.bv = and i8 %i.bs, 1, !dbg !14101
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, !dbg !14102

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i: ; preds = %._crit_edge.i.i.i13.i.i37.i, %bb.q
  %.sroa.63.9.i = phi i64 [ 0, %bb.q ], [ %.sroa.63.8.i, %._crit_edge.i.i.i13.i.i37.i ], !dbg !14057
  %.sroa.59.7.i = phi i64 [ 0, %bb.q ], [ %i.bu, %._crit_edge.i.i.i13.i.i37.i ], !dbg !14057
  %.sroa.55.7.i = phi i64 [ %.sroa.55.0.i, %bb.q ], [ %i.bt, %._crit_edge.i.i.i13.i.i37.i ], !dbg !14057
  %.sroa.45.9.i = phi ptr [ %.sroa.45.0.i, %bb.q ], [ %.sroa.45.8.i, %._crit_edge.i.i.i13.i.i37.i ], !dbg !14057
  %.sroa.0.0.i8.i.i17.i.i41.i = phi i8 [ 2, %bb.q ], [ %i.bv, %._crit_edge.i.i.i13.i.i37.i ], !dbg !14103
  %i.bw = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRmECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i41.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select137.i), !dbg !14104, !noalias !13944 ; 2 uses
  %i.bx = extractvalue { i8, ptr } %i.bw, 0, !dbg !14105 ; 2 uses
  %.not.i.i18.i.i42.i = icmp eq i8 %i.bx, 2, !dbg !14106
  br i1 %.not.i.i18.i.i42.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.r, !dbg !14107

bb.r:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i
  %i.by = extractvalue { i8, ptr } %i.bw, 1, !dbg !14105 ; 2 uses
  %i.bz = trunc nuw i8 %i.bx to i1, !dbg !14108
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ], !noalias !13942
  %..i.i19.i.i43.i = select i1 %i.bz, ptr %i.by, ptr null, !dbg !14109
  br label %.lr.ph.i.i.i.i.preheader, !dbg !14110

bb.s:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i), "nonnull"(ptr %.sroa.45.0.i) ]
  %i.ca = icmp eq ptr %.sroa.39.0.i, %.sroa.45.0.i, !dbg !14111
  br i1 %i.ca, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.t, !dbg !14112

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.39.0.i, i64 4, !dbg !14113
  br label %.lr.ph.i.i.i.i.preheader, !dbg !14114

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.t, %bb.r
  %.sroa.63.2.i.ph = phi i64 [ %.sroa.63.0.i, %bb.t ], [ %.sroa.63.9.i, %bb.r ]
  %.sroa.59.2.i.ph = phi i64 [ %.sroa.59.0.i, %bb.t ], [ %.sroa.59.7.i, %bb.r ]
  %.sroa.55.2.i.ph = phi i64 [ %.sroa.55.0.i, %bb.t ], [ %.sroa.55.7.i, %bb.r ]
  %.sroa.45.2.i.ph = phi ptr [ %.sroa.45.0.i, %bb.t ], [ %.sroa.45.9.i, %bb.r ]
  %.sroa.39.2.i.ph = phi ptr [ %i.cb, %bb.t ], [ %.sroa.39.0.i, %bb.r ] ; 4 uses
  %.sroa.35.2.i.ph = phi ptr [ null, %bb.t ], [ %spec.select136.i, %bb.r ]
  %.sroa.1283.0.i.ph = phi ptr [ %.sroa.39.0.i, %bb.t ], [ %..i.i19.i.i43.i, %bb.r ]
  br label %.lr.ph.i.i.i.i.outer, !dbg !14115

.lr.ph.i.i.i.i.outer:                             ; preds = %.lr.ph.i.i.i.i.preheader, %bb.al
  %.sroa.982.0.i.ph = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i33.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.al ] ; 2 uses
  %.sroa.63.2.i.ph223 = phi i64 [ %.sroa.63.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.63.5.i, %bb.al ] ; 5 uses
  %.sroa.59.2.i.ph224 = phi i64 [ %.sroa.59.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.59.4.i, %bb.al ] ; 3 uses
  %.sroa.55.2.i.ph225 = phi i64 [ %.sroa.55.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.55.4.i, %bb.al ] ; 3 uses
  %.sroa.45.2.i.ph226 = phi ptr [ %.sroa.45.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.45.5.i, %bb.al ] ; 10 uses
  %.sroa.35.2.i.ph228 = phi ptr [ %.sroa.35.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %spec.select140.i, %bb.al ] ; 5 uses
  %.sroa.31.2.i.ph = phi i64 [ %.sroa.31.10.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.31.6.i.peel, %bb.al ] ; 6 uses
  %.sroa.27.2.i.ph = phi i64 [ %.sroa.27.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.27.5.i.peel, %bb.al ] ; 4 uses
  %.sroa.23.2.i.ph = phi i64 [ %.sroa.23.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.23.5.i.peel, %bb.al ] ; 4 uses
  %.sroa.13.2.i.ph = phi ptr [ %.sroa.13.10.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.13.6.i.peel, %bb.al ] ; 8 uses
  %.sroa.7.2.i.ph = phi ptr [ %.sroa.7.6.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.4.i.peel, %bb.al ] ; 6 uses
  %.sroa.053.2.i.ph = phi ptr [ %.sroa.053.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.053.5.i.peel, %bb.al ] ; 5 uses
  %.sroa.1283.0.i.ph229 = phi ptr [ %.sroa.1283.0.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %..i.i19.i.i.i, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13945), !dbg !14116
  call void @llvm.experimental.noalias.scope.decl(metadata !13946), !dbg !14116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14117, !noalias !13947
  call void @llvm.experimental.noalias.scope.decl(metadata !13948), !dbg !14117
  call void @llvm.experimental.noalias.scope.decl(metadata !13949), !dbg !14117
  call void @llvm.experimental.noalias.scope.decl(metadata !13950), !dbg !14118
  call void @llvm.experimental.noalias.scope.decl(metadata !13951), !dbg !14118
  %.not.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.982.0.i.ph, null, !dbg !14119
  br i1 %.not.i.i.i.i.i.i.i.peel, label %bb.v, label %bb.u, !dbg !14115

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.outer
  %i.cc = load i32, ptr %.sroa.982.0.i.ph, align 4, !dbg !14120, !alias.scope !13952, !noalias !13953, !noundef !3009
  br label %bb.v, !dbg !14121

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.outer
  %.sroa.5.0.i.i.i.i.i.i.i.peel = phi i32 [ %i.cc, %bb.u ], [ undef, %.lr.ph.i.i.i.i.outer ], !dbg !14122
  %.sroa.04.0.i.i.i.i.i.i.i.peel = phi i32 [ 1, %bb.u ], [ 0, %.lr.ph.i.i.i.i.outer ], !dbg !14123
  %.not7.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.1283.0.i.ph229, null, !dbg !14124
  br i1 %.not7.i.i.i.i.i.i.i.peel, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, label %bb.w, !dbg !14125

bb.w:                                             ; preds = %bb.v
  %i.cd = load i32, ptr %.sroa.1283.0.i.ph229, align 4, !dbg !14126, !alias.scope !13954, !noalias !13953, !noundef !3009
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, !dbg !14127

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel: ; preds = %bb.w, %bb.v
  %.sroa.05.0.i.i.i.i.i.i.i.peel = phi i32 [ 1, %bb.w ], [ 0, %bb.v ], !dbg !14128
  %.sroa.56.0.i.i.i.i.i.i.i.peel = phi i32 [ %i.cd, %bb.w ], [ undef, %bb.v ], !dbg !14122
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionmE3zipmECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, i32 noundef %.sroa.04.0.i.i.i.i.i.i.i.peel, i32 %.sroa.5.0.i.i.i.i.i.i.i.peel, i32 noundef %.sroa.05.0.i.i.i.i.i.i.i.peel, i32 %.sroa.56.0.i.i.i.i.i.i.i.peel), !dbg !14129, !noalias !13955
  %i.ce = load i32, ptr %i.h, align 4, !dbg !14117, !range !3323, !noalias !13947, !noundef !3009
  %i.cf = trunc nuw i32 %i.ce to i1, !dbg !14130
  br i1 %i.cf, label %.loopexit, label %bb.x, !dbg !14130

bb.x:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14131, !noalias !13947
  %.not.i.i.i.i.peel = icmp eq ptr %.sroa.053.2.i.ph, null, !dbg !14132
  br i1 %.not.i.i.i.i.peel, label %bb.aa, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, !dbg !14133

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel: ; preds = %bb.x
  %i.cg = icmp eq ptr %.sroa.053.2.i.ph, %.sroa.7.2.i.ph, !dbg !14134 ; 2 uses
  %spec.select138.idx.i.peel = select i1 %i.cg, i64 0, i64 4, !dbg !14135
  %spec.select138.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.053.2.i.ph, i64 %spec.select138.idx.i.peel, !dbg !14135
  %spec.select139.i.peel = select i1 %i.cg, ptr null, ptr %.sroa.053.2.i.ph, !dbg !14135
  %i.ch = icmp eq i64 %.sroa.27.2.i.ph, 0, !dbg !14136
  br i1 %i.ch, label %bb.y, label %._crit_edge.i.i.i.i.i.i.peel, !dbg !14136

bb.y:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %i.ci = icmp eq i64 %.sroa.31.2.i.ph, 0, !dbg !14137
  br i1 %i.ci, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, !dbg !14137

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel: ; preds = %bb.y
  %.sroa.0.0.i.i.i.i.i.i.i.peel = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.2.i.ph, i64 64), !dbg !14138 ; 2 uses
  %i.cj = sub nuw i64 %.sroa.31.2.i.ph, %.sroa.0.0.i.i.i.i.i.i.i.peel, !dbg !14139
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2.i.ph) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i.peel = load i64, ptr %.sroa.13.2.i.ph, align 1, !dbg !14140, !noalias !13956
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.13.2.i.ph, i64 8, !dbg !14141
  br label %._crit_edge.i.i.i.i.i.i.peel, !dbg !14142

._crit_edge.i.i.i.i.i.i.peel:                     ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %.sroa.31.4.i.peel = phi i64 [ %i.cj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.31.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.13.4.i.peel = phi ptr [ %i.ck, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.13.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14057
  %i.cl = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.27.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14143
  %i.cm = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.23.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14144 ; 2 uses
  %i.cn = trunc i64 %i.cm to i8, !dbg !14144
  %i.co = lshr i64 %i.cm, 1, !dbg !14145
  %i.cp = add i64 %i.cl, -1, !dbg !14143
  %i.cq = and i8 %i.cn, 1, !dbg !14146
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, !dbg !14147

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel: ; preds = %._crit_edge.i.i.i.i.i.i.peel, %bb.y
  %.sroa.31.5.i.peel = phi i64 [ 0, %bb.y ], [ %.sroa.31.4.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.27.4.i.peel = phi i64 [ 0, %bb.y ], [ %i.cp, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.23.4.i.peel = phi i64 [ %.sroa.23.2.i.ph, %bb.y ], [ %i.co, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.13.5.i.peel = phi ptr [ %.sroa.13.2.i.ph, %bb.y ], [ %.sroa.13.4.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.0.0.i8.i.i.i.i.i.peel = phi i8 [ 2, %bb.y ], [ %i.cq, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !14148
  %i.cr = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRmECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.peel, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select139.i.peel), !dbg !14149, !noalias !13957 ; 2 uses
  %i.cs = extractvalue { i8, ptr } %i.cr, 0, !dbg !14150 ; 2 uses
  %.not.i.i.i.i.i.peel = icmp eq i8 %i.cs, 2, !dbg !14151
  br i1 %.not.i.i.i.i.i.peel, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.z, !dbg !14152

bb.z:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel
  %i.ct = extractvalue { i8, ptr } %i.cr, 1, !dbg !14150 ; 2 uses
  %i.cu = trunc nuw i8 %i.cs to i1, !dbg !14153
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ], !noalias !13942
  %..i.i.i.i.i.peel = select i1 %i.cu, ptr %i.ct, ptr null, !dbg !14154
  br label %bb.ac, !dbg !14155

bb.aa:                                            ; preds = %bb.x
  %i.cv = icmp eq ptr %.sroa.7.2.i.ph, %.sroa.13.2.i.ph, !dbg !14156
  br i1 %i.cv, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.ab, !dbg !14157

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.7.2.i.ph, i64 4, !dbg !14158
  br label %bb.ac, !dbg !14159

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.31.6.i.peel = phi i64 [ %.sroa.31.2.i.ph, %bb.ab ], [ %.sroa.31.5.i.peel, %bb.z ], !dbg !14057 ; 2 uses
  %.sroa.27.5.i.peel = phi i64 [ %.sroa.27.2.i.ph, %bb.ab ], [ %.sroa.27.4.i.peel, %bb.z ], !dbg !14057 ; 2 uses
  %.sroa.23.5.i.peel = phi i64 [ %.sroa.23.2.i.ph, %bb.ab ], [ %.sroa.23.4.i.peel, %bb.z ], !dbg !14057 ; 2 uses
  %.sroa.13.6.i.peel = phi ptr [ %.sroa.13.2.i.ph, %bb.ab ], [ %.sroa.13.5.i.peel, %bb.z ], !dbg !14057 ; 2 uses
  %.sroa.7.4.i.peel = phi ptr [ %i.cw, %bb.ab ], [ %.sroa.7.2.i.ph, %bb.z ], !dbg !14057 ; 2 uses
  %.sroa.053.5.i.peel = phi ptr [ null, %bb.ab ], [ %spec.select138.i.peel, %bb.z ], !dbg !14057 ; 2 uses
  %.sroa.3.0.i.pn.i.ph.i.i.i.peel = phi ptr [ %.sroa.7.2.i.ph, %bb.ab ], [ %..i.i.i.i.i.peel, %bb.z ] ; 2 uses
  %.not.i10.i.i.i.peel = icmp eq ptr %.sroa.35.2.i.ph228, null, !dbg !14160
  br i1 %.not.i10.i.i.i.peel, label %bb.ad, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i, !dbg !14161

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %i.cx = icmp eq ptr %.sroa.39.2.i.ph, %.sroa.45.2.i.ph226, !dbg !14162
  br i1 %i.cx, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %.lr.ph.i.i.i.i, !dbg !14163

.lr.ph.i.i.i.i:                                   ; preds = %bb.am, %bb.ad
  %.sroa.982.0.i = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.ad ], [ %.sroa.3.0.i.pn.i.ph.i.i.i, %bb.am ], !dbg !14164 ; 2 uses
  %.sroa.31.2.i = phi i64 [ %.sroa.31.6.i.peel, %bb.ad ], [ %.sroa.31.6.i, %bb.am ], !dbg !14057 ; 6 uses
  %.sroa.27.2.i = phi i64 [ %.sroa.27.5.i.peel, %bb.ad ], [ %.sroa.27.5.i, %bb.am ], !dbg !14057 ; 4 uses
  %.sroa.23.2.i = phi i64 [ %.sroa.23.5.i.peel, %bb.ad ], [ %.sroa.23.5.i, %bb.am ], !dbg !14057 ; 4 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.6.i.peel, %bb.ad ], [ %.sroa.13.6.i, %bb.am ], !dbg !14057 ; 8 uses
  %.sroa.7.2.i = phi ptr [ %.sroa.7.4.i.peel, %bb.ad ], [ %.sroa.7.4.i, %bb.am ], !dbg !14057 ; 6 uses
  %.sroa.053.2.i = phi ptr [ %.sroa.053.5.i.peel, %bb.ad ], [ %.sroa.053.5.i, %bb.am ], !dbg !14057 ; 5 uses
  %.sroa.1283.0.i = phi ptr [ %.sroa.39.2.i.ph, %bb.ad ], [ %.sroa.39.2.i, %bb.am ], !dbg !14164 ; 2 uses
  %.sroa.39.2.i = getelementptr inbounds nuw i8, ptr %.sroa.1283.0.i, i64 4, !dbg !14165 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13958), !dbg !14116
  call void @llvm.experimental.noalias.scope.decl(metadata !13959), !dbg !14116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14117, !noalias !13960
  call void @llvm.experimental.noalias.scope.decl(metadata !13961), !dbg !14117
  call void @llvm.experimental.noalias.scope.decl(metadata !13962), !dbg !14117
  call void @llvm.experimental.noalias.scope.decl(metadata !13963), !dbg !14118
  call void @llvm.experimental.noalias.scope.decl(metadata !13964), !dbg !14118
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.982.0.i, null, !dbg !14119
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, label %bb.ae, !dbg !14115

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cy = load i32, ptr %.sroa.982.0.i, align 4, !dbg !14120, !alias.scope !13965, !noalias !13953, !noundef !3009
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !14121

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.ae
  %.sroa.5.0.i.i.i.i.i.i.i = phi i32 [ %i.cy, %bb.ae ], [ undef, %.lr.ph.i.i.i.i ], !dbg !14122
  %.sroa.04.0.i.i.i.i.i.i.i = phi i32 [ 1, %bb.ae ], [ 0, %.lr.ph.i.i.i.i ], !dbg !14123
  %i.cz = load i32, ptr %.sroa.1283.0.i, align 4, !dbg !14126, !alias.scope !13966, !noalias !13953, !noundef !3009
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionmE3zipmECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, i32 noundef %.sroa.04.0.i.i.i.i.i.i.i, i32 %.sroa.5.0.i.i.i.i.i.i.i, i32 noundef 1, i32 %i.cz), !dbg !14129, !noalias !13967
  %i.da = load i32, ptr %i.h, align 4, !dbg !14117, !range !3323, !noalias !13960, !noundef !3009
  %i.db = trunc nuw i32 %i.da to i1, !dbg !14130
  br i1 %i.db, label %.loopexit, label %bb.af, !dbg !14130

bb.af:                                            ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14131, !noalias !13960
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.2.i, null, !dbg !14132
  br i1 %.not.i.i.i.i, label %bb.ai, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !14133

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.af
  %i.dc = icmp eq ptr %.sroa.053.2.i, %.sroa.7.2.i, !dbg !14134 ; 2 uses
  %spec.select138.idx.i = select i1 %i.dc, i64 0, i64 4, !dbg !14135
  %spec.select138.i = getelementptr inbounds nuw i8, ptr %.sroa.053.2.i, i64 %spec.select138.idx.i, !dbg !14135
  %spec.select139.i = select i1 %i.dc, ptr null, ptr %.sroa.053.2.i, !dbg !14135
  %i.dd = icmp eq i64 %.sroa.27.2.i, 0, !dbg !14136
  br i1 %i.dd, label %bb.ag, label %._crit_edge.i.i.i.i.i.i, !dbg !14136

bb.ag:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.de = icmp eq i64 %.sroa.31.2.i, 0, !dbg !14137
  br i1 %i.de, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !14137

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.ag
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.2.i, i64 64), !dbg !14138 ; 2 uses
  %i.df = sub nuw i64 %.sroa.31.2.i, %.sroa.0.0.i.i.i.i.i.i.i, !dbg !14139
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.13.2.i, align 1, !dbg !14140, !noalias !13956
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.13.2.i, i64 8, !dbg !14141
  br label %._crit_edge.i.i.i.i.i.i, !dbg !14142

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.31.4.i = phi i64 [ %i.df, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.31.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !14057
  %.sroa.13.4.i = phi ptr [ %i.dg, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.13.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !14057
  %i.dh = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.27.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !14143
  %i.di = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.23.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !14144 ; 2 uses
  %i.dj = trunc i64 %i.di to i8, !dbg !14144
  %i.dk = lshr i64 %i.di, 1, !dbg !14145
  %i.dl = add i64 %i.dh, -1, !dbg !14143
  %i.dm = and i8 %i.dj, 1, !dbg !14146
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !14147

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.ag
  %.sroa.31.5.i = phi i64 [ 0, %bb.ag ], [ %.sroa.31.4.i, %._crit_edge.i.i.i.i.i.i ], !dbg !14057
  %.sroa.27.4.i = phi i64 [ 0, %bb.ag ], [ %i.dl, %._crit_edge.i.i.i.i.i.i ], !dbg !14057
  %.sroa.23.4.i = phi i64 [ %.sroa.23.2.i, %bb.ag ], [ %i.dk, %._crit_edge.i.i.i.i.i.i ], !dbg !14057
  %.sroa.13.5.i = phi ptr [ %.sroa.13.2.i, %bb.ag ], [ %.sroa.13.4.i, %._crit_edge.i.i.i.i.i.i ], !dbg !14057
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ 2, %bb.ag ], [ %i.dm, %._crit_edge.i.i.i.i.i.i ], !dbg !14148
  %i.dn = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRmECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select139.i), !dbg !14149, !noalias !13957 ; 2 uses
  %i.do = extractvalue { i8, ptr } %i.dn, 0, !dbg !14150 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.do, 2, !dbg !14151
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.ah, !dbg !14152

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.dp = extractvalue { i8, ptr } %i.dn, 1, !dbg !14150 ; 2 uses
  %i.dq = trunc nuw i8 %i.do to i1, !dbg !14153
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ], !noalias !13942
  %..i.i.i.i.i = select i1 %i.dq, ptr %i.dp, ptr null, !dbg !14154
  br label %bb.am, !dbg !14155

bb.ai:                                            ; preds = %bb.af
  %i.dr = icmp eq ptr %.sroa.7.2.i, %.sroa.13.2.i, !dbg !14156
  br i1 %i.dr, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.aj, !dbg !14157

bb.aj:                                            ; preds = %bb.ai
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.7.2.i, i64 4, !dbg !14158
  br label %bb.am, !dbg !14159

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i: ; preds = %bb.ac
  %i.dt = icmp eq ptr %.sroa.35.2.i.ph228, %.sroa.39.2.i.ph, !dbg !14166 ; 2 uses
  %spec.select140.idx.i = select i1 %i.dt, i64 0, i64 4, !dbg !14167
  %spec.select140.i = getelementptr inbounds nuw i8, ptr %.sroa.35.2.i.ph228, i64 %spec.select140.idx.i, !dbg !14167
  %spec.select141.i = select i1 %i.dt, ptr null, ptr %.sroa.35.2.i.ph228, !dbg !14167
  %i.du = icmp eq i64 %.sroa.59.2.i.ph224, 0, !dbg !14168
  br i1 %i.du, label %bb.ak, label %._crit_edge.i.i.i13.i.i.i, !dbg !14168

bb.ak:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %i.dv = icmp eq i64 %.sroa.63.2.i.ph223, 0, !dbg !14169
  br i1 %i.dv, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, !dbg !14169

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i: ; preds = %bb.ak
  %.sroa.0.0.i.i.i.i25.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.2.i.ph223, i64 64), !dbg !14170 ; 2 uses
  %i.dw = sub nuw i64 %.sroa.63.2.i.ph223, %.sroa.0.0.i.i.i.i25.i.i.i, !dbg !14171
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %.sroa.02.0.copyload.i.i.i26.i.i.i = load i64, ptr %.sroa.45.2.i.ph226, align 1, !dbg !14172, !noalias !13968
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.45.2.i.ph226, i64 8, !dbg !14173
  br label %._crit_edge.i.i.i13.i.i.i, !dbg !14174

._crit_edge.i.i.i13.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %.sroa.63.4.i = phi i64 [ %i.dw, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.63.2.i.ph223, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !14057
  %.sroa.45.4.i = phi ptr [ %i.dx, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.45.2.i.ph226, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !14057
  %i.dy = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.59.2.i.ph224, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !14175
  %i.dz = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.55.2.i.ph225, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !14176 ; 2 uses
  %i.ea = trunc i64 %i.dz to i8, !dbg !14176
  %i.eb = lshr i64 %i.dz, 1, !dbg !14177
  %i.ec = add i64 %i.dy, -1, !dbg !14175
  %i.ed = and i8 %i.ea, 1, !dbg !14178
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, !dbg !14179

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i: ; preds = %._crit_edge.i.i.i13.i.i.i, %bb.ak
  %.sroa.63.5.i = phi i64 [ 0, %bb.ak ], [ %.sroa.63.4.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !14057
  %.sroa.59.4.i = phi i64 [ 0, %bb.ak ], [ %i.ec, %._crit_edge.i.i.i13.i.i.i ], !dbg !14057
  %.sroa.55.4.i = phi i64 [ %.sroa.55.2.i.ph225, %bb.ak ], [ %i.eb, %._crit_edge.i.i.i13.i.i.i ], !dbg !14057
  %.sroa.45.5.i = phi ptr [ %.sroa.45.2.i.ph226, %bb.ak ], [ %.sroa.45.4.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !14057
  %.sroa.0.0.i8.i.i17.i.i.i = phi i8 [ 2, %bb.ak ], [ %i.ed, %._crit_edge.i.i.i13.i.i.i ], !dbg !14180
  %i.ee = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRmECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i.i, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %spec.select141.i), !dbg !14181, !noalias !13969 ; 2 uses
  %i.ef = extractvalue { i8, ptr } %i.ee, 0, !dbg !14182 ; 2 uses
  %.not.i.i18.i.i.i = icmp eq i8 %i.ef, 2, !dbg !14183
  br i1 %.not.i.i18.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.al, !dbg !14184

bb.al:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %i.eg = extractvalue { i8, ptr } %i.ee, 1, !dbg !14182 ; 2 uses
  %i.eh = trunc nuw i8 %i.ef to i1, !dbg !14185
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eg) ], !noalias !13942
  %..i.i19.i.i.i = select i1 %i.eh, ptr %i.eg, ptr null, !dbg !14186
  br label %.lr.ph.i.i.i.i.outer, !dbg !14187

bb.am:                                            ; preds = %bb.ah, %bb.aj
  %.sroa.31.6.i = phi i64 [ %.sroa.31.2.i, %bb.aj ], [ %.sroa.31.5.i, %bb.ah ], !dbg !14057
  %.sroa.27.5.i = phi i64 [ %.sroa.27.2.i, %bb.aj ], [ %.sroa.27.4.i, %bb.ah ], !dbg !14057
  %.sroa.23.5.i = phi i64 [ %.sroa.23.2.i, %bb.aj ], [ %.sroa.23.4.i, %bb.ah ], !dbg !14057
  %.sroa.13.6.i = phi ptr [ %.sroa.13.2.i, %bb.aj ], [ %.sroa.13.5.i, %bb.ah ], !dbg !14057
  %.sroa.7.4.i = phi ptr [ %i.ds, %bb.aj ], [ %.sroa.7.2.i, %bb.ah ], !dbg !14057
  %.sroa.053.5.i = phi ptr [ null, %bb.aj ], [ %spec.select138.i, %bb.ah ], !dbg !14057
  %.sroa.3.0.i.pn.i.ph.i.i.i = phi ptr [ %.sroa.7.2.i, %bb.aj ], [ %..i.i.i.i.i, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %i.ei = icmp eq ptr %.sroa.39.2.i, %.sroa.45.2.i.ph226, !dbg !14162
  br i1 %i.ei, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %.lr.ph.i.i.i.i, !dbg !14163, !llvm.loop !13829

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.39.2.i.lcssa = phi ptr [ %.sroa.39.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.39.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.35.2.i.lcssa = phi ptr [ null, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.35.2.i.ph228, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.31.2.i.lcssa = phi i64 [ %.sroa.31.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.31.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.27.2.i.lcssa = phi i64 [ %.sroa.27.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.27.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.23.2.i.lcssa = phi i64 [ %.sroa.23.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.23.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.13.2.i.lcssa = phi ptr [ %.sroa.13.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.13.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.7.2.i.lcssa = phi ptr [ %.sroa.7.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.7.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14057
  %.sroa.053.2.i.lcssa = phi ptr [ %.sroa.053.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.053.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmE0INtB7_5FnMutTTINtNtBb_6option6OptionRmEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14057
  %i.ej = load i32, ptr %i.an, align 4, !dbg !14188, !noalias !13960, !noundef !3009
  %i.ek = load i32, ptr %i.ao, align 4, !dbg !14188, !noalias !13960, !noundef !3009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14131, !noalias !13960
  %i.el = icmp ugt i64 %.sroa.0.0.i, 127, !dbg !14189
  br i1 %i.el, label %bb.at, label %bb.ax, !dbg !14189

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i: ; preds = %bb.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, %bb.n, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, %bb.ad, %bb.aa, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, %bb.am, %bb.ai, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %.not.i = icmp eq i64 %.sroa.0.0.i, 0, !dbg !14190
  %i.em = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>, !dbg !14056
  %i.en = insertelement <2 x double> %i.em, double %.sroa.34.1, i64 1, !dbg !14056 ; 3 uses
  %i.eo = extractelement <2 x double> %i.at, i64 0, !dbg !14190 ; 4 uses
  br i1 %.not.i, label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binarymmINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtB1d_5slice4iter4ItermENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrmmE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.an, !dbg !14190

bb.an:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i
  %i.ep = icmp ult i64 %.sroa.0.0.i, 129
  br i1 %i.ep, label %bb.ap, label %bb.ao, !dbg !14191, !prof !3147

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0.i, i64 noundef 128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #43, !dbg !14192, !noalias !13938
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14193, !noalias !13970
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef range(i64 1, 129) %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef range(i64 1, 129) %.sroa.0.0.i), !dbg !14193, !noalias !13938
  call void @llvm.experimental.noalias.scope.decl(metadata !13971), !dbg !14194
  %i.eq = load double, ptr %i.g, align 8, !dbg !14195, !alias.scope !13972, !noalias !13970, !noundef !3009 ; 6 uses
  %i.er = fcmp oeq double %i.eq, 0.000000e+00, !dbg !14195
  br i1 %i.er, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit.i, label %bb.aq, !dbg !14195

bb.aq:                                            ; preds = %bb.ap
  %i.es = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !14196
  br i1 %i.es, label %bb.as, label %bb.ar, !dbg !14196

bb.ar:                                            ; preds = %bb.aq
  %i.et = fadd double %.sroa.0.1, %i.eq, !dbg !14197 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !14198
  %i.ev = load double, ptr %i.eu, align 8, !dbg !14198, !alias.scope !13972, !noalias !13970, !noundef !3009 ; 2 uses
  %i.ew = fsub double %i.ev, %i.eo, !dbg !14198   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !14199
  %i.ey = load double, ptr %i.ex, align 8, !dbg !14199, !alias.scope !13972, !noalias !13970, !noundef !3009 ; 2 uses
  %i.ez = extractelement <2 x double> %i.at, i64 1, !dbg !14199
  %i.fa = fsub double %i.ey, %i.ez, !dbg !14199   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !14200
  %i.fc = load double, ptr %i.fb, align 8, !dbg !14200, !alias.scope !13972, !noalias !13970, !noundef !3009
  %i.fd = fdiv double %i.eq, %i.et, !dbg !14201   ; 2 uses
  %i.fe = fmul double %i.fd, %i.ew, !dbg !14202
  %i.ff = fadd double %i.eo, %i.fe, !dbg !14203   ; 2 uses
  %i.fg = fmul double %i.fd, %i.fa, !dbg !14204
  %i.fh = fsub double %i.ev, %i.ff, !dbg !14205
  %i.fi = insertelement <2 x double> poison, double %i.fg, i64 0, !dbg !14206
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !14207
  %i.fk = fmul double %i.eq, %i.fh, !dbg !14208   ; 2 uses
  %i.fl = fmul double %i.ew, %i.fk, !dbg !14208
  %i.fm = fadd double %i.fc, %i.fl, !dbg !14200
  %i.fn = insertelement <2 x double> %i.fi, double %i.fm, i64 1, !dbg !14206
  %i.fo = fadd <2 x double> %i.en, %i.fn, !dbg !14206 ; 2 uses
  %i.fp = load <2 x double>, ptr %i.fj, align 8, !dbg !14207, !alias.scope !13972, !noalias !13970
  %i.fq = extractelement <2 x double> %i.fo, i64 0, !dbg !14209
  %i.fr = fsub double %i.ey, %i.fq, !dbg !14209
  %i.fs = fmul double %i.eq, %i.fr, !dbg !14210
  %i.ft = insertelement <2 x double> poison, double %i.fa, i64 0, !dbg !14211
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !14211
  %i.fv = insertelement <2 x double> poison, double %i.fk, i64 0, !dbg !14211
  %i.fw = insertelement <2 x double> %i.fv, double %i.fs, i64 1, !dbg !14211
  %i.fx = fmul <2 x double> %i.fu, %i.fw, !dbg !14211
  %i.fy = fadd <2 x double> %i.fp, %i.fx, !dbg !14207
  %i.fz = fadd <2 x double> %i.as, %i.fy, !dbg !14212
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !14213

bb.as:                                            ; preds = %bb.aq
  %.sroa.16.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !14214
  %.sroa.16.0.copyload22 = load double, ptr %.sroa.16.0..sroa_idx21, align 8, !dbg !14214, !alias.scope !13973, !noalias !13974
  %.sroa.25.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !14214
  %i.ga = load <2 x double>, ptr %.sroa.25.0..sroa_idx32, align 8, !dbg !14214, !alias.scope !13973, !noalias !13974
  %.sroa.43.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !14214
  %i.gb = load <2 x double>, ptr %.sroa.43.0..sroa_idx54, align 8, !dbg !14214, !alias.scope !13973, !noalias !13974
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !14215

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.as, %bb.ar, %bb.ap
  %.sroa.16.2 = phi double [ %i.eo, %bb.ap ], [ %.sroa.16.0.copyload22, %bb.as ], [ %i.ff, %bb.ar ], !dbg !14216
  %.sroa.0.2 = phi double [ %.sroa.0.1, %bb.ap ], [ %i.eq, %bb.as ], [ %i.et, %bb.ar ], !dbg !14216
  %i.gc = phi <2 x double> [ %i.en, %bb.ap ], [ %i.ga, %bb.as ], [ %i.fo, %bb.ar ], !dbg !14216
  %i.gd = phi <2 x double> [ %i.as, %bb.ap ], [ %i.gb, %bb.as ], [ %i.fz, %bb.ar ], !dbg !14216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14217, !noalias !13970
  br label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binarymmINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtB1d_5slice4iter4ItermENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrmmE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !14218

bb.at:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14219, !noalias !13975
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 128), !dbg !14219, !noalias !13938
  call void @llvm.experimental.noalias.scope.decl(metadata !13976), !dbg !14220
  %i.ge = load double, ptr %i.f, align 8, !dbg !14221, !alias.scope !13977, !noalias !13975, !noundef !3009 ; 5 uses
  %i.gf = fcmp oeq double %i.ge, 0.000000e+00, !dbg !14221
  br i1 %i.gf, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, label %bb.au, !dbg !14221

bb.au:                                            ; preds = %bb.at
  %i.gg = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !14222
  br i1 %i.gg, label %bb.aw, label %bb.av, !dbg !14222

bb.av:                                            ; preds = %bb.au
  %i.gh = fadd double %.sroa.0.1, %i.ge, !dbg !14223 ; 2 uses
  %i.gi = fdiv double %i.ge, %i.gh, !dbg !14224
  %i.gj = load double, ptr %i.aq, align 8, !dbg !14225, !alias.scope !13977, !noalias !13975, !noundef !3009
  %i.gk = load <2 x double>, ptr %i.ap, align 8, !dbg !14226, !alias.scope !13977, !noalias !13975 ; 2 uses
  %i.gl = fsub <2 x double> %i.gk, %i.at, !dbg !14226 ; 3 uses
  %i.gm = insertelement <2 x double> poison, double %i.gi, i64 0, !dbg !14227
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !14227
  %i.go = fmul <2 x double> %i.gn, %i.gl, !dbg !14227
  %i.gp = fadd <2 x double> %i.at, %i.go, !dbg !14228 ; 2 uses
  %i.gq = fsub <2 x double> %i.gk, %i.gp, !dbg !14229
  %i.gr = insertelement <2 x double> poison, double %i.ge, i64 0, !dbg !14230
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !14230
  %i.gt = fmul <2 x double> %i.gs, %i.gq, !dbg !14230 ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.gl, %i.gt, !dbg !14230
  %i.gu = extractelement <2 x double> %foldExtExtBinop, i64 0, !dbg !14230
  %i.gv = fadd double %i.gj, %i.gu, !dbg !14225
  %i.gw = fadd double %.sroa.34.1, %i.gv, !dbg !14231
  %i.gx = load <2 x double>, ptr %i.ar, align 8, !dbg !14232, !alias.scope !13977, !noalias !13975
  %i.gy = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> <i32 1, i32 1>, !dbg !14233
  %i.gz = fmul <2 x double> %i.gy, %i.gt, !dbg !14233
  %i.ha = fadd <2 x double> %i.gx, %i.gz, !dbg !14232
  %i.hb = fadd <2 x double> %i.as, %i.ha, !dbg !14234
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !14235

bb.aw:                                            ; preds = %bb.au
  %i.hc = load <2 x double>, ptr %i.ap, align 8, !dbg !14236, !alias.scope !13978, !noalias !13979
  %.sroa.34.0.copyload46 = load double, ptr %i.aq, align 8, !dbg !14236, !alias.scope !13978, !noalias !13979
  %i.hd = load <2 x double>, ptr %i.ar, align 8, !dbg !14236, !alias.scope !13978, !noalias !13979
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !14237

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit22.i: ; preds = %bb.aw, %bb.av, %bb.at
  %.sroa.34.4 = phi double [ %.sroa.34.1, %bb.at ], [ %.sroa.34.0.copyload46, %bb.aw ], [ %i.gw, %bb.av ], !dbg !14216
  %.sroa.0.4 = phi double [ %.sroa.0.1, %bb.at ], [ %i.ge, %bb.aw ], [ %i.gh, %bb.av ], !dbg !14216
  %i.he = phi <2 x double> [ %i.as, %bb.at ], [ %i.hd, %bb.aw ], [ %i.hb, %bb.av ], !dbg !14216
  %i.hf = phi <2 x double> [ %i.at, %bb.at ], [ %i.hc, %bb.aw ], [ %i.gp, %bb.av ], !dbg !14216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14238, !noalias !13975
  br label %bb.ax, !dbg !14239

bb.ax:                                            ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, %.loopexit
  %.sroa.34.3 = phi double [ %.sroa.34.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.34.1, %.loopexit ], !dbg !14056
  %.sroa.0.3 = phi double [ %.sroa.0.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.0.1, %.loopexit ], !dbg !14056
  %.sroa.0.1.i12 = phi i64 [ 0, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.0.0.i, %.loopexit ], !dbg !14058 ; 3 uses
  %i.hg = phi <2 x double> [ %i.he, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %i.as, %.loopexit ], !dbg !14056
  %i.hh = phi <2 x double> [ %i.hf, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %i.at, %.loopexit ], !dbg !14056
  %i.hi = uitofp i32 %i.ej to double, !dbg !14240
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.1.i12, !dbg !14241
  store double %i.hi, ptr %i.hj, align 8, !dbg !14241, !noalias !13938
  %i.hk = uitofp i32 %i.ek to double, !dbg !14242
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.0.1.i12, !dbg !14243
  store double %i.hk, ptr %i.hl, align 8, !dbg !14243, !noalias !13938
  %i.hm = add nuw nsw i64 %.sroa.0.1.i12, 1, !dbg !14244
  br label %bb.k, !dbg !14055

_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binarymmINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtB1d_5slice4iter4ItermENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrmmE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.16.5 = phi double [ %i.eo, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %.sroa.16.2, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !14056
  %.sroa.0.5 = phi double [ %.sroa.0.1, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %.sroa.0.2, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !14056
  %i.hn = phi <2 x double> [ %i.en, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %i.gc, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !14056
  %i.ho = phi <2 x double> [ %i.as, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRmINtNtNtBa_5slice4iter4ItermENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %i.gd, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrmmEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !14056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14245, !noalias !13938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14246, !noalias !13938
  br label %bb.bi, !dbg !14247

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread: ; preds = %bb.g, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !14248
  %i.hq = load ptr, ptr %i.hp, align 8, !dbg !14248, !nonnull !3009, !noundef !3009 ; 2 uses
  %i.hr = load i64, ptr %i.m, align 8, !dbg !14249, !noundef !3009
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hr, !dbg !14250
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !14251
  %i.hu = load ptr, ptr %i.ht, align 8, !dbg !14251, !nonnull !3009, !noundef !3009 ; 2 uses
  %i.hv = load i64, ptr %i.o, align 8, !dbg !14252, !noundef !3009
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hv, !dbg !14253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14254, !noalias !13996
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4ItermEEBW_EINtB5_7ZipImplBW_BW_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hs, ptr noundef nonnull %i.hu, ptr noundef nonnull %i.hw), !dbg !14255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14256, !noalias !13996
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !noalias !13996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14257, !noalias !13996
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false), !noalias !13996
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.hz = load i64, ptr %i.hx, align 8, !dbg !14258, !alias.scope !13997, !noalias !13996, !noundef !3009 ; 2 uses
  %i.ia = load i64, ptr %i.hy, align 8, !dbg !14259, !alias.scope !13997, !noalias !13996, !noundef !3009
  %i.ib = icmp ult i64 %i.hz, %i.ia, !dbg !14258
  br i1 %i.ib, label %.lr.ph.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItermEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !14258

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItermEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14260, !noalias !13996
  br label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binarymmINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB19_6copied6CopiedINtNtNtB1d_5slice4iter4ItermEEB1S_ENCINvB2_12pearson_corrmmEs0_0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !14261

.lr.ph.i:                                         ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread
end_hunk_4
begin_hunk_5_@_RINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxECskY9G75ZWc4U_11polars_expr:bb.a
  %.sroa.079.0.copyload = load ptr, ptr %i.l, align 8, !dbg !14774, !alias.scope !14659
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !14774
  %.sroa.480.0.copyload = load ptr, ptr %.sroa.480.0..sroa_idx, align 8, !dbg !14774, !alias.scope !14659
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !14774
  %.sroa.581.0.copyload = load ptr, ptr %.sroa.581.0..sroa_idx, align 8, !dbg !14774, !alias.scope !14659
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !14774
  %.sroa.783.0.copyload = load i64, ptr %.sroa.783.0..sroa_idx, align 8, !dbg !14774, !alias.scope !14659
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40, !dbg !14774
  %.sroa.884.0.copyload = load i64, ptr %.sroa.884.0..sroa_idx, align 8, !dbg !14774, !alias.scope !14659
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !14774
  %.sroa.985.0.copyload = load i64, ptr %.sroa.985.0..sroa_idx, align 8, !dbg !14774, !alias.scope !14659
  %.sroa.1086.56.copyload = load ptr, ptr %i.k, align 8, !dbg !14774, !alias.scope !14660
  %.sroa.1287.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !14774
  %.sroa.1287.56.copyload = load ptr, ptr %.sroa.1287.56..sroa_idx, align 8, !dbg !14774, !alias.scope !14660
  %.sroa.1388.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !14774
  %.sroa.1388.56.copyload = load ptr, ptr %.sroa.1388.56..sroa_idx, align 8, !dbg !14774, !alias.scope !14660
  %.sroa.1590.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !14774
  %.sroa.1590.56.copyload = load i64, ptr %.sroa.1590.56..sroa_idx, align 8, !dbg !14774, !alias.scope !14660
  %.sroa.1691.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !14774
  %.sroa.1691.56.copyload = load i64, ptr %.sroa.1691.56..sroa_idx, align 8, !dbg !14774, !alias.scope !14660
  %.sroa.17.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48, !dbg !14774
  %.sroa.17.56.copyload = load i64, ptr %.sroa.17.56..sroa_idx, align 8, !dbg !14774, !alias.scope !14660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !14775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !14775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14776, !noalias !14661
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.j, i8 0, i64 1024, i1 false), !noalias !14661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14777, !noalias !14661
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.i, i8 0, i64 1024, i1 false), !noalias !14661
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br label %bb.k, !dbg !14778

bb.k:                                             ; preds = %bb.ax, %bb.j
  %.sroa.34.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.34.3, %bb.ax ], !dbg !14779 ; 4 uses
  %.sroa.0.1 = phi double [ 0.000000e+00, %bb.j ], [ %.sroa.0.3, %bb.ax ], !dbg !14779 ; 8 uses
  %.sroa.63.0.i = phi i64 [ %.sroa.17.56.copyload, %bb.j ], [ %.sroa.63.2.i.ph223, %bb.ax ], !dbg !14780 ; 5 uses
  %.sroa.59.0.i = phi i64 [ %.sroa.1691.56.copyload, %bb.j ], [ %.sroa.59.2.i.ph224, %bb.ax ], !dbg !14780 ; 3 uses
  %.sroa.55.0.i = phi i64 [ %.sroa.1590.56.copyload, %bb.j ], [ %.sroa.55.2.i.ph225, %bb.ax ], !dbg !14780 ; 3 uses
  %.sroa.45.0.i = phi ptr [ %.sroa.1388.56.copyload, %bb.j ], [ %.sroa.45.2.i.ph226, %bb.ax ], !dbg !14780 ; 8 uses
  %.sroa.39.0.i = phi ptr [ %.sroa.1287.56.copyload, %bb.j ], [ %.sroa.39.2.i.lcssa, %bb.ax ], !dbg !14780 ; 7 uses
  %.sroa.35.0.i = phi ptr [ %.sroa.1086.56.copyload, %bb.j ], [ %.sroa.35.2.i.lcssa, %bb.ax ], !dbg !14780 ; 4 uses
  %.sroa.31.0.i = phi i64 [ %.sroa.985.0.copyload, %bb.j ], [ %.sroa.31.2.i.lcssa, %bb.ax ], !dbg !14780 ; 5 uses
  %.sroa.27.0.i = phi i64 [ %.sroa.884.0.copyload, %bb.j ], [ %.sroa.27.2.i.lcssa, %bb.ax ], !dbg !14780 ; 3 uses
  %.sroa.23.0.i = phi i64 [ %.sroa.783.0.copyload, %bb.j ], [ %.sroa.23.2.i.lcssa, %bb.ax ], !dbg !14780 ; 3 uses
  %.sroa.13.0.i = phi ptr [ %.sroa.581.0.copyload, %bb.j ], [ %.sroa.13.2.i.lcssa, %bb.ax ], !dbg !14780 ; 8 uses
  %.sroa.7.0.i = phi ptr [ %.sroa.480.0.copyload, %bb.j ], [ %.sroa.7.2.i.lcssa, %bb.ax ], !dbg !14780 ; 7 uses
  %.sroa.053.0.i = phi ptr [ %.sroa.079.0.copyload, %bb.j ], [ %.sroa.053.2.i.lcssa, %bb.ax ], !dbg !14780 ; 4 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.j ], [ %i.hm, %bb.ax ], !dbg !14781 ; 7 uses
  %i.as = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.hg, %bb.ax ], !dbg !14779 ; 6 uses
  %i.at = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.hh, %bb.ax ], !dbg !14779 ; 7 uses
  %.not.i.i.i23.i = icmp eq ptr %.sroa.053.0.i, null, !dbg !14782
  br i1 %.not.i.i.i23.i, label %bb.n, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i, !dbg !14783

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i) ]
  %i.au = icmp eq ptr %.sroa.053.0.i, %.sroa.7.0.i, !dbg !14784 ; 2 uses
  %spec.select.idx.i = select i1 %i.au, i64 0, i64 8, !dbg !14785
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.053.0.i, i64 %spec.select.idx.i, !dbg !14785
  %spec.select135.i = select i1 %i.au, ptr null, ptr %.sroa.053.0.i, !dbg !14785
  %i.av = icmp eq i64 %.sroa.27.0.i, 0, !dbg !14786
  br i1 %i.av, label %bb.l, label %._crit_edge.i.i.i.i.i26.i, !dbg !14786

bb.l:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i
  %i.aw = icmp eq i64 %.sroa.31.0.i, 0, !dbg !14787
  br i1 %i.aw, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i, !dbg !14787

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i: ; preds = %bb.l
  %.sroa.0.0.i.i.i.i.i.i50.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.0.i, i64 64), !dbg !14788 ; 2 uses
  %i.ax = sub nuw i64 %.sroa.31.0.i, %.sroa.0.0.i.i.i.i.i.i50.i, !dbg !14789
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i51.i = load i64, ptr %.sroa.13.0.i, align 1, !dbg !14790, !noalias !14663
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.13.0.i, i64 8, !dbg !14791
  br label %._crit_edge.i.i.i.i.i26.i, !dbg !14792

._crit_edge.i.i.i.i.i26.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i
  %.sroa.31.8.i = phi i64 [ %i.ax, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.31.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !14780
  %.sroa.13.8.i = phi ptr [ %i.ay, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.13.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !14780
  %i.az = phi i64 [ %.sroa.0.0.i.i.i.i.i.i50.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.27.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !14793
  %i.ba = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i51.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i49.i ], [ %.sroa.23.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i24.i ], !dbg !14794 ; 2 uses
  %i.bb = trunc i64 %i.ba to i8, !dbg !14794
  %i.bc = lshr i64 %i.ba, 1, !dbg !14795
  %i.bd = add i64 %i.az, -1, !dbg !14793
  %i.be = and i8 %i.bb, 1, !dbg !14796
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, !dbg !14797

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i: ; preds = %._crit_edge.i.i.i.i.i26.i, %bb.l
  %.sroa.31.9.i = phi i64 [ 0, %bb.l ], [ %.sroa.31.8.i, %._crit_edge.i.i.i.i.i26.i ], !dbg !14780
  %.sroa.27.7.i = phi i64 [ 0, %bb.l ], [ %i.bd, %._crit_edge.i.i.i.i.i26.i ], !dbg !14780
  %.sroa.23.7.i = phi i64 [ %.sroa.23.0.i, %bb.l ], [ %i.bc, %._crit_edge.i.i.i.i.i26.i ], !dbg !14780
  %.sroa.13.9.i = phi ptr [ %.sroa.13.0.i, %bb.l ], [ %.sroa.13.8.i, %._crit_edge.i.i.i.i.i26.i ], !dbg !14780
  %.sroa.0.0.i8.i.i.i.i30.i = phi i8 [ 2, %bb.l ], [ %i.be, %._crit_edge.i.i.i.i.i26.i ], !dbg !14798
  %i.bf = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRxECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i30.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select135.i), !dbg !14799, !noalias !14664 ; 2 uses
  %i.bg = extractvalue { i8, ptr } %i.bf, 0, !dbg !14800 ; 2 uses
  %.not.i.i.i.i31.i = icmp eq i8 %i.bg, 2, !dbg !14801
  br i1 %.not.i.i.i.i31.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.m, !dbg !14802

bb.m:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i
  %i.bh = extractvalue { i8, ptr } %i.bf, 1, !dbg !14800 ; 2 uses
  %i.bi = trunc nuw i8 %i.bg to i1, !dbg !14803
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ], !noalias !14665
  %..i.i.i.i32.i = select i1 %i.bi, ptr %i.bh, ptr null, !dbg !14804
  br label %bb.p, !dbg !14805

bb.n:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i), "nonnull"(ptr %.sroa.13.0.i) ]
  %i.bj = icmp eq ptr %.sroa.7.0.i, %.sroa.13.0.i, !dbg !14806
  br i1 %i.bj, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.o, !dbg !14807

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 8, !dbg !14808
  br label %bb.p, !dbg !14809

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.31.10.i = phi i64 [ %.sroa.31.0.i, %bb.o ], [ %.sroa.31.9.i, %bb.m ], !dbg !14780
  %.sroa.27.8.i = phi i64 [ %.sroa.27.0.i, %bb.o ], [ %.sroa.27.7.i, %bb.m ], !dbg !14780
  %.sroa.23.8.i = phi i64 [ %.sroa.23.0.i, %bb.o ], [ %.sroa.23.7.i, %bb.m ], !dbg !14780
  %.sroa.13.10.i = phi ptr [ %.sroa.13.0.i, %bb.o ], [ %.sroa.13.9.i, %bb.m ], !dbg !14780
  %.sroa.7.6.i = phi ptr [ %i.bk, %bb.o ], [ %.sroa.7.0.i, %bb.m ], !dbg !14780
  %.sroa.053.8.i = phi ptr [ null, %bb.o ], [ %spec.select.i, %bb.m ], !dbg !14780
  %.sroa.3.0.i.pn.i.ph.i.i33.i = phi ptr [ %.sroa.7.0.i, %bb.o ], [ %..i.i.i.i32.i, %bb.m ]
  %.not.i10.i.i34.i = icmp eq ptr %.sroa.35.0.i, null, !dbg !14810
  br i1 %.not.i10.i.i34.i, label %bb.s, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i, !dbg !14811

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i) ]
  %i.bl = icmp eq ptr %.sroa.35.0.i, %.sroa.39.0.i, !dbg !14812 ; 2 uses
  %spec.select136.idx.i = select i1 %i.bl, i64 0, i64 8, !dbg !14813
  %spec.select136.i = getelementptr inbounds nuw i8, ptr %.sroa.35.0.i, i64 %spec.select136.idx.i, !dbg !14813
  %spec.select137.i = select i1 %i.bl, ptr null, ptr %.sroa.35.0.i, !dbg !14813
  %i.bm = icmp eq i64 %.sroa.59.0.i, 0, !dbg !14814
  br i1 %i.bm, label %bb.q, label %._crit_edge.i.i.i13.i.i37.i, !dbg !14814

bb.q:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i
  %i.bn = icmp eq i64 %.sroa.63.0.i, 0, !dbg !14815
  br i1 %i.bn, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i, !dbg !14815

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i: ; preds = %bb.q
  %.sroa.0.0.i.i.i.i25.i.i47.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.0.i, i64 64), !dbg !14816 ; 2 uses
  %i.bo = sub nuw i64 %.sroa.63.0.i, %.sroa.0.0.i.i.i.i25.i.i47.i, !dbg !14817
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.0.i) ]
  %.sroa.02.0.copyload.i.i.i26.i.i48.i = load i64, ptr %.sroa.45.0.i, align 1, !dbg !14818, !noalias !14666
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.45.0.i, i64 8, !dbg !14819
  br label %._crit_edge.i.i.i13.i.i37.i, !dbg !14820

._crit_edge.i.i.i13.i.i37.i:                      ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i
  %.sroa.63.8.i = phi i64 [ %i.bo, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.63.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !14780
  %.sroa.45.8.i = phi ptr [ %i.bp, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.45.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !14780
  %i.bq = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i47.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.59.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !14821
  %i.br = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i48.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i46.i ], [ %.sroa.55.0.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i35.i ], !dbg !14822 ; 2 uses
  %i.bs = trunc i64 %i.br to i8, !dbg !14822
  %i.bt = lshr i64 %i.br, 1, !dbg !14823
  %i.bu = add i64 %i.bq, -1, !dbg !14821
  %i.bv = and i8 %i.bs, 1, !dbg !14824
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, !dbg !14825

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i: ; preds = %._crit_edge.i.i.i13.i.i37.i, %bb.q
  %.sroa.63.9.i = phi i64 [ 0, %bb.q ], [ %.sroa.63.8.i, %._crit_edge.i.i.i13.i.i37.i ], !dbg !14780
  %.sroa.59.7.i = phi i64 [ 0, %bb.q ], [ %i.bu, %._crit_edge.i.i.i13.i.i37.i ], !dbg !14780
  %.sroa.55.7.i = phi i64 [ %.sroa.55.0.i, %bb.q ], [ %i.bt, %._crit_edge.i.i.i13.i.i37.i ], !dbg !14780
  %.sroa.45.9.i = phi ptr [ %.sroa.45.0.i, %bb.q ], [ %.sroa.45.8.i, %._crit_edge.i.i.i13.i.i37.i ], !dbg !14780
  %.sroa.0.0.i8.i.i17.i.i41.i = phi i8 [ 2, %bb.q ], [ %i.bv, %._crit_edge.i.i.i13.i.i37.i ], !dbg !14826
  %i.bw = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRxECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i41.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select137.i), !dbg !14827, !noalias !14667 ; 2 uses
  %i.bx = extractvalue { i8, ptr } %i.bw, 0, !dbg !14828 ; 2 uses
  %.not.i.i18.i.i42.i = icmp eq i8 %i.bx, 2, !dbg !14829
  br i1 %.not.i.i18.i.i42.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.r, !dbg !14830

bb.r:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i
  %i.by = extractvalue { i8, ptr } %i.bw, 1, !dbg !14828 ; 2 uses
  %i.bz = trunc nuw i8 %i.bx to i1, !dbg !14831
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ], !noalias !14665
  %..i.i19.i.i43.i = select i1 %i.bz, ptr %i.by, ptr null, !dbg !14832
  br label %.lr.ph.i.i.i.i.preheader, !dbg !14833

bb.s:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.39.0.i), "nonnull"(ptr %.sroa.45.0.i) ]
  %i.ca = icmp eq ptr %.sroa.39.0.i, %.sroa.45.0.i, !dbg !14834
  br i1 %i.ca, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.t, !dbg !14835

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.39.0.i, i64 8, !dbg !14836
  br label %.lr.ph.i.i.i.i.preheader, !dbg !14837

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.t, %bb.r
  %.sroa.63.2.i.ph = phi i64 [ %.sroa.63.0.i, %bb.t ], [ %.sroa.63.9.i, %bb.r ]
  %.sroa.59.2.i.ph = phi i64 [ %.sroa.59.0.i, %bb.t ], [ %.sroa.59.7.i, %bb.r ]
  %.sroa.55.2.i.ph = phi i64 [ %.sroa.55.0.i, %bb.t ], [ %.sroa.55.7.i, %bb.r ]
  %.sroa.45.2.i.ph = phi ptr [ %.sroa.45.0.i, %bb.t ], [ %.sroa.45.9.i, %bb.r ]
  %.sroa.39.2.i.ph = phi ptr [ %i.cb, %bb.t ], [ %.sroa.39.0.i, %bb.r ] ; 4 uses
  %.sroa.35.2.i.ph = phi ptr [ null, %bb.t ], [ %spec.select136.i, %bb.r ]
  %.sroa.1283.0.i.ph = phi ptr [ %.sroa.39.0.i, %bb.t ], [ %..i.i19.i.i43.i, %bb.r ]
  br label %.lr.ph.i.i.i.i.outer, !dbg !14838

.lr.ph.i.i.i.i.outer:                             ; preds = %.lr.ph.i.i.i.i.preheader, %bb.al
  %.sroa.982.0.i.ph = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i33.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.al ] ; 2 uses
  %.sroa.63.2.i.ph223 = phi i64 [ %.sroa.63.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.63.5.i, %bb.al ] ; 5 uses
  %.sroa.59.2.i.ph224 = phi i64 [ %.sroa.59.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.59.4.i, %bb.al ] ; 3 uses
  %.sroa.55.2.i.ph225 = phi i64 [ %.sroa.55.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.55.4.i, %bb.al ] ; 3 uses
  %.sroa.45.2.i.ph226 = phi ptr [ %.sroa.45.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.45.5.i, %bb.al ] ; 10 uses
  %.sroa.35.2.i.ph228 = phi ptr [ %.sroa.35.2.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %spec.select140.i, %bb.al ] ; 5 uses
  %.sroa.31.2.i.ph = phi i64 [ %.sroa.31.10.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.31.6.i.peel, %bb.al ] ; 6 uses
  %.sroa.27.2.i.ph = phi i64 [ %.sroa.27.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.27.5.i.peel, %bb.al ] ; 4 uses
  %.sroa.23.2.i.ph = phi i64 [ %.sroa.23.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.23.5.i.peel, %bb.al ] ; 4 uses
  %.sroa.13.2.i.ph = phi ptr [ %.sroa.13.10.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.13.6.i.peel, %bb.al ] ; 8 uses
  %.sroa.7.2.i.ph = phi ptr [ %.sroa.7.6.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.4.i.peel, %bb.al ] ; 6 uses
  %.sroa.053.2.i.ph = phi ptr [ %.sroa.053.8.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.053.5.i.peel, %bb.al ] ; 5 uses
  %.sroa.1283.0.i.ph229 = phi ptr [ %.sroa.1283.0.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %..i.i19.i.i.i, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14668), !dbg !14839
  call void @llvm.experimental.noalias.scope.decl(metadata !14669), !dbg !14839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14840, !noalias !14670
  call void @llvm.experimental.noalias.scope.decl(metadata !14671), !dbg !14840
  call void @llvm.experimental.noalias.scope.decl(metadata !14672), !dbg !14840
  call void @llvm.experimental.noalias.scope.decl(metadata !14673), !dbg !14841
  call void @llvm.experimental.noalias.scope.decl(metadata !14674), !dbg !14841
  %.not.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.982.0.i.ph, null, !dbg !14842
  br i1 %.not.i.i.i.i.i.i.i.peel, label %bb.v, label %bb.u, !dbg !14838

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.outer
  %i.cc = load i64, ptr %.sroa.982.0.i.ph, align 8, !dbg !14843, !alias.scope !14675, !noalias !14676, !noundef !3009
  br label %bb.v, !dbg !14844

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i.i.outer
  %.sroa.5.0.i.i.i.i.i.i.i.peel = phi i64 [ %i.cc, %bb.u ], [ undef, %.lr.ph.i.i.i.i.outer ], !dbg !14845
  %.sroa.04.0.i.i.i.i.i.i.i.peel = phi i64 [ 1, %bb.u ], [ 0, %.lr.ph.i.i.i.i.outer ], !dbg !14846
  %.not7.i.i.i.i.i.i.i.peel = icmp eq ptr %.sroa.1283.0.i.ph229, null, !dbg !14847
  br i1 %.not7.i.i.i.i.i.i.i.peel, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, label %bb.w, !dbg !14848

bb.w:                                             ; preds = %bb.v
  %i.cd = load i64, ptr %.sroa.1283.0.i.ph229, align 8, !dbg !14849, !alias.scope !14677, !noalias !14676, !noundef !3009
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, !dbg !14850

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel: ; preds = %bb.w, %bb.v
  %.sroa.05.0.i.i.i.i.i.i.i.peel = phi i64 [ 1, %bb.w ], [ 0, %bb.v ], !dbg !14851
  %.sroa.56.0.i.i.i.i.i.i.i.peel = phi i64 [ %i.cd, %bb.w ], [ undef, %bb.v ], !dbg !14845
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionxE3zipxECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.sroa.04.0.i.i.i.i.i.i.i.peel, i64 %.sroa.5.0.i.i.i.i.i.i.i.peel, i64 noundef %.sroa.05.0.i.i.i.i.i.i.i.peel, i64 %.sroa.56.0.i.i.i.i.i.i.i.peel), !dbg !14852, !noalias !14678
  %i.ce = load i64, ptr %i.h, align 8, !dbg !14840, !range !3185, !noalias !14670, !noundef !3009
  %i.cf = trunc nuw i64 %i.ce to i1, !dbg !14853
  br i1 %i.cf, label %.loopexit, label %bb.x, !dbg !14853

bb.x:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14854, !noalias !14670
  %.not.i.i.i.i.peel = icmp eq ptr %.sroa.053.2.i.ph, null, !dbg !14855
  br i1 %.not.i.i.i.i.peel, label %bb.aa, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, !dbg !14856

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel: ; preds = %bb.x
  %i.cg = icmp eq ptr %.sroa.053.2.i.ph, %.sroa.7.2.i.ph, !dbg !14857 ; 2 uses
  %spec.select138.idx.i.peel = select i1 %i.cg, i64 0, i64 8, !dbg !14858
  %spec.select138.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.053.2.i.ph, i64 %spec.select138.idx.i.peel, !dbg !14858
  %spec.select139.i.peel = select i1 %i.cg, ptr null, ptr %.sroa.053.2.i.ph, !dbg !14858
  %i.ch = icmp eq i64 %.sroa.27.2.i.ph, 0, !dbg !14859
  br i1 %i.ch, label %bb.y, label %._crit_edge.i.i.i.i.i.i.peel, !dbg !14859

bb.y:                                             ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %i.ci = icmp eq i64 %.sroa.31.2.i.ph, 0, !dbg !14860
  br i1 %i.ci, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, !dbg !14860

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel: ; preds = %bb.y
  %.sroa.0.0.i.i.i.i.i.i.i.peel = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.2.i.ph, i64 64), !dbg !14861 ; 2 uses
  %i.cj = sub nuw i64 %.sroa.31.2.i.ph, %.sroa.0.0.i.i.i.i.i.i.i.peel, !dbg !14862
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2.i.ph) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i.peel = load i64, ptr %.sroa.13.2.i.ph, align 1, !dbg !14863, !noalias !14679
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.13.2.i.ph, i64 8, !dbg !14864
  br label %._crit_edge.i.i.i.i.i.i.peel, !dbg !14865

._crit_edge.i.i.i.i.i.i.peel:                     ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel
  %.sroa.31.4.i.peel = phi i64 [ %i.cj, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.31.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.13.4.i.peel = phi ptr [ %i.ck, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.13.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14780
  %i.cl = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.27.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14866
  %i.cm = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i.peel, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i.peel ], [ %.sroa.23.2.i.ph, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14867 ; 2 uses
  %i.cn = trunc i64 %i.cm to i8, !dbg !14867
  %i.co = lshr i64 %i.cm, 1, !dbg !14868
  %i.cp = add i64 %i.cl, -1, !dbg !14866
  %i.cq = and i8 %i.cn, 1, !dbg !14869
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, !dbg !14870

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel: ; preds = %._crit_edge.i.i.i.i.i.i.peel, %bb.y
  %.sroa.31.5.i.peel = phi i64 [ 0, %bb.y ], [ %.sroa.31.4.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.27.4.i.peel = phi i64 [ 0, %bb.y ], [ %i.cp, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.23.4.i.peel = phi i64 [ %.sroa.23.2.i.ph, %bb.y ], [ %i.co, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.13.5.i.peel = phi ptr [ %.sroa.13.2.i.ph, %bb.y ], [ %.sroa.13.4.i.peel, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.0.0.i8.i.i.i.i.i.peel = phi i8 [ 2, %bb.y ], [ %i.cq, %._crit_edge.i.i.i.i.i.i.peel ], !dbg !14871
  %i.cr = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRxECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i.peel, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select139.i.peel), !dbg !14872, !noalias !14680 ; 2 uses
  %i.cs = extractvalue { i8, ptr } %i.cr, 0, !dbg !14873 ; 2 uses
  %.not.i.i.i.i.i.peel = icmp eq i8 %i.cs, 2, !dbg !14874
  br i1 %.not.i.i.i.i.i.peel, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.z, !dbg !14875

bb.z:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel
  %i.ct = extractvalue { i8, ptr } %i.cr, 1, !dbg !14873 ; 2 uses
  %i.cu = trunc nuw i8 %i.cs to i1, !dbg !14876
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ], !noalias !14665
  %..i.i.i.i.i.peel = select i1 %i.cu, ptr %i.ct, ptr null, !dbg !14877
  br label %bb.ac, !dbg !14878

bb.aa:                                            ; preds = %bb.x
  %i.cv = icmp eq ptr %.sroa.7.2.i.ph, %.sroa.13.2.i.ph, !dbg !14879
  br i1 %i.cv, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.ab, !dbg !14880

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.7.2.i.ph, i64 8, !dbg !14881
  br label %bb.ac, !dbg !14882

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sroa.31.6.i.peel = phi i64 [ %.sroa.31.2.i.ph, %bb.ab ], [ %.sroa.31.5.i.peel, %bb.z ], !dbg !14780 ; 2 uses
  %.sroa.27.5.i.peel = phi i64 [ %.sroa.27.2.i.ph, %bb.ab ], [ %.sroa.27.4.i.peel, %bb.z ], !dbg !14780 ; 2 uses
  %.sroa.23.5.i.peel = phi i64 [ %.sroa.23.2.i.ph, %bb.ab ], [ %.sroa.23.4.i.peel, %bb.z ], !dbg !14780 ; 2 uses
  %.sroa.13.6.i.peel = phi ptr [ %.sroa.13.2.i.ph, %bb.ab ], [ %.sroa.13.5.i.peel, %bb.z ], !dbg !14780 ; 2 uses
  %.sroa.7.4.i.peel = phi ptr [ %i.cw, %bb.ab ], [ %.sroa.7.2.i.ph, %bb.z ], !dbg !14780 ; 2 uses
  %.sroa.053.5.i.peel = phi ptr [ null, %bb.ab ], [ %spec.select138.i.peel, %bb.z ], !dbg !14780 ; 2 uses
  %.sroa.3.0.i.pn.i.ph.i.i.i.peel = phi ptr [ %.sroa.7.2.i.ph, %bb.ab ], [ %..i.i.i.i.i.peel, %bb.z ] ; 2 uses
  %.not.i10.i.i.i.peel = icmp eq ptr %.sroa.35.2.i.ph228, null, !dbg !14883
  br i1 %.not.i10.i.i.i.peel, label %bb.ad, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i, !dbg !14884

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %i.cx = icmp eq ptr %.sroa.39.2.i.ph, %.sroa.45.2.i.ph226, !dbg !14885
  br i1 %i.cx, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %.lr.ph.i.i.i.i, !dbg !14886

.lr.ph.i.i.i.i:                                   ; preds = %bb.am, %bb.ad
  %.sroa.982.0.i = phi ptr [ %.sroa.3.0.i.pn.i.ph.i.i.i.peel, %bb.ad ], [ %.sroa.3.0.i.pn.i.ph.i.i.i, %bb.am ], !dbg !14887 ; 2 uses
  %.sroa.31.2.i = phi i64 [ %.sroa.31.6.i.peel, %bb.ad ], [ %.sroa.31.6.i, %bb.am ], !dbg !14780 ; 6 uses
  %.sroa.27.2.i = phi i64 [ %.sroa.27.5.i.peel, %bb.ad ], [ %.sroa.27.5.i, %bb.am ], !dbg !14780 ; 4 uses
  %.sroa.23.2.i = phi i64 [ %.sroa.23.5.i.peel, %bb.ad ], [ %.sroa.23.5.i, %bb.am ], !dbg !14780 ; 4 uses
  %.sroa.13.2.i = phi ptr [ %.sroa.13.6.i.peel, %bb.ad ], [ %.sroa.13.6.i, %bb.am ], !dbg !14780 ; 8 uses
  %.sroa.7.2.i = phi ptr [ %.sroa.7.4.i.peel, %bb.ad ], [ %.sroa.7.4.i, %bb.am ], !dbg !14780 ; 6 uses
  %.sroa.053.2.i = phi ptr [ %.sroa.053.5.i.peel, %bb.ad ], [ %.sroa.053.5.i, %bb.am ], !dbg !14780 ; 5 uses
  %.sroa.1283.0.i = phi ptr [ %.sroa.39.2.i.ph, %bb.ad ], [ %.sroa.39.2.i, %bb.am ], !dbg !14887 ; 2 uses
  %.sroa.39.2.i = getelementptr inbounds nuw i8, ptr %.sroa.1283.0.i, i64 8, !dbg !14888 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14681), !dbg !14839
  call void @llvm.experimental.noalias.scope.decl(metadata !14682), !dbg !14839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14840, !noalias !14683
  call void @llvm.experimental.noalias.scope.decl(metadata !14684), !dbg !14840
  call void @llvm.experimental.noalias.scope.decl(metadata !14685), !dbg !14840
  call void @llvm.experimental.noalias.scope.decl(metadata !14686), !dbg !14841
  call void @llvm.experimental.noalias.scope.decl(metadata !14687), !dbg !14841
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.982.0.i, null, !dbg !14842
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, label %bb.ae, !dbg !14838

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cy = load i64, ptr %.sroa.982.0.i, align 8, !dbg !14843, !alias.scope !14688, !noalias !14676, !noundef !3009
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !14844

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.ae
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.cy, %bb.ae ], [ undef, %.lr.ph.i.i.i.i ], !dbg !14845
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ 1, %bb.ae ], [ 0, %.lr.ph.i.i.i.i ], !dbg !14846
  %i.cz = load i64, ptr %.sroa.1283.0.i, align 8, !dbg !14849, !alias.scope !14689, !noalias !14676, !noundef !3009
  call void @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionxE3zipxECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %.sroa.04.0.i.i.i.i.i.i.i, i64 %.sroa.5.0.i.i.i.i.i.i.i, i64 noundef 1, i64 %i.cz), !dbg !14852, !noalias !14690
  %i.da = load i64, ptr %i.h, align 8, !dbg !14840, !range !3185, !noalias !14683, !noundef !3009
  %i.db = trunc nuw i64 %i.da to i1, !dbg !14853
  br i1 %i.db, label %.loopexit, label %bb.af, !dbg !14853

bb.af:                                            ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14854, !noalias !14683
  %.not.i.i.i.i = icmp eq ptr %.sroa.053.2.i, null, !dbg !14855
  br i1 %.not.i.i.i.i, label %bb.ai, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, !dbg !14856

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.af
  %i.dc = icmp eq ptr %.sroa.053.2.i, %.sroa.7.2.i, !dbg !14857 ; 2 uses
  %spec.select138.idx.i = select i1 %i.dc, i64 0, i64 8, !dbg !14858
  %spec.select138.i = getelementptr inbounds nuw i8, ptr %.sroa.053.2.i, i64 %spec.select138.idx.i, !dbg !14858
  %spec.select139.i = select i1 %i.dc, ptr null, ptr %.sroa.053.2.i, !dbg !14858
  %i.dd = icmp eq i64 %.sroa.27.2.i, 0, !dbg !14859
  br i1 %i.dd, label %bb.ag, label %._crit_edge.i.i.i.i.i.i, !dbg !14859

bb.ag:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %i.de = icmp eq i64 %.sroa.31.2.i, 0, !dbg !14860
  br i1 %i.de, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, !dbg !14860

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i: ; preds = %bb.ag
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.31.2.i, i64 64), !dbg !14861 ; 2 uses
  %i.df = sub nuw i64 %.sroa.31.2.i, %.sroa.0.0.i.i.i.i.i.i.i, !dbg !14862
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2.i) ]
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.13.2.i, align 1, !dbg !14863, !noalias !14679
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.13.2.i, i64 8, !dbg !14864
  br label %._crit_edge.i.i.i.i.i.i, !dbg !14865

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.31.4.i = phi i64 [ %i.df, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.31.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !14780
  %.sroa.13.4.i = phi ptr [ %i.dg, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.13.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !14780
  %i.dh = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.27.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !14866
  %i.di = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.i ], [ %.sroa.23.2.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], !dbg !14867 ; 2 uses
  %i.dj = trunc i64 %i.di to i8, !dbg !14867
  %i.dk = lshr i64 %i.di, 1, !dbg !14868
  %i.dl = add i64 %i.dh, -1, !dbg !14866
  %i.dm = and i8 %i.dj, 1, !dbg !14869
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !14870

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.ag
  %.sroa.31.5.i = phi i64 [ 0, %bb.ag ], [ %.sroa.31.4.i, %._crit_edge.i.i.i.i.i.i ], !dbg !14780
  %.sroa.27.4.i = phi i64 [ 0, %bb.ag ], [ %i.dl, %._crit_edge.i.i.i.i.i.i ], !dbg !14780
  %.sroa.23.4.i = phi i64 [ %.sroa.23.2.i, %bb.ag ], [ %i.dk, %._crit_edge.i.i.i.i.i.i ], !dbg !14780
  %.sroa.13.5.i = phi ptr [ %.sroa.13.2.i, %bb.ag ], [ %.sroa.13.4.i, %._crit_edge.i.i.i.i.i.i ], !dbg !14780
  %.sroa.0.0.i8.i.i.i.i.i = phi i8 [ 2, %bb.ag ], [ %i.dm, %._crit_edge.i.i.i.i.i.i ], !dbg !14871
  %i.dn = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRxECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select139.i), !dbg !14872, !noalias !14680 ; 2 uses
  %i.do = extractvalue { i8, ptr } %i.dn, 0, !dbg !14873 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.do, 2, !dbg !14874
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.ah, !dbg !14875

bb.ah:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.dp = extractvalue { i8, ptr } %i.dn, 1, !dbg !14873 ; 2 uses
  %i.dq = trunc nuw i8 %i.do to i1, !dbg !14876
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dp) ], !noalias !14665
  %..i.i.i.i.i = select i1 %i.dq, ptr %i.dp, ptr null, !dbg !14877
  br label %bb.am, !dbg !14878

bb.ai:                                            ; preds = %bb.af
  %i.dr = icmp eq ptr %.sroa.7.2.i, %.sroa.13.2.i, !dbg !14879
  br i1 %i.dr, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.aj, !dbg !14880

bb.aj:                                            ; preds = %bb.ai
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.7.2.i, i64 8, !dbg !14881
  br label %bb.am, !dbg !14882

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i: ; preds = %bb.ac
  %i.dt = icmp eq ptr %.sroa.35.2.i.ph228, %.sroa.39.2.i.ph, !dbg !14889 ; 2 uses
  %spec.select140.idx.i = select i1 %i.dt, i64 0, i64 8, !dbg !14890
  %spec.select140.i = getelementptr inbounds nuw i8, ptr %.sroa.35.2.i.ph228, i64 %spec.select140.idx.i, !dbg !14890
  %spec.select141.i = select i1 %i.dt, ptr null, ptr %.sroa.35.2.i.ph228, !dbg !14890
  %i.du = icmp eq i64 %.sroa.59.2.i.ph224, 0, !dbg !14891
  br i1 %i.du, label %bb.ak, label %._crit_edge.i.i.i13.i.i.i, !dbg !14891

bb.ak:                                            ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %i.dv = icmp eq i64 %.sroa.63.2.i.ph223, 0, !dbg !14892
  br i1 %i.dv, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, !dbg !14892

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i: ; preds = %bb.ak
  %.sroa.0.0.i.i.i.i25.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.63.2.i.ph223, i64 64), !dbg !14893 ; 2 uses
  %i.dw = sub nuw i64 %.sroa.63.2.i.ph223, %.sroa.0.0.i.i.i.i25.i.i.i, !dbg !14894
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %.sroa.02.0.copyload.i.i.i26.i.i.i = load i64, ptr %.sroa.45.2.i.ph226, align 1, !dbg !14895, !noalias !14691
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.45.2.i.ph226, i64 8, !dbg !14896
  br label %._crit_edge.i.i.i13.i.i.i, !dbg !14897

._crit_edge.i.i.i13.i.i.i:                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i
  %.sroa.63.4.i = phi i64 [ %i.dw, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.63.2.i.ph223, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !14780
  %.sroa.45.4.i = phi ptr [ %i.dx, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.45.2.i.ph226, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !14780
  %i.dy = phi i64 [ %.sroa.0.0.i.i.i.i25.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.59.2.i.ph224, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !14898
  %i.dz = phi i64 [ %.sroa.02.0.copyload.i.i.i26.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskY9G75ZWc4U_11polars_expr.exit.i.i.i24.i.i.i ], [ %.sroa.55.2.i.ph225, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i11.i.i.i ], !dbg !14899 ; 2 uses
  %i.ea = trunc i64 %i.dz to i8, !dbg !14899
  %i.eb = lshr i64 %i.dz, 1, !dbg !14900
  %i.ec = add i64 %i.dy, -1, !dbg !14898
  %i.ed = and i8 %i.ea, 1, !dbg !14901
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i, !dbg !14902

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i: ; preds = %._crit_edge.i.i.i13.i.i.i, %bb.ak
  %.sroa.63.5.i = phi i64 [ 0, %bb.ak ], [ %.sroa.63.4.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !14780
  %.sroa.59.4.i = phi i64 [ 0, %bb.ak ], [ %i.ec, %._crit_edge.i.i.i13.i.i.i ], !dbg !14780
  %.sroa.55.4.i = phi i64 [ %.sroa.55.2.i.ph225, %bb.ak ], [ %i.eb, %._crit_edge.i.i.i13.i.i.i ], !dbg !14780
  %.sroa.45.5.i = phi ptr [ %.sroa.45.2.i.ph226, %bb.ak ], [ %.sroa.45.4.i, %._crit_edge.i.i.i13.i.i.i ], !dbg !14780
  %.sroa.0.0.i8.i.i17.i.i.i = phi i8 [ 2, %bb.ak ], [ %i.ed, %._crit_edge.i.i.i13.i.i.i ], !dbg !14903
  %i.ee = call { i8, ptr } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipRxECskY9G75ZWc4U_11polars_expr(i8 noundef %.sroa.0.0.i8.i.i17.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %spec.select141.i), !dbg !14904, !noalias !14692 ; 2 uses
  %i.ef = extractvalue { i8, ptr } %i.ee, 0, !dbg !14905 ; 2 uses
  %.not.i.i18.i.i.i = icmp eq i8 %i.ef, 2, !dbg !14906
  br i1 %.not.i.i18.i.i.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %bb.al, !dbg !14907

bb.al:                                            ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %i.eg = extractvalue { i8, ptr } %i.ee, 1, !dbg !14905 ; 2 uses
  %i.eh = trunc nuw i8 %i.ef to i1, !dbg !14908
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eg) ], !noalias !14665
  %..i.i19.i.i.i = select i1 %i.eh, ptr %i.eg, ptr null, !dbg !14909
  br label %.lr.ph.i.i.i.i.outer, !dbg !14910

bb.am:                                            ; preds = %bb.ah, %bb.aj
  %.sroa.31.6.i = phi i64 [ %.sroa.31.2.i, %bb.aj ], [ %.sroa.31.5.i, %bb.ah ], !dbg !14780
  %.sroa.27.5.i = phi i64 [ %.sroa.27.2.i, %bb.aj ], [ %.sroa.27.4.i, %bb.ah ], !dbg !14780
  %.sroa.23.5.i = phi i64 [ %.sroa.23.2.i, %bb.aj ], [ %.sroa.23.4.i, %bb.ah ], !dbg !14780
  %.sroa.13.6.i = phi ptr [ %.sroa.13.2.i, %bb.aj ], [ %.sroa.13.5.i, %bb.ah ], !dbg !14780
  %.sroa.7.4.i = phi ptr [ %i.ds, %bb.aj ], [ %.sroa.7.2.i, %bb.ah ], !dbg !14780
  %.sroa.053.5.i = phi ptr [ null, %bb.aj ], [ %spec.select138.i, %bb.ah ], !dbg !14780
  %.sroa.3.0.i.pn.i.ph.i.i.i = phi ptr [ %.sroa.7.2.i, %bb.aj ], [ %..i.i.i.i.i, %bb.ah ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.45.2.i.ph226) ]
  %i.ei = icmp eq ptr %.sroa.39.2.i, %.sroa.45.2.i.ph226, !dbg !14885
  br i1 %i.ei, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, label %.lr.ph.i.i.i.i, !dbg !14886, !llvm.loop !14552

.loopexit:                                        ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i
  %.sroa.39.2.i.lcssa = phi ptr [ %.sroa.39.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.39.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.35.2.i.lcssa = phi ptr [ null, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.35.2.i.ph228, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.31.2.i.lcssa = phi i64 [ %.sroa.31.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.31.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.27.2.i.lcssa = phi i64 [ %.sroa.27.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.27.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.23.2.i.lcssa = phi i64 [ %.sroa.23.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.23.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.13.2.i.lcssa = phi ptr [ %.sroa.13.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.13.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.7.2.i.lcssa = phi ptr [ %.sroa.7.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.7.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14780
  %.sroa.053.2.i.lcssa = phi ptr [ %.sroa.053.2.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i ], [ %.sroa.053.2.i.ph, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxE0INtB7_5FnMutTTINtNtBb_6option6OptionRxEB22_EEE8call_mutCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i.peel ], !dbg !14780
  %i.ej = load i64, ptr %i.an, align 8, !dbg !14911, !noalias !14683, !noundef !3009
  %i.ek = load i64, ptr %i.ao, align 8, !dbg !14911, !noalias !14683, !noundef !3009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14854, !noalias !14683
  %i.el = icmp ugt i64 %.sroa.0.0.i, 127, !dbg !14912
  br i1 %i.el, label %bb.at, label %bb.ax, !dbg !14912

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i: ; preds = %bb.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i40.i, %bb.n, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i29.i, %bb.ad, %bb.aa, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.peel, %bb.am, %bb.ai, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i16.i.i.i
  %.not.i = icmp eq i64 %.sroa.0.0.i, 0, !dbg !14913
  %i.em = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>, !dbg !14779
  %i.en = insertelement <2 x double> %i.em, double %.sroa.34.1, i64 1, !dbg !14779 ; 3 uses
  %i.eo = extractelement <2 x double> %i.at, i64 0, !dbg !14913 ; 4 uses
  br i1 %.not.i, label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryxxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtB1d_5slice4iter4IterxENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrxxE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.an, !dbg !14913

bb.an:                                            ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i
  %i.ep = icmp ult i64 %.sroa.0.0.i, 129
  br i1 %i.ep, label %bb.ap, label %bb.ao, !dbg !14914, !prof !3147

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.0.0.i, i64 noundef 128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #43, !dbg !14915, !noalias !14661
  unreachable

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14916, !noalias !14693
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef range(i64 1, 129) %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef range(i64 1, 129) %.sroa.0.0.i), !dbg !14916, !noalias !14661
  call void @llvm.experimental.noalias.scope.decl(metadata !14694), !dbg !14917
  %i.eq = load double, ptr %i.g, align 8, !dbg !14918, !alias.scope !14695, !noalias !14693, !noundef !3009 ; 6 uses
  %i.er = fcmp oeq double %i.eq, 0.000000e+00, !dbg !14918
  br i1 %i.er, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit.i, label %bb.aq, !dbg !14918

bb.aq:                                            ; preds = %bb.ap
  %i.es = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !14919
  br i1 %i.es, label %bb.as, label %bb.ar, !dbg !14919

bb.ar:                                            ; preds = %bb.aq
  %i.et = fadd double %.sroa.0.1, %i.eq, !dbg !14920 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !14921
  %i.ev = load double, ptr %i.eu, align 8, !dbg !14921, !alias.scope !14695, !noalias !14693, !noundef !3009 ; 2 uses
  %i.ew = fsub double %i.ev, %i.eo, !dbg !14921   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !14922
  %i.ey = load double, ptr %i.ex, align 8, !dbg !14922, !alias.scope !14695, !noalias !14693, !noundef !3009 ; 2 uses
  %i.ez = extractelement <2 x double> %i.at, i64 1, !dbg !14922
  %i.fa = fsub double %i.ey, %i.ez, !dbg !14922   ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !14923
  %i.fc = load double, ptr %i.fb, align 8, !dbg !14923, !alias.scope !14695, !noalias !14693, !noundef !3009
  %i.fd = fdiv double %i.eq, %i.et, !dbg !14924   ; 2 uses
  %i.fe = fmul double %i.fd, %i.ew, !dbg !14925
  %i.ff = fadd double %i.eo, %i.fe, !dbg !14926   ; 2 uses
  %i.fg = fmul double %i.fd, %i.fa, !dbg !14927
  %i.fh = fsub double %i.ev, %i.ff, !dbg !14928
  %i.fi = insertelement <2 x double> poison, double %i.fg, i64 0, !dbg !14929
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !14930
  %i.fk = fmul double %i.eq, %i.fh, !dbg !14931   ; 2 uses
  %i.fl = fmul double %i.ew, %i.fk, !dbg !14931
  %i.fm = fadd double %i.fc, %i.fl, !dbg !14923
  %i.fn = insertelement <2 x double> %i.fi, double %i.fm, i64 1, !dbg !14929
  %i.fo = fadd <2 x double> %i.en, %i.fn, !dbg !14929 ; 2 uses
  %i.fp = load <2 x double>, ptr %i.fj, align 8, !dbg !14930, !alias.scope !14695, !noalias !14693
  %i.fq = extractelement <2 x double> %i.fo, i64 0, !dbg !14932
  %i.fr = fsub double %i.ey, %i.fq, !dbg !14932
  %i.fs = fmul double %i.eq, %i.fr, !dbg !14933
  %i.ft = insertelement <2 x double> poison, double %i.fa, i64 0, !dbg !14934
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !14934
  %i.fv = insertelement <2 x double> poison, double %i.fk, i64 0, !dbg !14934
  %i.fw = insertelement <2 x double> %i.fv, double %i.fs, i64 1, !dbg !14934
  %i.fx = fmul <2 x double> %i.fu, %i.fw, !dbg !14934
  %i.fy = fadd <2 x double> %i.fp, %i.fx, !dbg !14930
  %i.fz = fadd <2 x double> %i.as, %i.fy, !dbg !14935
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !14936

bb.as:                                            ; preds = %bb.aq
  %.sroa.16.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !14937
  %.sroa.16.0.copyload22 = load double, ptr %.sroa.16.0..sroa_idx21, align 8, !dbg !14937, !alias.scope !14696, !noalias !14697
  %.sroa.25.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !14937
  %i.ga = load <2 x double>, ptr %.sroa.25.0..sroa_idx32, align 8, !dbg !14937, !alias.scope !14696, !noalias !14697
  %.sroa.43.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !14937
  %i.gb = load <2 x double>, ptr %.sroa.43.0..sroa_idx54, align 8, !dbg !14937, !alias.scope !14696, !noalias !14697
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit.i, !dbg !14938

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.as, %bb.ar, %bb.ap
  %.sroa.16.2 = phi double [ %i.eo, %bb.ap ], [ %.sroa.16.0.copyload22, %bb.as ], [ %i.ff, %bb.ar ], !dbg !14939
  %.sroa.0.2 = phi double [ %.sroa.0.1, %bb.ap ], [ %i.eq, %bb.as ], [ %i.et, %bb.ar ], !dbg !14939
  %i.gc = phi <2 x double> [ %i.en, %bb.ap ], [ %i.ga, %bb.as ], [ %i.fo, %bb.ar ], !dbg !14939
  %i.gd = phi <2 x double> [ %i.as, %bb.ap ], [ %i.gb, %bb.as ], [ %i.fz, %bb.ar ], !dbg !14939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14940, !noalias !14693
  br label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryxxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtB1d_5slice4iter4IterxENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrxxE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !14941

bb.at:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14942, !noalias !14698
  call void @_RNvMs0_NtCslFlrwjHoTci_14polars_compute6momentNtB5_12PearsonState3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.j, i64 noundef 128, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 128), !dbg !14942, !noalias !14661
  call void @llvm.experimental.noalias.scope.decl(metadata !14699), !dbg !14943
  %i.ge = load double, ptr %i.f, align 8, !dbg !14944, !alias.scope !14700, !noalias !14698, !noundef !3009 ; 5 uses
  %i.gf = fcmp oeq double %i.ge, 0.000000e+00, !dbg !14944
  br i1 %i.gf, label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, label %bb.au, !dbg !14944

bb.au:                                            ; preds = %bb.at
  %i.gg = fcmp oeq double %.sroa.0.1, 0.000000e+00, !dbg !14945
  br i1 %i.gg, label %bb.aw, label %bb.av, !dbg !14945

bb.av:                                            ; preds = %bb.au
  %i.gh = fadd double %.sroa.0.1, %i.ge, !dbg !14946 ; 2 uses
  %i.gi = fdiv double %i.ge, %i.gh, !dbg !14947
  %i.gj = load double, ptr %i.aq, align 8, !dbg !14948, !alias.scope !14700, !noalias !14698, !noundef !3009
  %i.gk = load <2 x double>, ptr %i.ap, align 8, !dbg !14949, !alias.scope !14700, !noalias !14698 ; 2 uses
  %i.gl = fsub <2 x double> %i.gk, %i.at, !dbg !14949 ; 3 uses
  %i.gm = insertelement <2 x double> poison, double %i.gi, i64 0, !dbg !14950
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !14950
  %i.go = fmul <2 x double> %i.gn, %i.gl, !dbg !14950
  %i.gp = fadd <2 x double> %i.at, %i.go, !dbg !14951 ; 2 uses
  %i.gq = fsub <2 x double> %i.gk, %i.gp, !dbg !14952
  %i.gr = insertelement <2 x double> poison, double %i.ge, i64 0, !dbg !14953
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !14953
  %i.gt = fmul <2 x double> %i.gs, %i.gq, !dbg !14953 ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.gl, %i.gt, !dbg !14953
  %i.gu = extractelement <2 x double> %foldExtExtBinop, i64 0, !dbg !14953
  %i.gv = fadd double %i.gj, %i.gu, !dbg !14948
  %i.gw = fadd double %.sroa.34.1, %i.gv, !dbg !14954
  %i.gx = load <2 x double>, ptr %i.ar, align 8, !dbg !14955, !alias.scope !14700, !noalias !14698
  %i.gy = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> <i32 1, i32 1>, !dbg !14956
  %i.gz = fmul <2 x double> %i.gy, %i.gt, !dbg !14956
  %i.ha = fadd <2 x double> %i.gx, %i.gz, !dbg !14955
  %i.hb = fadd <2 x double> %i.as, %i.ha, !dbg !14957
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !14958

bb.aw:                                            ; preds = %bb.au
  %i.hc = load <2 x double>, ptr %i.ap, align 8, !dbg !14959, !alias.scope !14701, !noalias !14702
  %.sroa.34.0.copyload46 = load double, ptr %i.aq, align 8, !dbg !14959, !alias.scope !14701, !noalias !14702
  %i.hd = load <2 x double>, ptr %i.ar, align 8, !dbg !14959, !alias.scope !14701, !noalias !14702
  br label %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, !dbg !14960

_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit22.i: ; preds = %bb.aw, %bb.av, %bb.at
  %.sroa.34.4 = phi double [ %.sroa.34.1, %bb.at ], [ %.sroa.34.0.copyload46, %bb.aw ], [ %i.gw, %bb.av ], !dbg !14939
  %.sroa.0.4 = phi double [ %.sroa.0.1, %bb.at ], [ %i.ge, %bb.aw ], [ %i.gh, %bb.av ], !dbg !14939
  %i.he = phi <2 x double> [ %i.as, %bb.at ], [ %i.hd, %bb.aw ], [ %i.hb, %bb.av ], !dbg !14939
  %i.hf = phi <2 x double> [ %i.at, %bb.at ], [ %i.hc, %bb.aw ], [ %i.gp, %bb.av ], !dbg !14939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14961, !noalias !14698
  br label %bb.ax, !dbg !14962

bb.ax:                                            ; preds = %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit22.i, %.loopexit
  %.sroa.34.3 = phi double [ %.sroa.34.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.34.1, %.loopexit ], !dbg !14779
  %.sroa.0.3 = phi double [ %.sroa.0.4, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.0.1, %.loopexit ], !dbg !14779
  %.sroa.0.1.i12 = phi i64 [ 0, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %.sroa.0.0.i, %.loopexit ], !dbg !14781 ; 3 uses
  %i.hg = phi <2 x double> [ %i.he, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %i.as, %.loopexit ], !dbg !14779
  %i.hh = phi <2 x double> [ %i.hf, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit22.i ], [ %i.at, %.loopexit ], !dbg !14779
  %i.hi = sitofp i64 %i.ej to double, !dbg !14963
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.1.i12, !dbg !14964
  store double %i.hi, ptr %i.hj, align 8, !dbg !14964, !noalias !14661
  %i.hk = sitofp i64 %i.ek to double, !dbg !14965
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sroa.0.1.i12, !dbg !14966
  store double %i.hk, ptr %i.hl, align 8, !dbg !14966, !noalias !14661
  %i.hm = add nuw nsw i64 %.sroa.0.1.i12, 1, !dbg !14967
  br label %bb.k, !dbg !14778

_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryxxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB19_3zip3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtB1d_5slice4iter4IterxENtNtB2s_8iterator10BitmapIterEB2n_ENCINvB2_12pearson_corrxxE0ENCB4I_s_0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.16.5 = phi double [ %i.eo, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %.sroa.16.2, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !14779
  %.sroa.0.5 = phi double [ %.sroa.0.1, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %.sroa.0.2, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !14779
  %i.hn = phi <2 x double> [ %i.en, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %i.gc, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !14779
  %i.ho = phi <2 x double> [ %i.as, %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtBa_5slice4iter4IterxENtNtB10_8iterator10BitmapIterEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit52.thread.i ], [ %i.gd, %_RNCINvNtCslFlrwjHoTci_14polars_compute6moment12pearson_corrxxEs_0CskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !14779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14968, !noalias !14661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14969, !noalias !14661
  br label %bb.bi, !dbg !14970

_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread: ; preds = %bb.g, %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !14971
  %i.hq = load ptr, ptr %i.hp, align 8, !dbg !14971, !nonnull !3009, !noundef !3009 ; 2 uses
  %i.hr = load i64, ptr %i.m, align 8, !dbg !14972, !noundef !3009
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hr, !dbg !14973
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !14974
  %i.hu = load ptr, ptr %i.ht, align 8, !dbg !14974, !nonnull !3009, !noundef !3009 ; 2 uses
  %i.hv = load i64, ptr %i.o, align 8, !dbg !14975, !noundef !3009
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hv, !dbg !14976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14977, !noalias !14719
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterxEEBW_EINtB5_7ZipImplBW_BW_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hs, ptr noundef nonnull %i.hu, ptr noundef nonnull %i.hw), !dbg !14978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14979, !noalias !14719
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.e, i8 0, i64 1024, i1 false), !noalias !14719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14980, !noalias !14719
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.d, i8 0, i64 1024, i1 false), !noalias !14719
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.hz = load i64, ptr %i.hx, align 8, !dbg !14981, !alias.scope !14720, !noalias !14719, !noundef !3009 ; 2 uses
  %i.ia = load i64, ptr %i.hy, align 8, !dbg !14982, !alias.scope !14720, !noalias !14719, !noundef !3009
  %i.ib = icmp ult i64 %i.hz, %i.ia, !dbg !14981
  br i1 %i.ib, label %.lr.ph.i, label %_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterxEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i, !dbg !14981

_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterxEEBV_ENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread.i: ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14983, !noalias !14719
  br label %_RINvNtCslFlrwjHoTci_14polars_compute6moment21chunk_as_float_binaryxxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtB19_6copied6CopiedINtNtNtB1d_5slice4iter4IterxEEB1S_ENCINvB2_12pearson_corrxxEs0_0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !14984

.lr.ph.i:                                         ; preds = %_RNvYINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxENtB7_5Array10null_countCskY9G75ZWc4U_11polars_expr.exit11.thread
end_hunk_5
