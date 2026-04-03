begin_hunk_0
  br i1 %i.bd, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10init_frontCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %._RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10init_frontCs9rVkZwOUgsI_13deltalake_aws.exit.i_crit_edge, %._crit_edge.i.i
  %.sroa.37.0.copyload.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ %.sroa.37.0.copyload.i.i.pre, %._RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10init_frontCs9rVkZwOUgsI_13deltalake_aws.exit.i_crit_edge ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ %.sroa.26.0.copyload.i.i.pre, %._RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10init_frontCs9rVkZwOUgsI_13deltalake_aws.exit.i_crit_edge ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.013.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.am, %._RNvMsc_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10init_frontCs9rVkZwOUgsI_13deltalake_aws.exit.i_crit_edge ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
