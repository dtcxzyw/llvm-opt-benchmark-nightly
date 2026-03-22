begin_hunk_0

.lr.ph:                                           ; preds = %.lr.ph29, %.split24.us
  %11 = phi ptr [ %39, %.split24.us ], [ %10, %.lr.ph29 ] ; [#uses=3 type=ptr]
  %storemerge26 = phi i64 [ %13, %.split24.us ], [ %9, %.lr.ph29 ] ; [#uses=1 type=i64]
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 24 ; [#uses=1 type=ptr]
  %13 = load atomic i64, ptr %12 monotonic, align 8 ; [#uses=3 type=i64]
  %14 = load ptr, ptr %11, align 8, !nonnull !16, !noundef !16 ; [#uses=3 type=ptr]
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; [#uses=1 type=ptr]
  %16 = load i64, ptr %15, align 8, !noundef !16  ; [#uses=1 type=i64]
  %17 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %16 ; [#uses=2 type=ptr]
  %18 = icmp ult i64 %13, 8                       ; [#uses=1 type=i1]
  br i1 %18, label %.split.us, label %.split

.split.us:                                        ; preds = %.lr.ph, %.split.us.backedge
end_hunk_0
begin_hunk_1

.split24.us:                                      ; preds = %.split, %.split.us
  call void @_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB2_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1r_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB2m_10ValueEntryB1U_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3p_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNvNtCsee2lL6QbnsJ_15crossbeam_epoch5guard11unprotected11UNPROTECTED, i64 noundef %storemerge26)
  store i64 %13, ptr %2, align 8
  %39 = call noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3U_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) ; [#uses=2 type=ptr]
  %.not = icmp eq ptr %39, null                   ; [#uses=1 type=i1]
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_1
begin_hunk_2

.lr.ph:                                           ; preds = %.lr.ph29, %.split24.us
  %11 = phi ptr [ %39, %.split24.us ], [ %10, %.lr.ph29 ] ; [#uses=3 type=ptr]
  %storemerge26 = phi i64 [ %13, %.split24.us ], [ %9, %.lr.ph29 ] ; [#uses=1 type=i64]
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 24 ; [#uses=1 type=ptr]
  %13 = load atomic i64, ptr %12 monotonic, align 8 ; [#uses=3 type=i64]
  %14 = load ptr, ptr %11, align 8, !nonnull !16, !noundef !16 ; [#uses=3 type=ptr]
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; [#uses=1 type=ptr]
  %16 = load i64, ptr %15, align 8, !noundef !16  ; [#uses=1 type=i64]
  %17 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %16 ; [#uses=2 type=ptr]
  %18 = icmp ult i64 %13, 8                       ; [#uses=1 type=i1]
  br i1 %18, label %.split.us, label %.split

.split.us:                                        ; preds = %.lr.ph, %.split.us.backedge
end_hunk_2
begin_hunk_3

.split24.us:                                      ; preds = %.split, %.split.us
  call void @_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB2_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1r_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNvNtCsee2lL6QbnsJ_15crossbeam_epoch5guard11unprotected11UNPROTECTED, i64 noundef %storemerge26)
  store i64 %13, ptr %2, align 8
  %39 = call noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE6as_refCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) ; [#uses=2 type=ptr]
  %.not = icmp eq ptr %39, null                   ; [#uses=1 type=i1]
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_3
begin_hunk_4

.lr.ph:                                           ; preds = %.lr.ph29, %.split24.us
  %11 = phi ptr [ %39, %.split24.us ], [ %10, %.lr.ph29 ] ; [#uses=3 type=ptr]
  %storemerge26 = phi i64 [ %13, %.split24.us ], [ %9, %.lr.ph29 ] ; [#uses=1 type=i64]
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 24 ; [#uses=1 type=ptr]
  %13 = load atomic i64, ptr %12 monotonic, align 8 ; [#uses=3 type=i64]
  %14 = load ptr, ptr %11, align 8, !nonnull !16, !noundef !16 ; [#uses=3 type=ptr]
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 8 ; [#uses=1 type=ptr]
  %16 = load i64, ptr %15, align 8, !noundef !16  ; [#uses=1 type=i64]
  %17 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %16 ; [#uses=2 type=ptr]
  %18 = icmp ult i64 %13, 8                       ; [#uses=1 type=i1]
  br i1 %18, label %.split.us, label %.split

.split.us:                                        ; preds = %.lr.ph, %.split.us.backedge
end_hunk_4
begin_hunk_5

.split24.us:                                      ; preds = %.split, %.split.us
  call void @_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB2_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB1m_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2K_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNvNtCsee2lL6QbnsJ_15crossbeam_epoch5guard11unprotected11UNPROTECTED, i64 noundef %storemerge26)
  store i64 %13, ptr %2, align 8
  %39 = call noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1Q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6as_refB3f_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) ; [#uses=2 type=ptr]
  %.not = icmp eq ptr %39, null                   ; [#uses=1 type=i1]
  br i1 %.not, label %._crit_edge, label %.lr.ph
end_hunk_5
