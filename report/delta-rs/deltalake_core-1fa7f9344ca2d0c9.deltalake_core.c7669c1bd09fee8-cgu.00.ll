inline.NumInlined: 17049
inline.NumDeleted: 6599
begin_hunk_0_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2F_4util11SharedValueINtNtB6_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB7j_3ops5range5RangejENCNvMs1_B2F_INtB2F_7DashMapB45_B5E_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
  resume { ptr, i32 } %i.r

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2O_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB7z_3ops5range5RangejENCNvMs1_B2O_INtB2O_7DashMapB4e_B5N_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB6Y_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B5q_E41with_capacity_and_hasher_and_shard_amount0EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !18012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18015
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2F_4util11SharedValueINtNtB6_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB7m_3ops5range5RangejENCNvMs1_B2F_INtB2F_7DashMapB45_B5E_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18032)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18035
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !18037, !noalias !18040, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !18042, !noalias !18043, !noundef !8
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i, i64 %.val.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18035
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 128, i64 noundef 128), !noalias !18035
  %i.f = load i64, ptr %i.b, align 8, !range !79, !noalias !18035, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noalias !18035, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB71_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B5q_E41with_capacity_and_hasher_and_shard_amount0EECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !18035
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !18035
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB71_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B5q_E41with_capacity_and_hasher_and_shard_amount0EECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !18035, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18035
  store i64 %i.i, ptr %i.c, align 8, !noalias !18035
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !18035
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !noalias !18035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18044
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !18044
  store ptr %i.o, ptr %i.a, align 8, !noalias !18044
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.q, align 8, !noalias !18044
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs1_Cs3JXekYNd0JR_7dashmapINtB1x_7DashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5n_8for_each4callINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtB1x_4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTB28_INtNtB1x_4util11SharedValueB3g_EEEEENCINvMsj_NtB3l_3vecINtBa6_3VecB6q_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2O_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB7C_3ops5range5RangejENCNvMs1_B2O_INtB2O_7DashMapB4e_B5N_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c, !noalias !18051

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB71_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B5q_E41with_capacity_and_hasher_and_shard_amount0EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2Y_4util11SharedValueINtNtBL_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.e unwind label %bb.d, !noalias !18035

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !18035
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2O_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB7C_3ops5range5RangejENCNvMs1_B2O_INtB2O_7DashMapB4e_B5N_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB71_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B5q_E41with_capacity_and_hasher_and_shard_amount0EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !18032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18035
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2F_4util11SharedValueINtNtB6_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEEEEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB7m_3ops5range5RangejENCNvMs1_B2F_INtB2F_7DashMapB45_B5E_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18052)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18055
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !18057, !noalias !18060, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !18062, !noalias !18063, !noundef !8
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i, i64 %.val.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18055
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 128, i64 noundef 128), !noalias !18055
  %i.f = load i64, ptr %i.b, align 8, !range !79, !noalias !18055, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noalias !18055, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB71_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B5q_E41with_capacity_and_hasher_and_shard_amount0EECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !18055
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !18055
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB71_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B5q_E41with_capacity_and_hasher_and_shard_amount0EECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !18055, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18055
  store i64 %i.i, ptr %i.c, align 8, !noalias !18055
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !18055
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !noalias !18055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18064
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !18064
  store ptr %i.o, ptr %i.a, align 8, !noalias !18064
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.q, align 8, !noalias !18064
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs1_Cs3JXekYNd0JR_7dashmapINtB1x_7DashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EE41with_capacity_and_hasher_and_shard_amount0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5n_8for_each4callINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtB1x_4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTB28_INtNtB1x_4util11SharedValueB3g_EEEEENCINvMsj_NtB3l_3vecINtBa6_3VecB6q_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2O_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB7C_3ops5range5RangejENCNvMs1_B2O_INtB2O_7DashMapB4e_B5N_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c, !noalias !18071

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB71_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B5q_E41with_capacity_and_hasher_and_shard_amount0EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2Y_4util11SharedValueINtNtBL_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #29
          to label %bb.e unwind label %bb.d, !noalias !18055

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !18055
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r

_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2O_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEEEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB7C_3ops5range5RangejENCNvMs1_B2O_INtB2O_7DashMapB4e_B5N_E41with_capacity_and_hasher_and_shard_amount0EE9from_iterCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB2r_4util11SharedValueINtNtB8_4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEEEEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB71_3ops5range5RangejENCNvMs1_B2r_INtB2r_7DashMapB3R_B5q_E41with_capacity_and_hasher_and_shard_amount0EECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !18052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18055
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB11_5types14StringViewTypeEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlatMapINtNtNtB3d_5slice4iter4IterIBL_NtNtB11_12record_batch11RecordBatchEEINtNtB39_3map3MapIB41_B4v_ENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00ENCB5B_s0_0EE9from_iterB5J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 8 uses
  %i.b = alloca [120 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [120 x i8], align 8               ; 6 uses
  %i.f = alloca [120 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18075)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18077
  call fastcc void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEINtNtB7_3map3MapIB15_B21_ENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00ENCB3t_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3B_(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !18072
  %i.h = load i64, ptr %i.e, align 8, !range !107, !noalias !18077, !noundef !8
  %.not.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !18077
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !18078, !noalias !18083, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !18086, !noalias !18089, !nonnull !8, !noundef !8
  %i.l = ptrtoint ptr %.val4.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 40
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %i.o, %bb.c ], [ 0, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !18078, !noalias !18083, !noundef !8 ; 2 uses
  %.not54.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not54.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit65.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val4.i64.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !18092, !noalias !18095, !nonnull !8, !noundef !8
  %i.s = ptrtoint ptr %.val4.i64.i.i.i to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 40
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit65.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit65.i.i.i: ; preds = %bb.d, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i
  %.sroa.072.0.i.i.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i ]
  %i.w = add nuw nsw i64 %.sroa.072.0.i.i.i, %.sroa.7.0.i.i.i
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.w, i64 3) ; 2 uses
  %.sroa.0.0.i.i = add nuw nsw i64 %i.x, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18077
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 120)
          to label %.noexc.i unwind label %bb.f, !noalias !18077

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !18072, !noalias !18075
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !18072, !noalias !18075
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.z, align 8, !alias.scope !18072, !noalias !18075
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB18_5types14StringViewTypeEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlatMapINtNtNtB3r_5slice4iter4IterIBS_NtNtB18_12record_batch11RecordBatchEEINtNtB3n_3map3MapIB4f_B4J_ENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00ENCB5P_s0_0EE9from_iterB5X_.exit

bb.f:                                             ; preds = %bb.g, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit65.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBN_5types14StringViewTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %i.f) #29
          to label %bb.p unwind label %bb.o, !noalias !18077

.noexc.i:                                         ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit65.i.i.i
  %i.ab = load i64, ptr %i.c, align 8, !range !79, !noalias !18077, !noundef !8
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !107, !noalias !18077, !noundef !8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !84

bb.g:                                             ; preds = %.noexc.i
  %i.ag = load i64, ptr %i.af, align 8, !noalias !18077
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #27
          to label %.noexc6.i unwind label %bb.f, !noalias !18077

.noexc6.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc.i
  %i.ah = load ptr, ptr %i.af, align 8, !noalias !18077, !nonnull !8, !noundef !8 ; 2 uses
  %2 = icmp ult i64 %i.x, %i.ae
  tail call void @llvm.assume(i1 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ah, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false), !noalias !18077
  store i64 %i.ae, ptr %i.g, align 8, !noalias !18077
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !18077
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !18077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !18072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18108
  invoke fastcc void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEINtNtB7_3map3MapIB15_B21_ENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00ENCB3t_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3B_(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.noexc8.i unwind label %.loopexit.split-lp.i, !noalias !18077

.noexc8.i:                                        ; preds = %bb.h
  %i.ai = load i64, ptr %i.a, align 8, !range !107, !noalias !18109, !noundef !8
  %.not5.i.i.i = icmp eq i64 %i.ai, -9223372036854775808
  br i1 %.not5.i.i.i, label %.loopexit10.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc8.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %bb.i

bb.i:                                             ; preds = %.noexc9.i, %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false), !noalias !18109
  %i.an = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !18110, !noalias !18111, !noundef !8 ; 5 uses
  %i.ao = icmp ult i64 %i.an, 76861433640456466
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.g, align 8, !range !83, !alias.scope !18110, !noalias !18111, !noundef !8
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBL_5types14StringViewTypeEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.aj, align 8, !alias.scope !18112, !noalias !18117, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !18120, !noalias !18123, !nonnull !8, !noundef !8
  %i.as = ptrtoint ptr %.val4.i.i.i.i.i.i to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub nuw i64 %i.as, %i.at
  %i.av = udiv exact i64 %i.au, 40
  %i.aw = add nuw nsw i64 %i.av, 1
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i.i.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.aw, %bb.k ], [ 1, %bb.j ]
  %i.ax = load ptr, ptr %i.al, align 8, !alias.scope !18112, !noalias !18117, !noundef !8 ; 2 uses
  %.not54.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not54.i.i.i.i.i, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit65.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i.i.i
  %.val4.i64.i.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !18126, !noalias !18129, !nonnull !8, !noundef !8
  %i.ay = ptrtoint ptr %.val4.i64.i.i.i.i.i to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub nuw i64 %i.ay, %i.az
  %i.bb = udiv exact i64 %i.ba, 40
  br label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit65.i.i.i.i.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBL_5types14StringViewTypeEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit65.i.i.i.i.i, %bb.i
  %i.bc = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !18110, !noalias !18111, !nonnull !8, !noundef !8
  %i.bd = getelementptr inbounds nuw [120 x i8], ptr %i.bc, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bd, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 120, i1 false), !noalias !18111
  %i.be = add nuw nsw i64 %i.an, 1
  store i64 %i.be, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !18110, !noalias !18111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18109
  invoke fastcc void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEINtNtB7_3map3MapIB15_B21_ENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00ENCB3t_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB3B_(ptr noalias noundef align 8 captures(address) dereferenceable(120) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.noexc9.i unwind label %.loopexit.i, !noalias !18077

.noexc9.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBL_5types14StringViewTypeEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.bf = load i64, ptr %i.a, align 8, !range !107, !noalias !18109, !noundef !8
  %.not.i.i7.i = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %.not.i.i7.i, label %.loopexit10.i, label %bb.i

bb.m:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit65.i.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBN_5types14StringViewTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %i.b) #29
          to label %.body.i unwind label %bb.n, !noalias !18111

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit65.i.i.i.i.i: ; preds = %bb.l, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i.i.i
  %.sroa.072.0.i.i.i.i.i = phi i64 [ %i.bb, %bb.l ], [ 0, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2Q_.exit.i.i.i.i.i ]
  %i.bh = add nuw nsw i64 %.sroa.072.0.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.an, i64 noundef range(i64 1, 0) %i.bh, i64 noundef 8, i64 noundef 120)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBL_5types14StringViewTypeEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.m, !noalias !18111

bb.n:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !18111
  unreachable

.loopexit.i:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBL_5types14StringViewTypeEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1k_5types14StringViewTypeEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #29
          to label %bb.p unwind label %bb.o, !noalias !18077

.loopexit10.i:                                    ; preds = %.noexc9.i, %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !18075
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB18_5types14StringViewTypeEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlatMapINtNtNtB3r_5slice4iter4IterIBS_NtNtB18_12record_batch11RecordBatchEEINtNtB3n_3map3MapIB4f_B4J_ENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00ENCB5P_s0_0EE9from_iterB5X_.exit

bb.o:                                             ; preds = %.body.i, %bb.f
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !18077
  unreachable

bb.p:                                             ; preds = %.body.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aa, %bb.f ]
  resume { ptr, i32 } %.pn.i

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB18_5types14StringViewTypeEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlatMapINtNtNtB3r_5slice4iter4IterIBS_NtNtB18_12record_batch11RecordBatchEEINtNtB3n_3map3MapIB4f_B4J_ENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s0_00ENCB5P_s0_0EE9from_iterB5X_.exit: ; preds = %bb.e, %.loopexit10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !18077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtBZ_10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB4N_IB4N_INtNtNtB4V_3ops5range5RangejENCB2T_0ENvYB2P_NtB29_12TryFutureExt11into_futureENcNtBU_6Future0EE9from_iterB33_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18135
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !18137, !noalias !18140, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i = load i64, ptr %i.e, align 8, !alias.scope !18142, !noalias !18143, !noundef !8
  %spec.select.i.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3.i, i64 %.val.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18135
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 112), !noalias !18135
  %i.f = load i64, ptr %i.b, align 8, !range !79, !noalias !18135, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noalias !18135, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtBL_10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB4s_IB4s_INtNtNtB4A_3ops5range5RangejENCB2F_0ENvYB2B_NtB1V_12TryFutureExt11into_futureENcNtBG_6Future0EEB2P_.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !18135
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27, !noalias !18135
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtBL_10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB4s_IB4s_INtNtNtB4A_3ops5range5RangejENCB2F_0ENvYB2B_NtB1V_12TryFutureExt11into_futureENcNtBG_6Future0EEB2P_.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !18135, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i.i.i.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18135
  store i64 %i.i, ptr %i.c, align 8, !noalias !18135
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !18135
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8, !noalias !18135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18144
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !18144
  store ptr %i.o, ptr %i.a, align 8, !noalias !18144
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.q, align 8, !noalias !18144
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch00ENvYNCNCB1z_00NtNtNtCs8CRAYtH5WmW_12futures_util6future10try_future12TryFutureExt11into_futureENcNtINtNtB3j_14try_maybe_done12TryMaybeDoneINtNtB3h_11into_future10IntoFutureB35_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB62_8for_each4callB4C_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7i_3VecB75_E14extend_trustedBN_E0E0EB1J_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB18_10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB54_IB54_INtNtNtB5c_3ops5range5RangejENCB33_0ENvYB2Z_NtB2i_12TryFutureExt11into_futureENcNtB13_6Future0EE9from_iterB3d_.exit unwind label %bb.c, !noalias !18149

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtBL_10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapIB4s_IB4s_INtNtNtB4A_3ops5range5RangejENCB2F_0ENvYB2B_NtB1V_12TryFutureExt11into_futureENcNtBG_6Future0EEB2P_.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs8CRAYtH5WmW_12futures_util6future14try_maybe_done12TryMaybeDoneINtNtNtB1i_10try_future11into_future10IntoFutureNCNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch000EEEEB3n_(ptr noundef nonnull align 8 %i.c) #29
          to label %bb.e unwind label %bb.d, !noalias !18135

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !18135
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.r

end_hunk_0
begin_hunk_1_@_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerate9EnumerateNtB15_8RowsIterEE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerate9EnumerateNtBV_8RowsIterEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTjNtCslnB3YlOUCfj_9arrow_row3RowEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerate9EnumerateNtBV_8RowsIterEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTjNtCslnB3YlOUCfj_9arrow_row3RowEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.bi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterhENtNtB1D_5ascii13EscapeDefaultNvB2V_14escape_defaultEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 3 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 20 uses
  %.sroa.5 = alloca i64, align 8                  ; 3 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.pre.i.i = load i32, ptr %i.d, align 8, !range !19237, !alias.scope !31214
  %i.h = trunc nuw i32 %.pre.i.i to i1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = invoke { i1, i8 } @_RNvMs_NtCsbvkFyIu7lgC_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 4 dereferenceable(8) %i.e)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.j = extractvalue { i1, i8 } %i.i, 0
  br i1 %i.j, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  store i32 0, ptr %i.d, align 8, !alias.scope !31214
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.k = load ptr, ptr %1, align 8, !alias.scope !31221, !noalias !31224, !noundef !8 ; 2 uses
  %.not.i.i.peel.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.peel.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.f, align 8, !alias.scope !31226, !noalias !31231, !nonnull !8, !noundef !8
  %i.m = load ptr, ptr %i.g, align 8, !alias.scope !31226, !noalias !31231, !nonnull !8, !noundef !8 ; 2 uses
  %.not.i.i.i.peel.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i.i.i.peel.i, label %.loopexit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.e, %bb.g
  %.sink6.i = phi ptr [ %i.u, %bb.g ], [ %i.m, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 1
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !31233, !noalias !31231
  %i.o = load i8, ptr %.sink6.i, align 1, !noalias !31231, !noundef !8
  %i.p = invoke i64 @_RNvNtCsbvkFyIu7lgC_4core5ascii14escape_default(i8 noundef %i.o)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %.peel.next.i
  store i32 1, ptr %i.d, align 8, !alias.scope !31237
  store i64 %i.p, ptr %i.e, align 4, !alias.scope !31237
  %i.q = invoke { i1, i8 } @_RNvMs_NtCsbvkFyIu7lgC_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 4 dereferenceable(8) %i.e)
          to label %.noexc8 unwind label %.loopexit ; 2 uses

.noexc8:                                          ; preds = %.noexc7
  %i.r = extractvalue { i1, i8 } %i.q, 0
  br i1 %i.r, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc8
  store i32 0, ptr %i.d, align 8, !alias.scope !31214
  %i.s = load ptr, ptr %1, align 8, !alias.scope !31238, !noalias !31224, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.f, align 8, !alias.scope !31239, !noalias !31231, !nonnull !8, !noundef !8
  %i.u = load ptr, ptr %i.g, align 8, !alias.scope !31239, !noalias !31231, !nonnull !8, !noundef !8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.t
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %.peel.next.i, !llvm.loop !31240

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.v = phi ptr [ null, %bb.d ], [ %i.k, %bb.e ], [ %i.s, %bb.g ], [ null, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !range !19237, !alias.scope !31241, !noundef !8
  %i.y = trunc nuw i32 %i.x to i1
  br i1 %i.y, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.loopexit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = invoke { i1, i8 } @_RNvMs_NtCsbvkFyIu7lgC_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 4 dereferenceable(8) %i.z)
          to label %.noexc9 unwind label %.loopexit.split-lp ; 2 uses

.noexc9:                                          ; preds = %bb.h
  %i.ab = extractvalue { i1, i8 } %i.aa, 0
  br i1 %i.ab, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc9
  store i32 0, ptr %i.w, align 4, !alias.scope !31241
  %.pre = load ptr, ptr %1, align 8, !alias.scope !31244
  br label %bb.l

.loopexit:                                        ; preds = %.peel.next.i, %.noexc7
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.b, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc8, %.noexc, %.noexc9
  %.pn = phi { i1, i8 } [ %i.aa, %.noexc9 ], [ %i.i, %.noexc ], [ %i.q, %.noexc8 ]
  %.sroa.3.0.i7.pn.i.i.ph = extractvalue { i1, i8 } %.pn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31261)
  %i.ac = load i32, ptr %i.d, align 8, !range !19237, !alias.scope !31263, !noalias !31264, !noundef !8
  %i.ad = trunc nuw i32 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i = load i8, ptr %i.ae, align 8, !alias.scope !31263, !noalias !31264
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.val4.i.i.i = load i8, ptr %i.af, align 1, !alias.scope !31263, !noalias !31264
  %i.ag = sub i8 %.val4.i.i.i, %.val.i.i.i
  %i.ah = zext i8 %i.ag to i64
  %.sroa.7.0.i.i = select i1 %i.ad, i64 %i.ah, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aj = load i32, ptr %i.ai, align 4, !range !19237, !alias.scope !31263, !noalias !31264, !noundef !8
  %i.ak = trunc nuw i32 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.val.i61.i.i = load i8, ptr %i.al, align 4, !alias.scope !31263, !noalias !31264
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 53
  %.val4.i62.i.i = load i8, ptr %i.am, align 1, !alias.scope !31263, !noalias !31264
  %i.an = sub i8 %.val4.i62.i.i, %.val.i61.i.i
  %i.ao = zext i8 %i.an to i64
  %.sroa.070.0.i.i = select i1 %i.ak, i64 %i.ao, i64 0
  %i.ap = add nuw nsw i64 %.sroa.070.0.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.aq = load ptr, ptr %1, align 8, !alias.scope !31263, !noalias !31264, !noundef !8
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !31263, !noalias !31264, !nonnull !8, !noundef !8
  %.val59.i.i = load ptr, ptr %i.f, align 8, !alias.scope !31263, !noalias !31264, !nonnull !8, !noundef !8
  %i.ar = icmp eq ptr %.val59.i.i, %.val.i.i
  br i1 %i.ar, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i
  br label %bb.o

bb.l:                                             ; preds = %.loopexit.i, %bb.i
  %i.as = phi ptr [ %i.v, %.loopexit.i ], [ %.pre, %bb.i ]
  store i64 0, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = icmp eq ptr %i.as, null
  br i1 %i.av, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterhENtNtB4_5ascii13EscapeDefaultNvB2e_14escape_defaultEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterhENtNtB4_5ascii13EscapeDefaultNvB2e_14escape_defaultEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterhENtNtB4_5ascii13EscapeDefaultNvB2e_14escape_defaultEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.m, %bb.l, %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterhENtNtB1l_5ascii13EscapeDefaultNvB2D_14escape_defaultEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit
  ret void

bb.n:                                             ; preds = %bb.p, %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.o:                                             ; preds = %bb.j, %bb.k
  %.sink78.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.k ], [ %.sroa.5, %bb.j ]
  %.sink.i.i = phi i64 [ %i.ap, %bb.k ], [ 0, %bb.j ]
  store i64 %.sink.i.i, ptr %.sink78.i.i.sroa.phi, align 8, !alias.scope !31264, !noalias !31263
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.ax = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 7) ; 2 uses
  %.sroa.0.0.i = add nuw nsw i64 %i.ax, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc11 unwind label %bb.n

.noexc11:                                         ; preds = %bb.o
  %i.ay = load i64, ptr %i.a, align 8, !range !79, !noundef !8
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !107, !noundef !8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.az, label %bb.p, label %bb.q, !prof !84

bb.p:                                             ; preds = %.noexc11
  %i.bd = load i64, ptr %i.bc, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bb, i64 %i.bd) #27
          to label %.noexc12 unwind label %bb.n

.noexc12:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %.noexc11
  %i.be = load ptr, ptr %i.bc, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %2 = icmp ult i64 %i.ax, %i.bb
  tail call void @llvm.assume(i1 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %.sroa.3.0.i7.pn.i.i.ph, ptr %i.be, align 1
  store i64 %i.bb, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31273)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 53
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.q
  %.pre.i.i.i.i = load i32, ptr %i.bf, align 8, !range !19237, !alias.scope !31275, !noalias !31282
  %i.bp = trunc nuw i32 %.pre.i.i.i.i to i1
  br i1 %i.bp, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bq = invoke { i1, i8 } @_RNvMs_NtCsbvkFyIu7lgC_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 4 dereferenceable(8) %i.bg)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s
  %i.br = extractvalue { i1, i8 } %i.bq, 0
  br i1 %i.br, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.noexc.i.i
  store i32 0, ptr %i.bf, align 8, !alias.scope !31275, !noalias !31282
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.bs = load ptr, ptr %i.b, align 8, !alias.scope !31283, !noalias !31286, !noundef !8 ; 2 uses
  %.not.i.i.peel.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.peel.i.i.i, label %.loopexit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr %i.bh, align 8, !alias.scope !31288, !noalias !31293, !nonnull !8, !noundef !8
  %i.bu = load ptr, ptr %i.bi, align 8, !alias.scope !31288, !noalias !31293, !nonnull !8, !noundef !8 ; 2 uses
  %.not.i.i.i.peel.i.i.i = icmp eq ptr %i.bu, %i.bt
  br i1 %.not.i.i.i.peel.i.i.i, label %.loopexit.i.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.v, %bb.x
  %.sink6.i.i.i = phi ptr [ %i.cc, %bb.x ], [ %i.bu, %bb.v ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 1
  store ptr %i.bv, ptr %i.bi, align 8, !alias.scope !31295, !noalias !31293
  %i.bw = load i8, ptr %.sink6.i.i.i, align 1, !noalias !31299, !noundef !8
  %i.bx = invoke i64 @_RNvNtCsbvkFyIu7lgC_4core5ascii14escape_default(i8 noundef %i.bw)
          to label %.noexc6.i.i unwind label %.loopexit.i.i

.noexc6.i.i:                                      ; preds = %.peel.next.i.i.i
  store i32 1, ptr %i.bf, align 8, !alias.scope !31300, !noalias !31282
  store i64 %i.bx, ptr %i.bg, align 4, !alias.scope !31300, !noalias !31282
  %i.by = invoke { i1, i8 } @_RNvMs_NtCsbvkFyIu7lgC_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 4 dereferenceable(8) %i.bg)
          to label %.noexc7.i.i unwind label %.loopexit.i.i ; 2 uses

.noexc7.i.i:                                      ; preds = %.noexc6.i.i
  %i.bz = extractvalue { i1, i8 } %i.by, 0
  br i1 %i.bz, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %.noexc7.i.i
  store i32 0, ptr %i.bf, align 8, !alias.scope !31275, !noalias !31282
  %i.ca = load ptr, ptr %i.b, align 8, !alias.scope !31301, !noalias !31286, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = load ptr, ptr %i.bh, align 8, !alias.scope !31302, !noalias !31293, !nonnull !8, !noundef !8
  %i.cc = load ptr, ptr %i.bi, align 8, !alias.scope !31302, !noalias !31293, !nonnull !8, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, %i.cb
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.peel.next.i.i.i, !llvm.loop !31240

.loopexit.i.i.i:                                  ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.cd = phi ptr [ null, %bb.u ], [ %i.bs, %bb.v ], [ %i.ca, %bb.x ], [ null, %bb.w ]
  %i.ce = load i32, ptr %i.bj, align 4, !range !19237, !alias.scope !31303, !noalias !31282, !noundef !8
  %i.cf = trunc nuw i32 %i.ce to i1
  br i1 %i.cf, label %bb.y, label %.loopexit17.i.i

bb.y:                                             ; preds = %.loopexit.i.i.i
  %i.cg = invoke { i1, i8 } @_RNvMs_NtCsbvkFyIu7lgC_4core6escapeINtB4_15EscapeIterInnerKj4_NtB4_13AlwaysEscapedE4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 4 dereferenceable(8) %i.bk)
          to label %.noexc8.i.i unwind label %.loopexit.split-lp.i.i ; 2 uses

.noexc8.i.i:                                      ; preds = %bb.y
  %i.ch = extractvalue { i1, i8 } %i.cg, 0
  br i1 %i.ch, label %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.noexc8.i.i
  store i32 0, ptr %i.bj, align 4, !alias.scope !31303, !noalias !31282
  %.pre.i.i13 = load ptr, ptr %i.b, align 8, !alias.scope !31306, !noalias !31282
  br label %.loopexit17.i.i

bb.aa:                                            ; preds = %bb.ag, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.de, %bb.ag ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.ci = load ptr, ptr %i.b, align 8, !alias.scope !31315, !noalias !31282, !noundef !8
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.body, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %.body unwind label %bb.ai

.loopexit.i.i:                                    ; preds = %.noexc6.i.i, %.peel.next.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i.i:                           ; preds = %bb.y, %bb.s
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %.noexc7.i.i, %.noexc8.i.i, %.noexc.i.i
  %.pn16.i.i = phi { i1, i8 } [ %i.cg, %.noexc8.i.i ], [ %i.bq, %.noexc.i.i ], [ %i.by, %.noexc7.i.i ]
  %.sroa.3.0.i7.pn.i.i.ph.i.i = extractvalue { i1, i8 } %.pn16.i.i, 1
  %i.ck = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !31282, !noalias !31324, !noundef !8 ; 5 uses
  %i.cl = icmp sgt i64 %i.ck, -1
  call void @llvm.assume(i1 %i.cl)
  %i.cm = load i64, ptr %i.c, align 8, !range !83, !alias.scope !31282, !noalias !31324, !noundef !8
  %i.cn = icmp eq i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.ad, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i

.loopexit17.i.i:                                  ; preds = %.loopexit.i.i.i, %bb.z
  %i.co = phi ptr [ %.pre.i.i13, %bb.z ], [ %i.cd, %.loopexit.i.i.i ]
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterhENtNtB1l_5ascii13EscapeDefaultNvB2D_14escape_defaultEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit, label %bb.ac

bb.ac:                                            ; preds = %.loopexit17.i.i
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterhENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlatMapINtNtB4_9into_iter8IntoIterhENtNtB1l_5ascii13EscapeDefaultNvB2D_14escape_defaultEE11spec_extendCs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.aj

bb.ad:                                            ; preds = %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !31325)
  call void @llvm.experimental.noalias.scope.decl(metadata !31328)
  call void @llvm.experimental.noalias.scope.decl(metadata !31330)
  call void @llvm.experimental.noalias.scope.decl(metadata !31333)
  %i.cq = load i32, ptr %i.bf, align 8, !range !19237, !alias.scope !31335, !noalias !31336, !noundef !8
  %i.cr = trunc nuw i32 %i.cq to i1
  %.val.i.i.i.i.i = load i8, ptr %i.bl, align 8, !alias.scope !31335, !noalias !31336
  %.val4.i.i.i.i.i = load i8, ptr %i.bm, align 1, !alias.scope !31335, !noalias !31336
  %i.cs = sub i8 %.val4.i.i.i.i.i, %.val.i.i.i.i.i
  %i.ct = zext i8 %i.cs to i64
  %.sroa.7.0.i.i.i.i = select i1 %i.cr, i64 %i.ct, i64 0
  %i.cu = load i32, ptr %i.bj, align 4, !range !19237, !alias.scope !31335, !noalias !31336, !noundef !8
  %i.cv = trunc nuw i32 %i.cu to i1
  %.val.i61.i.i.i.i = load i8, ptr %i.bn, align 4, !alias.scope !31335, !noalias !31336
  %.val4.i62.i.i.i.i = load i8, ptr %i.bo, align 1, !alias.scope !31335, !noalias !31336
  %i.cw = sub i8 %.val4.i62.i.i.i.i, %.val.i61.i.i.i.i
  %i.cx = zext i8 %i.cw to i64
  %.sroa.070.0.i.i.i.i = select i1 %i.cv, i64 %i.cx, i64 0
  %i.cy = add nuw nsw i64 %.sroa.070.0.i.i.i.i, %.sroa.7.0.i.i.i.i ; 2 uses
  %i.cz = load ptr, ptr %i.b, align 8, !alias.scope !31335, !noalias !31336, !noundef !8
  %.not.i.i.i.i14 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i14, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !31335, !noalias !31336, !nonnull !8, !noundef !8
  %.val59.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !31335, !noalias !31336, !nonnull !8, !noundef !8
  %i.da = icmp eq ptr %.val59.i.i.i.i, %.val.i.i.i.i
  br i1 %i.da, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br label %bb.ah

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.ah, %_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearNtNtB8_5ascii13EscapeDefaulthNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.db = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !31282, !noalias !31324, !nonnull !8, !noundef !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ck
  store i8 %.sroa.3.0.i7.pn.i.i.ph.i.i, ptr %i.dc, align 1
  %i.dd = add nuw i64 %i.ck, 1
  store i64 %i.dd, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !31282, !noalias !31324
  br label %bb.r

bb.ag:                                            ; preds = %bb.ah
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.sink78.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.af ], [ %.sroa.5.i.i, %bb.ae ]
  %.sink.i.i.i.i = phi i64 [ %i.cy, %bb.af ], [ 0, %bb.ae ]
  store i64 %.sink.i.i.i.i, ptr %.sink78.i.i.sroa.phi.i.i, align 8, !alias.scope !31337, !noalias !31338
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.df = add nuw nsw i64 %i.cy, 1
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ck, i64 noundef %i.df, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.ag

end_hunk_1
