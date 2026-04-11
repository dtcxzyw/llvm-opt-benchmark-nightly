inline.NumInlined: 553
inline.NumDeleted: 272
begin_hunk_0_@_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB3U_7HashMapB13_B1Y_E21insert_if_not_present0ECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB3U_7HashMapB13_B1Y_E21insert_if_not_present0ECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

bb.j:                                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread45._crit_edge, %bb.h
  %.sroa.018.0.copyload = phi i64 [ %.sroa.018.0.copyload.pre, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread45._crit_edge ], [ %.sroa.018.0.copyload.pre66, %bb.h ] ; 3 uses
  %.sroa.4.0.copyload = load i64, ptr %i.n, align 8 ; 3 uses
  %.sroa.7.0.copyload = load i64, ptr %i.m, align 8 ; 2 uses
  %i.ab = add nsw i64 %.sroa.018.0.copyload, -2
  %.inv.i = icmp samesign ult i64 %.sroa.018.0.copyload, 2
  %i.ac = select i1 %.inv.i, i64 2, i64 %i.ab
end_hunk_1
begin_hunk_2_@_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB3U_7HashMapB13_B1Y_E21insert_if_not_present0ECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br label %bb.z

bb.x:                                             ; preds = %bb.i, %bb.z
  %.sroa.02.0 = phi ptr [ %i.ba, %bb.z ], [ %i.n, %bb.i ]
  %.val = load ptr, ptr %i.y, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.sroa.02.0.val = load ptr, ptr %.sroa.02.0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.aw = icmp eq ptr %.val, %.sroa.02.0.val
end_hunk_2
begin_hunk_3_@_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB3U_7HashMapB13_B1Y_E21insert_if_not_present0ECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br i1 %i.az, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.backedge.backedge

bb.z:                                             ; preds = %bb.i, %bb.w
  %.sroa.06.0 = phi ptr [ %i.m, %bb.w ], [ %i.n, %bb.i ]
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvXsn_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops5deref5Deref5derefCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.06.0)
          to label %bb.x unwind label %.loopexit

end_hunk_3
begin_hunk_4_@_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE21insert_if_not_presentNCNvMs_NtBa_7segmentINtB3U_7HashMapB13_B1Y_E21insert_if_not_present0ECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.ac:                                            ; preds = %_RNvMs5_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_19InsertOrModifyStateINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1f_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEENCNvMs_NtB9_7segmentINtB3D_7HashMapB1a_B25_E21insert_if_not_present0E18into_insert_bucketCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.bj = load i64, ptr %i.q, align 8, !noundef !3
  store i64 3, ptr %4, align 8
  store i64 %i.bj, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.backedge.backedge

end_hunk_4
