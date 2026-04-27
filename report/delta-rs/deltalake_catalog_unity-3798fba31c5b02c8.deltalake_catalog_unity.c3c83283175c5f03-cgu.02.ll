inline.NumInlined: 553
inline.NumDeleted: 272
begin_hunk_0_@_RINvXs_NtNtCs7kfTgH1B6X1_10async_lock6rwlock3rawNtB5_7RawReadNtCs4IjZJRxZMkw_23event_listener_strategy19EventListenerFuture18poll_with_strategyNtBZ_11NonBlockingECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i, %bb.j
  %.sroa.026.1.i.i = phi ptr [ %i.u, %bb.j ], [ %i.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %.sroa.5.0..sroa_idx.i.i, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i.i ]
  %i.ag = call fastcc noundef i64 @_RINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyNtNtB7_6notify6NotifyE0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %.sroa.026.1.i.i, i64 noundef %i.t) ; 0 uses
  %i.ah = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
end_hunk_0
begin_hunk_1_@_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event6listenCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

_RNvMs5_CseKAYRfgxGTE_14event_listenerNtB5_5Event5innerCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.026.1.i = phi ptr [ %i.e, %bb.a ], [ %i.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ %.sroa.5.0..sroa_idx.i, %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i ] ; 3 uses
  %i.q = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtCseKAYRfgxGTE_14event_listener5InneruEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef %.sroa.026.1.i)
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %.sroa.026.1.i, i64 %i.r ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.1.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.u = icmp slt i64 %i.t, 0
end_hunk_1
