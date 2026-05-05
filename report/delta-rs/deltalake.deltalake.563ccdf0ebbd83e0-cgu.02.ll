inline.NumInlined: 6368
inline.NumDeleted: 3022
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecbEEECs7p2uQeJxui2_9deltalake:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i: ; preds = %.lr.ph3
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 128
  %i.d = icmp eq i64 %lsr.iv, %lsr.iv.next10
  br i1 %i.d, label %.body.i.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecbEEECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i
  %lsr.iv14 = phi ptr [ %lsr.iv12, %.lr.ph3.preheader ], [ %scevgep15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i ] ; 2 uses
  %lsr.iv9 = phi i64 [ %.8.val, %.lr.ph3.preheader ], [ %lsr.iv.next10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i ]
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %lsr.iv14)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i unwind label %bb.c
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs4_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtBO_9DeltaScan16deletion_vectors0ECs7p2uQeJxui2_9deltalake:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i: ; preds = %.lr.ph12
  %lsr.iv.next20 = add i64 %lsr.iv19, -1          ; 2 uses
  %scevgep25 = getelementptr i8, ptr %lsr.iv24, i64 128
  %i.ag = icmp eq i64 %lsr.iv, %lsr.iv.next20
  br i1 %i.ag, label %.body.i.i.i.i.loopexit, label %.lr.ph12

bb.m:                                             ; preds = %.lr.ph
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.ah = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs4_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtBO_9DeltaScan16deletion_vectors0ECs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph12

.lr.ph12:                                         ; preds = %.lr.ph12.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i
  %lsr.iv24 = phi ptr [ %lsr.iv22, %.lr.ph12.preheader ], [ %scevgep25, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i ] ; 2 uses
  %lsr.iv19 = phi i64 [ %.val1.i.i, %.lr.ph12.preheader ], [ %lsr.iv.next20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i ]
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %lsr.iv24)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i.i.i.i unwind label %bb.n
end_hunk_3
