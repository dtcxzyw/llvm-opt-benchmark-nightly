inline.NumInlined: 8493
inline.NumDeleted: 3149
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtBJ_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i: ; preds = %.lr.ph3
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 128
  %i.d = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next10
  br i1 %i.d, label %.body.i.i.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %lsr.iv13.lcssa = phi ptr [ %lsr.iv12, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtBJ_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i
  %lsr.iv14 = phi ptr [ %lsr.iv13.lcssa, %.lr.ph3.preheader ], [ %scevgep15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ] ; 2 uses
  %lsr.iv9 = phi i64 [ %.24.val, %.lr.ph3.preheader ], [ %lsr.iv.next10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ]
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %lsr.iv14)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i unwind label %bb.c
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtBJ_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i: ; preds = %.lr.ph3
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 128
  %i.d = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next10
  br i1 %i.d, label %.body.i.i.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %lsr.iv13.lcssa = phi ptr [ %lsr.iv12, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtBJ_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i
  %lsr.iv14 = phi ptr [ %lsr.iv13.lcssa, %.lr.ph3.preheader ], [ %scevgep15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ] ; 2 uses
  %lsr.iv9 = phi i64 [ %.24.val, %.lr.ph3.preheader ], [ %lsr.iv.next10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ]
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %lsr.iv14)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i unwind label %bb.c
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtCs3JXekYNd0JR_7dashmap3set7DashSetNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueuEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i.i: ; preds = %.lr.ph3
  %lsr.iv.next10 = add i64 %lsr.iv9, -1           ; 2 uses
  %scevgep15 = getelementptr i8, ptr %lsr.iv14, i64 128
  %i.d = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next10
  br i1 %i.d, label %.body.i.i.i.loopexit, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %lsr.iv13.lcssa = phi ptr [ %lsr.iv12, %.lr.ph ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %.lcssa = phi i64 [ %lsr.iv, %.lr.ph ]
  %i.e = landingpad { ptr, i32 }
          cleanup
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtCs3JXekYNd0JR_7dashmap3set7DashSetNtNtBL_6string6StringEEECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %.lr.ph3

.lr.ph3:                                          ; preds = %.lr.ph3.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueuEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i.i
  %lsr.iv14 = phi ptr [ %lsr.iv13.lcssa, %.lr.ph3.preheader ], [ %scevgep15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueuEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i.i ] ; 2 uses
  %lsr.iv9 = phi i64 [ %.24.val, %.lr.ph3.preheader ], [ %lsr.iv.next10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueuEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i.i ]
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %lsr.iv14)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueuEEEEEECs14kWLkQVSKO_14deltalake_core.exit7.i.i.i.i unwind label %bb.c
end_hunk_5
begin_hunk_6_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters:bb.a
  br i1 %i.aw, label %.loopexit.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.noexc45
  %lsr.iv130.lcssa142 = phi ptr [ %lsr.iv130, %.noexc45 ]
  %lsr.iv136.lcssa138 = phi i64 [ %lsr.iv136, %.noexc45 ]
  %.lcssa119 = phi ptr [ %lsr.iv130, %.noexc45 ]
  %.lcssa = phi i64 [ %i.av, %.noexc45 ]
  %.sroa.79.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
end_hunk_6
begin_hunk_7_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filters:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.e, ptr noundef nonnull readonly align 16 dereferenceable(112) %i.i, i64 112, i1 false), !noalias !16786
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.ba = lshr i64 %lsr.iv136.lcssa138, 3
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten11flatten_oneRINtNtBa_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1q_NCINvNtB6_10filter_map15filter_map_foldRB1p_B1q_B1q_NCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss0_0NvMsC_B1s_B1q_3andE0E0B3i_.exit.i.i.i.i.i, %bb.l
  %lsr.iv140.a = phi ptr [ %scevgep141, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten11flatten_oneRINtNtBa_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1q_NCINvNtB6_10filter_map15filter_map_foldRB1p_B1q_B1q_NCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss0_0NvMsC_B1s_B1q_3andE0E0B3i_.exit.i.i.i.i.i ], [ %lsr.iv130.lcssa142, %bb.l ] ; 3 uses
  %lsr.iv138 = phi i64 [ %lsr.iv.next139, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten11flatten_oneRINtNtBa_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1q_NCINvNtB6_10filter_map15filter_map_foldRB1p_B1q_B1q_NCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss0_0NvMsC_B1s_B1q_3andE0E0B3i_.exit.i.i.i.i.i ], [ %i.ba, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16790
  call void @llvm.experimental.noalias.scope.decl(metadata !16792)
end_hunk_7
begin_hunk_8_@_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjEECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %lsr.iv66.lcssa = phi ptr [ %lsr.iv65, %bb.g ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.g ]
  %.lcssa = phi i64 [ %lsr.iv, %bb.g ]
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_8
begin_hunk_9_@_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
  br label %.lr.ph12.i.i.i.i

.lr.ph12.i.i.i.i:                                 ; preds = %.lr.ph12.i.i.i.i.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjEECs14kWLkQVSKO_14deltalake_core.exit8.i.i.i.i
  %lsr.iv67 = phi ptr [ %lsr.iv66.lcssa, %.lr.ph12.i.i.i.i.preheader ], [ %scevgep68, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjEECs14kWLkQVSKO_14deltalake_core.exit8.i.i.i.i ] ; 3 uses
  %lsr.iv62 = phi i64 [ %i.ad, %.lr.ph12.i.i.i.i.preheader ], [ %lsr.iv.next63, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjEECs14kWLkQVSKO_14deltalake_core.exit8.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16937)
  call void @llvm.experimental.noalias.scope.decl(metadata !16940)
end_hunk_9
begin_hunk_10_@_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjEECs14kWLkQVSKO_14deltalake_core.exit8.i.i.i.i: ; preds = %bb.i, %.lr.ph12.i.i.i.i
  %lsr.iv.next63 = add i64 %lsr.iv62, -1          ; 2 uses
  %scevgep68 = getelementptr i8, ptr %lsr.iv67, i64 32
  %i.au = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next63
  br i1 %i.au, label %.body.i.loopexit, label %.lr.ph12.i.i.i.i

bb.j:                                             ; preds = %bb.i
end_hunk_10
begin_hunk_11_@_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.ao, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEECs14kWLkQVSKO_14deltalake_core.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %lsr.iv66.lcssa = phi ptr [ %lsr.iv65, %bb.g ]
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %bb.g ]
  %.lcssa = phi i64 [ %lsr.iv, %bb.g ]
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_11
begin_hunk_12_@_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
  br label %.lr.ph12.i.i.i.i

.lr.ph12.i.i.i.i:                                 ; preds = %.lr.ph12.i.i.i.i.preheader, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEECs14kWLkQVSKO_14deltalake_core.exit8.i.i.i.i
  %lsr.iv67 = phi ptr [ %lsr.iv66.lcssa, %.lr.ph12.i.i.i.i.preheader ], [ %scevgep68, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEECs14kWLkQVSKO_14deltalake_core.exit8.i.i.i.i ] ; 3 uses
  %lsr.iv62 = phi i64 [ %i.ad, %.lr.ph12.i.i.i.i.preheader ], [ %lsr.iv.next63, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEECs14kWLkQVSKO_14deltalake_core.exit8.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17025)
  call void @llvm.experimental.noalias.scope.decl(metadata !17028)
end_hunk_12
begin_hunk_13_@_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuEECs14kWLkQVSKO_14deltalake_core.exit8.i.i.i.i: ; preds = %bb.i, %.lr.ph12.i.i.i.i
  %lsr.iv.next63 = add i64 %lsr.iv62, -1          ; 2 uses
  %scevgep68 = getelementptr i8, ptr %lsr.iv67, i64 24
  %i.au = icmp eq i64 %lsr.iv.lcssa, %lsr.iv.next63
  br i1 %i.au, label %.body.i.loopexit, label %.lr.ph12.i.i.i.i

bb.j:                                             ; preds = %bb.i
end_hunk_13
