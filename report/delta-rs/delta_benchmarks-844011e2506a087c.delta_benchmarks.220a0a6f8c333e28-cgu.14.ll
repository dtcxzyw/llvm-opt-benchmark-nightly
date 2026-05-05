inline.NumInlined: 5477
inline.NumDeleted: 1897
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderEECs2VbMhdeEr66_16delta_benchmarks:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i.i: ; preds = %.lr.ph3
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 128
  %i.d = icmp eq i64 %lsr.iv, %lsr.iv.next10
  br i1 %i.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderEECs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i.i
  %lsr.iv14 = phi ptr [ %lsr.iv12, %.lr.ph3.preheader ], [ %scevgep15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i.i ] ; 2 uses
  %lsr.iv9 = phi i64 [ %.24.val, %.lr.ph3.preheader ], [ %lsr.iv.next10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i.i ]
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %lsr.iv14)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i.i unwind label %bb.c, !noalias !2792
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs2VbMhdeEr66_16delta_benchmarks:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i.i: ; preds = %.lr.ph3
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 128
  %i.d = icmp eq i64 %lsr.iv, %lsr.iv.next10
  br i1 %i.d, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderEECs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i.i
  %lsr.iv14 = phi ptr [ %lsr.iv12, %.lr.ph3.preheader ], [ %scevgep15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i.i ] ; 2 uses
  %lsr.iv9 = phi i64 [ %.24.val, %.lr.ph3.preheader ], [ %lsr.iv.next10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i.i ]
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %lsr.iv14)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i.i unwind label %bb.c, !noalias !2795
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderECs2VbMhdeEr66_16delta_benchmarks:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i: ; preds = %.lr.ph4
  %lsr.iv.next11 = add i64 %lsr.iv10, -1          ; 2 uses
  %scevgep16 = getelementptr i8, ptr %lsr.iv15, i64 128
  %i.e = icmp eq i64 %lsr.iv, %lsr.iv.next11
  br i1 %i.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.loopexit, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.f = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory6schema20MemorySchemaProviderECs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %.lr.ph4

.lr.ph4:                                          ; preds = %.lr.ph4.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i
  %lsr.iv15 = phi ptr [ %lsr.iv13, %.lr.ph4.preheader ], [ %scevgep16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i ] ; 2 uses
  %lsr.iv10 = phi i64 [ %.val1, %.lr.ph4.preheader ], [ %lsr.iv.next11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i ]
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %lsr.iv15)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i unwind label %bb.c
end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderECs2VbMhdeEr66_16delta_benchmarks:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i: ; preds = %.lr.ph4
  %lsr.iv.next11 = add i64 %lsr.iv10, -1          ; 2 uses
  %scevgep16 = getelementptr i8, ptr %lsr.iv15, i64 128
  %i.e = icmp eq i64 %lsr.iv, %lsr.iv.next11
  br i1 %i.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.loopexit, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.f = landingpad { ptr, i32 }
          cleanup
end_hunk_6
begin_hunk_7_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory7catalog21MemoryCatalogProviderECs2VbMhdeEr66_16delta_benchmarks:bb.a
  br label %.lr.ph4

.lr.ph4:                                          ; preds = %.lr.ph4.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i
  %lsr.iv15 = phi ptr [ %lsr.iv13, %.lr.ph4.preheader ], [ %scevgep16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i ] ; 2 uses
  %lsr.iv10 = phi i64 [ %.val1, %.lr.ph4.preheader ], [ %lsr.iv.next11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i ]
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %lsr.iv15)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEEEEECs2VbMhdeEr66_16delta_benchmarks.exit7.i.i.i unwind label %bb.c
end_hunk_7
